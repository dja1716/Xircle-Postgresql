with reservation_by_user as (
	select r.user_id, count(*) as count
	from reservations r
	where r.is_canceled = false
	group by r.user_id)
select  up.university, up.gender , count(*)
from reservation_by_user rbu, user_profiles up
where rbu.user_id = up.fk_user_id
and rbu.count >= 10
and rbu.count < 15
group by up.university, up.gender
