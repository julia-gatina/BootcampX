SELECT AVG(total_duration) AS average_total_duration FROM
(
SELECT c.name AS cohort, SUM(ar.completed_at - ar.started_at) AS total_duration
FROM assistance_requests AS ar
JOIN students AS s ON ar.student_id = s.id
JOIN cohorts AS c ON s.cohort_id = c.id
GROUP BY cohort
) AS total_duration;