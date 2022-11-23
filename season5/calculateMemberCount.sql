select t.name, count(u.id)
from
	data_temp2 dt2,
	users u,
	teams t
where 
	u.team_id = t.id
	and u.role = 'Client'
	and dt2.team_name_5 = t.name
group by t.name;
