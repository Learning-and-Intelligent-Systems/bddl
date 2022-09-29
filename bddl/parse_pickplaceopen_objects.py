"""Parse the type hierarchy to discover which objects are reasonable to grasp,
place and open/close. We use this to prevent having to ground operators for
all possible objects during planning."""

import glob
import json

objs_to_place = set()
objs_to_place_into = set()
objs_to_place_ontop = set()
# Parse all PDDL files to find all objects that are mentioned in
# inside(), under() and ontop() predicates. The first object mentioned
# in these predicates must be graspable and the second must be a surface
# that can be placed into, under or ontop of.
for filename in glob.glob("bddl/activity_definitions/*/*.pddl"):
    with open(filename, "r") as f:
        for line in f.readlines():
            line = line.lstrip()
            if len(line) != 0 and line[0] == "(":
                # If we see inside, under or ontop, that's an object that we must be
                # able to pick.
                if True in [pred in line[1:] for pred in ["inside ", "under ", "ontop "]]:
                    predicate_obj_list = line[1:].replace("(", "").replace(")", "").replace("?", "").replace("\n", "").split(" ")
                    objs_to_place.add(predicate_obj_list[1].split(".")[0])
                    # Parse objects that we can place into or ontop of/under separately.
                    if "inside " in line[1:]:
                        objs_to_place_into.add(predicate_obj_list[2].split(".")[0])
                    else:
                        objs_to_place_ontop.add(predicate_obj_list[2].split(".")[0])

# Now, given each of these object sets, find all sub-types in the type-hierarchy JSON
# to add to these sets.
def get_all_children(object_dict):
    if "children" not in object_dict.keys():
        return []
    children = []
    for child in object_dict["children"]:
        children = children + get_all_children(child)
        children.append(child["name"].split(".n")[0])
    return children

def get_object_type_hierarchy_by_name(object_name, object_dict):
    if object_name == object_dict["name"].split(".n")[0]:
        return object_dict
    if "children" not in object_dict.keys():
        return None
    for child in object_dict["children"]:
        sub_child = get_object_type_hierarchy_by_name(object_name, child)
        if sub_child is not None:
            return sub_child
    return None

with open("bddl/hierarchy_all.json", "r") as f:
    data = json.load(f)

objs_to_place_extended = set()
objs_to_place_into_extended = set()
objs_to_place_ontop_extended = set()

for obj_name in objs_to_place:
    objs_to_place_extended |= set(get_all_children(get_object_type_hierarchy_by_name(obj_name, data)))

for obj_name in objs_to_place_into:
    objs_to_place_into_extended |= set(get_all_children(get_object_type_hierarchy_by_name(obj_name, data)))

for obj_name in objs_to_place_ontop:
    objs_to_place_ontop_extended |= set(get_all_children(get_object_type_hierarchy_by_name(obj_name, data)))

# Combine the extended sets with the original.
objs_to_place |= objs_to_place_extended
objs_to_place_into |= objs_to_place_into_extended
# Add all surfaces to objects to place onto.
surfaces = set(get_all_children(get_object_type_hierarchy_by_name("surface", data)))
objs_to_place_ontop |= objs_to_place_ontop_extended | surfaces


# Function to parse out objects that have a 'name_ability' property.
def get_all_name_able_children(object_dict, name_ability):
    sliceable_objects = set()
    if name_ability in object_dict["abilities"].keys():
        sliceable_objects.add(object_dict["name"].split(".n")[0])
    if "children" in object_dict.keys():
        for child in object_dict["children"]:
            sliceable_objects |= get_all_name_able_children(child, name_ability)
    return sliceable_objects

# Print the result of the get_all_openable_children
# function.
print("GRASPABLE OBJECTS:")
print(objs_to_place)
print()
print("SURFACES WE CAN PLACE INTO:")
print(objs_to_place_into)
print()
print("SURFACES WE CAN PLACE ONTO:")
print(objs_to_place_ontop)
print()
print("OPENABLE OBJECTS:")
print(get_all_name_able_children(data, "openable"))
print()
print("SLICEABLE OBJECTS:")
print(get_all_name_able_children(data, "sliceable"))
print()
print("SLICER OBJECTS:")
print(get_all_name_able_children(data, "slicer"))
