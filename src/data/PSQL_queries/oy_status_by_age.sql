    -- https://roadmapproject.org/wp-content/uploads/2018/09/Opportunity-Youth-2016-Data-Brief-v2.pdf
    -- pdf page 2 numbers
    -- total population
CREATE TABLE table_oy_status_by_age_1 AS (
    SELECT *
    FROM pums_2017
    WHERE (agep BETWEEN 16 AND 24) 
    AND (puma BETWEEN '11610' and '11615')
    -- -- Employment status recode
    -- --             b    .N/A (less than 16 years old)
    -- --             1    .Civilian employed, at work
    -- --             2    .Civilian employed, with a job but not at work
    -- --             3    .Unemployed
    -- --             4    .Armed forces, at work
    -- --             5    .Armed forces, with a job but not at work
    -- --             6    .Not in labor force
    -- AND (ESR = '3' OR ESR = '6')
    -- -- School enrollment
    -- --             b    .N/A (less than 3 years old)
    -- --             1    .No, has not attended in the last 3 months
    -- --             2    .Yes, public school or public college
    -- --             3    .Yes, private school or college or home school
    -- AND (SCH = '1')
);