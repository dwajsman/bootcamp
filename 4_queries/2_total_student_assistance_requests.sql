SELECT COUNT(student.id) as total_assistances, 
students.name as name
	FROM assistance_requests
	JOIN students ON students.id = student_id
	WHERE students.name = 'Elliot Dickinson'
	GROUP BY students.name; 


-- SELECT * FROM students;
-- SELECT COUNT(id) FROM assistance_requests
-- WHERE teacher_id = 4;


-- SELECT COUNT(teachers.id) as total_assistances, 
-- 	FROM assistance_requests
-- 	JOIN teachers ON teachers.id = teacher_id
-- 	WHERE teachers.name = 'Waylon Boehm'; 