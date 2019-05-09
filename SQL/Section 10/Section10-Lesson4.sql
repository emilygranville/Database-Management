/*2*/
SELECT O.LAST_NAME, O.DEPARTMENT_ID, O.SALARY
FROM EMPLOYEES O
WHERE SALARY =
    (SELECT MAX(I.SALARY)
    FROM EMPLOYEES I
    WHERE O.DEPARTMENT_ID = I.DEPARTMENT_ID);

/*3*/
SELECT outer.LAST_NAME, outer.DEPARTMENT_ID, outer.SALARY
FROM EMPLOYEES outer
WHERE OUTER.EMPLOYEE_ID IN 
    (SELECT DISTINCT MANAGER_ID
    FROM EMPLOYEES inner
    WHERE inner.MANAGER_ID = OUTER.EMPLOYEE_ID)
ORDER BY DEPARTMENT_ID;

/*4*/
WITH MAX_CALC_SAL AS
    (SELECT MAX(MAX_SALARY)/2
    FROM JOBS)
SELECT JOB_TITLE, MAX_SALARY
FROM JOBS
WHERE MAX_SALARY > 
    (SELECT *
    FROM MAX_CALC_SAL)
ORDER BY MAX_SALARY DESC;