
drop database if exists SmartTesco;
create database SmartTesco;
use SmartTesco;


drop table if exists entity;
create table entity (
	id SERIAL primary key,
	entity_category enum('customers', 'devices')
);


drop table if exists customers;
create table customers (
	id SERIAL primary key,
	entity_category_id bigint unsigned default 1,
	firstname varchar(100) not null,
	lastname varchar(100) not null,
	email varchar(100) not null,
	phone bigint unsigned not null unique,
	password_hash varchar(100) not null,
	is_deleted tinyint default 0,
	
	foreign key(entity_category_id) references entity(id)
);

drop table if exists profiles;
create table profiles (
	profile_id SERIAL primary key,
	customer_id bigint unsigned not null,
	gender enum ('male', 'female'),
	birthday date not null,
	country varchar(100) not null,
	city varchar(100) not null,
	education varchar(100) not null,
	created_at datetime default now(),
	is_deleted tinyint default 0,
	
	foreign key(customer_id) references customers(id)
);



-- mostly working on tescoBilling device
drop table if exists device_type;
create table device_type (
	id SERIAL primary key,
	entity_category_id bigint unsigned default 2,
	device_category enum('tescoBillingdevice', 'tescoAssistantdevice'),

	index(device_category),
	foreign key(entity_category_id) references entity(id)
);

drop table if exists device_profile;
create table device_profile (
	id SERIAL primary key,
	device_category_id bigint unsigned not null,
	official_name varchar(100) not null,
	brand_name varchar(100) not null,
	tax_id int(10) not null unique,
	registry_id int(13) not null unique,
	mailing_address varchar(150) not null,
	email varchar(100) not null,
	operations_country varchar(100) not null,
	operations_city varchar(100) not null,
	operations_street varchar(100) not null,
	operations_house_number int(3) not null,
	from_operations_hours time,
	to_operations_hours time,
	created_at datetime default now(),
	updated_at datetime on update now(),
	
	index(brand_name,operations_country, operations_city, operations_street),
	foreign key (device_category_id) references device_type(id)
);

drop table if exists media;
create table media (
	id SERIAL primary key,
    media_id bigint unsigned not null,
    filename varchar(255),
    descriptions varchar(255),
    photo_albums longblob,
    file_size int,
    created_at datetime default now(),
    updated_at datetime on update now(),
    
    foreign key (media_id) references device_profile(id)
);

drop table if exists tescobills;
create table tescobills (
	id SERIAL primary key,
	tescobills_id bigint unsigned not null, 
	device_profile_id bigint unsigned not null,
	tescobills_media_id bigint unsigned not null,
	average_check int(4) unsigned,
	tescobills_categories set('machine 1', 'machine 2', 'machine 3', 'machine 4', 'machine 5',
							'machine 6'),
	tescobills_features set('paybydebitcard', 'paybycreditcard', 'paybycash',
							'paybygiftcard'),
	
	foreign key(tescobills_id) references device_type(id),
	foreign key(tescobills_media_id) references media(id),
	foreign key(device_profile_id) references device_profile(id)
);

drop table if exists tescobills_transaction;
create table tescobills_transaction (
	id SERIAL primary key,
	customer_id bigint unsigned not null,
	tescobills_profile_id bigint unsigned not null,
	prepayment decimal (15, 2) unsigned,
	transaction_status enum('confirmed', 'in processing', 'regected', 'prepayment received', 'on position', 'closed'),
	created_at datetime default now(),
	updated_at datetime on update now(), 
	closed_at datetime default now(),
	
	foreign key(customer_id) references customers(id),
	foreign key(tescobills_profile_id) references tescobills(id)
);





