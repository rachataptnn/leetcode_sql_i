SELECT
    event_day day,
    emp_id,
    SUM(out_time) - SUM(in_time) AS total_time
FROM Employees
GROUP BY day, emp_id