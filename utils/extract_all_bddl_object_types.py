from glob import glob

# Go through all BDDL files and extract the set of all object types necessary!

list_of_subdirs = glob("/home/frigg/Documents/GitHub/bddl/bddl/activity_definitions/*/")
object_types = set()
for behavior_problem_loc in list_of_subdirs:
    bddl_file = open(behavior_problem_loc + 'problem0.bddl', 'r')
    for line in bddl_file.readlines():
        tokens = line.strip().split(' ')
        if '-' in tokens:
            dash_index = tokens.index('-') # the type is always the next index after a dash
            object_type = tokens[dash_index + 1]
            if object_type[-1] == ')':
                object_type = object_type[:-1]
            object_types.add(object_type)         
    bddl_file.close()

print(f"Number of unique object types: {len(object_types)}")
print("Object Types:")
print(list(object_types))