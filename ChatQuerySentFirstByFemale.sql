select count(*), up1.phone_number, up1.username, up1.university from messages m, user_profiles up1, user_profiles up2
where m.created_at <= (select m1.created_at from messages m1
						where m1.room_id = m.room_id
						order by m1.created_at
						limit 1)
and up1.gender = 'Female'
and up2.gender = 'Male'
and m.sender_id = up1.fk_user_id
and m.receiver_id = up2.fk_user_id
group by up1.phone_number, up1.username, up1.university;
