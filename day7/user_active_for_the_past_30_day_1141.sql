SELECT
    activity_date AS day,
    COUNT(DISTINCT user_id) AS active_users
FROM
    activity
WHERE
    activity_date BETWEEN date_sub('2019-07-28', INTERVAL 30 DAY) AND '2019-07-27'
GROUP BY
    activity_date;