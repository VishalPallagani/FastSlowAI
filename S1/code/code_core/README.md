#### Functionality Description of each Python file
1. case_distance_calculator.py: consists of functions to find initialize case library (string/set modes) and find plans similar to the problem (Problem = (Init, Goal)) as mentioned by the user using 2 similarity scores - Levenshtein/Jaccard Index.

2. cases_ir.py: enables loading cases and also automatically adding new cases when found, i.e., when a user runs a planner to generate new plans.

3. planfile_generation.py: for generating plans using Classical Planner (API) or Epistemic Planner.

4. ranking_algorithm.py: to rank plans based on their length

5. s1_solver.py: retrieves plans from the case library with goals similar to the one's mentioned by the user.
