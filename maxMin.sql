SELECT MAX(RELEASE_YEAR) from movies;
-- +-------------------+
-- | MAX(RELEASE_YEAR) |
-- +-------------------+
-- |              2019 |
-- +-------------------+

SELECT MIN(RELEASE_YEAR) from movies;
-- +-------------------+
-- | MIN(RELEASE_YEAR) |
-- +-------------------+
-- |              1994 |
-- +-------------------+

SELECT title, max(release_year), rating FROM movies;
-- +------------+-------------------+--------+
-- | title      | max(release_year) | rating |
-- +------------+-------------------+--------+
-- | The Matrix |              2019 | R      |
-- +------------+-------------------+--------+

-- Incorrect

SELECT MIN(RELEASE_YEAR), rating from movies WHERE TITLE LIKE "%land%" GROUP BY TITLE, RATING;
-- +-------------------+--------+
-- | MIN(RELEASE_YEAR) | rating |
-- +-------------------+--------+
-- |              2001 | PG-13  |
-- |              2016 | PG-13  |
-- +-------------------+--------+

select rating, min(release_year) from movies where title like "%land%" group by rating;
-- +--------+-------------------+
-- | rating | min(release_year) |
-- +--------+-------------------+
-- | PG-13  |              2001 |
-- +--------+-------------------+