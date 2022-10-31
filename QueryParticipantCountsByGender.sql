select t.name as team_name, t.meeting_day as day, t.meeting_hour as hour, count(case when up.gender = 'Male' then 1 else null end) as Male_Count, count(case when up.gender = 'Female' then 1 else null end) as Female_Count
from teams t, user_profiles up, users u
where u.id = up.fk_user_id
and u.team_id = t.id
group by t.name, t.meeting_day, t.meeting_hour
order by t.meeting_day;
