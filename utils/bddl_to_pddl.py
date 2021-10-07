from glob import glob


list_of_subdirs = glob("/home/frigg/Documents/GitHub/bddl/bddl/activity_definitions/*/")
for behavior_problem_loc in list_of_subdirs:
    bddl_file = open(behavior_problem_loc + 'problem0.bddl', 'r')
    new_pddl_file = open(behavior_problem_loc + 'problem0.pddl', 'w')

    for line in bddl_file.readlines():
        # This if statement replaces the domain line to now point to the igibson-actions domain
        if ':domain' in line:
            new_pddl_file.writelines('    (:domain igibson-actions)\n')
        else:
            # This below code block scans thru a line and removes any '?' characters that shouldn't be there (this occurs
            # when the thing after the character contains an underscore, which means it's actually a grounded variable name 
            # instead of an argument)
            new_line = ''
            line_i = 0
            while line_i < len(line):
                if line[line_i] == '?':
                    incorrect_qmark_found = False
                    line_j = line_i
                    while line[line_j] not in [' ', ')']:
                        if line[line_j] == '_':
                            incorrect_qmark_found = True
                            break
                        else:
                            line_j += 1
                    if incorrect_qmark_found:
                        new_line += line[line_i+1:line_j]
                    else:
                        new_line += line[line_i:line_j]
                    line_i = line_j
                else:
                    new_line += line[line_i]
                    line_i += 1
            # Writes the correct line that no longer contains incorrect '?' characters
            new_pddl_file.writelines(new_line)

    bddl_file.close()
    new_pddl_file.close()
