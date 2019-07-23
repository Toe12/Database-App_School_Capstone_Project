--------------------------------------------
-- Sequences 

CREATE SEQUENCE PHONE_SEQ INCREMENT BY 1 START WITH 100;

CREATE SEQUENCE CLUB_SEQ INCREMENT BY 1 START WITH 100;

CREATE SEQUENCE MEMBER_AWARD_SEQ INCREMENT BY 1 START WITH 1000;

-------------------------------------------

CREATE OR REPLACE TRIGGER INSERT_PHONE
    BEFORE INSERT ON PHONE
    FOR EACH ROW 
DECLARE 
    NEW_ID INTEGER; 
BEGIN 
    SELECT PHONE_SEQ.CURRVAL INTO NEW_ID FROM DUAL; 
:NEW.PHONE_ID := NEW_ID;
END; 
/
    
CREATE OR REPLACE TRIGGER INSERT_CLUB
    BEFORE INSERT ON CLUB
    FOR EACH ROW
DECLARE
    NEW_ID_CLUB INTEGER;
BEGIN
SELECT CLUB_SEQ.CURRVAL INTO NEW_ID_CLUB FROM DUAL;
:NEW.CLUB_ID := NEW_ID_CLUB;
END;
/

CREATE OR REPLACE TRIGGER INSERT_MEMBER_AWARD
    BEFORE INSERT ON MEMBER_AWARD
    FOR EACH ROW
DECLARE
    NEW_ID_MEMBER_AWARD INTEGER;
BEGIN
SELECT MEMBER_AWARD_SEQ.CURRVAL INTO NEW_ID_MEMBER_AWARD FROM DUAL;
:NEW.MEMBER_AWARD_ID := NEW_ID_MEMBER_AWARD;
END;
/

-------------------------------------------
   
-- Local Club

Create View Local_Club_View As
Select Club_Name, Street_Addres, City, State, Zipcode, Phone
From Club, Office
Where Club.Club_Id = Office.Club_Id And
Description Like 'Lo%'
Order By Club_Name;

-- All Members

Create View All_Member_View As
Select (Last_Name || ', ' || First_Name) AS NAME, Phone_Number, Join_Date
From Member, Membership, Phone
Where Member.Member_Id = Membership.Member_Id And
Member.Member_Id = Phone.Member_Id
Order By Last_Name, First_Name;

-- Fundraise Projects

Create View Fundraise_Pj_View As
Select Project_Name, Description, Sum(Cost) As Cost_Total, Sum(Revenue) As Revenue_Total
From Project
Where Description Like 'Fun%'
Group By Rollup(Project_Name, Description);

-- Awards

Create View Award_View As
Select (Last_Name || ', ' || First_Name) AS NAME, Award_Name, Description
From Member_Award, Member, Award
Where Member_Award.Member_Id = Member.Member_Id And
Member_Award.Award_Id = Award.Award_Id;

-- Current Member

Create View Current_Member_View As
Select (Last_Name || ', ' || First_Name) AS NAME, Club_Name, Join_Date, Round((Sysdate-Join_Date)/365,1) As Year
From Member, Membership, Club
Where Member.Member_Id = Membership.Member_Id And
Membership.Club_Id = Club.Club_Id And
Reason Like 'Act%'
Order By Club_Name, Last_Name, First_Name;


-- Service Project

Create View Service_Project_View As
Select Project_Name, Club_Name, Description, Sum(Cost) As Total_Cost
From Project, Club
Where Project.Club_Id = Club.Club_Id And
Description Like 'Ser%'
Group By Rollup(Project_Name, Club_Name, Description);


-- Service Project Members

Create View Ser_Proj_Member As
Select (Last_Name || ', ' || First_Name) AS NAME, Project_Name, Project_Date, Description
From Project, Member, Member_Project
Where Project.Project_Id = Member_Project.Project_Id And Member_Project.Member_Id = Member.Member_Id And
Description Like 'Ser%'
Order By Project_Date, Last_Name, First_Name;


-- Current Local Officer

Create View Curr_Local_Officer_View As
Select (Last_Name || ', ' || First_Name) AS NAME, Club_Name, Office_Name
From Officer, Office, Member, Club, Membership
Where Officer.Member_Id = Member.Member_Id
And Officer.Office_Id = Office.Office_Id
And Membership.Club_Id = Club.Club_Id And
Membership.Member_Id = Member.Member_Id And
Office.Description Like 'Lo%'And Reason Like 'Ac%'
Order By Last_Name, First_Name, Club_Name, Office_Name;


-- Current National Officers

Create View Curr_National_Officer As
Select (Last_Name || ', ' || First_Name) AS NAME, Club_Name, Office_Name
From Officer, Office, Member, Club, Membership
Where Officer.Member_Id = Member.Member_Id
And Officer.Office_Id = Office.Office_Id
And Membership.Club_Id = Club.Club_Id And
Membership.Member_Id = Member.Member_Id And
Office.Description Like 'Na%' And
Reason Like 'Ac%'
Order By Last_Name, First_Name, Club_Name, Office_Name;


-- All Member Projects

Create View All_Member_Project As
Select (Last_Name || ', ' || First_Name) AS NAME, Club_Name, Project_Name, Project_Date, Description
From Member_Project, Member, Project, Club
Where Member_Project.Project_Id = Project.Project_Id And
Project.Club_Id = Club.Club_Id And
Member_Project.Member_Id = Member.Member_Id
Order By Club_Name, Last_Name, First_Name, Project_Date;  

-- Histories Of National Officer

Create View National_History As
Select (Last_Name || ', ' || First_Name) AS NAME, Join_Date, End_Date, Reason, Year, Office_Name, Project_Name
From
Member, Membership, Member_Talent, Talent, Office, Officer, Project, Member_Project
Where
Member.Member_Id = Membership.Member_Id And
Membership.Member_Id = Member_Talent.Member_Id And
Member_Talent.Talent_Id = Talent.Talent_Id And
Member.Member_Id = Officer.Member_Id And
Officer.Office_Id = Office.Office_Id And
Member.Member_Id = Member_Project.Member_Id And
Member_Project.Project_Id = Project.Project_Id
And Office.Description Like 'Na%'
Order By Office_Name, Year;

-- All members of local offices

create view all_member_local_office_view as  
SELECT (LAST_NAME || ', ' || FIRST_NAME) AS NAME, CLUB_NAME, ENTIRE_LIFE_MEMBER
FROM MEMBER, MEMBERSHIP, CLUB, OFFICE
WHERE MEMBER.MEMBER_ID = MEMBERSHIP.MEMBER_ID AND
MEMBERSHIP.CLUB_ID = CLUB.CLUB_ID AND
CLUB.CLUB_ID = OFFICE.CLUB_ID AND
DESCRIPTION = 'Local';


    
    

