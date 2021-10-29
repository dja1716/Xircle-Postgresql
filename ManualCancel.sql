update reservations r set is_canceled = true
where r.user_id = (select u.id 
				from users u, user_profiles up
				where u.id = up.fk_user_id
				and u.email = 'breaddyt@naver.com')
and r.place_id = (select p.id
				from places p
				where p.name = 'B-2 아-늑 이태원 이팅파티');
