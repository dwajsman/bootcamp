-- Version 1
-- SELECT teacher_id, student_id, assignment_id, (completed_at - started_at) 
-- FROM assistance_requests
-- ORDER BY (completed_at - started_at);


SELECT teachers.name as teacher, students.name as student, assignments.name as assignment, (completed_at - started_at) as duration
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN teachers ON teachers.id = teacher_id
JOIN assignments ON assignments.id = assignment_id
ORDER BY (completed_at - started_at);
