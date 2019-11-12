SELECT students.name as student_name, email, cohorts.name as cohort_name 
-- Returns all cohorts and all students even when there is no match
FROM students FULL JOIN cohorts ON cohorts.id = cohort_id;