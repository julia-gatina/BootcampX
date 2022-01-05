
SELECT t.name as teacher, s.name as student, a.name as assignment, (completed_at-started_at) as duration
FROM assistance_requests AS ar
JOIN teachers AS t ON ar.teacher_id = t.id
JOIN students AS s ON s.id = ar.student_id
JOIN assignments AS a ON a.id = ar.assignment_id
ORDER BY duration;