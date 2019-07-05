SELECT 1 AS Result FROM movies WHERE rating='PG-13';
-- +--------+
-- | Result |
-- +--------+
-- |      1 |
-- |      1 |
-- |      1 |
-- +--------+

SELECT * FROM movies WHERE rating='R' AND title LIKE "%mat%";
-- +---------+------------+--------------+--------+
-- | MovieID | title      | release_year | rating |
-- +---------+------------+--------------+--------+
-- |       1 | The Matrix |         1999 | R      |
-- +---------+------------+--------------+--------+

SELECT * FROM movies WHERE rating='R' AND title NOT LIKE "%mat%";
-- +---------+-------------+--------------+--------+
-- | MovieID | title       | release_year | rating |
-- +---------+-------------+--------------+--------+
-- |       2 | Speed       |         1994 | R      |
-- |       6 | John Wick 3 |         2019 | R      |
-- +---------+-------------+--------------+--------+