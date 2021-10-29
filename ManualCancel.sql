update reservations r set is_canceled = true, cancel_reason = '단순변심', detail_reason = '취소되었습니다'
where r.user_id = (select u.id 
				from users u, user_profiles up
				where u.id = up.fk_user_id
				and u.email = 'breaddyt@naver.com')
and r.place_id = (select p.id
				from places p
				where p.name = 'B-2 아-늑 이태원 이팅파티');
