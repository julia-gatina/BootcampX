SELECT stud.name as student_name, stud.end_date as end_date, avg(assig.duration) as average_assignment_duration
FROM students AS stud JOIN assignment_submissions AS assig ON stud.id = assig.student_id
WHERE end_date IS NULL
GROUP BY student_name, end_date
ORDER BY average_assignment_duration DESC;