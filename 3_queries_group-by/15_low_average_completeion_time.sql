SELECT stud.name as student_name, AVG(assig_sub.duration) as average_assignment_duration, AVG(assig.duration) AS average_estimated_duration
FROM students AS stud JOIN assignment_submissions AS assig_sub ON stud.id = assig_sub.student_id
JOIN assignments AS assig ON assig_sub.assignment_id = assig.id 
WHERE end_date IS NULL
GROUP BY student_name
HAVING AVG(assig_sub.duration) < AVG(assig.duration)
ORDER BY average_assignment_duration ASC;