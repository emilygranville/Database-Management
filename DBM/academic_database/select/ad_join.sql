/*task 1*/
SELECT D.NAME AS "Departement Name", C.NAME AS "Course Name"
FROM AD_DEPARTMENTS D
JOIN AD_COURSES C
ON D.ID = C.DEPT_ID;

/*TASK 2*/
SELECT S.NAME AS "Session Name", C.NAME AS "Course Name"
FROM AD_ACADEMIC_SESSIONS S
JOIN AD_COURSES C
ON S.ID = C.SESSION_ID
WHERE S.ID = 200;

/*task 3*/
SELECT C.NAME AS "COURSE NAME", D.NAME AS "DEPARTMENT NAME", S.FIRST_NAME, S.LAST_NAME
FROM AD_COURSES C
JOIN AD_DEPARTMENTS D
ON D.ID = C.DEPT_ID
JOIN AD_STUDENT_COURSE_DETAILS SCD
ON SCD.COURSE_ID = C.ID
JOIN AD_STUDENTS S
ON S.ID = SCD.STUDENT_ID;

/*task 4*/
SELECT C.NAME AS "COURSE NAME", D.NAME AS "DEPARTMENT NAME", S.FIRST_NAME, S.LAST_NAME
FROM AD_COURSES C
JOIN AD_DEPARTMENTS D
ON D.ID = C.DEPT_ID
JOIN AD_STUDENT_COURSE_DETAILS SCD
ON SCD.COURSE_ID = C.ID
JOIN AD_STUDENTS S
ON S.ID = SCD.STUDENT_ID
WHERE D.ID = 20;

/*task 5*/
SELECT ER.EXAM_GRADE
FROM AD_EXAM_RESULTS ER
JOIN AD_STUDENT_COURSE_DETAILS SCD
ON SCD.STUDENT_ID = ER.STUDENT_ID
AND (ER.COURSE_ID BETWEEN 190 AND 192);

/*TASK 6*/
SELECT *
FROM AD_EXAM_RESULTS ER LEFT OUTER JOIN AD_COURSES C
ON C.ID = ER.COURSE_ID;

/*task 7*/
/*if the statement was run, then the for each exam record,
each record in the exam results would be displayed*/