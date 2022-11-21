select dr1.id, dr1.phone_number, 
	case when (select count(r.id) from reservations r) > 0 then 'O' else 'X' end
from data_repurchase1 dr1
