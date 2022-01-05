SELECT a.id AS id, a.name AS name, a.day AS day, a.chapter AS chapter, COUNT(ar) AS total_requests
FROM assignments AS a
JOIN assistance_requests AS ar ON a.id = ar.assignment_id
GROUP BY a.id
ORDER BY total_requests DESC;