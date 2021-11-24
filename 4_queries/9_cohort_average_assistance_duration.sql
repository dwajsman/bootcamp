-- SELECT cohorts.name, SUM(completed_at - started_at) AS total_duration
-- FROM students
-- JOIN cohorts ON cohorts.id = cohort_id
-- JOIN assistance_requests ON assistance_requests.student_id = students.id 
-- GROUP BY cohorts.name
-- ORDER BY total_duration;


-- SELECT SUM(completed_at - started_at)/SUM(cohorts.id)
-- FROM assistance_requests
-- JOIN cohorts ON ;


-- SELECT SUM(completed_at - started_at)/COUNT(*)
-- FROM assistance_requests;

-- SELECT * FROM cohorts;

SELECT SUM(TAB.total_duration)/COUNT(TAB.*) AS average_total_duration FROM 
(SELECT cohorts.name, SUM(completed_at - started_at) AS total_duration
FROM students
JOIN cohorts ON cohorts.id = cohort_id
JOIN assistance_requests ON assistance_requests.student_id = students.id 
GROUP BY cohorts.name
ORDER BY total_duration) AS TAB;














