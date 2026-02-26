/* 1. StudentID, Name with CourseID */
SELECT S.student_id, S.name, E.course_id
FROM Student S
INNER JOIN Enrollment E
ON S.student_id = E.student_id;

/*2. Student Name and Semester*/
SELECT S.name, E.semester
FROM Student S
INNER JOIN Enrollment E
ON S.student_id = E.student_id;

/*3. Student Name and Grade*/
SELECT S.name, E.semester
FROM Student S
INNER JOIN Enrollment E
ON S.student_id = E.student_id;

/*4. CourseName, Credits with Faculty Name*/
SELECT C.course_name, C.credits, F.name
FROM Course C
INNER JOIN Faculty F
ON C.faculty_id = F.faculty_id;

/*5. Courses taught by faculty_id = 201*/
SELECT C.course_name
FROM Course C
INNER JOIN Faculty F
ON C.faculty_id = F.faculty_id
WHERE F.faculty_id = 201;

/*6.Display faculty name and designation along with the course_name they teach.*/
SELECT F.name, F.designation, C.course_name
FROM Faculty F
INNER JOIN Course C
ON F.faculty_id = C.faculty_id;

/*8. Display student name, course_name, and semester.*/
SELECT S.name, C.course_name, E.semester
FROM Student S
INNER JOIN Enrollment E
ON S.student_id = E.student_id
INNER JOIN Course C
ON E.course_id = C.course_id;

/*9. Semester 4 only */----

SELECT S.name, C.course_name, E.grade
FROM Student S
INNER JOIN Enrollment E
ON S.student_id = E.student_id
INNER JOIN Course C
ON E.course_id = C.course_id
WHERE E.semester = '4';

/*10. Display all courses taken by a student whose student_id is 401*/
SELECT C.course_name
FROM Student S
INNER JOIN Enrollment E
ON S.student_id = E.student_id
INNER JOIN Course C
ON E.course_id = C.course_id
WHERE S.student_id = 401;

/*11. Display student name and department_id along with course_name*/
SELECT S.name, S.department_id, C.course_name
FROM Student S
INNER JOIN Enrollment E
ON S.student_id = E.student_id
INNER JOIN Course C
ON E.course_id = C.course_id;

/* 12. Display department-wise list of courses */
SELECT D.department_name, C.course_name
FROM Department D
INNER JOIN Course C
ON D.department_id = C.department_id;

/*13. Display faculty name along with department name they belong to*/
SELECT F.name, D.department_name
FROM Faculty F
INNER JOIN Department D
ON F.department_id = D.department_id;

/*14. Display student name and course_name for students belonging to department 101*/

SELECT S.name, C.course_name
FROM Student S
INNER JOIN Enrollment E
ON S.student_id = E.student_id
INNER JOIN Course C
ON E.course_id = C.course_id
WHERE S.department_id = 101;

/*15. Display student name and course_name sorted by student name (ascending) */

SELECT S.name, C.course_name
FROM Student S
INNER JOIN Enrollment E
ON S.student_id = E.student_id
INNER JOIN Course C
ON E.course_id = C.course_id
ORDER BY S.name ASC;

/*16. Display faculty name and course_name sorted by credits (descending)*/

SELECT F.name, C.course_name
FROM Faculty F
INNER JOIN Course C
ON F.faculty_id = C.faculty_id
ORDER BY C.credits DESC;

/*17. Display number of students enrolled in each course*/

SELECT C.course_name, COUNT(E.student_id) AS total_students
FROM Course C
INNER JOIN Enrollment E
ON C.course_id = E.course_id
GROUP BY C.course_name;

/*18. Display number of courses taught by each faculty member*/

SELECT F.name, COUNT(C.course_id) AS total_courses
FROM Faculty F
INNER JOIN Course C
ON F.faculty_id = C.faculty_id
GROUP BY F.name;

/*19. Display department-wise count of students*/

SELECT D.department_name, COUNT(S.student_id) AS total_students
FROM Department D
INNER JOIN Student S
ON D.department_id = S.department_id
GROUP BY D.department_name;

/*20. Display course name along with maximum grade awarded in that course*/
SELECT C.course_name, MAX(E.grade) AS max_grade
FROM Course C
INNER JOIN Enrollment E
ON C.course_id = E.course_id
GROUP BY C.course_name;