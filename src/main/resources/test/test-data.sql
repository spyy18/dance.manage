INSERT INTO ADDRESS (A_ID,ACTIVE,CITY,DOOR,NUMBER,STAIR,STREET,ZIP) VALUES (1,TRUE,'WIEN','2','18','1','Taubstummengasse','1040');

INSERT INTO STYLE (S_ID,NAME) VALUES (1,'Break Dance');

INSERT INTO PERSON (P_ID,ACTIVE,BIRTHDAY,EMAIL,FIRSTNAME,LASTNAME,PASSWORD,TELEPHONE) 
VALUES (1,TRUE,'1996-05-07 00:00:00','franz@mail.com','Franz','Mayer','06802346758',06801111111);
INSERT INTO PARTICIPANT (P_ID,CONTACTPERSON,EMERGENCYNUMBER) VALUES (1,'Evelyn Mayer','06805646758');
INSERT INTO PERSON (P_ID,ACTIVE,BIRTHDAY,EMAIL,FIRSTNAME,LASTNAME,PASSWORD,TELEPHONE) 
VALUES (3,TRUE,'1998-04-07 00:00:00','miriam@mail.com','Miriam','Müller','06802346758',06801111111);
INSERT INTO PARTICIPANT (P_ID,CONTACTPERSON,EMERGENCYNUMBER) VALUES (3,'Richard Müller','06805646758');

INSERT INTO PERSON (P_ID,ACTIVE,BIRTHDAY,EMAIL,FIRSTNAME,LASTNAME,PASSWORD,TELEPHONE) 
VALUES (2,TRUE,'1960-04-03 00:00:00','claudia@mail.com','Claudia','Bacher','06802346758',06801111111);
INSERT INTO TEACHER (SALLARY,SVNR,P_ID) VALUES (400,1234567890,2);

INSERT INTO COURSE(C_ID,ACTIVE,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,PRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,A_ID,S_ID,P_ID) 
VALUES (1,TRUE,12,5,'Break Dance - Forever Young',1,'16:00:00',50.0,60,100,2,1,1,2);
INSERT INTO COURSE(C_ID,ACTIVE,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,PRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,A_ID,S_ID,P_ID) 
VALUES (2,TRUE,14,2,'Break Dance 2.0',1,'16:00:00',80.0,90,70,3,1,1,2);

INSERT INTO COURSE_PARTICIPANT (C_ID,P_ID) VALUES (1,1);
INSERT INTO COURSE_PARTICIPANT (C_ID,P_ID) VALUES (2,1);
INSERT INTO COURSE_PARTICIPANT (C_ID,P_ID) VALUES (1,3);

