CREATE TABLE user_activity_log (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50),
    action VARCHAR(100),
    success BOOLEAN,
    ip_address VARCHAR(45),
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO user_activity_log (username, action, success, ip_address, timestamp) VALUES
('jdoe', 'login', true, '192.168.1.15', '2025-05-01 08:12:45'),
('jdoe', 'logout', true, '192.168.1.15', '2025-05-01 08:58:03'),
('mjones', 'login', false, '10.0.0.23', '2025-05-01 09:15:12'),
('mjones', 'login', true, '10.0.0.23', '2025-05-01 09:17:03'),
('admin', 'password change', true, '172.16.0.1', '2025-05-01 10:00:00'),
('asmith', 'login', false, '203.0.113.99', '2025-05-01 23:48:19'),
('asmith', 'login', false, '203.0.113.99', '2025-05-01 23:49:02'),
('asmith', 'login', false, '203.0.113.99', '2025-05-01 23:50:01'),
('asmith', 'login', true, '203.0.113.99', '2025-05-01 23:51:30'),
('guest', 'login', true, '198.51.100.23', '2025-05-01 03:21:10');
