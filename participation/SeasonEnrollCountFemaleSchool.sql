select up.gender, count(up.*) from user_profiles up
where (select count(*) 
	from reservations r
	where r.created_at >= '2022-08-15'
	and r.created_at <= '2022-10-04'
	and r.user_id = up.fk_user_id) > 0
and up.university LIKE '%' || '여자대' || '%'
group by up.gender
