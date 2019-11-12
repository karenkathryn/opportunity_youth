CREATE TABLE total_by_puma_f AS (
    SELECT puma, SUM(PWGTP)
    FROM pums_2017 p
    WHERE (puma BETWEEN '11601' AND '11616')
    AND (agep BETWEEN 16 AND 24)
    AND (ESR = '3' OR ESR = '6')
--WKL: weeks someone worked in the last year (0.1+ years ago or never worked)
--WKW: weeks worked in the last year (0 - 39 weeks -- unimployed)
    -- AND ((WKL = '2' OR WKL = '3') OR (WKW >= '4'))
    AND (SCH = '1')
    GROUP BY puma
);


