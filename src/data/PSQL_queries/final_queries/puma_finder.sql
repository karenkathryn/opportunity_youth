-- CREATE TABLE puma_names_finder0 AS (
    SELECT puma, puma_name
    -- FROM puma_names_2010
    FROM pums_2017
    WHERE (puma BETWEEN '11610' AND '11615')
    ORDER BY puma
-- );