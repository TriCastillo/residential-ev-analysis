-- long_duration_shared_users
SELECT user_id, AVG(duration_hours) AS avg_charging_duration
FROM charging_sessions
WHERE user_type = 'Shared'
GROUP BY user_id
HAVING AVG(duration_hours) > 10 
ORDER BY avg_charging_duration DESC