INSERT INTO CLUB VALUES (CLUB_SEQ.NEXTVAL, 'Donor Club', '212 Edgar Road', 'Saint Louis', 'MO', '63119', '3145673456'); 
INSERT INTO CLUB VALUES (CLUB_SEQ.NEXTVAL, 'IT Club', '213 Edgar Road', 'Saint Louis', 'MO', '63119','3145678907'); 
INSERT INTO CLUB VALUES (CLUB_SEQ.NEXTVAL, 'Full Hearts', '218 Clark Blvd','Nashville', 'TN', '36362','3145623348'); 
INSERT INTO CLUB VALUES (CLUB_SEQ.NEXTVAL, 'Strong Together' , '212  Morton Road', 'Stetson', 'FL', '30155','314566345'); 
INSERT INTO CLUB VALUES (CLUB_SEQ.NEXTVAL, 'Holding Hands' , '213 Morton Road', 'Stetson', 'FL', '30155', '3145867898'); 
INSERT INTO CLUB VALUES (CLUB_SEQ.NEXTVAL, 'Fun Fair Club', '220 Edgar Road', 'Saint Louis', 'MO', '63119','3241223345'); 
INSERT INTO CLUB VALUES (CLUB_SEQ.NEXTVAL, 'Full Brights', '560 Clark Blvd','Nashville', 'TN', '36362','3144562345'); 
INSERT INTO CLUB VALUES (CLUB_SEQ.NEXTVAL, 'Book Club', '120 Edgar Road', 'Saint Louis', 'MO', '63119','3134564323'); 
INSERT INTO CLUB VALUES (CLUB_SEQ.NEXTVAL, 'Fundrasing Club', '470 E.Lockwood Avenue', 'Saint Louis', 'MO', '63119', '3422345654'); 
INSERT INTO CLUB VALUES (CLUB_SEQ.NEXTVAL, 'Every Youth' , '120 Morton Road', 'Stetson', 'FL', '30155','3424565432'); 

INSERT INTO MEMBER VALUES ('10001', 'Alex', 'Wyne', '218 Vally Blvd', 'Nashville', 'TN', '36362'); 
INSERT INTO MEMBER VALUES ('10002', 'Toe', 'Arkar', '212 Edgar Road', 'Saint Louis', 'MO', '63119');
INSERT INTO MEMBER VALUES ('10003', 'Brain', 'Paul', '212  Morton Road', 'Stetson', 'FL', '30155');
INSERT INTO MEMBER VALUES ('10004','Bawa','Maha','8571 Watson Rd','Saint Louis','MO','63119');
INSERT INTO MEMBER VALUES ('10005','Brain','John','8871 Watson Rd','Saint Louis','MO','63119');
INSERT INTO MEMBER VALUES ('10006','Zar','Allan','8530 Watson Rd','Saint Louis','MO', '63119');
INSERT INTO MEMBER VALUES ('10007','Rigo','Paul','345 E.Lockwoord Ave','Saint Louis','MO', '63119');
INSERT INTO MEMBER VALUES ('10008','Owen','Michael','212 Nottihan Ave','Saint Louis','MO', '63119');
INSERT INTO MEMBER VALUES ('10009', 'Tracy','Zhu', '5275 Vantage Ave','Los Angles','CA','91607');
INSERT INTO MEMBER VALUES ('10010','Tracy','Suo', '5275 Vantage Ave','Los Angles','CA','91607');

INSERT INTO PHONE VALUES (PHONE_SEQ.NEXTVAL,'10001','Office','3145673456');
INSERT INTO PHONE VALUES (PHONE_SEQ.NEXTVAL,'10002','Fax','3146573857');
INSERT INTO PHONE VALUES (PHONE_SEQ.NEXTVAL,'10003','Office','3145853457');
INSERT INTO PHONE VALUES (PHONE_SEQ.NEXTVAL,'10004','Office','3145854637');
INSERT INTO PHONE VALUES (PHONE_SEQ.NEXTVAL,'10005','Office','3141235674');
INSERT INTO PHONE VALUES (PHONE_SEQ.NEXTVAL,'10006','Fax','3145782350');
INSERT INTO PHONE VALUES (PHONE_SEQ.NEXTVAL,'10007','Office','3146752346');
INSERT INTO PHONE VALUES (PHONE_SEQ.NEXTVAL,'10008','Fax','3145678909');
INSERT INTO PHONE VALUES (PHONE_SEQ.NEXTVAL,'10009','Office','3145671234');
INSERT INTO PHONE VALUES (PHONE_SEQ.NEXTVAL,'10010','Office','3145675432');

INSERT INTO AWARD VALUES ('0001', 'Most Outstanding Award', '2009');
INSERT INTO AWARD VALUES ('0002', 'Chairman Award', '2010');
INSERT INTO AWARD VALUES ('0003', 'President Award' , '2011');
INSERT INTO AWARD VALUES ('0004', 'Five-Stars Honor', '2012'); 
INSERT INTO AWARD VALUES ('0005', 'Leadership Award', '2013'); 
INSERT INTO AWARD VALUES ('0006', 'Executive Choice', '2014'); 
INSERT INTO AWARD VALUES ('0007', 'Full Bright', '2015'); 
INSERT INTO AWARD VALUES ('0008', 'Pinnacle Award', '2016'); 
INSERT INTO AWARD VALUES ('0009', 'Summit Award', '2017'); 
INSERT INTO AWARD VALUES ('0010', 'Superstar Award','2018'); 

INSERT INTO TALENT VALUES ('T001', 'Writing', NULL); 
INSERT INTO TALENT VALUES ('T002', 'Self-Management', NULL); 
INSERT INTO TALENT VALUES ('T003', 'Public Speaking', NULL); 
INSERT INTO TALENT VALUES ('T004', 'Conseling', NULL); 
INSERT INTO TALENT VALUES ('T005', 'Critical Thinking', NULL); 
INSERT INTO TALENT VALUES ('T006', 'Decision Making', NULL); 
INSERT INTO TALENT VALUES ('T007', 'Math', NULL); 
INSERT INTO TALENT VALUES ('T008', 'Graphics', NULL); 
INSERT INTO TALENT VALUES ('T009', 'Art', NULL); 
INSERT INTO TALENT VALUES ('T010', 'Teaching', NULL); 

INSERT INTO MEMBERSHIP VALUES ('1', '10001', 101, to_date('01-JAN-2000', 'dd-mon-yyyy'), to_date('03-MAR-2000', 'dd-mon-yyyy'),'Retired', 'Yes'); 
INSERT INTO MEMBERSHIP VALUES ('2', '10002', 102, to_date('01-APR-2002', 'dd-mon-yyyy'), NULL ,'Active', 'Yes');
INSERT INTO MEMBERSHIP VALUES ('3', '10003', 103, to_date('01-Feb-2003', 'dd-mon-yyyy'), NULL ,'Active', 'No');
INSERT INTO MEMBERSHIP VALUES ('4', '10004', 104 , to_date('01-Feb-2003', 'dd-mon-yyyy'), to_date('01-SEP-2006', 'dd-mon-yyyy'),'Active', 'Yes');
INSERT INTO MEMBERSHIP VALUES ('5', '10005', 105 , to_date('11-Feb-2003', 'dd-mon-yyyy'), to_date('01-SEP-2016', 'dd-mon-yyyy'),'Retired', 'Yes');
INSERT INTO MEMBERSHIP VALUES ('6', '10006', 106 , to_date('01-MAY-2003', 'dd-mon-yyyy'), to_date('01-SEP-2006', 'dd-mon-yyyy'),'Retired','No');
INSERT INTO MEMBERSHIP VALUES ('7', '10007', 107 , to_date('01-Dec-2008', 'dd-mon-yyyy'), NULL ,'Active', 'No');
INSERT INTO MEMBERSHIP VALUES ('8', '10008', 108 , to_date('01-Nov-2010', 'dd-mon-yyyy'), NULL,'Active', 'Yes');
INSERT INTO MEMBERSHIP VALUES ('9', '10009', 109 , to_date('01-MAR-2017', 'dd-mon-yyyy'), NULL ,'Active', 'No');
INSERT INTO MEMBERSHIP VALUES ('10', '10010', 110, to_date('01-Jul-2016', 'dd-mon-yyyy'), NULL,'Active', 'Yes');


INSERT INTO MEMBER_TALENT VALUES ('10001' , 'T003'); 
INSERT INTO MEMBER_TALENT VALUES ('10002' , 'T006'); 
INSERT INTO MEMBER_TALENT VALUES ('10003' , 'T005'); 
INSERT INTO MEMBER_TALENT VALUES ('10004' , 'T001'); 
INSERT INTO MEMBER_TALENT VALUES ('10005' , 'T002'); 
INSERT INTO MEMBER_TALENT VALUES ('10006' , 'T007'); 
INSERT INTO MEMBER_TALENT VALUES ('10007' , 'T010'); 
INSERT INTO MEMBER_TALENT VALUES ('10008' , 'T004'); 
INSERT INTO MEMBER_TALENT VALUES ('10009' , 'T008'); 
INSERT INTO MEMBER_TALENT VALUES ('10010' , 'T009'); 


INSERT INTO MEMBER_AWARD VALUES (MEMBER_AWARD_SEQ.NEXTVAL, '10004' ,'0006', to_date('01-JAN-2014', 'dd-mon-yyyy'));
INSERT INTO MEMBER_AWARD VALUES (MEMBER_AWARD_SEQ.NEXTVAL, '10002' , '0002', to_date('01-JAN-2010', 'dd-mon-yyyy'));
INSERT INTO MEMBER_AWARD VALUES (MEMBER_AWARD_SEQ.NEXTVAL, '10003' ,'0003', to_date('01-JAN-2011', 'dd-mon-yyyy'));
INSERT INTO MEMBER_AWARD VALUES (MEMBER_AWARD_SEQ.NEXTVAL, '10004' ,'0007', to_date('01-JAN-2009', 'dd-mon-yyyy'));
INSERT INTO MEMBER_AWARD VALUES (MEMBER_AWARD_SEQ.NEXTVAL, '10007' ,'0005', to_date('01-JAN-2015', 'dd-mon-yyyy'));
INSERT INTO MEMBER_AWARD VALUES (MEMBER_AWARD_SEQ.NEXTVAL, '10003' , '0004', to_date('01-JAN-2013', 'dd-mon-yyyy'));
INSERT INTO MEMBER_AWARD VALUES (MEMBER_AWARD_SEQ.NEXTVAL, '10007' , '0001', to_date('01-JAN-2009', 'dd-mon-yyyy'));
INSERT INTO MEMBER_AWARD VALUES (MEMBER_AWARD_SEQ.NEXTVAL, '10008' , '0009', to_date('01-JAN-2017', 'dd-mon-yyyy'));
INSERT INTO MEMBER_AWARD VALUES (MEMBER_AWARD_SEQ.NEXTVAL, '10009' , '0008', to_date('01-JAN-2016', 'dd-mon-yyyy'));
INSERT INTO MEMBER_AWARD VALUES (MEMBER_AWARD_SEQ.NEXTVAL, '10001' , '0010', to_date('01-JAN-2018', 'dd-mon-yyyy'));

INSERT INTO OFFICE VALUES ('F001', 101 , 'Missouri Office' , 'Local'); 
INSERT INTO OFFICE VALUES ('F002', 102 , 'Missouri Office' , 'Local'); 
INSERT INTO OFFICE VALUES ('F003', 103 , 'Tennessee Office' , 'National'); 
INSERT INTO OFFICE VALUES ('F004', 104 , 'Floriad Office' , 'National'); 
INSERT INTO OFFICE VALUES ('F005', 105 , 'Florida Office' , 'National'); 
INSERT INTO OFFICE VALUES ('F006', 106 , 'Missouri Office' , 'Local'); 
INSERT INTO OFFICE VALUES ('F007', 107 , 'Tennessee Office' , 'National'); 
INSERT INTO OFFICE VALUES ('F008', 108 , 'Missouri Office' , 'Local'); 
INSERT INTO OFFICE VALUES ('F009', 109 , 'Missouri Office' , 'Local'); 
INSERT INTO OFFICE VALUES ('F010', 110 , 'Florida Office' , 'National'); 


INSERT INTO OFFICER VALUES ('OF1', 'F001', '10002', 6);
INSERT INTO OFFICER VALUES ('OF2', 'F002','10004', 3);
INSERT INTO OFFICER VALUES ('OF3', 'F003', '10008', 8);
INSERT INTO OFFICER VALUES ('OF4', 'F004', '10005', 13);
INSERT INTO OFFICER VALUES ('OF5', 'F005', '10007', 10);
INSERT INTO OFFICER VALUES ('OF6', 'F006', '10001', 3);
INSERT INTO OFFICER VALUES ('OF7', 'F007','10006', 3);
INSERT INTO OFFICER VALUES ('OF8', 'F008','10003', 15);
INSERT INTO OFFICER VALUES ('OF9', 'F009','10010', 2);
INSERT INTO OFFICER VALUES ('OF10', 'F004','10009', 1);

INSERT INTO PROJECT VALUES ('PJ1',  101 ,'Movie Night', 'Fundraise', to_date('31-Dec-1999', 'dd-mon-yyyy'),NULL, 10000); 
INSERT INTO PROJECT VALUES ('PJ2',  102 ,'Online Courses', 'Fundraise', to_date('14-Nov-2000', 'dd-mon-yyyy'),NULL, 10500); 
INSERT INTO PROJECT VALUES ('PJ3',  103 ,'Food Truck', 'Fundraise', to_date('25-Nov-2001', 'dd-mon-yyyy'),NULL, 50000.45); 
INSERT INTO PROJECT VALUES ('PJ4',  104 ,'Selling books', 'Fundraise', to_date('14-Nov-2006', 'dd-mon-yyyy'),NULL, 100000.50); 
INSERT INTO PROJECT VALUES ('PJ5',  105 ,'Charity', 'Fundraise', to_date('14-Feb-2017', 'dd-mon-yyyy'),NULL, 400000.32); 
INSERT INTO PROJECT VALUES ('PJ6',  106 ,'Health Care', 'Service', to_date('14-Feb-2003', 'dd-mon-yyyy'), 400300.32, NULL); 
INSERT INTO PROJECT VALUES ('PJ7',  107 ,'Blood Donation', 'Service', to_date('01-Jan-2005', 'dd-mon-yyyy'), 400400.32, NULL); 
INSERT INTO PROJECT VALUES ('PJ8',  108 ,'Kids Care', 'Service', to_date('11-Nov-2005', 'dd-mon-yyyy'), 400000.32, NULL); 
INSERT INTO PROJECT VALUES ('PJ9',  109 ,'Book Club', 'Service', to_date('24-Jul-2008', 'dd-mon-yyyy'), 300000.62, NULL); 
INSERT INTO PROJECT VALUES ('PJ10', 110 ,'Sport Teams', 'Service', to_date('23-May-2009', 'dd-mon-yyyy'), 30000.13, NULL); 


INSERT INTO MEMBER_PROJECT VALUES ('10001', 'PJ1'); 
INSERT INTO MEMBER_PROJECT VALUES ('10002', 'PJ2'); 
INSERT INTO MEMBER_PROJECT VALUES ('10003', 'PJ3'); 
INSERT INTO MEMBER_PROJECT VALUES ('10004', 'PJ4'); 
INSERT INTO MEMBER_PROJECT VALUES ('10005', 'PJ7'); 
INSERT INTO MEMBER_PROJECT VALUES ('10006', 'PJ9'); 
INSERT INTO MEMBER_PROJECT VALUES ('10007', 'PJ10'); 
INSERT INTO MEMBER_PROJECT VALUES ('10008', 'PJ8'); 
INSERT INTO MEMBER_PROJECT VALUES ('10009', 'PJ6'); 
INSERT INTO MEMBER_PROJECT VALUES ('10010', 'PJ5'); 


COMMIT;