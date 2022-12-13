
SQL> create table district (did number(3)primary key,dname varchar2(30) not null);

Table created.

SQL> create table friends(fid number(3)primary key,fname varchar2(30)not null,fdid number(3)not null refrences district(did));
create table friends(fid number(3)primary key,fname varchar2(30)not null,fdid number(3)not null refrences district(did))
                                                                                                *
ERROR at line 1:
ORA-00907: missing right parenthesis


SQL> create table friends(fid number(3)primary key,fname varchar2(30)not null,fdid number(3)not null references district(did));

Table created.

SQL> insert into friends values(1,'Ravi Kumar',5);
insert into friends values(1,'Ravi Kumar',5)
*
ERROR at line 1:
ORA-02291: integrity constraint (SYSTEM.SYS_C004255) violated - parent key not
found


SQL> insert into district values(1,'Gaya');

1 row created.

SQL> insert into district values(2,'Jehanabad');

1 row created.

SQL> insert into district values(3,'Arwal');

1 row created.

SQL> insert into district values(4,'Patna');

1 row created.

SQL> insert into district values(5,'Chhapra');

1 row created.

SQL> insert into district values(6,'Lakhisrai');

1 row created.

SQL> insert into friends values(1,'Ravi Kumar',1);

1 row created.

SQL> insert into friends values(2,'Ramesh Kumar',8);
insert into friends values(2,'Ramesh Kumar',8)
*
ERROR at line 1:
ORA-02291: integrity constraint (SYSTEM.SYS_C004255) violated - parent key not
found


SQL> insert into friends values(2,'Ramesh Kumar',1);

1 row created.

SQL> insert into friends values(3,'Rohit Kumar',1);

1 row created.

SQL> insert into friends values(4,'Rakesh Ranjan',2);

1 row created.

SQL> insert into friends values(5,'Manglam Raj',3);

1 row created.

SQL> insert into friends values(6,'Satyam Raj',3);

1 row created.

SQL> insert into friends values(7,'Mahesh Yadav',6);

1 row created.

SQL> insert into friends values(8,'Pappu Kumar',6);

1 row created.

SQL> insert into friends values(9,'Tonny Kakkar',3);

1 row created.

SQL> insert into friends values(10,'Neha Kakkar',4);

1 row created.

SQL> select * from friends;

       FID FNAME                                FDID
---------- ------------------------------ ----------
         1 Ravi Kumar                              1
         2 Ramesh Kumar                            1
         3 Rohit Kumar                             1
         4 Rakesh Ranjan                           2
         5 Manglam Raj                             3
         6 Satyam Raj                              3
         7 Mahesh Yadav                            6
         8 Pappu Kumar                             6
         9 Tonny Kakkar                            3
        10 Neha Kakkar                             4

10 rows selected.

SQL> select * from district;

       DID DNAME
---------- ------------------------------
         1 Gaya
         2 Jehanabad
         3 Arwal
         4 Patna
         5 Chhapra
         6 Lakhisrai

6 rows selected.

SQL> select * from friends,district;

       FID FNAME                                FDID        DID
---------- ------------------------------ ---------- ----------
DNAME
------------------------------
         1 Ravi Kumar                              1          1
Gaya

         2 Ramesh Kumar                            1          1
Gaya

         3 Rohit Kumar                             1          1
Gaya


       FID FNAME                                FDID        DID
---------- ------------------------------ ---------- ----------
DNAME
------------------------------
         4 Rakesh Ranjan                           2          1
Gaya

         5 Manglam Raj                             3          1
Gaya

         6 Satyam Raj                              3          1
Gaya


       FID FNAME                                FDID        DID
---------- ------------------------------ ---------- ----------
DNAME
------------------------------
         7 Mahesh Yadav                            6          1
Gaya

         8 Pappu Kumar                             6          1
Gaya

         9 Tonny Kakkar                            3          1
Gaya


       FID FNAME                                FDID        DID
---------- ------------------------------ ---------- ----------
DNAME
------------------------------
        10 Neha Kakkar                             4          1
Gaya

         1 Ravi Kumar                              1          2
Jehanabad

         2 Ramesh Kumar                            1          2
Jehanabad


       FID FNAME                                FDID        DID
---------- ------------------------------ ---------- ----------
DNAME
------------------------------
         3 Rohit Kumar                             1          2
Jehanabad

         4 Rakesh Ranjan                           2          2
Jehanabad

         5 Manglam Raj                             3          2
Jehanabad


       FID FNAME                                FDID        DID
---------- ------------------------------ ---------- ----------
DNAME
------------------------------
         6 Satyam Raj                              3          2
Jehanabad

         7 Mahesh Yadav                            6          2
Jehanabad

         8 Pappu Kumar                             6          2
Jehanabad


       FID FNAME                                FDID        DID
---------- ------------------------------ ---------- ----------
DNAME
------------------------------
         9 Tonny Kakkar                            3          2
Jehanabad

        10 Neha Kakkar                             4          2
Jehanabad

         1 Ravi Kumar                              1          3
Arwal


       FID FNAME                                FDID        DID
---------- ------------------------------ ---------- ----------
DNAME
------------------------------
         2 Ramesh Kumar                            1          3
Arwal

         3 Rohit Kumar                             1          3
Arwal

         4 Rakesh Ranjan                           2          3
Arwal


       FID FNAME                                FDID        DID
---------- ------------------------------ ---------- ----------
DNAME
------------------------------
         5 Manglam Raj                             3          3
Arwal

         6 Satyam Raj                              3          3
Arwal

         7 Mahesh Yadav                            6          3
Arwal


       FID FNAME                                FDID        DID
---------- ------------------------------ ---------- ----------
DNAME
------------------------------
         8 Pappu Kumar                             6          3
Arwal

         9 Tonny Kakkar                            3          3
Arwal

        10 Neha Kakkar                             4          3
Arwal


       FID FNAME                                FDID        DID
---------- ------------------------------ ---------- ----------
DNAME
------------------------------
         1 Ravi Kumar                              1          4
Patna

         2 Ramesh Kumar                            1          4
Patna

         3 Rohit Kumar                             1          4
Patna


       FID FNAME                                FDID        DID
---------- ------------------------------ ---------- ----------
DNAME
------------------------------
         4 Rakesh Ranjan                           2          4
Patna

         5 Manglam Raj                             3          4
Patna

         6 Satyam Raj                              3          4
Patna


       FID FNAME                                FDID        DID
---------- ------------------------------ ---------- ----------
DNAME
------------------------------
         7 Mahesh Yadav                            6          4
Patna

         8 Pappu Kumar                             6          4
Patna

         9 Tonny Kakkar                            3          4
Patna


       FID FNAME                                FDID        DID
---------- ------------------------------ ---------- ----------
DNAME
------------------------------
        10 Neha Kakkar                             4          4
Patna

         1 Ravi Kumar                              1          5
Chhapra

         2 Ramesh Kumar                            1          5
Chhapra


       FID FNAME                                FDID        DID
---------- ------------------------------ ---------- ----------
DNAME
------------------------------
         3 Rohit Kumar                             1          5
Chhapra

         4 Rakesh Ranjan                           2          5
Chhapra

         5 Manglam Raj                             3          5
Chhapra


       FID FNAME                                FDID        DID
---------- ------------------------------ ---------- ----------
DNAME
------------------------------
         6 Satyam Raj                              3          5
Chhapra

         7 Mahesh Yadav                            6          5
Chhapra

         8 Pappu Kumar                             6          5
Chhapra


       FID FNAME                                FDID        DID
---------- ------------------------------ ---------- ----------
DNAME
------------------------------
         9 Tonny Kakkar                            3          5
Chhapra

        10 Neha Kakkar                             4          5
Chhapra

         1 Ravi Kumar                              1          6
Lakhisrai


       FID FNAME                                FDID        DID
---------- ------------------------------ ---------- ----------
DNAME
------------------------------
         2 Ramesh Kumar                            1          6
Lakhisrai

         3 Rohit Kumar                             1          6
Lakhisrai

         4 Rakesh Ranjan                           2          6
Lakhisrai


       FID FNAME                                FDID        DID
---------- ------------------------------ ---------- ----------
DNAME
------------------------------
         5 Manglam Raj                             3          6
Lakhisrai

         6 Satyam Raj                              3          6
Lakhisrai

         7 Mahesh Yadav                            6          6
Lakhisrai


       FID FNAME                                FDID        DID
---------- ------------------------------ ---------- ----------
DNAME
------------------------------
         8 Pappu Kumar                             6          6
Lakhisrai

         9 Tonny Kakkar                            3          6
Lakhisrai

        10 Neha Kakkar                             4          6
Lakhisrai


60 rows selected.

SQL> select * from friends,district where fdid=did;

       FID FNAME                                FDID        DID
---------- ------------------------------ ---------- ----------
DNAME
------------------------------
         1 Ravi Kumar                              1          1
Gaya

         2 Ramesh Kumar                            1          1
Gaya

         3 Rohit Kumar                             1          1
Gaya


       FID FNAME                                FDID        DID
---------- ------------------------------ ---------- ----------
DNAME
------------------------------
         4 Rakesh Ranjan                           2          2
Jehanabad

         5 Manglam Raj                             3          3
Arwal

         6 Satyam Raj                              3          3
Arwal


       FID FNAME                                FDID        DID
---------- ------------------------------ ---------- ----------
DNAME
------------------------------
         7 Mahesh Yadav                            6          6
Lakhisrai

         8 Pappu Kumar                             6          6
Lakhisrai

         9 Tonny Kakkar                            3          3
Arwal


       FID FNAME                                FDID        DID
---------- ------------------------------ ---------- ----------
DNAME
------------------------------
        10 Neha Kakkar                             4          4
Patna


10 rows selected.

SQL> select fid,fname,dname from friends,district where fdid=did;

       FID FNAME                          DNAME
---------- ------------------------------ ------------------------------
         1 Ravi Kumar                     Gaya
         2 Ramesh Kumar                   Gaya
         3 Rohit Kumar                    Gaya
         4 Rakesh Ranjan                  Jehanabad
         5 Manglam Raj                    Arwal
         6 Satyam Raj                     Arwal
         7 Mahesh Yadav                   Lakhisrai
         8 Pappu Kumar                    Lakhisrai
         9 Tonny Kakkar                   Arwal
        10 Neha Kakkar                    Patna

10 rows selected.