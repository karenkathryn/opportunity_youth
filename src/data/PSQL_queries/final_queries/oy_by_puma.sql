CREATE TABLE OY_by_puma0 AS (
    SELECT puma, SUM(PWGTP)
    FROM pums_2017 
    WHERE (puma BETWEEN '11610' AND '11615')
    AND (agep BETWEEN 16 AND 24)
    AND (ESR = '3' OR ESR = '6')
--WKL: weeks someone worked in the last year (0.1+ years ago or never worked)
--WKW: weeks worked in the last year (0 - 39 weeks -- unimployed)
--AND ((WKL = '2' OR WKL = '3') OR (WKW >= '4'))
    AND (SCH = '1')
    GROUP BY puma
);