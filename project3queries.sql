SELECT CONCAT(FNAME, ' ', LNAME) AS Friend
, TIMESTAMPDIFF(year, dob, curdate()) AS Age
, dob, CURDATE()
, STR_TO_DATE(CONCAT(month(dob),'/',day(dob),'/',year(CURDATE())), '%m/%d/%Y') AS Birthday
, DATE_ADD(STR_TO_DATE(CONCAT(month(dob),'/',day(dob),'/',year(CURDATE())), '%m/%d/%Y'), INTERVAL 1 YEAR) AS "Birthday Next Year"
, DATE_ADD(CURDATE(), INTERVAL 6 MONTH) AS "6 Months From Now"
, MONTHNAME(dob) AS "Birth Month"
FROM Friends
WHERE CASE 
  WHEN STR_TO_DATE(CONCAT(month(dob),'/',day(dob),'/',year(CURDATE())), '%m/%d/%Y') >= CURDATE()
    THEN STR_TO_DATE(CONCAT(month(dob),'/',day(dob),'/',year(CURDATE())), '%m/%d/%Y')
    ELSE DATE_ADD(STR_TO_DATE(CONCAT(month(dob),'/',day(dob),'/',year(CURDATE())), '%m/%d/%Y'), INTERVAL 1 YEAR)
    END BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 6 MONTH);

-- +------------------+------+------------+------------+------------+--------------------+-------------------+-------------+
-- | Friend           | Age  | dob        | CURDATE()  | Birthday   | Birthday Next Year | 6 Months From Now | Birth Month |
-- +------------------+------+------------+------------+------------+--------------------+-------------------+-------------+
-- | Robert McInerney |   29 | 1989-08-12 | 2019-07-05 | 2019-08-12 | 2020-08-12         | 2020-01-05        | August      |
-- | Jeremiah Getty   |   31 | 1987-12-12 | 2019-07-05 | 2019-12-12 | 2020-12-12         | 2020-01-05        | December    |
-- | Jonathan Gaines  |   29 | 1989-10-24 | 2019-07-05 | 2019-10-24 | 2020-10-24         | 2020-01-05        | October     |
-- +------------------+------+------------+------------+------------+--------------------+-------------------+-------------+

