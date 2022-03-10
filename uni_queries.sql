
--Modification of rows for a selected table
begin transaction

select * from Room where room_type = 'lab';
select * from Class where "day"='Tuesday';
select * from Taken_History where grade = 5;

UPDATE Room SET room_type = 'lab' WHERE room_id>50;
UPDATE Class SET "day" = 'Tuesday' WHERE semester=2;
UPDATE Taken_History SET grade = 5 WHERE student_id = 3;

select * from Room where room_type = 'lab';
select * from Class where "day"='Tuesday';
select * from Taken_History where grade = 5;

rollback; --or rollback to undo the changes


--Index creation
CREATE INDEX index_courseID ON Class(course_ID);
CREATE INDEX index_teach_class ON Teach_History(class_ID);
CREATE INDEX index_takenclass ON Taken_History(class_ID);
CREATE NONCLUSTERED INDEX index_student_full ON Student("name",surname); 
CREATE NONCLUSTERED INDEX index_teacher_full ON Teacher("name",surname); 



--Queries
--1. A total number of students at each department for each year in the database.

select d.department_ID, d."name", in2020.student_count, in2021.student_count from Department d 
join(
	select s.department_ID,  count(distinct th.student_ID) as student_count  from Student s
	inner	join Taken_History th on th.student_ID=s.student_ID
	inner join Class cl on cl.class_ID = th.class_ID
	where cl."year" =2020
	group by s.department_ID
	) as in2020 on in2020.department_ID=d.department_ID
join(
	select s.department_ID,  count(distinct th.student_ID) as student_count  from Student s
	inner	join Taken_History th on th.student_ID=s.student_ID
	inner join Class cl on cl.class_ID = th.class_ID
	where cl."year" =2021
	group by s.department_ID
	) as in2021 on in2021.department_ID=d.department_ID


--2. A list of 10 courses taken by most students in a single academic year.

select top 10 * from(
(
	select top 10 c.course_ID, c.course_name, count(distinct th.student_ID) as students_count from Course c 
	join Class cl on cl.course_ID=c.course_ID
	join Taken_History th on th.class_ID=cl.class_ID
	where cl."year"=2020
	group by c.course_ID, c.course_name
	order by students_count desc
) 
union all
(
	select top 10 c.course_ID, c.course_name, count(distinct th.student_ID) as students_count from Course c 
	join Class cl on cl.course_ID=c.course_ID
	join Taken_History th on th.class_ID=cl.class_ID
	where cl."year"=2021
	group by c.course_ID, c.course_name
	order by students_count desc
) 
) as x
order by students_count desc;


--3. A list of teachers whose classes were taken by more than 150% of average number of 
--students per teacher.

select t.teacher_ID, t."name", t.surname from Teacher t 
join Teach_History teh on teh.teacher_ID=t.teacher_ID
join Class c on c.class_ID=teh.class_ID
join Taken_History th on th.class_ID=c.class_ID
group by t.teacher_ID, t."name", t.surname
having count(th.student_ID) > 1.5*
(
	select avg(x.StudentSum)
	from(
		select t.teacher_ID, count(th.student_ID) as StudentSum
		from Teacher t 
		inner join  Teach_History teh on teh.teacher_ID=t.teacher_ID
		inner join Class c on c.class_ID=teh.class_ID
		inner join Taken_History th on th.class_ID=c.class_ID
		group by t.teacher_ID
		) as x
)


--4. Maximum number of hours taught in a single room in a week, and the year and the semester 
--when it happened.
select r.room_ID, count(c.class_ID) as classes_count, c."year", c.semester from Class c
join Room r on r.room_id=c.room_ID
group by r.room_ID, c."year", c.semester
order by classes_count desc


--5. Total number of students who have classes from 8:00 to 20:00 on Monday, without a break
--of at least 1h.
select s.student_ID, s."name", s.surname from Student s 
join Taken_History th on th.student_ID=s.student_ID
join Class c on c.class_ID=th.class_ID
where c."day"='Monday'
group by s.student_ID, s."name", s.surname 
having sum(c.duration)>11


