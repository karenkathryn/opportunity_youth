--counting for all ages in 16-24
--per puma in south king co (4)
--from 2017 data
-- WKL         Character   1
-- When last worked
--             b    .N/A (less than 16 years old)
--             1    .Within the past 12 months
--             2    .1-5 years ago
--             3    .Over 5 years ago or never worked
-- SCH         Character   1
-- School enrollment
--             b    .N/A (less than 3 years old)
--             1    .No, has not attended in the last 3 months
--             2    .Yes, public school or public college
--             3    .Yes, private school or college or home scho

select count(agep) as people
from pums_2017
where (puma BETWEEN '11612' and '11615')
and (agep between 16 and 24)
and (wkl = '2' or wkl = '3')
and (sch = '1');


