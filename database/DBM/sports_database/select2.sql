/*Exercise 1*/
/*PART 1*/
SELECT * FROM CUSTOMERS WHERE ctr_number = 'c01986';
SELECT FIRST_NAME AS "First name", LAST_NAME AS "Last name", CTR_NUMBER AS "Customer number" FROM CUSTOMERS WHERE CURRENT_BALANCE < 100;
SELECT ID AS "ID", ODR_DATE AS "Order date", ODR_TIME AS "Order time" FROM ORDERS WHERE ODR_DATE < '28-MAY-2017';

/*PART 2*/
SELECT ID AS "ID", COST AS "Cost", UNITS AS "Number of units" FROM INVENTORY_LIST WHERE COST BETWEEN 3.00 AND 15.00;


/*PART 3*/
SELECT ID AS "ID", COST AS "Cost", UNITS AS "Number of units" FROM INVENTORY_LIST WHERE UNITS IN(50, 100, 150, 200);

/*PART 4*/
SELECT ID AS "ID", COST AS "Cost", UNITS AS "Number of units" FROM INVENTORY_LIST WHERE UNITS NOT IN(50, 100, 150, 200);

/*PART 5*/
SELECT ITM_NUMBER AS "Item number", NAME AS "Name" FROM ITEMS WHERE NAME LIKE 'g%';

/*PART 6*/
SELECT ITM_NUMBER AS "Item number", NAME AS "Name" FROM ITEMS WHERE NAME LIKE '%o%';
