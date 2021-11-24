-- SELECT SUM(TAB.total_duration)/COUNT(TAB.*) AS average_total_duration FROM 
-- (SELECT cohorts.name, SUM(completed_at - started_at) AS total_duration
-- FROM students
-- JOIN cohorts ON cohorts.id = cohort_id
-- JOIN assistance_requests ON assistance_requests.student_id = students.id 
-- GROUP BY cohorts.name
-- ORDER BY total_duration) AS TAB;


-- SELECT assignment_id, COUNT(id) FROM assistance_requests
-- GROUP BY assignment_id
-- ORDER BY COUNT(id) DESC;



-- SELECT assistance_requests.assignment_id, assignments.name, assignments.day, assignments.chapter, COUNT(assignments.id) AS total_requests
-- FROM assistance_requests
-- JOIN assignments ON assignments.id = assignment_id
-- GROUP BY assignment_id
-- ORDER BY total_requests DESC;


SELECT assignments.id, assignments.name, assignments.day, assignments.chapter, COUNT(assistance_requests.*) AS total_requests
FROM assignments
JOIN assistance_requests ON assignment_id = assignments.id
GROUP BY assignments.id
ORDER BY COUNT(assistance_requests.*) DESC;
