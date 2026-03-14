/*1. Total number of students*/

SELECT COUNT(*) AS total_students
FROM Student;

/*2. Total number of faculty members*/

SELECT COUNT(*) AS total_faculty
FROM Faculty;

/*3. Total number of courses*/

SELECT COUNT(*) AS total_courses
FROM Course;

/*4. Maximum credits among courses*/

SELECT MAX(credits) AS max_credits
FROM Course;

/*5. Minimum credits among courses*/

SELECT MIN(credits) AS min_credits
FROM Course;

/*6. Number of students in each department*/

SELECT department_id, COUNT(*) AS total_students
FROM Student
GROUP BY department_id;

/*7. Number of faculty in each department*/

SELECT department_id, COUNT(*) AS total_faculty
FROM Faculty
GROUP BY department_id;

/*8. Number of courses in each department*/

SELECT department_id, COUNT(*) AS total_courses
FROM Course
GROUP BY department_id;

/*9. Number of enrollments in each semester*/

SELECT semester, COUNT(*) AS total_enrollments
FROM Enrollment
GROUP BY semester;

/*10. Number of students for each grade*/

SELECT grade, COUNT(student_id) AS total_students
FROM Enrollment
GROUP BY grade;

/*11. Departments having more than 3 students*/

SELECT department_id, COUNT(*) AS total_students
FROM Student
GROUP BY department_id
HAVING COUNT(*) > 3;

/*12. Semesters where more than 2 enrollments exist*/

SELECT semester, COUNT(*) AS total_enrollments
FROM Enrollment
GROUP BY semester
HAVING COUNT(*) > 2;

/*13. Grades assigned to more than one student*/

SELECT grade, COUNT(*) AS total_students
FROM Enrollment
GROUP BY grade
HAVING COUNT(*) > 1;

/*14. Departments offering more than one course*/

SELECT department_id, COUNT(*) AS total_courses
FROM Course
GROUP BY department_id
HAVING COUNT(*) > 1;

/*15. Number of students enrolled in each course*/

SELECT course_id, COUNT(student_id) AS total_students
FROM Enrollment
GROUP BY course_id;

/*16. Course name and number of students enrolled*/

SELECT C.course_name, COUNT(E.student_id) AS total_students
FROM Course C
INNER JOIN Enrollment E
ON C.course_id = E.course_id
GROUP BY C.course_name;

/*17. Department and number of students in that department*/

SELECT department_id, COUNT(student_id) AS total_students
FROM Student
GROUP BY department_id;

/*18. Faculty name and number of courses taught*/

SELECT F.name, COUNT(C.course_id) AS total_courses
FROM Faculty F
INNER JOIN Course C
ON F.faculty_id = C.faculty_id
GROUP BY F.name;

/*19. Course name and maximum grade obtained*/

SELECT C.course_name, MAX(E.grade) AS max_grade
FROM Course C
INNER JOIN Enrollment E
ON C.course_id = E.course_id
GROUP BY C.course_name;

/*20. Department and total number of courses*/

SELECT department_id, COUNT(course_id) AS total_courses
FROM Course
GROUP BY department_id;

/*21. Semester and total number of students enrolled*/

SELECT semester, COUNT(student_id) AS total_students
FROM Enrollment
GROUP BY semester;

/*22. Courses having more than 2 students enrolled*/

SELECT course_id, COUNT(student_id) AS total_students
FROM Enrollment
GROUP BY course_id
HAVING COUNT(student_id) > 2;