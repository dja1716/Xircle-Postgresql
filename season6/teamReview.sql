select t.name, 
	   (select count(*)
		from applications ap
		where ap.team_id = t.id) as all_count,
		(select count(*)
		from applications ap, user_profiles up
		where up.fk_user_id = ap.user_id
		and ap.team_id = t.id
		and up.gender = 'Male') as male_count,
				(select count(*)
		from applications ap, user_profiles up
		where up.fk_user_id = ap.user_id
		and ap.team_id = t.id
		and up.gender = 'Female') as female_count,
		(select up.username
		from user_profiles up
		where up.fk_user_id = t.leader_id),
		t.leader_intro,
		t.description,
		t.male_min_age,
		t.male_max_age,
		t.female_min_age,
		t.female_max_age,
		(select c.name
		from categories c
		where c.id = t.category_id)
		,t.meeting_day
from teams t
where t.season = 5
order by all_count DESC;
