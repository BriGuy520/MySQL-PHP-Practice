SELECT * FROM movies WHERE TITLE LIKE 'zoo%';

-- +---------+-------------+--------------+--------+
-- | MovieID | title       | release_year | rating |
-- +---------+-------------+--------------+--------+
-- |       3 | Zoolander   |         2001 | PG-13  |
-- |       5 | Zoolander 2 |         2016 | PG-13  |
-- +---------+-------------+--------------+--------+

SELECT * FROM movies WHERE TITLE LIKE '%land%';

-- +---------+-------------+--------------+--------+
-- | MovieID | title       | release_year | rating |
-- +---------+-------------+--------------+--------+
-- |       3 | Zoolander   |         2001 | PG-13  |
-- |       5 | Zoolander 2 |         2016 | PG-13  |
-- +---------+-------------+--------------+--------+

select count(*) AS "Zoolander Movies" FROM movies WHERE title like '%land%';

-- +------------------+
-- | Zoolander Movies |
-- +------------------+
-- |                2 |
-- +------------------+