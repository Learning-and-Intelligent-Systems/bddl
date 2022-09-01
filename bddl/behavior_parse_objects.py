import glob
import json

objs_to_place = set()
objs_to_place_into = set()
for filename in glob.glob("bddl/activity_definitions/*/*.pddl"):
    with open(filename, "r") as f:
        for line in f.readlines():
            line = line.lstrip()
            if len(line) != 0 and line[0] == "(":
                if True in [pred in line[1:] for pred in ["inside ", "under ", "ontop "]]:
                    predicate_obj_list = line[1:].replace("(", "").replace(")", "").replace("?", "").replace("\n", "").split(" ")
                    objs_to_place.add(predicate_obj_list[1].split(".")[0])
                    objs_to_place_into.add(predicate_obj_list[2].split(".")[0])

print(objs_to_place)
print()
print(objs_to_place_into)
print()

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

for obj_name in objs_to_place:
    objs_to_place_extended |= set(get_all_children(get_object_type_hierarchy_by_name(obj_name, data)))

for obj_name in objs_to_place_into:
    objs_to_place_into_extended |= set(get_all_children(get_object_type_hierarchy_by_name(obj_name, data)))

print(objs_to_place_extended)
print()
print(objs_to_place_into_extended)
print()

print(len(objs_to_place))
print()
print(len(objs_to_place_into))
print()
print(len(objs_to_place_extended))
print()
print(len(objs_to_place_into_extended))
print()

print(objs_to_place | objs_to_place_extended)
print(objs_to_place_into | objs_to_place_into_extended)

surfaces = set(get_all_children(get_object_type_hierarchy_by_name("surface", data)))
print(objs_to_place_into | objs_to_place_into_extended | surfaces)