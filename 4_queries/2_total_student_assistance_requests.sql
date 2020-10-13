
--Get important data about each assistance request.

--Select the teacher's name, student's name, assignment's name, and the duration of each assistance request.
--Subtract completed_at by started_at to find the duration.
--Order by the duration of the request.

SELECT students.name, count(assistance_requests) as total_assistances
FROM assistance_requests
JOIN students ON students.id = student_id
WHERE students.name = 'Elliot Dickinson'
GROUP BY students.name;