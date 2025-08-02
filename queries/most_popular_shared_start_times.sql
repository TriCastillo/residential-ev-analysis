-- most_popular_shared_start_times
SELECT weekdays_plugin, start_plugin_hour, COUNT(*) AS num_charging_sessions
FROM charging_sessions
WHERE user_type = 'Shared'
GROUP BY weekdays_plugin, start_plugin_hour
ORDER BY num_charging_sessions DESC
LIMIT 10;