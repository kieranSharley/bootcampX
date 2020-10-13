--Get the total number of assistance_requests for a teacher.

--Select the teacher's name and the total assistance requests.
--Since this query needs to work with any specific teacher name,
-- use 'Waylon Boehm' for the teacher's name here.
-- /Users/kieransharley/lighthouse/w5/bootcampX/4_queries/1_total_teacher_assistance_requests.sql

SELECT teachers.name, count(assistance_requests) as total_assistances
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
WHERE teachers.name = 'Waylon Boehm'
GROUP BY teachers.name
