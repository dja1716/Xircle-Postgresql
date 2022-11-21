select dr1.id, dr1.phone_number, 
	case when (select count(r.id) 
	from reservations r 
	where (r.user_id = dr1.user_id or r.user_id = dr1.user_id2) and r.created_at < '2022-01-01') > 0 then 'O' else 'X' end
from data_repurchase1 dr1
