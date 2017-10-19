--use timber_2011_09_15
use timber

select 
 d.dimension_id,
 d.term_name, 
 f.reportingform_id,
 f.reportingform_e,
 t.topic_id,
 t.topic_e,
 g.group_id,
 g.group_e
from 
 dimensions_2011 as d,
 reportingforms_2011 as f,
 topics_2011 as t,
 groups_2011 as g
where 
 d.topic_id=t.topic_id and
 d.group_id=g.group_id and
 d.reportingform_id = f.reportingform_id
 and f.reportingform_id in (13)