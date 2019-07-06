CREATE TABLE Friends (FriendID INT NOT NULL AUTO_INCREMENT
            , FNAME VARCHAR(50) DEFAULT NULL
            , LNAME VARCHAR(50) DEFAULT NULL
            , dob DATE DEFAULT NULL
            , PRIMARY KEY (FriendID));

INSERT INTO Friends(FNAME, LNAME, dob) VALUES
              ('Robert', 'McInerney', '1989-08-12')
            , ('Jeremiah', 'Getty', '1987-12-12')
            , ('Jonathan', 'Gaines', '1989-10-24')
            , ('Brian', 'Falasz', '1990-05-20');
  