select (select array_agg(concat(p.start_date_at, ', ', p.name))
		from places p, reservations r
		where r.place_id = p.id
		and (r.user_id = dv.user_id or r.user_id = dv.user_id2)
		and p.start_date_at > '2022-08-14'
		and p.start_date_at < '2022-10-30'
		)
from data_vip dv
order by dv.id
