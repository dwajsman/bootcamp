SELECT day, COUNT(day) as total_assignments
FROM assignments
GROUP BY day
HAVING COUNT(day) >= 10
ORDER BY day;


-- syntax
-- SELECT column_name(s)
-- FROM table_name
-- WHERE condition
-- GROUP BY column_name(s)
-- ORDER BY column_name(s);