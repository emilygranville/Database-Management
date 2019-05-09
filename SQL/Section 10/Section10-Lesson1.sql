/*3*/
SELECT SONG_ID
FROM d_play_list_items
WHERE EVENT_ID = 
    (SELECT EVENT_ID
    FROM d_play_list_items
    WHERE SONG_ID = 45);

/*4*/
SELECT NAME
FROM D_EVENTS
WHERE COST > 
    (SELECT COST
    FROM D_EVENTS
    WHERE EVENT_ID = 100);

/*5*/
SELECT TRACK
FROM D_TRACK_LISTINGS
WHERE SONG_ID = 
    (SELECT SONG_ID
    FROM D_TRACK_LISTINGS
    WHERE CD_NUMBER = 91);
    
/*6*/
SELECT NAME
FROM D_EVENTS
WHERE THEME_CODE = 
    (SELECT THEME_CODE
    FROM D_THEMES
    WHERE DESCRIPTION = 'Tropical');

/*7*/
SELECT LAST_NAME
FROM F_STAFFS
WHERE SALARY >
    (SELECT SALARY
    FROM F_STAFFS
    WHERE ID = 12);
    
/*8*/
SELECT LAST_NAME
FROM F_STAFFS
WHERE STAFF_TYPE !=
    (SELECT STAFF_TYPE
    FROM F_STAFFS
    WHERE STAFF_TYPE = 'Cook');
    
/*9*/
SELECT LAST_NAME
FROM EMPLOYEES
WHERE DEPARTMENT_ID = 
    (SELECT DEPARTMENT_ID
    FROM DEPARTMENTS
    WHERE DEPARTMENT_NAME = 'IT');
    
/*10*/
SELECT DEPARTMENT_NAME
FROM DEPARTMENTS
WHERE LOCATION_ID = 
    (SELECT LOCATION_ID
    FROM LOCATIONS
    WHERE CITY = 'Seattle');