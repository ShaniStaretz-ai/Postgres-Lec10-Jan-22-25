--a. select all courses with their lecturer assigned
SELECT c.*,l.* from courses c 
INNER join lecturers l
on c.lecturer_id=l.lecturer_id;

--b. select all courses without lecturers
SELECT c.* from courses c 
left join lecturers l
on c.lecturer_id=l.lecturer_id
where c.lecturer_id is null;

--c. select all courses with their lecturers 
select * from courses c
left join lecturers l
on c.lecturer_id=l.lecturer_id;

--d. select all courses with assigned lecturers
select * from courses c
right join lecturers l
on c.lecturer_id=l.lecturer_id
where c.lecturer_id is not null;

--e. select all lecturers without courses
select l.* from courses c
right join lecturers l
on c.lecturer_id=l.lecturer_id
where c.lecturer_id is null;

--f. select all lecturers with their coursea
select * from courses c
right join lecturers l
on c.lecturer_id=l.lecturer_id;

--g. select all courses with their lecturers(even without lecturers) and all lecturers and their courses(even without courses)
select * from courses c
full join lecturers l
on c.lecturer_id=l.lecturer_id;

--h . select all possible match courses to lecturers
select c.course_id,c.course_name,l.lecturer_id,l.first_name,l.last_name,l.email from courses c
cross join lecturers l

