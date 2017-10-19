


select reportingform_id
from 
(
select reportingform_id, group_id
from dimensions_2011
group by reportingform_id, group_id
) as z
group by reportingform_id
having count(*)>1





