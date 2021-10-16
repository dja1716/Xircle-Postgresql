delete from users u using user_profiles up
where u.id = up.fk_user_id
and up.phone_number = '01011111111'
