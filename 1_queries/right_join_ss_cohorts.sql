SELECT students.name as student_name, email, cohorts.name as cohort_name 
-- Returns all the cohorts even the ones without any students
FROM students RIGHT JOIN cohorts ON cohorts.id = cohort_id;