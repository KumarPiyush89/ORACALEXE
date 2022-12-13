SQL> create tabe languages(lid number(2) primery key ,lname varchar2(30) not null,exFee number(7,2) not null , exdate date);
create tabe languages(lid number(2) primery key ,lname varchar2(30) not null,exFee number(7,2) not null , exdate date)
       *
ERROR at line 1:
ORA-00901: invalid CREATE command 


SQL> create tabe languages(lid number(2) primery key ,lname varchar2(30) not null,exFee number(7,2) not null , exdate date);
create tabe languages(lid number(2) primery key ,lname varchar2(30) not null,exFee number(7,2) not null , exdate date)
       *
ERROR at line 1:
ORA-00901: invalid CREATE command 


SQL> create table languages(lid number(2) primery key ,lname varchar2(30) not null,exFee number(7,2) not null , exdate date);
create table languages(lid number(2) primery key ,lname varchar2(30) not null,exFee number(7,2) not null , exdate date)
                                     *
ERROR at line 1:
ORA-00907: missing right parenthesis 


SQL> create table languages(lid number(2) primary key ,lname varchar2(30) not null,exFee number(7,2) not null , exdate date);

Table created.

SQL> create table participants(pid number(4) primary key,pname varchar2(30) not null,pcontact char(10),plid number(2) references languages not null);

Table created.

SQL> insert into participantants values(1,'piyush kumar','512536987',5);
insert into participantants values(1,'piyush kumar','512536987',5)
            *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> insert into participants values(1,'piyush kumar','512536987',5);
insert into participants values(1,'piyush kumar','512536987',5)
*
ERROR at line 1:
ORA-02291: integrity constraint (PIYUSH.SYS_C004180) violated - parent key not 
found 


SQL> desc languages;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 LID                                       NOT NULL NUMBER(2)
 LNAME                                     NOT NULL VARCHAR2(30)
 EXFEE                                     NOT NULL NUMBER(7,2)
 EXDATE                                             DATE

SQL> insert into languages values(1,'hindi','700','25/07/2000');
insert into languages values(1,'hindi','700','25/07/2000')
                                             *
ERROR at line 1:
ORA-01843: not a valid month 


SQL> insert into languages values(1,'hindi','700','25/7/2000');
insert into languages values(1,'hindi','700','25/7/2000')
                                             *
ERROR at line 1:
ORA-01843: not a valid month 


SQL> insert into languages (lid,lname,exfee) values(&lid,'&lname','&exfee');
Enter value for lid: 1
Enter value for lname: C
Enter value for exfee: 1200
old   1: insert into languages (lid,lname,exfee) values(&lid,'&lname','&exfee')
new   1: insert into languages (lid,lname,exfee) values(1,'C','1200')

1 row created.

SQL> /
Enter value for lid: 2
Enter value for lname: Java
Enter value for exfee: 1500
old   1: insert into languages (lid,lname,exfee) values(&lid,'&lname','&exfee')
new   1: insert into languages (lid,lname,exfee) values(2,'Java','1500')

1 row created.

SQL> /
Enter value for lid: 3
Enter value for lname: C++
Enter value for exfee: 1800
old   1: insert into languages (lid,lname,exfee) values(&lid,'&lname','&exfee')
new   1: insert into languages (lid,lname,exfee) values(3,'C++','1800')

1 row created.

SQL> /
Enter value for lid: 4
Enter value for lname: javascript
Enter value for exfee: 2200
old   1: insert into languages (lid,lname,exfee) values(&lid,'&lname','&exfee')
new   1: insert into languages (lid,lname,exfee) values(4,'javascript','2200')

1 row created.

SQL> /
Enter value for lid: 5
Enter value for lname: python
Enter value for exfee: 1000
old   1: insert into languages (lid,lname,exfee) values(&lid,'&lname','&exfee')
new   1: insert into languages (lid,lname,exfee) values(5,'python','1000')

1 row created.

SQL> select * from languages;

       LID LNAME                               EXFEE EXDATE                     
---------- ------------------------------ ---------- ---------                  
         1 C                                    1200                            
         2 Java                                 1500                            
         3 C++                                  1800                            
         4 javascript                           2200                            
         5 python                               1000                            

SQL> update languages set exdate='13-aug-2022' where lid=5;

1 row updated.

SQL> select * from languages;

       LID LNAME                               EXFEE EXDATE                     
---------- ------------------------------ ---------- ---------                  
         1 C                                    1200                            
         2 Java                                 1500                            
         3 C++                                  1800                            
         4 javascript                           2200                            
         5 python                               1000 13-AUG-22                  

SQL> insert into particapents values(&pid,'&pname','&contact',&plid)
  2  ;
Enter value for pid: 1
Enter value for pname: piyush kumar
Enter value for contact: 6205059314
Enter value for plid: 1
old   1: insert into particapents values(&pid,'&pname','&contact',&plid)
new   1: insert into particapents values(1,'piyush kumar','6205059314',1)
insert into particapents values(1,'piyush kumar','6205059314',1)
            *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> desc participants;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 PID                                       NOT NULL NUMBER(4)
 PNAME                                     NOT NULL VARCHAR2(30)
 PCONTACT                                           CHAR(10)
 PLID                                      NOT NULL NUMBER(2)

SQL> insert into particapents values(&pid,'&pname','&pcontact',&plid);
Enter value for pid: 1
Enter value for pname: piyush kumar
Enter value for pcontact: 6205059314
Enter value for plid: 1
old   1: insert into particapents values(&pid,'&pname','&pcontact',&plid)
new   1: insert into particapents values(1,'piyush kumar','6205059314',1)
insert into particapents values(1,'piyush kumar','6205059314',1)
            *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> insert into participants values(&pid,'&pname','&pcontact',&plid);
Enter value for pid: 1
Enter value for pname: piyush kumar
Enter value for pcontact: 6205059314
Enter value for plid: 1
old   1: insert into participants values(&pid,'&pname','&pcontact',&plid)
new   1: insert into participants values(1,'piyush kumar','6205059314',1)

1 row created.

SQL> /
Enter value for pid: 2
Enter value for pname: abhishek kumar
Enter value for pcontact: 62157895
Enter value for plid: 2
old   1: insert into participants values(&pid,'&pname','&pcontact',&plid)
new   1: insert into participants values(2,'abhishek kumar','62157895',2)

1 row created.

SQL> /
Enter value for pid: aman kumar
Enter value for pname: 
Enter value for pcontact: 
Enter value for plid: 
old   1: insert into participants values(&pid,'&pname','&pcontact',&plid)
new   1: insert into participants values(aman kumar,'','',)
insert into participants values(aman kumar,'','',)
                                     *
ERROR at line 1:
ORA-00917: missing comma 


SQL> /
Enter value for pid: 3
Enter value for pname: kundan kumar
Enter value for pcontact: 123456789
Enter value for plid: 3
old   1: insert into participants values(&pid,'&pname','&pcontact',&plid)
new   1: insert into participants values(3,'kundan kumar','123456789',3)

1 row created.

SQL> /
Enter value for pid: 4
Enter value for pname: satish kumar
Enter value for pcontact: 4512632547
Enter value for plid: 5
old   1: insert into participants values(&pid,'&pname','&pcontact',&plid)
new   1: insert into participants values(4,'satish kumar','4512632547',5)

1 row created.

SQL> /
Enter value for pid: 5
Enter value for pname: abcd
Enter value for pcontact: 4512632541
Enter value for plid: 5
old   1: insert into participants values(&pid,'&pname','&pcontact',&plid)
new   1: insert into participants values(5,'abcd','4512632541',5)

1 row created.

SQL> /
Enter value for pid: 6
Enter value for pname: sheetal
Enter value for pcontact: 5123625478
Enter value for plid: 4
old   1: insert into participants values(&pid,'&pname','&pcontact',&plid)
new   1: insert into participants values(6,'sheetal','5123625478',4)

1 row created.

SQL> /
Enter value for pid: 7
Enter value for pname: sumit kumar
Enter value for pcontact: 4512365874
Enter value for plid: 1
old   1: insert into participants values(&pid,'&pname','&pcontact',&plid)
new   1: insert into participants values(7,'sumit kumar','4512365874',1)

1 row created.

SQL> select * from participants;

       PID PNAME                          PCONTACT         PLID                 
---------- ------------------------------ ---------- ----------                 
         1 piyush kumar                   6205059314          1                 
         2 abhishek kumar                 62157895            2                 
         3 kundan kumar                   123456789           3                 
         4 satish kumar                   4512632547          5                 
         5 abcd                           4512632541          5                 
         6 sheetal                        5123625478          4                 
         7 sumit kumar                    4512365874          1                 

7 rows selected.

SQL> select * from participants where plid=5;

       PID PNAME                          PCONTACT         PLID                 
---------- ------------------------------ ---------- ----------                 
         4 satish kumar                   4512632547          5                 
         5 abcd                           4512632541          5                 

SQL> select * from languages where lid=5;

       LID LNAME                               EXFEE EXDATE                     
---------- ------------------------------ ---------- ---------                  
         5 python                               1000 13-AUG-22                  

SQL> select * from languages where lid=3;

       LID LNAME                               EXFEE EXDATE                     
---------- ------------------------------ ---------- ---------                  
         3 C++                                  1800                            

SQL> /

       LID LNAME                               EXFEE EXDATE                     
---------- ------------------------------ ---------- ---------                  
         3 C++                                  1800                            

SQL> select * from languages where lid=1;

       LID LNAME                               EXFEE EXDATE                     
---------- ------------------------------ ---------- ---------                  
         1 C                                    1200                            

SQL> select * from languages;

       LID LNAME                               EXFEE EXDATE                     
---------- ------------------------------ ---------- ---------                  
         1 C                                    1200                            
         2 Java                                 1500                            
         3 C++                                  1800                            
         4 javascript                           2200                            
         5 python                               1000 13-AUG-22                  

SQL> delete from languages where lid=3;
delete from languages where lid=3
*
ERROR at line 1:
ORA-02292: integrity constraint (PIYUSH.SYS_C004180) violated - child record 
found 


SQL> delete from languages where lid=3;
delete from languages where lid=3
*
ERROR at line 1:
ORA-02292: integrity constraint (PIYUSH.SYS_C004180) violated - child record 
found 


SQL> update languages set lid=9 where lid=5;
update languages set lid=9 where lid=5
*
ERROR at line 1:
ORA-02292: integrity constraint (PIYUSH.SYS_C004180) violated - child record 
found 


SQL> update languages set lid=9 where lid=3;
update languages set lid=9 where lid=3
*
ERROR at line 1:
ORA-02292: integrity constraint (PIYUSH.SYS_C004180) violated - child record 
found 


SQL> update languages set lid=9 where lid=2;
update languages set lid=9 where lid=2
*
ERROR at line 1:
ORA-02292: integrity constraint (PIYUSH.SYS_C004180) violated - child record 
found 


SQL> update languages set lid=8 where lid=1;
update languages set lid=8 where lid=1
*
ERROR at line 1:
ORA-02292: integrity constraint (PIYUSH.SYS_C004180) violated - child record 
found 


SQL> update languages set lname='Basic Python' where lid=5;

1 row updated.

SQL> select * from languages;

       LID LNAME                               EXFEE EXDATE                     
---------- ------------------------------ ---------- ---------                  
         1 C                                    1200                            
         2 Java                                 1500                            
         3 C++                                  1800                            
         4 javascript                           2200                            
         5 Basic Python                         1000 13-AUG-22                  

SQL> update languages set exfee='1700' where lid=5;

1 row updated.

SQL> select * from languages;

       LID LNAME                               EXFEE EXDATE                     
---------- ------------------------------ ---------- ---------                  
         1 C                                    1200                            
         2 Java                                 1500                            
         3 C++                                  1800                            
         4 javascript                           2200                            
         5 Basic Python                         1700 13-AUG-22                  

SQL> spool off
