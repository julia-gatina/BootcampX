SELECT DISTINCT t.name AS teacher, c.name AS cohort
FROM assistance_requests AS ar 
JOIN teachers AS t ON ar.teacher_id = t.id
JOIN students AS s ON ar.student_id = s.id
JOIN cohorts AS c ON s.cohort_id = c.id
WHERE c.name = 'JUL02'
ORDER BY teacher;