SQL> grant dba to ricla;

Grant succeeded.

SQL> connect ricla/ricla12345
Connected.
SQL> clear screen

SQL> create table batches(bid number(3) primary key,bname varchar2(50) not null,bsdate date not null,benddate date);

Table created.

SQL> create table topics(tid number(3) primary key,tname varchar2(50) not null);

Table created.

SQL> create table students(sid number(6) primary key,sname varchar2(40) not null,sfname varchar2(40) not null,gender char(1) not null,contact char(10) not null,admdate date not null,bid number(3) references batches on delete cascade not null);

Table created.

SQL> create table tests(tid number(3) primary key,testdate date not null,totalmarks number(3) not null,bid number(3) references batches not null,tid number(3) references topics not null);
create table tests(tid number(3) primary key,testdate date not null,totalmarks number(3) not null,bid number(3) references batches not null,tid number(3) references topics not null)
                                                                                                                                            *
ERROR at line 1:
ORA-00957: duplicate column name 


SQL> create table tests(tid number(3) primary key,testdate date not null,totalmarks number(3) not null,bid number(3) references batches not null,topicid number(3) references topics not null);

Table created.

SQL> create table marks(mid number(6) primary key,sid number(6) references students not null,testid number(3) references tests not null,obtainedmarks number(3) not null);

Table created.

SQL> select * from tab;

TNAME                          TABTYPE  CLUSTERID                               
------------------------------ ------- ----------                               
BATCHES                        TABLE                                            
TOPICS                         TABLE                                            
STUDENTS                       TABLE                                            
TESTS                          TABLE                                            
MARKS                          TABLE                                            

SQL> desc topics;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 TID                                       NOT NULL NUMBER(3)
 TNAME                                     NOT NULL VARCHAR2(50)

SQL> insert into topics values(&topic_id,'&topic_name');
Enter value for topic_id: 1
Enter value for topic_name: C
old   1: insert into topics values(&topic_id,'&topic_name')
new   1: insert into topics values(1,'C')

1 row created.

SQL> /
Enter value for topic_id: 2
Enter value for topic_name: C++
old   1: insert into topics values(&topic_id,'&topic_name')
new   1: insert into topics values(2,'C++')

1 row created.

SQL> /
Enter value for topic_id: 3
Enter value for topic_name: Java
old   1: insert into topics values(&topic_id,'&topic_name')
new   1: insert into topics values(3,'Java')

1 row created.

SQL> /
Enter value for topic_id: 4
Enter value for topic_name: JavaScript
old   1: insert into topics values(&topic_id,'&topic_name')
new   1: insert into topics values(4,'JavaScript')

1 row created.

SQL> /
Enter value for topic_id: 5
Enter value for topic_name: HTML
old   1: insert into topics values(&topic_id,'&topic_name')
new   1: insert into topics values(5,'HTML')

1 row created.

SQL> /
Enter value for topic_id: 6
Enter value for topic_name: Data structure Basics
old   1: insert into topics values(&topic_id,'&topic_name')
new   1: insert into topics values(6,'Data structure Basics')

1 row created.

SQL> /
Enter value for topic_id: 7
Enter value for topic_name: Single Linked List
old   1: insert into topics values(&topic_id,'&topic_name')
new   1: insert into topics values(7,'Single Linked List')

1 row created.

SQL> /
Enter value for topic_id: 8
Enter value for topic_name: Doubly Linked List
old   1: insert into topics values(&topic_id,'&topic_name')
new   1: insert into topics values(8,'Doubly Linked List')

1 row created.

SQL> /
Enter value for topic_id: 9
Enter value for topic_name: Visual Basic 6
old   1: insert into topics values(&topic_id,'&topic_name')
new   1: insert into topics values(9,'Visual Basic 6')

1 row created.

SQL> /
Enter value for topic_id: 10
Enter value for topic_name: Python
old   1: insert into topics values(&topic_id,'&topic_name')
new   1: insert into topics values(10,'Python')

1 row created.

SQL> select * from topics
  2  ;

       TID TNAME                                                                
---------- --------------------------------------------------                   
         1 C                                                                    
         2 C++                                                                  
         3 Java                                                                 
         4 JavaScript                                                           
         5 HTML                                                                 
         6 Data structure Basics                                                
         7 Single Linked List                                                   
         8 Doubly Linked List                                                   
         9 Visual Basic 6                                                       
        10 Python                                                               

10 rows selected.

SQL> desc batches;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 BID                                       NOT NULL NUMBER(3)
 BNAME                                     NOT NULL VARCHAR2(50)
 BSDATE                                    NOT NULL DATE
 BENDDATE                                           DATE

SQL> insert into batches(bid,bname,bsdate) values(&bid,'&batch_name','&batch_start_Date');
Enter value for bid: 1
Enter value for batch_name: FirstYear2022
Enter value for batch_start_date: 06-Sep-2022
old   1: insert into batches(bid,bname,bsdate) values(&bid,'&batch_name','&batch_start_Date')
new   1: insert into batches(bid,bname,bsdate) values(1,'FirstYear2022','06-Sep-2022')

1 row created.

SQL> /
Enter value for bid: 2
Enter value for batch_name: SecondYear2022
Enter value for batch_start_date: 05-SEP-2022
old   1: insert into batches(bid,bname,bsdate) values(&bid,'&batch_name','&batch_start_Date')
new   1: insert into batches(bid,bname,bsdate) values(2,'SecondYear2022','05-SEP-2022')

1 row created.

SQL> /
Enter value for bid: 3
Enter value for batch_name: ThirdYear2022
Enter value for batch_start_date: 01-SEP-2022
old   1: insert into batches(bid,bname,bsdate) values(&bid,'&batch_name','&batch_start_Date')
new   1: insert into batches(bid,bname,bsdate) values(3,'ThirdYear2022','01-SEP-2022')

1 row created.

SQL> select * from batches;

       BID BNAME                                              BSDATE            
---------- -------------------------------------------------- ---------         
BENDDATE                                                                        
---------                                                                       
         1 FirstYear2022                                      06-SEP-22         
                                                                                
                                                                                
         2 SecondYear2022                                     05-SEP-22         
                                                                                
                                                                                
         3 ThirdYear2022                                      01-SEP-22         
                                                                                
                                                                                

SQL> clear screen

SQL> desc students;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 SID                                       NOT NULL NUMBER(6)
 SNAME                                     NOT NULL VARCHAR2(40)
 SFNAME                                    NOT NULL VARCHAR2(40)
 GENDER                                    NOT NULL CHAR(1)
 CONTACT                                   NOT NULL CHAR(10)
 ADMDATE                                   NOT NULL DATE
 BID                                       NOT NULL NUMBER(3)

SQL> insert into students values(&student_id,'&student_name','&fathers_name','&gender','&contact_number','&adm_date',&batch_id);
Enter value for student_id: 1
Enter value for student_name: kundan kumar
Enter value for fathers_name: shambhu gupta
Enter value for gender: m
Enter value for contact_number: 9563256985
Enter value for adm_date: 01-Sep-2022
Enter value for batch_id: 2
old   1: insert into students values(&student_id,'&student_name','&fathers_name','&gender','&contact_number','&adm_date',&batch_id)
new   1: insert into students values(1,'kundan kumar','shambhu gupta','m','9563256985','01-Sep-2022',2)

1 row created.

SQL> /
Enter value for student_id: 2
Enter value for student_name: kumar piyush
Enter value for fathers_name: ashok ram
Enter value for gender: m
Enter value for contact_number: 5632569856
Enter value for adm_date: 05-sep-2022
Enter value for batch_id: 3
old   1: insert into students values(&student_id,'&student_name','&fathers_name','&gender','&contact_number','&adm_date',&batch_id)
new   1: insert into students values(2,'kumar piyush','ashok ram','m','5632569856','05-sep-2022',3)

1 row created.

SQL> /
Enter value for student_id: 3
Enter value for student_name: neha kumari
Enter value for fathers_name: not available
Enter value for gender: f
Enter value for contact_number: 86523658965
Enter value for adm_date: 10-seo-2022
Enter value for batch_id: 2
old   1: insert into students values(&student_id,'&student_name','&fathers_name','&gender','&contact_number','&adm_date',&batch_id)
new   1: insert into students values(3,'neha kumari','not available','f','86523658965','10-seo-2022',2)
insert into students values(3,'neha kumari','not available','f','86523658965','10-seo-2022',2)
                                                                *
ERROR at line 1:
ORA-12899: value too large for column "RICLA"."STUDENTS"."CONTACT" (actual: 11, 
maximum: 10) 


SQL> /
Enter value for student_id: 3
Enter value for student_name: neha kumari
Enter value for fathers_name: not available
Enter value for gender: f
Enter value for contact_number: 5623658563
Enter value for adm_date: 10-sep-2022
Enter value for batch_id: 4
old   1: insert into students values(&student_id,'&student_name','&fathers_name','&gender','&contact_number','&adm_date',&batch_id)
new   1: insert into students values(3,'neha kumari','not available','f','5623658563','10-sep-2022',4)
insert into students values(3,'neha kumari','not available','f','5623658563','10-sep-2022',4)
*
ERROR at line 1:
ORA-02291: integrity constraint (RICLA.SYS_C004455) violated - parent key not 
found 


SQL> /
Enter value for student_id: 3
Enter value for student_name: neha kumari
Enter value for fathers_name: not available
Enter value for gender: f
Enter value for contact_number: 5632365862
Enter value for adm_date: 10-sep-2022
Enter value for batch_id: 2
old   1: insert into students values(&student_id,'&student_name','&fathers_name','&gender','&contact_number','&adm_date',&batch_id)
new   1: insert into students values(3,'neha kumari','not available','f','5632365862','10-sep-2022',2)

1 row created.

SQL> select * from students;

       SID SNAME                                                                
---------- ----------------------------------------                             
SFNAME                                   G CONTACT    ADMDATE          BID      
---------------------------------------- - ---------- --------- ----------      
         1 kundan kumar                                                         
shambhu gupta                            m 9563256985 01-SEP-22          2      
                                                                                
         2 kumar piyush                                                         
ashok ram                                m 5632569856 05-SEP-22          3      
                                                                                
         3 neha kumari                                                          
not available                            f 5632365862 10-SEP-22          2      
                                                                                

SQL> spool off
