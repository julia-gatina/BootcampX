SELECT DISTINCT t.name AS teacher, c.name AS cohort, COUNT(ar.*) AS total_assistances
FROM assistance_requests AS ar 
JOIN teachers AS t ON ar.teacher_id = t.id
JOIN students AS s ON ar.student_id = s.id
JOIN cohorts AS c ON s.cohort_id = c.id
WHERE c.name = 'JUL02'
GROUP BY t.name, c.name
ORDER BY teacher;