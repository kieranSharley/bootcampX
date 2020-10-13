--Get the average time of an assistance request.

--Select just a single row here and name it average_assistance_request_duration
--In Postgres, we can subtract two timestamps to find the duration between them. (timestamp1 - timestamp2)
  -- started_at TIMESTAMP,
  -- completed_at TIMESTAMP,
--4_queries/4_average_assistance_time.sql

SELECT AVG(completed_at - started_at) as average_assistance_request_duration
FROM assistance_requests