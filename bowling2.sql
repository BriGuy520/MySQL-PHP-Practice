CREATE TABLE bowlResults (BowlResultID INT NOT NULL AUTO_INCREMENT
                          , FNAME VARCHAR(50) DEFAULT NULL
                          , LNAME VARCHAR(50) DEFAULT NULL
                          , Game_Num int DEFAULT NULL
                          , Game_Score int DEFAULT NULL
                          , PRIMARY KEY (BowlResultID));

INSERT INTO bowlResults (FNAME, LNAME, Game_Num, Game_Score)
VALUES ('Brian', 'Falasz', 1, 300)
      ,('Brian', 'Falasz', 2, 203)
      ,('Brian', 'Falasz', 3, 300)
      ,('Brian', 'Falasz', 4, 235)
      ,('Jeremiah', 'Getty', 1, 192)
      ,('Jeremiah', 'Getty', 2, 82)
      ,('Jeremiah', 'Getty', 3, 75)
      ,('Jeremiah', 'Getty', 4, 98)
      ,('Robert', 'McInerney', 1, 84)
      ,('Robert', 'McInerney', 2, 73)
      ,('Robert', 'McInerney', 3, 64)
      ,('Robert', 'McInerney', 4, 84)
      ,('Jonathan', 'Gaines', 1, 93)
      ,('Jonathan', 'Gaines', 3, 129)
      ,('Jonathan', 'Gaines', 1, 123)
      ,('Jonathan', 'Gaines', 4, 74);


SELECT CONCAT(FNAME, ', ', LNAME) AS Player
     , SUM(Game_Score) AS "Tournament Total"
     , SUM(Game_Score)/COUNT(*) AS "Tournament Average"
     from bowlResults
     GROUP BY FNAME, LNAME
     ORDER BY SUM(Game_Score)/COUNT(*) DESC
     LIMIT 3;

-- +------------------+------------------+--------------------+
-- | Player           | Tournament Total | Tournament Average |
-- +------------------+------------------+--------------------+
-- | Brian, Falasz    |             1038 |           259.5000 |
-- | Jeremiah, Getty  |              447 |           111.7500 |
-- | Jonathan, Gaines |              419 |           104.7500 |
-- +------------------+------------------+--------------------+

SELECT CONCAT(FNAME, ' ', LNAME) AS "Player"
      , MAX(Game_Score) AS "Best Game"
      from bowlResults
      GROUP BY FNAME, LNAME
      ORDER BY MAX(Game_Score) DESC;
-- +-------------------+-----------+
-- | Player            | Best Game |
-- +-------------------+-----------+
-- | Brian Falasz     |       300 |
-- | Jeremiah Getty   |       192 |
-- | Jonathan Gaines  |       129 |
-- | Robert McInerney |        84 |
-- +-------------------+-----------+

SELECT DISTINCT CONCAT(FNAME, ' ', LNAME) AS "Player" from bowlResults;
-- +------------------+
-- | Player           |
-- +------------------+
-- | Brian Falasz     |
-- | Jeremiah Getty   |
-- | Robert McInerney |
-- | Jonathan Gaines  |
-- +------------------+