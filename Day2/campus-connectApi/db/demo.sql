DROP TABLE IF EXISTS demo_users;
CREATE TABLE demo_users AS
SELECT g AS id, 'User ' || g AS name, 'user' || g || '@example.com' AS email
FROM generate_series(1, 300000) AS g;
ANALYZE demo_users;
