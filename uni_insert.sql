
--inserting sample data into Department table 
insert into Department (department_ID, "name") values (1, 'Accounting');
insert into Department (department_ID, "name") values (2, 'Marketing');
insert into Department (department_ID, "name") values (3, 'Human Resources');
insert into Department (department_ID, "name") values (4, 'Business Development');
insert into Department (department_ID, "name") values (5, 'Engineering');

--inserting sample data into Course table
insert into Course (course_ID, course_name, department_ID, min_students, max_students, "type", elective) values (1, 'Banking', 1, 15, 30, 'lab', 0);
insert into Course (course_ID, course_name, department_ID, min_students, max_students, "type", elective) values (2, 'Advertising', 2, 15, 100, 'lecture', 0);
insert into Course (course_ID, course_name, department_ID, min_students, max_students, "type", elective) values (3, 'Behavioral science', 3, 15, 30, 'lab', 1);
insert into Course (course_ID, course_name, department_ID, min_students, max_students, "type", elective) values (4, 'Business law', 1, 15, 60, 'project', 1);
insert into Course (course_ID, course_name, department_ID, min_students, max_students, "type", elective) values (5, 'Physics', 5, 15, 100, 'lecture', 1);
insert into Course (course_ID, course_name, department_ID, min_students, max_students, "type", elective) values (6, 'Management', 4, 10, 50, 'project', 1);
insert into Course (course_ID, course_name, department_ID, min_students, max_students, "type", elective) values (7, 'Data Structures', 5, 10, 15, 'lab', 0);
insert into Course (course_ID, course_name, department_ID, min_students, max_students, "type", elective) values (8, 'Business marketing', 4, 20, 100, 'lecture', 1);
insert into Course (course_ID, course_name, department_ID, min_students, max_students, "type", elective) values (9, 'HR management', 3, 20, 100, 'lecture', 0);
insert into Course (course_ID, course_name, department_ID, min_students, max_students, "type", elective) values (10, 'Microeconomics', 1, 10, 20, 'lab', 0);
insert into Course (course_ID, course_name, department_ID, min_students, max_students, "type", elective) values (11, 'Public relations', 2, 10, 30, 'project', 0);
insert into Course (course_ID, course_name, department_ID, min_students, max_students, "type", elective) values (12, 'Quantitative methods', 2, 10, 20, 'lab', 1);
insert into Course (course_ID, course_name, department_ID, min_students, max_students, "type", elective) values (13, 'Employee development', 3, 15, 30, 'lab', 0);
insert into Course (course_ID, course_name, department_ID, min_students, max_students, "type", elective) values (14, 'Government and politics', 4, 30, 100, 'lecture', 1);
insert into Course (course_ID, course_name, department_ID, min_students, max_students, "type", elective) values (15, 'Mathematics', 5, 10, 50, 'project', 0);

--inserting sample data into Teacher table
insert into Teacher (teacher_id, department_ID, supervisor_ID, "name", surname, address, phone, email) values (1, 2, null, 'Noach', 'Curman', '2 Scott Drive', '116579182', 'ncurman0@craigslist.org');
insert into Teacher (teacher_id, department_ID, supervisor_ID, "name", surname, address, phone, email) values (2, 4, 1, 'Daveen', 'Sloam', '70069 Valley Edge Road', '576689219', 'dsloam1@meetup.com');
insert into Teacher (teacher_id, department_ID, supervisor_ID, "name", surname, address, phone, email) values (3, 5, 1, 'Jojo', 'Baraja', '48052 Mccormick Drive', '440106686', 'jbaraja2@home.pl');
insert into Teacher (teacher_id, department_ID, supervisor_ID, "name", surname, address, phone, email) values (4, 3, 1, 'Marris', 'Saunton', '95 Graceland Plaza', '487480394', 'msaunton3@nps.gov');
insert into Teacher (teacher_id, department_ID, supervisor_ID, "name", surname, address, phone, email) values (5, 1, 1, 'Kailey', 'Gratrex', '613 Garrison Way', '325315514', 'kgratrex4@reddit.com');
insert into Teacher (teacher_id, department_ID, supervisor_ID, "name", surname, address, phone, email) values (6, 3, 4, 'Lulita', 'Hiskey', '243 Lake View Plaza', '131600329', 'lhiskey5@businessweek.com');
insert into Teacher (teacher_id, department_ID, supervisor_ID, "name", surname, address, phone, email) values (7, 5, 3, 'Trish', 'Coolahan', '62 Coleman Road', '952905158', 'tcoolahan6@blogs.com');
insert into Teacher (teacher_id, department_ID, supervisor_ID, "name", surname, address, phone, email) values (8, 1, 5, 'Colin', 'Whitton', '357 Del Sol Hill', '681717269', 'cwhitton0@nbcnews.com');

--inserting sample data into Qualified table
insert into Qualified (teacher_id, course_id) values (1, 2);
insert into Qualified (teacher_id, course_id) values (1, 11);
insert into Qualified (teacher_id, course_id) values (1, 12);
insert into Qualified (teacher_id, course_id) values (2, 6);
insert into Qualified (teacher_id, course_id) values (2, 8);
insert into Qualified (teacher_id, course_id) values (3, 5);
insert into Qualified (teacher_id, course_id) values (3, 7);
insert into Qualified (teacher_id, course_id) values (3, 15);
insert into Qualified (teacher_id, course_id) values (4, 3);
insert into Qualified (teacher_id, course_id) values (4, 13);
insert into Qualified (teacher_id, course_id) values (5, 1);
insert into Qualified (teacher_id, course_id) values (5, 4);
insert into Qualified (teacher_id, course_id) values (5, 10);
insert into Qualified (teacher_id, course_id) values (6, 9);
insert into Qualified (teacher_id, course_id) values (7, 5);
insert into Qualified (teacher_id, course_id) values (7, 15);
insert into Qualified (teacher_id, course_id) values (8, 1);
insert into Qualified (teacher_id, course_id) values (8, 4);
insert into Qualified (teacher_id, course_id) values (8, 10);

--inserting sample data into Group table
insert into "Group" (group_id, teacher_id) values (1, 6);
insert into "Group" (group_id, teacher_id) values (2, 5);
insert into "Group" (group_id, teacher_id) values (3, 3);
insert into "Group" (group_id, teacher_id) values (4, 7);
insert into "Group" (group_id, teacher_id) values (5, 8);
insert into "Group" (group_id, teacher_id) values (6, 2);
insert into "Group" (group_id, teacher_id) values (7, 4);
insert into "Group" (group_id, teacher_id) values (8, 1);

--inserting sample data into Student table
insert into Student (student_id, group_id, department_id, name, surname, address, phone, email) values (1, 1, 5, 'Hyacinthe', 'Cescot', '2 Bellgrove Park', '857595676', 'hcescot0@yandex.ru');
insert into Student (student_id, group_id, department_id, name, surname, address, phone, email) values (2, 2, 4, 'Jarret', 'Furse', '16 Cardinal Plaza', '328542339', 'jfurse1@addthis.com');
insert into Student (student_id, group_id, department_id, name, surname, address, phone, email) values (3, 3, 3, 'Heather', 'Burroughes', '5 Muir Court', '429141683', 'hburroughes2@wunderground.com');
insert into Student (student_id, group_id, department_id, name, surname, address, phone, email) values (4, 4, 2, 'Sayre', 'Gaymar', '0580 North Center', '605693743', 'sgaymar3@twitter.com');
insert into Student (student_id, group_id, department_id, name, surname, address, phone, email) values (5, 5, 1, 'Tedda', 'Scad', '420 Fremont Lane', '236165958', 'tscad4@yahoo.com');
insert into Student (student_id, group_id, department_id, name, surname, address, phone, email) values (6, 6, 5, 'Millard', 'MacGaffey', '9 6th Point', '927946770', 'mmacgaffey5@who.int');
insert into Student (student_id, group_id, department_id, name, surname, address, phone, email) values (7, 7, 4, 'Andi', 'Boyne', '3931 Welch Crossing', '299901605', 'aboyne6@mayoclinic.com');
insert into Student (student_id, group_id, department_id, name, surname, address, phone, email) values (8, 8, 3, 'Orelee', 'Naper', '5 Forster Park', '379511415', 'onaper7@symantec.com');
insert into Student (student_id, group_id, department_id, name, surname, address, phone, email) values (9, 1, 2, 'Karlik', 'Kirtland', '63 Bashford Street', '305866696', 'kkirtland8@google.co.uk');
insert into Student (student_id, group_id, department_id, name, surname, address, phone, email) values (10, 2, 1, 'Lauretta', 'Fahrenbach', '20 Golden Leaf Junction', '734857151', 'lfahrenbach9@newyorker.com');
insert into Student (student_id, group_id, department_id, name, surname, address, phone, email) values (11, 3, 5, 'Delinda', 'Dumini', '0 Dwight Parkway', '200161280', 'dduminia@360.cn');
insert into Student (student_id, group_id, department_id, name, surname, address, phone, email) values (12, 4, 4, 'Jude', 'Gude', '220 Chive Lane', '483747155', 'jgudeb@skyrock.com');
insert into Student (student_id, group_id, department_id, name, surname, address, phone, email) values (13, 5, 3, 'Chrotoem', 'Truluck', '2 Stone Corner Parkway', '750674060', 'ctruluckc@ted.com');
insert into Student (student_id, group_id, department_id, name, surname, address, phone, email) values (14, 6, 2, 'Nara', 'Cranmere', '80285 Eagan Alley', '307668122', 'ncranmered@51.la');
insert into Student (student_id, group_id, department_id, name, surname, address, phone, email) values (15, 7, 1, 'Finley', 'Guillard', '282 Truax Alley', '123290575', 'fguillarde@multiply.com');
insert into Student (student_id, group_id, department_id, name, surname, address, phone, email) values (16, 8, 5, 'Sinclair', 'Kaman', '55951 Morning Crossing', '465948253', 'skamanf@mozilla.org');
insert into Student (student_id, group_id, department_id, name, surname, address, phone, email) values (17, 1, 4, 'Griz', 'Whordley', '63490 Maple Wood Terrace', '397780325', 'gwhordleyg@tamu.edu');
insert into Student (student_id, group_id, department_id, name, surname, address, phone, email) values (18, 2, 3, 'Gunar', 'Beades', '5 Kim Terrace', '344938562', 'gbeadesh@devhub.com');
insert into Student (student_id, group_id, department_id, name, surname, address, phone, email) values (19, 3, 2, 'Kendra', 'Dunston', '7 Union Point', '614822416', 'kdunstoni@ebay.co.uk');
insert into Student (student_id, group_id, department_id, name, surname, address, phone, email) values (20, 4, 1, 'Marnie', 'Lively', '69402 Sullivan Terrace', '678559824', 'mlivelyj@mayoclinic.com');

--inserting sample data into Room table
insert into Room (room_id, department_id, room_type) values ('31', 1, 'lecture');
insert into Room (room_id, department_id, room_type) values ('92', 2, 'lecture');
insert into Room (room_id, department_id, room_type) values ('22', 3, 'lecture');
insert into Room (room_id, department_id, room_type) values ('49', 4, 'lecture');
insert into Room (room_id, department_id, room_type) values ('83', 5, 'lecture');
insert into Room (room_id, department_id, room_type) values ('67', 1, 'lab');
insert into Room (room_id, department_id, room_type) values ('35', 2, 'lab');
insert into Room (room_id, department_id, room_type) values ('72', 3, 'lab');
insert into Room (room_id, department_id, room_type) values ('54', 4, 'lab');
insert into Room (room_id, department_id, room_type) values ('41', 5, 'lab');

--inserting sample data into Class table
insert into Class (class_id, course_id, room_id, duration, "year", semester, "day", "hour") values (1, 6, '49', 2, 2021, 2, 'Monday', '15');
insert into Class (class_id, course_id, room_id, duration, "year", semester, "day", "hour") values (2, 15, '83', 1, 2020, 1, 'Tuesday', '13');
insert into Class (class_id, course_id, room_id, duration, "year", semester, "day", "hour") values (3, 7, '41', 2, 2021, 4, 'Wednesday', '12');
insert into Class (class_id, course_id, room_id, duration, "year", semester, "day", "hour") values (4, 8, '54', 2, 2020, 3, 'Monday', '8');
insert into Class (class_id, course_id, room_id, duration, "year", semester, "day", "hour") values (5, 9, '72', 1, 2021, 4, 'Friday', '10');
insert into Class (class_id, course_id, room_id, duration, "year", semester, "day", "hour") values (6, 10, '67', 2, 2020, 3, 'Thursday', '17');
insert into Class (class_id, course_id, room_id, duration, "year", semester, "day", "hour") values (7, 2, '92', 2, 2020, 1, 'Monday', '13');
insert into Class (class_id, course_id, room_id, duration, "year", semester, "day", "hour") values (8, 3, '22', 1, 2021, 2, 'Friday', '11');
insert into Class (class_id, course_id, room_id, duration, "year", semester, "day", "hour") values (9, 11, '92', 3, 2021, 4, 'Monday', '12');
insert into Class (class_id, course_id, room_id, duration, "year", semester, "day", "hour") values (10, 13, '54', 2, 2020, 1, 'Tuesday', '10');
insert into Class (class_id, course_id, room_id, duration, "year", semester, "day", "hour") values (11, 6, '54', 2, 2021, 4, 'Wednesday', '12');
insert into Class (class_id, course_id, room_id, duration, "year", semester, "day", "hour") values (12, 7, '83', 2, 2020, 3, 'Tuesday', '10');
insert into Class (class_id, course_id, room_id, duration, "year", semester, "day", "hour") values (13, 4, '67', 1, 2021, 2, 'Wednesday', '8');
insert into Class (class_id, course_id, room_id, duration, "year", semester, "day", "hour") values (14, 1, '31', 2, 2020, 1, 'Thursday', '12');
insert into Class (class_id, course_id, room_id, duration, "year", semester, "day", "hour") values (15, 9, '22', 1, 2021, 4, 'Monday', '14');
insert into Class (class_id, course_id, room_id, duration, "year", semester, "day", "hour") values (16, 5, '83', 2, 2020, 3, 'Tuesday', '13');
insert into Class (class_id, course_id, room_id, duration, "year", semester, "day", "hour") values (17, 12, '35', 1, 2020, 3, 'Monday', '16');
insert into Class (class_id, course_id, room_id, duration, "year", semester, "day", "hour") values (18, 14, '49', 2, 2021, 2, 'Friday', '11');
insert into Class (class_id, course_id, room_id, duration, "year", semester, "day", "hour") values (19, 13, '72', 2, 2021, 2, 'Thursday', '10');
insert into Class (class_id, course_id, room_id, duration, "year", semester, "day", "hour") values (20, 1, '67', 1, 2020, 1, 'Friday', '10');


--inserting sample data into Taken_History table
insert into Taken_History (student_id, class_id, grade) values (1, 2, 4);
insert into Taken_History (student_id, class_id, grade) values (1, 3, 3);
insert into Taken_History (student_id, class_id, grade) values (2, 1, 4);
insert into Taken_History (student_id, class_id, grade) values (2, 4, 3);
insert into Taken_History (student_id, class_id, grade) values (3, 5, 5);
insert into Taken_History (student_id, class_id, grade) values (3, 8, 4);
insert into Taken_History (student_id, class_id, grade) values (4, 7, 4);
insert into Taken_History (student_id, class_id, grade) values (4, 9, 4);
insert into Taken_History (student_id, class_id, grade) values (4, 17, 4);
insert into Taken_History (student_id, class_id, grade) values (5, 6, 2);
insert into Taken_History (student_id, class_id, grade) values (5, 13, 3);
insert into Taken_History (student_id, class_id, grade) values (6, 12, 3);
insert into Taken_History (student_id, class_id, grade) values (6, 16, 4);
insert into Taken_History (student_id, class_id, grade) values (7, 11, 3);
insert into Taken_History (student_id, class_id, grade) values (8, 10, 5);
insert into Taken_History (student_id, class_id, grade) values (9, 9, 3);
insert into Taken_History (student_id, class_id, grade) values (9, 17, 2);
insert into Taken_History (student_id, class_id, grade) values (10, 13, 4);
insert into Taken_History (student_id, class_id, grade) values (10, 14, 3);
insert into Taken_History (student_id, class_id, grade) values (11, 2, 5);
insert into Taken_History (student_id, class_id, grade) values (11, 12, 4);
insert into Taken_History (student_id, class_id, grade) values (12, 18, 3);
insert into Taken_History (student_id, class_id, grade) values (13, 15, 2);
insert into Taken_History (student_id, class_id, grade) values (14, 7, 4);
insert into Taken_History (student_id, class_id, grade) values (14, 17, 4);
insert into Taken_History (student_id, class_id, grade) values (14, 9, 4);
insert into Taken_History (student_id, class_id, grade) values (15, 6, 5);
insert into Taken_History (student_id, class_id, grade) values (15, 20, 3);
insert into Taken_History (student_id, class_id, grade) values (16, 16, 4);
insert into Taken_History (student_id, class_id, grade) values (17, 4, 2);
insert into Taken_History (student_id, class_id, grade) values (17, 11, 2);
insert into Taken_History (student_id, class_id, grade) values (18, 19, 3);
insert into Taken_History (student_id, class_id, grade) values (18, 5, 5);
insert into Taken_History (student_id, class_id, grade) values (19, 7, 4);
insert into Taken_History (student_id, class_id, grade) values (20, 6, 5);

--inserting sample data into Teach_History table
insert into Teach_History (teacher_id, class_id) values (2, 1);
insert into Teach_History (teacher_id, class_id) values (3, 2);
insert into Teach_History (teacher_id, class_id) values (7, 3);
insert into Teach_History (teacher_id, class_id) values (2, 4);
insert into Teach_History (teacher_id, class_id) values (4, 5);
insert into Teach_History (teacher_id, class_id) values (8, 6);
insert into Teach_History (teacher_id, class_id) values (1, 7);
insert into Teach_History (teacher_id, class_id) values (6, 8);
insert into Teach_History (teacher_id, class_id) values (1, 9);
insert into Teach_History (teacher_id, class_id) values (4, 10);​
insert into Teach_History (teacher_id, class_id) values (2, 11);
insert into Teach_History (teacher_id, class_id) values (3, 12);​
insert into Teach_History (teacher_id, class_id) values (5, 13);​
insert into Teach_History (teacher_id, class_id) values (8, 14);
insert into Teach_History (teacher_id, class_id) values (6, 15);
insert into Teach_History (teacher_id, class_id) values (3, 16);
insert into Teach_History (teacher_id, class_id) values (1, 17);​
insert into Teach_History (teacher_id, class_id) values (2, 18);​
insert into Teach_History (teacher_id, class_id) values (4, 19);
insert into Teach_History (teacher_id, class_id) values (5, 20);

--inserting sample data into Prereq table
insert into Prereq (course_id, prereq_id) values (4, 1);
insert into Prereq (course_id, prereq_id) values (7, 5);
insert into Prereq (course_id, prereq_id) values (7, 15);
insert into Prereq (course_id, prereq_id) values (10, 4);
insert into Prereq (course_id, prereq_id) values (13, 9);
insert into Prereq (course_id, prereq_id) values (14, 6);