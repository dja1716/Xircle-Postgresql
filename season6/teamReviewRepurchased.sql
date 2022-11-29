select t.name, count(*) as apply_count
from teams t, user_profiles up, data_temp dt, applications ap
where dt.phone_number = up.phone_number
and ap.team_id =t.id
and ap.user_id = up.fk_user_id
group by t.name
order by apply_count DESC;
