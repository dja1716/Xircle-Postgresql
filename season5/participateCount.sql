select 
	(select count(r.id) 
	from reservations r, places p
	where (r.user_id = dr1.user_id or r.user_id = dr1.user_id2) 
	and r.is_canceled = false
	and r.created_at > '2022-08-19'
	and r.created_at < '2022-10-30'
	and p.id = r.place_id
	and p.place_type = 'Regular-meeting')
from data_repurchase1 dr1
order by dr1.id
