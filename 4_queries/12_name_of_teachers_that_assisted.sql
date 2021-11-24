-- SELECT assignments.id, assignments.name, assignments.day, assignments.chapter, COUNT(assistance_requests.*) AS total_requests
-- FROM assignments
-- JOIN assistance_requests ON assignment_id = assignments.id
-- GROUP BY assignments.id
-- ORDER BY COUNT(assistance_requests.*) DESC;



-- SELECT day, COUNT(*) AS number_of_assignments, SUM(duration) AS duration
-- FROM assignments
-- GROUP BY day
-- ORDER BY day;




SELECT DISTINCT teachers.name AS teacher, cohorts.name AS cohort
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02';




-- SELECT name FROM cohorts
-- JOIN students FROM ;