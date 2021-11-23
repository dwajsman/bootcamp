SELECT SUM(assignment_submissions.duration)
FROM students 
JOIN assignment_submissions ON students.id = assignment_submissions.student_id
WHERE students.name LIKE 'Ibrahim Schimmel';



-- SELECT students.name as student_name,
--  	   cohorts.name as cohort_name,
--  	   cohorts.start_date as cohort_start_date,
--  	   students.start_date as students_start_date
-- FROM students JOIN cohorts ON cohorts.id = cohort_id
-- WHERE cohorts.start_date != students.start_date
-- ORDER BY cohort_start_date;



-- SELECT students.name, cohorts.name
-- FROM students JOIN cohorts ON cohorts.id = cohort_id
-- WHERE cohorts.start_date != students.start_date;


-- SELECT COUNT(assignment_submissions.duration)
-- FROM students JOIN assignment_submissions ON students.id = assignment_submissions.student_id
-- WHERE students.name LIKE 'Ibrahim Schimmel';