INSERT INTO person (fname, lname, dob) VALUES 
          ('Brian', 'Falasz', '1990-05-20')
        , ('Ashley', 'Falasz', '1991-08-12');

SELECT dob AS Birthdays, CURDATE() AS Today FROM person;
-- +------------+------------+
-- | Birthdays  | Today      |
-- +------------+------------+
-- | 1990-05-20 | 2019-07-04 |
-- | 1991-08-12 | 2019-07-04 |
-- +------------+------------+

SELECT dob AS Birthdays, 
      CURDATE() AS Today
    , TIMESTAMPDIFF(year, dob, CURDATE()) AS Age from person;

-- +------------+------------+------+
-- | Birthdays  | Today      | Age  |
-- +------------+------------+------+
-- | 1990-05-20 | 2019-07-04 |   29 |
-- | 1991-08-12 | 2019-07-04 |   27 |
-- +------------+------------+------+

SELECT fname, dob AS Birthday, CURDATE() AS Today, STR_TO_DATE(CONCAT(month(dob), '/', day(dob),'/', year(CURDATE())), '%m/%d/%Y') AS "Birthday This Year" FROM person;

-- +--------+------------+------------+--------------------+
-- | fname  | Birthday   | Today      | Birthday This Year |
-- +--------+------------+------------+--------------------+
-- | Brian  | 1990-05-20 | 2019-07-04 | 2019-05-20         |
-- | Ashley | 1991-08-12 | 2019-07-04 | 2019-08-12         |
-- +--------+------------+------------+--------------------+

SELECT fname, dob AS Birthday
, CURDATE() AS Today, STR_TO_DATE(CONCAT(month(dob), '/', day(dob),'/',year(CURDATE())), '%m/%d/%Y') AS "Birthday This Year"
, date_add(str_to_date(CONCAT(month(dob), '/', day(dob),'/', year(curdate())), '%m/%d/%Y'), interval 1 year) AS "Birthday Next Year" 
from person;

-- +--------+------------+------------+--------------------+--------------------+
-- | fname  | Birthday   | Today      | Birthday This Year | Birthday Next Year |
-- +--------+------------+------------+--------------------+--------------------+
-- | Brian  | 1990-05-20 | 2019-07-04 | 2019-05-20         | 2020-05-20         |
-- | Ashley | 1991-08-12 | 2019-07-04 | 2019-08-12         | 2020-08-12         |
-- +--------+------------+------------+--------------------+--------------------+

SELECT fname, dob AS Birthday, CURDATE() AS Today
, STR_TO_DATE(CONCAT(month(dob), '/', day(dob),'/',year(CURDATE())), '%m/%d/%Y') AS "Birthday This Year"
, date_add(str_to_date(CONCAT(month(dob), '/', day(dob),'/', year(curdate())), '%m/%d/%Y'), INTERVAL 1 year) AS "Birthday Next Year"    
, CASE    
  WHEN str_to_date(CONCAT(month(dob), '/', day(dob), '/', year(CURDATE())), '%m/%d/%Y') >= CURDATE() 
  THEN str_to_date(CONCAT(month(dob), '/', day(dob), '/', year(CURDATE())), '%m/%d/%Y') 
  ELSE date_add(str_to_date(CONCAT(month(dob), '/', day(dob), '/', year(CURDATE())), '%m/%d/%Y'), INTERVAL 1 YEAR)
  END AS "Next Birthday" 
  FROM person;

-- | fname  | Birthday   | Today      | Birthday This Year | Birthday Next Year | Next Birthday |
-- +--------+------------+------------+--------------------+--------------------+---------------+
-- | Brian  | 1990-05-20 | 2019-07-05 | 2019-05-20         | 2020-05-20         | 2020-05-20    |
-- | Ashley | 1991-08-12 | 2019-07-05 | 2019-08-12         | 2020-08-12         | 2019-08-12    |
-- +--------+------------+------------+--------------------+--------------------+---------------+