-- SELECT (SUM(completed_at - started_at)/COUNT(completed_at)) as average_assistance_request_duration 
-- FROM assistance_requests;

SELECT cohorts.name, avg(completed_at - started_at) AS average_assistance_time
FROM students
JOIN cohorts ON cohorts.id = cohort_id
JOIN assistance_requests ON assistance_requests.student_id = students.id 
GROUP BY cohorts.name
ORDER BY average_assistance_time ;



