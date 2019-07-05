SELECT title, release_year FROM movies WHERE release_year > 2005;
-- +-------------+--------------+
-- | title       | release_year |
-- +-------------+--------------+
-- | Zoolander 2 |         2016 |
-- | John Wick 3 |         2019 |
-- +-------------+--------------+

SELECT title, release_year FROM movies WHERE release_year = 2001;
-- +-----------+--------------+
-- | title     | release_year |
-- +-----------+--------------+
-- | Zoolander |         2001 |
-- +-----------+--------------+

SELECT title, release_year FROM movies WHERE release_year > 2005 AND
release_year < 2017;
-- +-------------+--------------+
-- | title       | release_year |
-- +-------------+--------------+
-- | Zoolander 2 |         2016 |
-- +-------------+--------------+

SELECT title, release_year FROM movies WHERE release_year <= 2001;
-- +------------+--------------+
-- | title      | release_year |
-- +------------+--------------+
-- | The Matrix |         1999 |
-- | Speed      |         1994 |
-- | Zoolander  |         2001 |
-- +------------+--------------+

SELECT title, release_year FROM movies WHERE release_year BETWEEN 2001 AND 2017;
-- +-------------+--------------+
-- | title       | release_year |
-- +-------------+--------------+
-- | Zoolander   |         2001 |
-- | Dodgeball   |         2004 |
-- | Zoolander 2 |         2016 |
-- +-------------+--------------+

SELECT title, release_year FROM movies WHERE release_year <> 2016;
-- +-------------+--------------+
-- | title       | release_year |
-- +-------------+--------------+
-- | The Matrix  |         1999 |
-- | Speed       |         1994 |
-- | Zoolander   |         2001 |
-- | Dodgeball   |         2004 |
-- | John Wick 3 |         2019 |
-- +-------------+--------------+

SELECT title, release_year FROM movies WHERE title <> 'Speed';
-- +-------------+--------------+
-- | title       | release_year |
-- +-------------+--------------+
-- | The Matrix  |         1999 |
-- | Zoolander   |         2001 |
-- | Dodgeball   |         2004 |
-- | Zoolander 2 |         2016 |
-- | John Wick 3 |         2019 |
-- +-------------+--------------+

SELECT title, release_year FROM movies WHERE release_year IN (2001, 2004, 2016, 2018);
-- +-------------+--------------+
-- | title       | release_year |
-- +-------------+--------------+
-- | Zoolander   |         2001 |
-- | Dodgeball   |         2004 |
-- | Zoolander 2 |         2016 |
-- +-------------+--------------+

SELECT title, release_year FROM movies WHERE release_year NOT IN (2001, 2004, 2016, 2018);
-- +-------------+--------------+
-- | title       | release_year |
-- +-------------+--------------+
-- | The Matrix  |         1999 |
-- | Speed       |         1994 |
-- | John Wick 3 |         2019 |
-- +-------------+--------------+

SELECT title, release_year FROM movies WHERE title IN ('The Matrix','John Wick 3');
-- +-------------+--------------+
-- | title       | release_year |
-- +-------------+--------------+
-- | The Matrix  |         1999 |
-- | John Wick 3 |         2019 |
-- +-------------+--------------+

SELECT * FROM movies WHERE rating='R' OR title LIKE "%land%";
-- +---------+-------------+--------------+--------+
-- | MovieID | title       | release_year | rating |
-- +---------+-------------+--------------+--------+
-- |       1 | The Matrix  |         1999 | R      |
-- |       2 | Speed       |         1994 | R      |
-- |       3 | Zoolander   |         2001 | PG-13  |
-- |       5 | Zoolander 2 |         2016 | PG-13  |
-- |       6 | John Wick 3 |         2019 | R      |
-- +---------+-------------+--------------+--------+

SELECT * FROM movies WHERE (rating='R' OR title LIKE "%land%");
-- +---------+-------------+--------------+--------+
-- | MovieID | title       | release_year | rating |
-- +---------+-------------+--------------+--------+
-- |       1 | The Matrix  |         1999 | R      |
-- |       2 | Speed       |         1994 | R      |
-- |       3 | Zoolander   |         2001 | PG-13  |
-- |       5 | Zoolander 2 |         2016 | PG-13  |
-- |       6 | John Wick 3 |         2019 | R      |
-- +---------+-------------+--------------+--------+

SELECT * FROM movies WHERE NOT rating='PG-13' AND NOT rating='PG' AND NOT rating='R';
-- +---------+--------------+--------------+--------+
-- | MovieID | title        | release_year | rating |
-- +---------+--------------+--------------+--------+
-- |       9 | Toy Story    |         1995 | G      |
-- |      10 | Toy Story 2  |         1999 | G      |
-- |      11 | Toy Story 3  |         2010 | G      |
-- |      13 | Finding Nemo |         NULL | G      |
-- |      16 | Fight Club   |         NULL |        |
-- +---------+--------------+--------------+--------+

SELECT * FROM movies WHERE rating IS NULL;
-- +---------+------------------------+--------------+--------+
-- | MovieID | title                  | release_year | rating |
-- +---------+------------------------+--------------+--------+
-- |      14 | The Matrix Reloaded    |         2001 | NULL   |
-- |      15 | The Matrix Revolutions |         2001 | NULL   |
-- +---------+------------------------+--------------+--------+

SELECT * FROM movies WHERE rating = 'R' OR rating IS NULL;
-- +---------+------------------------+--------------+--------+
-- | MovieID | title                  | release_year | rating |
-- +---------+------------------------+--------------+--------+
-- |       1 | The Matrix             |         1999 | R      |
-- |       2 | Speed                  |         1994 | R      |
-- |       6 | John Wick 3            |         2019 | R      |
-- |       7 | John Wick 2            |         2017 | R      |
-- |       8 | Memento                |         2000 | R      |
-- |      14 | The Matrix Reloaded    |         2001 | NULL   |
-- |      15 | The Matrix Revolutions |         2001 | NULL   |
-- +---------+------------------------+--------------+--------+

SELECT * FROM movies WHERE rating = 'R' OR rating='';
-- +---------+-------------+--------------+--------+
-- | MovieID | title       | release_year | rating |
-- +---------+-------------+--------------+--------+
-- |       1 | The Matrix  |         1999 | R      |
-- |       2 | Speed       |         1994 | R      |
-- |       6 | John Wick 3 |         2019 | R      |
-- |       7 | John Wick 2 |         2017 | R      |
-- |       8 | Memento     |         2000 | R      |
-- |      16 | Fight Club  |         NULL |        |
-- +---------+-------------+--------------+--------+

SELECT * FROM movies WHERE rating='R' OR IFNULL(rating, '') = '';
-- +---------+------------------------+--------------+--------+
-- | MovieID | title                  | release_year | rating |
-- +---------+------------------------+--------------+--------+
-- |       1 | The Matrix             |         1999 | R      |
-- |       2 | Speed                  |         1994 | R      |
-- |       6 | John Wick 3            |         2019 | R      |
-- |       7 | John Wick 2            |         2017 | R      |
-- |       8 | Memento                |         2000 | R      |
-- |      14 | The Matrix Reloaded    |         2001 | NULL   |
-- |      15 | The Matrix Revolutions |         2001 | NULL   |
-- |      16 | Fight Club             |         NULL |        |
-- +---------+------------------------+--------------+--------+