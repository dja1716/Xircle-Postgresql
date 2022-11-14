select up1.phone_number as sender_number, up1.username as sender_name, up1.age as sender_age, up1.university as sender_university, up2.phone_number as receiver_number, up2.username as receiver_name, up2.age as receiver_age, up2.university as receiver_university from messages m, user_profiles up1, user_profiles up2
where m.created_at <= (select m1.created_at from messages m1
						where m1.room_id = m.room_id
						order by m1.created_at
						limit 1)
and up1.gender = 'Female'
and up2.gender = 'Male'
and m.sender_id = up1.fk_user_id
and m.receiver_id = up2.fk_user_id
and m.created_at > '2022-10-01'
group by up1.phone_number, up1.username, up1.university, up2.phone_number, up2.username, up2.university, up1.age, up2.age;
