update data_message dm
set user_id = (select up.fk_user_id
			   from user_profiles up
			   where up.phone_number = dm.phone_number)
where (select count(up.fk_user_id)
			   from user_profiles up
			   where up.phone_number = dm.phone_number) = 1
