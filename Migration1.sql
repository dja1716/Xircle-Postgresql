with temptable2 as (
	insert into users (password, email)
		select temptable.password, temptable.email
		from temptable returning id, email, password
)
INSERT INTO user_profiles (
	fk_user_id,
	username,
	university,
	age,
	gender,
	job,
	short_bio,
	location,
	is_graduate,
	"isMarketingAgree",
	phone_number,
	profile_image_url

)
	SELECT temptable2.id, temptable.displayName, temptable.university, temptable.age, cast(temptable.gender as user_profiles_gender_enum), temptable.job, temptable.introText, temptable.location, temptable.isGraduate, false, temptable.phoneNumber, temptable.profileImgSrc
		FROM temptable, temptable2
		WHERE temptable.email = temptable2.email
		AND temptable.password = temptable2.password;
