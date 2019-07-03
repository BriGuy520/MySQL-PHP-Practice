CREATE TABLE bowling_scores (PlayerID INT NOT NULL AUTO_INCREMENT
    , first_name VARCHAR(100)
    , last_name VARCHAR(100)
    , GAME1 INT
    , GAME2 INT
    , GAME3 INT
    , GAME4 INT
    , PRIMARY KEY (PlayerID));

INSERT INTO bowling_scores (FIRST_NAME, LAST_NAME, GAME1, GAME2, GAME3, GAME4) VALUES
    ('Brian', 'Falasz', 224, 300, 206, 300)    
    , ('Robert', 'McInerney', 122, 148, 80, 74)    
    , ('Ashley', 'Falasz', 200, 222, 178, 194)
    , ('Jeremiah', 'Getty', 80, 120, 138, 124);

 SELECT CONCAT(LAST_NAME, ', ', FIRST_NAME) AS 'Player'
    , CONCAT(SUBSTRING(FIRST_NAME, 1, 1), SUBSTRING(LAST_NAME, 1, 1)) AS 'Initials'
    , GAME1 AS 'G1'
    , GAME2 AS 'G2'
    , GAME3 AS 'G3'
    , GAME4 AS 'G4'
    , GAME1 + GAME2 + GAME3 + GAME4 AS 'Tournament Total'
    , (GAME1 + GAME2 + GAME3 + GAME4) / 4 AS 'Tournament Average'
  FROM bowling_scores;