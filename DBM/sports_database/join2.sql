/*part 1*/
SELECT S.FIRST_NAME || ' ' || S.LAST_NAME AS "SUPERVISON", R.FIRST_NAME || ' ' || R.LAST_NAME AS "REP"
FROM SALES_REPRESENTATIVES S JOIN SALES_REPRESENTATIVES R
ON R.SUPERVISOR_ID = S.ID;

/*part 2*/
SELECT *
FROM TEAMS T LEFT OUTER JOIN CUSTOMERS C
ON T.ID = C.TEM_ID;

/*part 3*/
SELECT *
FROM CUSTOMERS, SALES_REPRESENTATIVES;