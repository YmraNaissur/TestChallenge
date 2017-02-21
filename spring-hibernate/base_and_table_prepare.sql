# creating the database
CREATE SCHEMA `test`;
USE test;

# creating table users
CREATE TABLE `test`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(25) NULL DEFAULT NULL,
  `age` INT NULL DEFAULT NULL,
  `isAdmin` BIT(1) NULL DEFAULT NULL,
  `createdDate` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC));
  
# filling the table with 100 fake users
insert into users (id, name, age, isAdmin, createdDate) values (1, 'Susan', 26, true, '2012-06-29 01:29:00');
insert into users (id, name, age, isAdmin, createdDate) values (2, 'Kathleen', 60, false, '2010-12-17 23:07:26');
insert into users (id, name, age, isAdmin, createdDate) values (3, 'Julie', 32, false, '2013-12-08 13:57:32');
insert into users (id, name, age, isAdmin, createdDate) values (4, 'Joshua', 40, true, '2003-02-20 12:50:04');
insert into users (id, name, age, isAdmin, createdDate) values (5, 'Ralph', 21, false, '2004-09-07 10:41:17');
insert into users (id, name, age, isAdmin, createdDate) values (6, 'Rebecca', 57, true, '2003-11-23 20:58:52');
insert into users (id, name, age, isAdmin, createdDate) values (7, 'Robin', 20, false, '2001-07-23 05:34:29');
insert into users (id, name, age, isAdmin, createdDate) values (8, 'Mildred', 52, false, '2009-09-16 17:20:47');
insert into users (id, name, age, isAdmin, createdDate) values (9, 'Jose', 21, true, '2007-07-25 00:58:03');
insert into users (id, name, age, isAdmin, createdDate) values (10, 'Margaret', 32, true, '2005-05-08 18:45:39');
insert into users (id, name, age, isAdmin, createdDate) values (11, 'Kelly', 45, true, '2013-03-26 02:17:32');
insert into users (id, name, age, isAdmin, createdDate) values (12, 'Louis', 57, true, '2008-01-02 22:11:25');
insert into users (id, name, age, isAdmin, createdDate) values (13, 'Henry', 22, true, '2004-12-02 05:30:50');
insert into users (id, name, age, isAdmin, createdDate) values (14, 'Ralph', 33, false, '2003-07-03 11:27:01');
insert into users (id, name, age, isAdmin, createdDate) values (15, 'Martin', 19, false, '2003-08-25 03:28:49');
insert into users (id, name, age, isAdmin, createdDate) values (16, 'Karen', 33, true, '2014-06-30 20:19:13');
insert into users (id, name, age, isAdmin, createdDate) values (17, 'Juan', 33, false, '2012-09-10 12:23:54');
insert into users (id, name, age, isAdmin, createdDate) values (18, 'Nancy', 30, false, '2004-02-21 07:17:05');
insert into users (id, name, age, isAdmin, createdDate) values (19, 'Mark', 22, true, '2001-03-14 04:28:48');
insert into users (id, name, age, isAdmin, createdDate) values (20, 'Kathleen', 35, false, '2008-08-15 18:28:12');
insert into users (id, name, age, isAdmin, createdDate) values (21, 'Kevin', 21, false, '2013-12-11 00:21:11');
insert into users (id, name, age, isAdmin, createdDate) values (22, 'Linda', 51, true, '2005-10-10 00:25:09');
insert into users (id, name, age, isAdmin, createdDate) values (23, 'Kimberly', 25, true, '2004-07-30 08:39:05');
insert into users (id, name, age, isAdmin, createdDate) values (24, 'Gerald', 43, true, '2003-12-24 02:24:49');
insert into users (id, name, age, isAdmin, createdDate) values (25, 'Carol', 31, false, '2006-01-13 23:52:20');
insert into users (id, name, age, isAdmin, createdDate) values (26, 'Jacqueline', 51, false, '2001-02-08 10:45:07');
insert into users (id, name, age, isAdmin, createdDate) values (27, 'Roger', 46, false, '2013-07-26 06:01:54');
insert into users (id, name, age, isAdmin, createdDate) values (28, 'Kathryn', 52, false, '2003-08-30 09:48:12');
insert into users (id, name, age, isAdmin, createdDate) values (29, 'Christine', 49, true, '2004-01-07 07:35:10');
insert into users (id, name, age, isAdmin, createdDate) values (30, 'Ann', 39, false, '2010-01-11 02:26:35');
insert into users (id, name, age, isAdmin, createdDate) values (31, 'Robin', 20, false, '2008-11-07 20:41:28');
insert into users (id, name, age, isAdmin, createdDate) values (32, 'Larry', 32, true, '2010-10-04 16:51:43');
insert into users (id, name, age, isAdmin, createdDate) values (33, 'Gary', 36, true, '2003-05-24 23:13:54');
insert into users (id, name, age, isAdmin, createdDate) values (34, 'Matthew', 52, true, '2011-04-07 00:50:12');
insert into users (id, name, age, isAdmin, createdDate) values (35, 'Joseph', 37, false, '2014-12-29 10:58:22');
insert into users (id, name, age, isAdmin, createdDate) values (36, 'Janet', 24, true, '2013-05-20 01:58:51');
insert into users (id, name, age, isAdmin, createdDate) values (37, 'Paula', 29, true, '2014-05-19 11:45:13');
insert into users (id, name, age, isAdmin, createdDate) values (38, 'Amanda', 30, false, '2004-08-04 10:36:11');
insert into users (id, name, age, isAdmin, createdDate) values (39, 'Chris', 33, true, '2004-04-06 09:15:28');
insert into users (id, name, age, isAdmin, createdDate) values (40, 'Chris', 41, false, '2007-02-23 23:29:32');
insert into users (id, name, age, isAdmin, createdDate) values (41, 'Harold', 52, false, '2001-09-19 09:51:12');
insert into users (id, name, age, isAdmin, createdDate) values (42, 'Elizabeth', 20, false, '2004-04-19 22:21:31');
insert into users (id, name, age, isAdmin, createdDate) values (43, 'Diana', 41, true, '2004-06-24 03:05:17');
insert into users (id, name, age, isAdmin, createdDate) values (44, 'Brandon', 34, true, '2009-03-05 08:47:30');
insert into users (id, name, age, isAdmin, createdDate) values (45, 'Carl', 47, true, '2012-03-08 17:48:36');
insert into users (id, name, age, isAdmin, createdDate) values (46, 'Bonnie', 42, true, '2012-06-15 12:36:52');
insert into users (id, name, age, isAdmin, createdDate) values (47, 'Justin', 54, false, '2009-03-27 01:30:08');
insert into users (id, name, age, isAdmin, createdDate) values (48, 'Kenneth', 21, false, '2006-05-28 17:44:00');
insert into users (id, name, age, isAdmin, createdDate) values (49, 'Diane', 58, true, '2014-11-05 07:45:00');
insert into users (id, name, age, isAdmin, createdDate) values (50, 'Marie', 50, false, '2012-10-19 17:59:38');
insert into users (id, name, age, isAdmin, createdDate) values (51, 'Juan', 53, false, '2013-02-05 18:01:31');
insert into users (id, name, age, isAdmin, createdDate) values (52, 'Roy', 27, true, '2009-07-02 05:39:44');
insert into users (id, name, age, isAdmin, createdDate) values (53, 'Bobby', 32, true, '2016-04-01 23:27:32');
insert into users (id, name, age, isAdmin, createdDate) values (54, 'Christina', 36, false, '2009-08-14 13:56:01');
insert into users (id, name, age, isAdmin, createdDate) values (55, 'Todd', 37, true, '2009-03-06 19:49:55');
insert into users (id, name, age, isAdmin, createdDate) values (56, 'Patrick', 23, false, '2014-12-30 21:36:31');
insert into users (id, name, age, isAdmin, createdDate) values (57, 'Lois', 38, false, '2003-08-03 14:32:19');
insert into users (id, name, age, isAdmin, createdDate) values (58, 'Douglas', 32, false, '2006-07-20 04:09:34');
insert into users (id, name, age, isAdmin, createdDate) values (59, 'Philip', 59, true, '2009-02-12 06:01:08');
insert into users (id, name, age, isAdmin, createdDate) values (60, 'Sandra', 37, true, '2011-08-11 06:40:50');
insert into users (id, name, age, isAdmin, createdDate) values (61, 'Karen', 28, true, '2012-06-16 09:42:21');
insert into users (id, name, age, isAdmin, createdDate) values (62, 'Louise', 55, false, '2013-12-08 14:29:37');
insert into users (id, name, age, isAdmin, createdDate) values (63, 'Cynthia', 48, true, '2016-04-25 17:34:08');
insert into users (id, name, age, isAdmin, createdDate) values (64, 'Antonio', 31, true, '2015-01-25 13:12:41');
insert into users (id, name, age, isAdmin, createdDate) values (65, 'Kathryn', 48, true, '2006-01-01 19:50:16');
insert into users (id, name, age, isAdmin, createdDate) values (66, 'Larry', 43, true, '2014-01-31 21:26:11');
insert into users (id, name, age, isAdmin, createdDate) values (67, 'Douglas', 52, false, '2013-08-05 08:19:12');
insert into users (id, name, age, isAdmin, createdDate) values (68, 'Jean', 45, true, '2007-04-26 08:38:59');
insert into users (id, name, age, isAdmin, createdDate) values (69, 'Terry', 45, false, '2002-11-29 16:16:28');
insert into users (id, name, age, isAdmin, createdDate) values (70, 'Tammy', 33, false, '2007-03-13 11:38:29');
insert into users (id, name, age, isAdmin, createdDate) values (71, 'Maria', 54, false, '2016-02-28 11:02:31');
insert into users (id, name, age, isAdmin, createdDate) values (72, 'Ralph', 29, true, '2004-10-13 05:25:48');
insert into users (id, name, age, isAdmin, createdDate) values (73, 'Karen', 33, true, '2003-08-19 22:47:03');
insert into users (id, name, age, isAdmin, createdDate) values (74, 'Douglas', 33, false, '2005-05-26 14:04:13');
insert into users (id, name, age, isAdmin, createdDate) values (75, 'Bonnie', 35, true, '2009-06-29 03:06:13');
insert into users (id, name, age, isAdmin, createdDate) values (76, 'Virginia', 51, true, '2012-05-20 06:00:17');
insert into users (id, name, age, isAdmin, createdDate) values (77, 'Bonnie', 51, true, '2008-09-12 00:01:35');
insert into users (id, name, age, isAdmin, createdDate) values (78, 'Peter', 23, false, '2014-07-02 15:04:03');
insert into users (id, name, age, isAdmin, createdDate) values (79, 'Maria', 49, false, '2016-01-14 06:16:29');
insert into users (id, name, age, isAdmin, createdDate) values (80, 'Ruth', 56, true, '2004-01-05 19:47:36');
insert into users (id, name, age, isAdmin, createdDate) values (81, 'Nancy', 37, false, '2009-07-15 03:02:02');
insert into users (id, name, age, isAdmin, createdDate) values (82, 'Deborah', 19, false, '2008-07-20 21:59:24');
insert into users (id, name, age, isAdmin, createdDate) values (83, 'Gloria', 35, true, '2012-08-16 12:48:12');
insert into users (id, name, age, isAdmin, createdDate) values (84, 'Denise', 30, false, '2014-11-24 15:27:09');
insert into users (id, name, age, isAdmin, createdDate) values (85, 'Michelle', 28, true, '2016-08-22 19:35:53');
insert into users (id, name, age, isAdmin, createdDate) values (86, 'Anne', 56, false, '2008-05-07 18:13:09');
insert into users (id, name, age, isAdmin, createdDate) values (87, 'Debra', 25, true, '2013-09-04 12:58:41');
insert into users (id, name, age, isAdmin, createdDate) values (88, 'Marie', 21, false, '2015-08-29 19:54:14');
insert into users (id, name, age, isAdmin, createdDate) values (89, 'George', 21, true, '2014-09-04 21:22:43');
insert into users (id, name, age, isAdmin, createdDate) values (90, 'Marilyn', 37, false, '2008-08-10 03:50:13');
insert into users (id, name, age, isAdmin, createdDate) values (91, 'Anne', 57, false, '2001-10-27 13:24:38');
insert into users (id, name, age, isAdmin, createdDate) values (92, 'Judith', 44, true, '2006-04-15 14:07:06');
insert into users (id, name, age, isAdmin, createdDate) values (93, 'Joe', 44, true, '2001-05-28 01:51:51');
insert into users (id, name, age, isAdmin, createdDate) values (94, 'Albert', 50, false, '2009-06-28 08:28:23');
insert into users (id, name, age, isAdmin, createdDate) values (95, 'Thomas', 40, true, '2002-05-03 05:30:30');
insert into users (id, name, age, isAdmin, createdDate) values (96, 'Roy', 60, true, '2001-07-28 23:52:43');
insert into users (id, name, age, isAdmin, createdDate) values (97, 'Amy', 21, true, '2016-05-28 05:54:43');
insert into users (id, name, age, isAdmin, createdDate) values (98, 'Larry', 36, true, '2014-07-31 10:52:24');
insert into users (id, name, age, isAdmin, createdDate) values (99, 'Jennifer', 29, false, '2014-01-25 08:43:44');
insert into users (id, name, age, isAdmin, createdDate) values (100, 'Nicholas', 26, false, '2007-01-05 09:51:37');