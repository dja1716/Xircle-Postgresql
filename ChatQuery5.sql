select m.created_at, up1.username, up1.gender, up1.age, up1.university, up2.username, up2.gender, up2.age, up2.university,  m.content from user_profiles up1, messages m, user_profiles up2
where ((m.sender_id = up1.fk_user_id and up2.fk_user_id = m.receiver_id) or (m.receiver_id = up1.fk_user_id and m.sender_id = up2.fk_user_id))
and up1.phone_number = '01099808763'
