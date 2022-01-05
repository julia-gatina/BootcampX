SELECT COUNT(assist.*) AS total_assistances, stud.name AS name 
FROM assistance_requests AS assist
JOIN students AS stud ON assist.student_id = stud.id
WHERE name = 'Elliot Dickinson'
GROUP BY name;