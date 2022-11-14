select up.gender, up.username, up.age, up.university, up.mbti, up.phone_number from user_profiles up
where (select count(*) 
	from reservations r
	where r.created_at >= '2022-08-15'
	and r.created_at <= '2022-10-04'
	and r.user_id = up.fk_user_id
	and r.is_canceled = false) > 0
and (select count(*) 
	from reservations r
	where r.created_at >= '2022-10-24'
	and r.created_at <= '2022-12-18'
	and r.user_id = up.fk_user_id
	and r.is_canceled = false) > 0
and (select count(*) 
	from reservations r
	where r.created_at >= '2022-02-11'
	and r.created_at <= '2022-03-16'
	and r.user_id = up.fk_user_id
	and r.is_canceled = false) > 0;
