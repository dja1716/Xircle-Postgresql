select t.username, t.phone_number
from target_table t
where not exists
	(select * from user_profiles up
	where up.phone_number = t.phone_number);
