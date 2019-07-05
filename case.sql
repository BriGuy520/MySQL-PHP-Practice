SELECT title, rating, CASE
     WHEN rating='PG' OR rating='G' THEN 'Bring the kids!'
     WHEN rating='PG-13' THEN 'Older kids only!'
     WHEN rating='R' THEN 'NO KIDS!'
     ELSE 'No Information'
     END AS audience
     from movies;

-- +------------------------+--------+------------------+
-- | title                  | rating | audience         |
-- +------------------------+--------+------------------+
-- | The Matrix             | R      | NO KIDS!         |
-- | Speed                  | R      | NO KIDS!         |
-- | Zoolander              | PG-13  | Older kids only! |
-- | Dodgeball              | PG-13  | Older kids only! |
-- | Zoolander 2            | PG-13  | Older kids only! |
-- | John Wick 3            | R      | NO KIDS!         |
-- | John Wick 2            | R      | NO KIDS!         |
-- | Memento                | R      | NO KIDS!         |
-- | Toy Story              | G      | Bring the kids!  |
-- | Toy Story 2            | G      | Bring the kids!  |
-- | Toy Story 3            | G      | Bring the kids!  |
-- | Up                     | PG     | Bring the kids!  |
-- | Finding Nemo           | G      | Bring the kids!  |
-- | The Matrix Reloaded    | NULL   | No Information   |
-- | The Matrix Revolutions | NULL   | No Information   |
-- | Fight Club             |        | No Information   |
-- +------------------------+--------+------------------+