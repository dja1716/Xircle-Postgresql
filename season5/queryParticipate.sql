select dr1.id, p.start_date_at, p.name
	from reservations r, places p, data_repurchase1 dr1
	where (r.user_id = dr1.user_id or r.user_id = dr1.user_id2) 
	and r.is_canceled = false
	and p.id = r.place_id
	and p.start_date_at > '2022-08-19'
	and p.start_date_at < '2022-10-30'
	and p.place_type = 'Regular-meeting'
	order by dr1.id, p.start_date_at
