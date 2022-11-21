select up.username from user_profiles up, user_profiles up
where (select count(*)
	   from places p, reservations r
	   where p.id = r.place_id
	   and r.user_id = up.fk_user_id
	   and p.start_date_at > '2022-02-14'
	   and p.start_date_at < '2022-03-16'
	   and r.is_canceled = false
	   and p.place_type = 'Regular-meeting'
	   ) > 3
or (select count(*)
	   from places p, reservations r
	   where p.id = r.place_id
	   and r.user_id = up.fk_user_id
	   and p.start_date_at > '2022-03-31'
	   and p.start_date_at < '2022-05-02'
	   and r.is_canceled = false
	   and p.place_type = 'Regular-meeting'
	   ) > 3
or (select count(*)
	   from places p, reservations r
	   where p.id = r.place_id
	   and r.user_id = up.fk_user_id
	   and p.start_date_at > '2022-08-19'
	   and p.start_date_at < '2022-10-30'
	   and r.is_canceled = false
	   and p.place_type = 'Regular-meeting'
	   ) > 3
or (select count(*)
	   from places p, reservations r
	   where p.id = r.place_id
	   and r.user_id = up.fk_user_id
	   and p.start_date_at > '2022-11-01'
	   and r.is_canceled = false
	   and p.place_type = 'Regular-meeting'
	   ) > 3
