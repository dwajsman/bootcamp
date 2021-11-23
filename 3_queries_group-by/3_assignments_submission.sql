SELECT cohorts.name as cohort, COUNT(assignment_submissions.student_id) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_submissions DESC;


-- SELECT cohorts.name AS cohort_name ,COUNT(students.id) as student_count
-- FROM students 
-- JOIN cohorts
--   ON students.cohort_id = cohorts.id
-- GROUP BY cohorts.name
-- HAVING COUNT(students.id) >= 18
-- ORDER BY COUNT(students.id);



-- works... only w student count
-- SELECT COUNT(students.id) as student_count
-- FROM students 
-- JOIN cohorts
--   ON students.cohort_id = cohorts.id
-- GROUP BY students.cohort_id
-- HAVING COUNT(students.id) >= 18
-- ORDER BY COUNT(students.id);