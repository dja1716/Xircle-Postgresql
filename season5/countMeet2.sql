select (select  array_agg(concat(up.username, ' ', up.gender))
	from reservations r, places p,  user_profiles up, reservations r2
	where (r.user_id = dr1.user_id or r.user_id = dr1.user_id2) 
	and r.is_canceled = false
	and r2.is_canceled = false
	and r2.id != r.id
	and up.fk_user_id = r2.user_id
	and r2.place_id = p.id
	and p.id = r.place_id
	and p.start_date_at > '2022-08-29'
	and p.start_date_at < '2022-09-04'
	and p.place_type = 'Regular-meeting')
from data_4_time dr1
