CREATE TABLE totals_by_puma AS (
    SELECT puma, SUM(PWGTP) AS people
    FROM pums_2017
    WHERE (puma BETWEEN '11612' AND '11615')
    AND (agep BETWEEN 16 AND 24)
    AND ((wkl = '2' OR wkl = '3') OR (WKW >= '3'))
    AND (sch = '1')
    GROUP BY puma
);


