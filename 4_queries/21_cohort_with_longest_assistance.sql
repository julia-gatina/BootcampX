SELECT c.name AS name, AVG(GREATEST(ar.completed_at - ar.started_at)) AS average_assistance_time
FROM assistance_requests AS ar
JOIN students AS s ON ar.student_id = s.id
JOIN cohorts AS c ON s.cohort_id = c.id
GROUP BY c.name
ORDER BY average_assistance_time DESC 
LIMIT 1;