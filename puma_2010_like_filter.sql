select puma_name, puma
from puma_names_2010
where (puma_name LIKE 'King Cou%') 
and (puma_name LIKE '%South%') 
and not puma_name LIKE '%North%';