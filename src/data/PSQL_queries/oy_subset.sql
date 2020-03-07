-- Numer of OY in South King County
-- SELECT SUM(pwgtp) 
-- FROM table_final_total 
-- WHERE ((pop = 'oy_yes') 
-- AND (puma BETWEEN '11610' AND '11615'));

SELECT SUM(pwgtp) 
FROM table_final_total_1 
WHERE (pop = 'working w/o a diploma');