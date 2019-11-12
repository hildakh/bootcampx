-- The two queries below give the exact same results. The order of the tables after from and join keywords does not matter since we are joining the two tables based on students.id found in both tables

SELECT students.name as student_name, COUNT(*) as total_submissions
FROM students
JOIN assignment_submissions ON students.id = student_id
GROUP BY students.name;

-- SELECT students.name as student_name, COUNT(*) as total_submissions
-- FROM assignment_submissions
-- JOIN students ON students.id = student_id
-- GROUP BY students.name;


