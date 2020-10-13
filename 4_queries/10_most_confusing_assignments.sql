--List each assignment with the total number of assistance requests with it.

--Select the assignment's id, day, chapter, name and the total assistances.
--Order by total assistances in order of most to least.
-- \i 4_queries/10_most_confusing_assignments.sql

SELECT assignments.id, name, day, chapter,  count(assistance_requests.id) as total_requests
FROM assignments
JOIN assistance_requests ON assignment_id = assignments.id
GROUP BY assignments.id
order by total_requests DESC;    
