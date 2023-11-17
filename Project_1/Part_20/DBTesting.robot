*** Settings ***
Library    DatabaseLibrary
Library    OperatingSystem


Suite Setup        Connect To Database  pymysql    ${DBName}    ${DBUser}    ${DBPass}    ${DHost}    ${DBPort}
Suite Teardown     Disconnect From Database

*** Variables ***
${DBName}  mydb
${DBUser}  root
${DBPass}  admin
${DHost}   127.0.0.1
${DBPort}  3306

*** Test Cases ***
Create person table
    ${output}=  Execute Sql String    Create table person(id integer,first_name varchar(20),last_name varchar(20));
    Log To Console    ${output}
    Should Be Equal As Strings    ${output}    None 

# Insert Data in person table
    # Single record
    # ${output}=  Execute Sql String    Insert into person values(101,"John","McLaugh");

Multiple records
    ${output}=  Execute Sql Script        C:/coding/RobotFramework_Pavan/Project_1/Part_20/mydb_person_insertData.sql
    Log To Console    ${output}
    Should Be Equal As Strings    ${output}    None 

Check John record present in Person table
    Check If Exists In Database    select id from mydb.person where first_name="Paul";

Check Timothy record NOT present in Person table
    Check If Not Exists In Database    select id from mydb.person where first_name="Timothy";

Check Person Table exists in mydb Database
    Table Must Exist    person

Verify Row Count is Zero
    Row Count Is 0    select * from mydb.person where first_name = 'xyz';

Verify Row Count is Equal to some value
    Row Count Is Equal To X    select * from mydb.person where first_name = 'Paul';    1

Verify Row Count is Greater than some value
    Row Count Is Greater Than X    select * from mydb.person where first_name = 'John';    1

Verify Row Count is Less than some value
    Row Count Is Less Than X    select * from mydb.person where first_name = 'Paul';    2

Update record in person table
    ${output}=  Execute Sql String    Update mydb.person set first_name ='Jiro' where id=105;
    Log To Console    ${output}
    Should Be Equal As Strings    ${output}    None

Retrieve Records from Person Table
    @{queryResults}=        Query    Select * from mydb.person;
    Log To Console    many @{queryResults}

Delete Records from Person Table
    ${output}=    Execute Sql String    Delete from mydb.person;
    Should Be Equal As Strings    ${output}    None 

Drop Table Person fron mydb    
    ${output}=    Execute Sql String    Drop table person;
    Should Be Equal As Strings    ${output}    None 

