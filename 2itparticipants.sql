select up.gender, up.university, count(*) from user_profiles up, users u
where u.id = up.fk_user_id
and u.created_at < '2022-03-01 00:00:00'
and up.team is not null
and (select count(*) 
	from reservations r 
	where r.user_id = u.id 
	and r.created_at > '2022-02-01 00:00:00'
	and r.created_at < '2022-03-01 00:00:00'
	and r.is_canceled = false) > 0
group by up.gender, up.university
