SELECT COUNT(assist.*) AS total_assistances, teach.name AS name
FROM assistance_requests AS assist
JOIN teachers AS teach on assist.teacher_id = teach.id
WHERE teach.name = 'Waylon Boehm'
GROUP BY teach.name;