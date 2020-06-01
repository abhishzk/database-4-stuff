use SmartTesco;

-- Batch insert queries samples
insert into entity values
	('1', 'customers'),
	('2', 'devices');
	
insert into customers (id, entity_category_id, firstname, lastname, email, phone, password_hash, is_deleted) values 
	('21', '1', 'penelope', 'kreiger', 'dean.gerhold@gmail.org', '4', '9836504a445a7f5d246a2985ad8c800996bbc84a', 0),
	('22', '1', 'curt', 'weber', 'eliane.rempel@gmail.com', '445', '3f21a4a461cebb2881e276cb4d3e29cb76edd3d0', 0),
	('23', '1', 'amiya', 'hintz', 'po\'conner@gmail.org', '1', 'c1efe7a20807099773cfa64fb87e1bf007218369', 0),
	('24', '1', 'daniella', 'kuhlman', 'clifford.o\'conner@gmail.com', '3302324395', 'e274b3a22cd79ea06ed5f86f5fa9fc675e853818', 0),
	('25', '1', 'ettie', 'crooks', 'kaelyn.lehner@gmail.net', '799', '1db02b5475ec0a59300081ea0ace2a28ed65bb93', 0),
	('26', '1', 'meagan', 'krajcik', 'jeremy04@gmail.org', '0', 'f5ccf49a212cabfa8c2db82448827ed4ac6a0835', 0),
	('27', '1', 'tyreek', 'bailey', 'wschinner@gmail.org', '569534', '949a79796f91510a115aebd0408ace13f47244bc', 0),
	('28', '1', 'mariela', 'mcdermott', 'tate63@gmail.net', '95', 'fc6e2cc0a7fed59998fc0e5bc1f1ef4bcf6fd7b0', 0),
	('29', '1', 'kelley', 'conroy', 'barbara.bergstrom@gmail.org', '887841', '789aa85f6580c0e733b8640168c9912b7c4ec84a', 0),
	('32', '1', 'jack', 'jakubowski', 'mborer@gmail.com', '123079', '59d9580dbd40dde9e0fcc49aef288dd79ec13455', 0),
	('34', '1', 'marilou', 'monahan', 'rollin27@gmail.net', '302702', 'df1fce5ae8a18d7aa0899622dd74f88dd64acb52', 0),
	('37', '1', 'nathan', 'weissnat', 'mortiz@gmail.net', '9970511710', '2b6275eb6e989d59a5ca8358023aa0c4117311e4', 0),
	('38', '1', 'shawna', 'sauer', 'gladyce.heller@gmail.net', '6279042570', 'ffc2f702dc3ecde7f5a422145f18307c36978da1', 0),
	('39', '1', 'maybelle', 'bruen', 'halvorson.mafalda@gmail.com', '48', '1c40d82768a83c26f973da9ea9f1b6d68df6468b', 0),
	('40', '1', 'myah', 'o\'kon', 'johathan.schultz@gmail.org', '641', '1153d74a4f649c34a612da36bde7e440b7c6e251', 0);
	
insert into profiles (profile_id, customer_id, gender, birthday, country, city, education, created_at, is_deleted) values 
	('1', '21', 'female', '1996-04-26', 'ireland', 'mulingar', '', '2020-04-30 17:18:44', 0),
	('2', '22', 'female', '1998-04-16', 'ireland', 'wexford', '', '2020-09-22 21:30:26', 0),
	('3', '23', 'female', '1956-05-09', 'ireland', 'athlone', '', '2020-05-05 15:50:22', 0),
	('4', '24', 'male', '1989-01-12', 'ireland', 'galway', '', '2020-10-19 02:42:16', 0),
	('5', '25', 'male', '1999-09-23', 'ireland', 'tullamore', '', '2020-12-16 23:39:00', 0),
	('6', '26', 'male', '1985-01-07', 'ireland', 'dublin', '', '2020-01-08 03:59:36', 0),
	('7', '27', 'female', '1996-08-10', 'ireland', 'galway', '', '2020-06-18 13:18:54', 0),
	('8', '28', 'female', '1995-10-07', 'ireland', 'tullamore', '', '2020-04-13 20:11:52', 0),
	('9', '29', 'female', '1991-03-28', 'ireland', 'athlone', '', '2020-02-14 22:27:53', 0),
	('10', '32', 'male', '1996-02-06', 'ireland', 'tullamore', '', '2020-03-20 08:31:46', 0),
	('11', '34', 'female', '1992-04-12', 'ireland', 'dublin', '', '2020-02-09 04:18:29', 0),
	('12', '37', 'female', '1993-10-04', 'ireland', 'athlone', '', '2020-10-19 15:42:54', 0),
	('13', '38', 'female', '1994-08-27', 'ireland', 'galway', '', '2020-09-09 14:14:23', 0),
	('14', '39', 'female', '1987-01-22', 'ireland', 'dublin', '', '2020-01-03 02:29:56', 0),
	('15', '40', 'female', '1988-05-21', 'ireland', 'galway', '', '2020-05-15 15:54:56', 0);
	
insert into device_type (id, entity_category_id, device_category) values 
	('1', '2', 'tescoAssistantdevice'),
	('2', '2', 'tescoBillingdevice'),
	('3', '2', 'tescoAssistantdevice'),
	('4', '2', 'tescoAssistantdevice'),
	('5', '2', 'tescoBillingdevice'),
	('6', '2', 'tescoBillingdevice');

insert into device_profile (id, device_category_id, official_name, brand_name, tax_id, registry_id, mailing_address, email, operations_country, operations_city, operations_street, operations_house_number, from_operations_hours, to_operations_hours, created_at, updated_at) values 
	('1', '3', 'sales', 'iotBilling', 1, 9186389, '', 'cremin.luigi@gmail.org', 'ireland', 'galway', '', 3, '08:50:00', '21:50:00', '2020-12-24 15:29:43', '2020-12-07 23:54:34'),
	('2', '4', 'assistance', 'iotBilling', 881010, 29, '', 'lysanne.gorczany@gmail.com', 'ireland', 'dublin', '', 84, '06:00:00', '23:50:00', '2020-09-12 04:07:12', '2020-06-13 05:44:23'),
	('3', '3', 'assistance', 'iotHelp', 0, 6042885, '', 'kamron.gleason@gmail.org', 'ireland', 'athlone', '', 42, '10:00:00', '23:00:00', '2020-04-30 01:24:35', '2020-03-30 06:28:21'),
	('4', '4', 'assistance', 'iotHelp', 969486563, 379613972, '', 'esperanza.lowe@gmail.org', 'ireland', 'wexford', '', 61, '05:00:00', '23:50:00', '2020-08-07 14:44:06', '2020-10-01 20:46:08'),
	('5', '4', 'sales', 'iotBilling', 594933, 2833429, '', 'josiah59@gmail.net', 'ireland', 'mulingar', '', 0, '04:50:00', '23:50:00', '2020-01-24 11:00:01', '2020-10-13 03:06:35'),
	('6', '3', 'assistance', 'iotHelp', 90298348, 689, '', 'bret.jacobi@gmail.net', 'ireland', 'athlone', '', 0, '10:45:00', '23:50:00', '2020-05-18 02:20:20', '2020-12-23 22:26:17'),
	('7', '3', 'sales', 'iotBilling', 951222399, 565, '', 'winfield.o\'conner@gmail.org', 'ireland', 'tullamore', '', 91, '06:30:00', '22:50:00', '2020-09-16 01:37:51',  '2020-03-16 05:38:18'),
	('8', '3', 'sales', 'iotBilling', 913, 325, '', 'marshall26@gmail.net', 'ireland', 'galway', '', 76, '10:00:00', '22:00:00', '2020-03-07 17:26:31', '2020-11-14 14:49:35'),
	('9', '3', 'assistance', 'iotHelp', 51866, 2, '', 'olarson@gmail.net', 'ireland', 'athlone', '', 36, '08:20:00', '21:50:00', '2020-08-12 06:50:36',  '2020-12-29 02:49:59'),
	('10', '4', 'assistance', 'iotHelp', 771, 35, '', 'tyrese.bednar@gmail.org', 'ireland', 'dublin', '', 7, '02:00:00', '22:50:00', '2020-09-17 16:48:54', '2020-08-11 00:44:15');

insert into media (id, media_id, descriptions, filename,photo_albums, file_size, created_at, updated_at) values 
	('1', '3', 'file1', 'fugiat dolor nobis qui rerum illum expedita earum. libero rerum omnis quas aut hic quam praesentium. dolorum voluptatibus ratione sit animi quo. nostrum id vitae explicabo voluptate.', '', 0, '2020-04-15 22:12:50', '2020-04-06 02:56:27'),
	('2', '4', 'file2', 'quia maiores possimus quod explicabo. esse sint odio alias et ratione. cupiditate voluptatem veniam blanditiis ea.', '7', 536460525, '2020-07-20 04:53:33', '2020-03-27 02:19:30'),
	('3', '3', 'file3', 'aut officiis iure consequuntur sint ut. suscipit possimus magnam enim consequatur saepe necessitatibus voluptatum aut. sed reprehenderit sed magnam similique qui consequatur. recusandae qui aliquam minus molestiae et.', '',  0, '2020-06-01 22:36:12', '2020-03-13 07:05:38'),
	('4', '4', 'file4', 'nostrum est vitae eum reprehenderit. perspiciatis iusto placeat magnam amet quia saepe. delectus sint esse rerum quod. ut quibusdam qui occaecati consequatur ut repellendus.', '',  0, '2020-10-25 08:07:08', '2020-08-04 07:57:52'),
	('5', '4', 'file5', 'aut distinctio suscipit quaerat perferendis. magnam ut ab voluptas. impedit dolor architecto dolorem et aut. aut quas maiores qui laboriosam dicta.', '',  0, '2020-12-10 03:17:29', '2020-02-21 15:34:30'),
	('6', '3', 'file6', 'consequatur fugit odio commodi earum dolore fuga. cumque aliquam sed corporis magnam beatae. velit voluptatum nihil vero. fuga consequatur voluptas dolores aliquid dolore laudantium sint dolorum.', '',  0, '2020-08-13 04:31:55', '2020-03-26 18:14:20'),
	('7', '3', 'file7', 'excepturi omnis delectus accusamus fugit. est voluptas accusamus similique reprehenderit facilis. laborum assumenda sunt molestiae omnis dolores ratione. repudiandae sequi non iste. quidem blanditiis non amet placeat.', '',  0, '2020-11-19 10:01:03', '2020-04-15 04:54:20'),
	('8', '3', 'file8', 'voluptas voluptatibus et harum tempora corporis. rem ullam praesentium aperiam voluptatem ullam praesentium ex.', '',  0, '2020-09-07 11:13:08', '2020-11-09 04:37:06'),
	('9', '3', 'file9', 'nesciunt sint repellendus inventore aut earum occaecati voluptas possimus. eius facere itaque veritatis sit qui dicta. temporibus error omnis est atque aliquid. non nostrum dolores provident aut et.', '',  0, '2020-12-04 16:41:22', '2020-10-07 11:28:25'),
	('10', '4', 'file10', 'debitis molestias at labore ea nihil qui. quas culpa et debitis aut atque. vitae dolor qui aut quisquam ad quia officiis qui.', '',  0, '2020-01-21 23:42:40', '2020-05-28 23:50:12');

insert into tescobills (id, tescobills_id, device_profile_id, tescobills_media_id, average_check, tescobills_categories, tescobills_features) values 
	('29', '3', '1', '1', 1500, ('machine 1'), ('paybycreditcard')),
	('30', '3', '3', '3', 2020, ('machine 4'), ('paybydebitcard')),
	('31', '3', '6', '6', 700, ('machine 3'), ('paybygiftcard')),
	('32', '3', '7', '7', 900, ('machine 4'), ('paybycash')),
	('33', '3', '8', '8', 1700, ('machine 2'), ('paybycash')),
	('34', '3', '9', '9', 3000, ('machine 5'), ('paybycash'));



insert into tescobills_transaction (id, customer_id, tescobills_profile_id, prepayment, transaction_status, created_at, updated_at, closed_at) values 
	('1', '21', '29', null, 'in processing', '2020-05-25 21:30:39', '2020-01-16 05:33:34', '2020-04-08 12:20:29'),
	('2', '22', '30', null, 'prepayment received', '2020-01-25 16:40:13', '2020-04-11 02:47:57', '2020-03-18 19:20:19'),
	('3', '23', '31', null, 'regected', '2020-08-25 19:07:43', '2020-07-14 19:58:02', '2020-04-12 06:32:43'),
	('4', '24', '32', null, 'on position', '2020-11-19 03:59:29', '2020-09-02 09:07:55', '2020-04-01 18:14:03'),
	('5', '25', '33', null, 'prepayment received', '2020-01-13 05:06:46', '2020-07-26 18:44:19', '2020-01-18 06:41:40'),
	('6', '26', '34', null, 'regected', '2020-06-19 12:39:25', '2020-04-30 18:41:04', '2020-06-25 02:43:11'),
	('7', '27', '33', null, 'in processing', '2020-08-21 08:00:50', '2020-09-06 14:12:29', '2020-06-07 20:10:25'),
	('8', '28', '30', null, 'confirmed', '2020-08-08 07:16:50', '2020-08-04 09:59:50', '2020-07-12 12:52:09'),
	('9', '29', '29', null, 'prepayment received', '2020-07-04 14:41:38', '2020-04-01 12:10:00', '2020-04-16 19:20:31'),
	('10', '32', '29', null, 'on position', '2020-04-19 02:25:22', '2020-01-13 12:05:53', '2020-12-17 23:51:48'),
	('11', '34', '33', null, 'prepayment received', '2020-11-11 20:04:43', '2020-08-16 11:13:59', '2020-06-29 19:20:57'),
	('12', '37', '31', null, 'on position', '2020-03-03 22:48:51', '2020-08-31 08:40:00', '2020-05-13 02:13:35'),
	('13', '38', '31', null, 'prepayment received', '2020-07-04 17:06:13', '2020-08-09 14:16:28', '2020-11-09 21:14:35'),
	('14', '39', '32', null, 'prepayment received', '2020-02-07 05:03:21', '2020-01-05 18:19:02', '2020-04-27 03:47:43');


