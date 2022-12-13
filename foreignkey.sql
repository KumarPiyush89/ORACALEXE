SQL> create table participants(pid number(4) primary key,pname varchar2(30) not null,pcontact char(10),plid number(2) references languages not null);

Table created.

SQL> insert into participants values(1,'Neha Kumari','4523658956',4);
insert into participants values(1,'Neha Kumari','4523658956',4)
*
ERROR at line 1:
ORA-02291: integrity constraint (SYSTEM.SYS_C004174) violated - parent key not 
found 


SQL> insert into languages(lid,lname,exfee) values(&lid,'&lname','&exfee');
Enter value for lid: 1
Enter value for lname: C
Enter value for exfee: 1200
old   1: insert into languages(lid,lname,exfee) values(&lid,'&lname','&exfee')
new   1: insert into languages(lid,lname,exfee) values(1,'C','1200')

1 row created.

SQL> /
Enter value for lid: 2
Enter value for lname: C++
Enter value for exfee: 1500
old   1: insert into languages(lid,lname,exfee) values(&lid,'&lname','&exfee')
new   1: insert into languages(lid,lname,exfee) values(2,'C++','1500')

1 row created.

SQL> /
Enter value for lid: 3
Enter value for lname: Java
Enter value for exfee: 1800
old   1: insert into languages(lid,lname,exfee) values(&lid,'&lname','&exfee')
new   1: insert into languages(lid,lname,exfee) values(3,'Java','1800')

1 row created.

SQL> /
Enter value for lid: 4
Enter value for lname: JavaScript
Enter value for exfee: 2200
old   1: insert into languages(lid,lname,exfee) values(&lid,'&lname','&exfee')
new   1: insert into languages(lid,lname,exfee) values(4,'JavaScript','2200')

1 row created.

SQL> /
Enter value for lid: 5
Enter value for lname: Python
Enter value for exfee: 1000
old   1: insert into languages(lid,lname,exfee) values(&lid,'&lname','&exfee')
new   1: insert into languages(lid,lname,exfee) values(5,'Python','1000')

1 row created.

SQL> select * from languages;

       LID LNAME                               EXFEE EXDATE                     
---------- ------------------------------ ---------- ---------                  
         1 C                                    1200                            
         2 C++                                  1500                            
         3 Java                                 1800                            
         4 JavaScript                           2200                            
         5 Python                               1000                            

SQL> update languages set exdate='13-aug-2022' where lid=5;

1 row updated.

SQL> select * from languages;

       LID LNAME                               EXFEE EXDATE                     
---------- ------------------------------ ---------- ---------                  
         1 C                                    1200                            
         2 C++                                  1500                            
         3 Java                                 1800                            
         4 JavaScript                           2200                            
         5 Python                               1000 13-AUG-22                  

SQL> insert into participants values(&pid,'&pname','&contact',&plid);
Enter value for pid: 1
Enter value for pname: neha kumari
Enter value for contact: 8563256852
Enter value for plid: 1
old   1: insert into participants values(&pid,'&pname','&contact',&plid)
new   1: insert into participants values(1,'neha kumari','8563256852',1)

1 row created.

SQL> /
Enter value for pid: 2
Enter value for pname: anshu kumari
Enter value for contact: 4523652365
Enter value for plid: 1
old   1: insert into participants values(&pid,'&pname','&contact',&plid)
new   1: insert into participants values(2,'anshu kumari','4523652365',1)

1 row created.

SQL> /
Enter value for pid: 3
Enter value for pname: kundan gupta
Enter value for contact: 5236523658
Enter value for plid: 7
old   1: insert into participants values(&pid,'&pname','&contact',&plid)
new   1: insert into participants values(3,'kundan gupta','5236523658',7)
insert into participants values(3,'kundan gupta','5236523658',7)
*
ERROR at line 1:
ORA-02291: integrity constraint (SYSTEM.SYS_C004174) violated - parent key not 
found 


SQL> /
Enter value for pid: 3
Enter value for pname: kundan gupta
Enter value for contact: 8536475852
Enter value for plid: 5
old   1: insert into participants values(&pid,'&pname','&contact',&plid)
new   1: insert into participants values(3,'kundan gupta','8536475852',5)

1 row created.

SQL> /
Enter value for pid: 4
Enter value for pname: sumit kumar
Enter value for contact: 45236528569
Enter value for plid: 5
old   1: insert into participants values(&pid,'&pname','&contact',&plid)
new   1: insert into participants values(4,'sumit kumar','45236528569',5)
insert into participants values(4,'sumit kumar','45236528569',5)
                                                *
ERROR at line 1:
ORA-12899: value too large for column "SYSTEM"."PARTICIPANTS"."PCONTACT" 
(actual: 11, maximum: 10) 


SQL> /
Enter value for pid: 4
Enter value for pname: sumit kumar
Enter value for contact: 8956354568
Enter value for plid: 5
old   1: insert into participants values(&pid,'&pname','&contact',&plid)
new   1: insert into participants values(4,'sumit kumar','8956354568',5)

1 row created.

SQL> select * fromk participants;
select * fromk participants
         *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> select * from participants;

       PID PNAME                          PCONTACT         PLID                 
---------- ------------------------------ ---------- ----------                 
         1 neha kumari                    8563256852          1                 
         2 anshu kumari                   4523652365          1                 
         3 kundan gupta                   8536475852          5                 
         4 sumit kumar                    8956354568          5                 

SQL> select * from participants where plid=5;

       PID PNAME                          PCONTACT         PLID                 
---------- ------------------------------ ---------- ----------                 
         3 kundan gupta                   8536475852          5                 
         4 sumit kumar                    8956354568          5                 

SQL> select * from languages where lid=5;

       LID LNAME                               EXFEE EXDATE                     
---------- ------------------------------ ---------- ---------                  
         5 Python                               1000 13-AUG-22                  

SQL> select * from languages;

       LID LNAME                               EXFEE EXDATE                     
---------- ------------------------------ ---------- ---------                  
         1 C                                    1200                            
         2 C++                                  1500                            
         3 Java                                 1800                            
         4 JavaScript                           2200                            
         5 Python                               1000 13-AUG-22                  

SQL> delete from languages where lid=3;

1 row deleted.

SQL> select * from languages;

       LID LNAME                               EXFEE EXDATE                     
---------- ------------------------------ ---------- ---------                  
         1 C                                    1200                            
         2 C++                                  1500                            
         4 JavaScript                           2200                            
         5 Python                               1000 13-AUG-22                  

SQL> delete from languages where lid=5;
delete from languages where lid=5
*
ERROR at line 1:
ORA-02292: integrity constraint (SYSTEM.SYS_C004174) violated - child record 
found 


SQL> update languages set lid=9 where lid=4;

1 row updated.

SQL> select * from languages;

       LID LNAME                               EXFEE EXDATE                     
---------- ------------------------------ ---------- ---------                  
         1 C                                    1200                            
         2 C++                                  1500                            
         9 JavaScript                           2200                            
         5 Python                               1000 13-AUG-22                  

SQL> update languages set lid=8 where lid=5;
update languages set lid=8 where lid=5
*
ERROR at line 1:
ORA-02292: integrity constraint (SYSTEM.SYS_C004174) violated - child record 
found 


SQL> update languages set lname='Basic Python' where lid=5;

1 row updated.

SQL> spool off
