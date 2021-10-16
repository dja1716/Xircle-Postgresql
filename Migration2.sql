update user_profiles set profile_image_url = t.profileimgsrc
from temptable as t
where user_profiles.phone_number = t.phonenumber
and user_profiles.short_bio = t.introtext
and user_profiles.university = t.university;
