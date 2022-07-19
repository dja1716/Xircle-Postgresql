select up.gender, up.university, count(*) from user_profiles up, users u
where u.id = up.fk_user_id
and (select count(*) from reservations r where r.user_id = u.id and r.created_at < '2021-12-25 00:00:00') > 0
group by up.gender, up.university
