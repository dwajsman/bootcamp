SELECT cohorts.name ,COUNT(students.id) as student_count
FROM students 
JOIN cohorts
  ON students.cohort_id = cohorts.id
GROUP BY students.cohort_id
HAVING COUNT(students.id) >= 18
ORDER BY COUNT(students.id);







-- works...
-- SELECT COUNT(students.id) as student_count
-- FROM students 
-- JOIN cohorts
--   ON students.cohort_id = cohorts.id
-- GROUP BY students.cohort_id
-- HAVING COUNT(students.id) >= 18
-- ORDER BY COUNT(students.id);