
select puma, count(serialno)
from pums_2017
where (puma BETWEEN '11612' and '11615')
and (agep between 16 and 24)
and (wkl = '2' or wkl = '3')
and (sch = '1')
group by puma;


