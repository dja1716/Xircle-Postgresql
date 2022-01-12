select *
from reservations r, users u, user_profiles up, places p
where p.id = '7c366446-84c4-491d-b8a1-0ba4e1342bf7'
and p.id = r.place_id
and u.id = r.user_id
and up.fk_user_id = u.id
