use SmartTesco;

drop procedure if exists offers;
-- to check device category and brand name of it. 
delimiter $$
$$
create procedure offers()
begin
	select 
		device_category,
		brand_name,
		photo_albums
	from device_type
	join device_profile on device_category_id = device_type.id
	join media on media_id = device_profile.id
	order by rand()
	limit 6;
end$$
delimiter ;

call offers();

