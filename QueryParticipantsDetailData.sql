select up.is_yk_club, up.gender, up.username, up.mbti, up.age, r.is_vaccinated, up.drinking_style, up.phone_number from users u, reservations r, places p, user_profiles up
where r.is_canceled = false
and u.id = up.fk_user_id
and r.user_id = u.id
and r.place_id = p.id
and p.name = 'A-3 홍대 파티룸(선착순)';
