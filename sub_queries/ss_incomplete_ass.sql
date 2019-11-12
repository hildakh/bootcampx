-- SS's completed assignments

-- SELECT assignment_id
-- FROM assignment_submissions
-- JOIN students ON students.id = student_id
-- WHERE students.name = 'Ibrahim Schimmel';

-- Using the result from the previous query and 
-- compare it against the complete list of
-- assignments

-- SELECT assignments.name
-- FROM assignments 
-- WHERE id NOT IN (1, 2, 3, 4, 5, ...)

-- BAD PRACTICE >> Hard coding the list?!!


-- If the result of a query returns only one column, we can use that sub query in our WHERE clause.

SELECT assignments.name
FROM assignments 
WHERE id NOT IN
(
  SELECT assignment_id
  FROM assignment_submissions
  JOIN students ON students.id = student_id
  WHERE students.name = 'Ibrahim Schimmel'
);

