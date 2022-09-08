# NOTE: Run from the root of the bddl repo!
import json
import glob

# First, parse the set of all unique object type names from the PDDL/BDDL files.
pddl_type_strs_set = set()
for filename in glob.glob('bddl/activity_definitions/*/*.bddl'):
    file = open(filename, 'r')
    inside_object_def = False
    for line in file:
        if "(:objects" in line:
            # We're now inside the object def section.
            inside_object_def = True
        elif inside_object_def:
            if ")" not in line:
                # Parse the object name out of here.
                object_type_name = line.split("- ")[-1].replace('\n', '')
                pddl_type_strs_set.add(object_type_name)
            else:
                # We've reached the closing paren of the ":objects"
                # section: break this loop and move on to the next
                # file.
                break
print(f"Object types parsed from BDDL files: {pddl_type_strs_set}")

def find_category(type_name, object_dict):
    if object_dict["name"] == type_name:
        if len(object_dict["igibson_categories"]) == 0:
            return {type_name.split(".")[0]}
        return set(object_dict["igibson_categories"])
    else:
        if "children" not in object_dict.keys():
            return None
        else:
            for child in object_dict["children"]:
                if find_category(type_name, child) is not None:
                    return find_category(type_name, child)

with open("bddl/hierarchy_all.json", "r") as f:
    data = json.load(f)

# Get the object category for every type!
all_categories = set()
for pddl_type in pddl_type_strs_set:
    # There is no category for the agent.
    if pddl_type != "agent.n.01":
        pddl_obj_categories = find_category(pddl_type, data)
        if pddl_obj_categories is None:
            pddl_obj_categories = {pddl_type.split('.n')[0]}
        all_categories |= pddl_obj_categories

print(f"Object categories obtained from type hierarchy: {all_categories}")
