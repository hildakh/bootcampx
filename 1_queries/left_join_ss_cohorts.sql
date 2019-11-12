SELECT students.name as student_name, email, cohorts.name as cohort_name 
-- Returns all the students even the ones without a cohort_id
FROM students LEFT JOIN cohorts ON cohorts.id = cohort_id;