select up.phone_number,up.username, up.gender, up.age, t.name, t.meeting_day, t.meeting_hour, ap.content, ap.is_canceled, c.name from user_profiles up, users u, applications ap, teams t, categories c
where up.is_yk_club = true
and u.id = up.fk_user_id
and c.id = t.category_id
and u.email not LIKE '%@privaterelay.appleid.com%'
and ap.user_id = u.id
and t.id = ap.team_id
and u.team_id is null
order by up.phone_number;


select up.username, up.phone_number, up.gender, up.age from user_profiles up, users u
where up.is_yk_club = true
and u.id = up.fk_user_id
and u.email not LIKE '%@privaterelay.appleid.com%'
and (select count(ap.id) from applications ap where ap.user_id = u.id and ap.is_canceled = false) > 0
and u.team_id is null;
