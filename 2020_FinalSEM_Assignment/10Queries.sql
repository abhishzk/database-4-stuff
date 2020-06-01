use smarttesco;


-- 1Find the quantity of male customers
select 
	count(profile_id) as total_male 
from profiles 
where gender = 'male';

-- 2 customer wants to view brand name
select brand_name from device_profile
	where device_category_id = '3'
	and operations_city = 'athlone';
    
    -- 3 Sort in ascend order devices by the quantity of operation hours 
select
	brand_name,
	official_name,
	timediff(to_operations_hours, from_operations_hours) as total_operations_hours
from device_profile
order by total_operations_hours;

-- 4 Find the average age of male and female customer
select 
	gender,
	avg(timestampdiff(year, birthday, now())) as average_age
from profiles
group by gender;


-- 5 Sort in ascend order the age of minors after the age of adults
select
	timestampdiff(year, birthday, now()) as age
from profiles
order by
	if(age >= 18,1,0)desc, age asc;
    
    -- 6 Find the total assistance device
select
	device_category,
	count(*) as total
from device_profile
join device_type on device_category_id = device_type.id
group by device_category;

-- 7 Find the number of customer older than average
select
	count(age) as total_older
from 
	(select 
		timestampdiff(year, birthday, now()) as age
	from profiles
	having age > (select 
					avg(timestampdiff(year, birthday, now()))
				from profiles)
	order by age) as age;
    

-- 8 Find the number of customer birthday where firstname starts with 'm'.
select
	concat(monthname(profiles.birthday), ' ', day(profiles.birthday)) as Birhday,
	concat (customers.firstname, ' ', customers.lastname) as Name
from profiles
join customers on id = customers.id
where firstname like 'm%';

-- 9 Customer wants to know details about the transaction
select
	brand_name,
	operations_country, 
	operations_city, 
	operations_street,
	descriptions,
	photo_albums,
	min(average_check)
from device_profile
join tescobills on device_profile_id = device_profile.id
join media on tescobills_media_id = media.id 
where tescobills_features = 'paybycash';
    
    -- 10 Find who used tescoBillingdevice to pay and compare the transaction
select
	count(*) as total_customers_transactions,
	transaction_status
from customers 
join tescobills_transaction 
on  customers.id = tescobills_transaction .customer_id
where transaction_status = 'confirmed' 
	or transaction_status = 'on position'
group by transaction_status
order by total_customers_transactions desc;

