select case when dr1.user_id is null 
			   then 0
			   else (select count(p.id)
			   		from reservations r, places p
					where (r.user_id = dr1.user_id or r.user_id = dr1.user_id2) 
					and r.is_canceled = false
					and p.start_date_at > '2022-02-14'
					and p.start_date_at < '2022-03-16'
					and p.id = r.place_id)
			   end as count
from data_vip dr1
order by dr1.id
	
