--Part 7: Define and execute at least five queries that show your database.

/* Get the student's nuid, first and last name who enroll in Web Development class
(At least one query must contain a join of at least three tables)
*/
SELECT student.nuid, student.first_name, student.last_name FROM student
INNER JOIN course_registration on student.nuid= course_registration.nuid
INNER JOIN course on course_registration.course_id = course.course_id
WHERE course_name = 'Web Development';




/* Get the couse name, and number of student enrolled in the course that has more than or equal to 5 students
(one must be a group by with a having clause)
*/
SELECT course.course_name, count(student.nuid) FROM student
INNER JOIN course_registration on student.nuid= course_registration.nuid
INNER JOIN course on course_registration.course_id = course.course_id
GROUP BY course.course_id
HAVING count(student.nuid) >= 5


/* Get the distinct student's nuid who enrolled in mid-level courses (course_id from 5005 to 5010)
(At least one query must contain more than one expression with logical connectors)
*/
SELECT DISTINCT course_registration.nuid
FROM course_registration
WHERE course_registration.course_id >=5005
AND course_registration.course_id<= 5010 ;


/* Categorize bridge course and non-bridge course. Bridge courses are 5001 and 5002, others are non-bridge courses
(At least one query must contain more than one expression with logical connectors)
*/
SELECT course_id,
	CASE
		WHEN course_id = '5001' OR course_id = '5002' THEN 'Bridge course'
		ELSE 'Non-bridge course'
	END
FROM course


/* Get the instructor id, first and last name whose classes are more advanced class. 
Advanced means course id is above average course id level
(one must contain a subquery)
*/
SELECT instructor.instructor_id, instructor.first_name, instructor.last_name FROM course
INNER JOIN instructor ON course.instructor_id = instructor.instructor_id
GROUP BY instructor.instructor_id
HAVING avg(course_id) >= (SELECT avg(course.course_id) FROM course
INNER JOIN instructor ON course.instructor_id = instructor.instructor_id)




-- Get the instructor id, first and last name who teaches Database class
SELECT instructor.instructor_id, instructor.first_name, instructor.last_name FROM course
INNER JOIN instructor ON course.instructor_id = instructor.instructor_id
WHERE course.course_name = 'Database';


