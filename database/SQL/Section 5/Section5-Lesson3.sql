/*1*/
SELECT TITLE,
CASE DURATION
    WHEN '2 min' THEN 'shortest'
    WHEN '10 min' THEN 'longest'
    ELSE DURATION
    END
FROM D_SONGS;

/*2*/
SELECT DEPARTMENT_ID, LAST_NAME, SALARY, 
CASE DEPARTMENT_ID
    WHEN 10 THEN  1.25*salary
    WHEN 90 THEN 1.5*salary
    WHEN 130 THEN 1.75*salary
    ELSE SALARY
END AS "New Salary"
FROM EMPLOYEES;

/*3*/
SELECT FIRST_NAME, LAST_NAME, MANAGER_ID, COMMISSION_PCT, COALESCE(MANAGER_ID, COMMISSION_PCT, 99999) AS "Review"
FROM EMPLOYEES
WHERE DEPARTMENT_ID = 80 OR DEPARTMENT_ID = 90;