
SELECT  teachers.name, cohorts.name, count(assistance_requests) as total_assistances
FROM cohorts
JOIN students ON cohort_id = cohorts.id
JOIN assistance_requests ON students.id = student_id
JOIN teachers ON teacher_id = teachers.id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY teachers.name
