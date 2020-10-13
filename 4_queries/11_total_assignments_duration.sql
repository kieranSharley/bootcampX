Get each day with the total number of assignments and the total duration of the assignments.

Select the day, number of assignments, and the total duration of assignments.
Order the results by the day.


SELECT day, count(assignments.id) as num_of_assignments, sum(duration) as duration
FROM assignments
group by day
order by day;