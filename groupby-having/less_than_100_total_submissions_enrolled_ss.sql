SELECT students.name as student_name, COUNT(*) as total_submissions
-- SELECT students.name as student_name, COUNT(assignment_submissions.*) as total_submissions
FROM students
JOIN assignment_submissions ON students.id = student_id
-- students.end_date IS NULL refers to students who are currently enrolled
WHERE students.end_date IS NULL
GROUP BY students.name
HAVING COUNT(*) < 100;
-- HAVING COUNT(assignment_submissions.*) < 100;


