CREATE TABLE "Department" (
"department_ID" int NOT NULL,
"name" nvarchar(40) NOT NULL,
  PRIMARY KEY ("department_ID")
)

CREATE TABLE "Course" (
"course_ID" int NOT NULL,
"course_name" nvarchar(40) NOT NULL,
"department_ID" int NOT NULL,
"min_students" int NOT NULL,
"max_students" int NOT NULL,
"type" nvarchar(40) NOT NULL,
"elective" bit NOT NULL,
 PRIMARY KEY ("course_ID"),
 FOREIGN KEY ("department_ID") references "Department"("department_ID") 
 )

 
CREATE TABLE "Prereq" (
  "course_ID" int NOT NULL,
  "prereq_ID" int NOT NULL,
  PRIMARY KEY ("course_ID","prereq_ID"),
  FOREIGN KEY ("course_ID") REFERENCES "Course"("course_ID"),
  FOREIGN KEY ("prereq_ID") REFERENCES "Course"("course_ID")
) 


CREATE TABLE "Teacher" (
"teacher_ID" int NOT NULL,
"department_ID" int NOT NULL, 
"supervisor_ID" int,
"name" nvarchar(40) NOT NULL,
"surname" nvarchar(40) NOT NULL,
"address" nvarchar(40) NOT NULL, 
"phone" int NOT NULL,
"email" nvarchar(40) NOT NULL,
 PRIMARY KEY ("teacher_ID"),
 FOREIGN KEY ("department_ID") references "Department"("department_ID"), 
 FOREIGN KEY ("teacher_ID") references "Teacher"("teacher_ID") 
)


CREATE TABLE "Qualified"(
"teacher_ID" int NOT NULL,
"course_ID" int NOT NULL,
PRIMARY KEY ("teacher_ID", "course_ID"),
 FOREIGN KEY ("course_ID") references "Course"("course_ID"), 
 FOREIGN KEY ("teacher_ID") references "Teacher"("teacher_ID") 
)


CREATE TABLE "Group" (
"group_ID" int NOT NULL,
"teacher_ID" int NOT NULL,
 PRIMARY KEY ("group_ID"),
 FOREIGN KEY ("teacher_ID") references "Teacher"("teacher_ID") 
)


CREATE TABLE "Student" (
"student_ID" int NOT NULL,
"group_ID" int NOT NULL,
"department_ID" int NOT NULL,
"name" nvarchar(40) NOT NULL,
"surname" nvarchar(40) NOT NULL,
"address" nvarchar(40) NOT NULL, 
"phone" int NOT NULL,
"email" nvarchar(40) NOT NULL,
 PRIMARY KEY("student_ID"),
  FOREIGN KEY ("department_ID") references "Department"("department_ID"),
  FOREIGN KEY ("group_ID") references "Group"("group_ID") 
)


CREATE TABLE "Room" (
"room_id" int NOT NULL,
"department_ID" int NOT NULL,
"room_type" nvarchar(40) NOT NULL,
PRIMARY KEY ("room_ID"),
FOREIGN KEY ("department_ID") references "Department"("department_ID") 
)


CREATE TABLE "Class" (
"class_ID" int NOT NULL,
"course_ID" int NOT NULL, 
"room_ID" int NOT NULL,
"duration" int NOT NULL, 
"year" int NOT NULL,
"semester" int NOT NULL,
"day" nvarchar(40) NOT NULL,
"hour" int NOT NULL,
PRIMARY KEY ("class_ID"),
FOREIGN KEY ("course_ID") references "Course"("course_ID"),
FOREIGN KEY ("room_ID") references "Room"("room_ID")
)


CREATE TABLE "Taken_History" (
"student_ID" int NOT NULL,
"class_ID" int NOT NULL,
"grade" int NOT NULL,
 PRIMARY KEY ("student_ID", "class_ID"),
 FOREIGN KEY ("student_ID") references "Student"("student_ID"), 
 FOREIGN KEY ("class_ID") references "Class"("class_ID") 
)

CREATE TABLE "Teach_History" (
"teacher_ID" int NOT NULL,
"class_ID" int NOT NULL,
  PRIMARY KEY ("teacher_ID", "class_ID"),
  FOREIGN KEY ("teacher_ID") references "Teacher"("teacher_ID"),
  FOREIGN KEY ("class_ID") references "Class"("class_ID") 
)
