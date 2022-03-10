drop procedure TeacherAssignment;

create procedure TeacherAssignment(
@class_id int
) as

begin

declare @class int
declare @classday varchar(40)
declare @classhour int
declare @course int 
declare @originalteacher int
declare @teacher int

select @course = c.course_id from Class c where class_ID = @class_id
select @class = c.class_id from Class c where class_ID = @class_id
select @classday = c."day" from Class c where class_ID = @class_id
select @classday = c."hour" from Class c where class_ID = @class_id
select @originalteacher = th.teacher_ID from Teach_History th where th.class_ID=@class_id

select top 1 @teacher = q.teacher_ID
from Qualified q 
where q.course_ID=@course
and q.teacher_ID != @originalteacher
and q.teacher_ID not in
(
	select t.teacher_ID from Teacher t join 
	Teach_History th on th.teacher_ID=t.teacher_ID
	join Class c on c.class_ID= th.class_ID
	where c."day"=@classday and c."hour"=@classhour	 
)


if @teacher IS NULL
	begin	
		print 'There is no other available teacher. Class is canceled.'
		select c.class_ID, '1' as Canceled from Class c join Teach_History th on th.class_ID=c.class_ID where c.class_ID=@class_id;
			return(-1)
	end
else
	begin
		print 'Found teacher:'
		print @teacher
		update Teach_History set teacher_ID=teacher_ID where class_ID=@class 
		select * from Class c join Teach_History th on th.class_ID=c.class_ID where c.class_ID=@class_id
	end
end
	 
--run stored procedure for class nr 3
exec TeacherAssignment @class_id=3



