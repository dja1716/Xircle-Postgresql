select up.username, r.is_vaccinated, up.phone_number 
from users u, user_profiles up, reservations r, places p
where u.id = up.fk_user_id
and r.user_id = u.id
and p.id = r.place_id
and r.is_canceled = false
and p.name = '신촌 독수리다방';
