CREATE TABLE table_final_query_1 AS (
    SELECT pop,     
            age_group,
            -- COUNT(pop) AS num_records,
            SUM(pwgtp) AS est,
            SUM(SUM(pwgtp)) OVER(PARTITION BY age_group) AS total,
            (SUM(pwgtp) / SUM(SUM(pwgtp)) OVER(PARTITION BY age_group)) * 100 AS pct
    FROM (
        SELECT CONCAT(serialno, sporder) AS unique_id, 
                pwgtp, 
                sch, 
                schl,
                esr,
                CASE WHEN ((esr = '3' OR esr = '6') AND (agep BETWEEN 16 AND 24) AND (sch = '1'))
                    THEN 'oy_yes'
                    WHEN (schl <= '15' AND (sch = '1') AND (esr = '1' OR esr = '2') AND (agep BETWEEN 16 AND 24))
                    THEN 'working w/o a diploma'
                    ELSE 'oy_no'
                    END AS pop,
                agep,
                CASE WHEN (agep BETWEEN 16 AND 18)
                    THEN '16-18'
                    WHEN (agep BETWEEN 19 AND 21)
                    THEN '19-21'
                    WHEN (agep BETWEEN 22 AND 24)
                    THEN '22-24'
                    ELSE NULL
                    END AS age_group,
                puma_names_2010.puma,
                puma_names_2010.puma_name
        FROM pums_2017
        JOIN puma_names_2010
            ON puma_names_2010.puma = pums_2017.puma
        WHERE (puma_names_2010.puma BETWEEN '11610' AND '11615')
            AND (agep BETWEEN 16 AND 24) 
    ) AS temp
    GROUP BY pop, age_group
);