SELECT students.name as student_name, email, cohorts.name as cohort_name
-- The inner keyword can be left off as the default join type if INNER JOIN
FROM students INNER JOIN cohorts ON cohorts.id = cohort_id;
