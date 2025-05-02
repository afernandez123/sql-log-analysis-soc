-- Query 1: Show all failed login attempts
SELECT * FROM user_activity_log
WHERE action = 'login' AND success = false;

-- Query 2: Count failed logins per user
SELECT username, COUNT(*) AS failed_attempts
FROM user_activity_log
WHERE action = 'login' AND success = false
GROUP BY username;

-- Query 3: List IPs with more than 2 failed logins
SELECT ip_address, COUNT(*) AS failed_attempts
FROM user_activity_log
WHERE action = 'login' AND success = false
GROUP BY ip_address
HAVING COUNT(*) > 2;

-- Query 4: Logins between midnight and 5AM
SELECT * FROM user_activity_log
WHERE action = 'login'
  AND EXTRACT(HOUR FROM timestamp) BETWEEN 0 AND 5;
