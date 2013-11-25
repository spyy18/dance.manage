INSERT INTO ADDRESS (A_ID,ENABLED,CITY,DOOR,NUMBER,STAIR,STREET,ZIP) VALUES (1,TRUE,'WIEN','2','18','1','Taubstummengasse','1040');
INSERT INTO ADDRESS (A_ID,ENABLED,CITY,DOOR,NUMBER,STAIR,STREET,ZIP) VALUES (2,TRUE,'WIEN','4','15','3','Favoritenstrasse','1040');
INSERT INTO ADDRESS (A_ID,ENABLED,CITY,DOOR,NUMBER,STAIR,STREET,ZIP) VALUES (3,TRUE,'WIEN','8','1','5','Gumpendorferstrasse','1160');

INSERT INTO STYLE (S_ID,NAME) VALUES (1,'Break Dance');

INSERT INTO PERSON (P_ID,ENABLED,BIRTHDAY,EMAIL,FIRSTNAME,LASTNAME,PASSWORD,TELEPHONE,A_ID) 
VALUES (1,TRUE,'1996-05-07','franz@mail.com','Franz','Mayer','ca92ddbb320e5ba3d78ff898445ab385298bb69fd7129e1c05bf30f48e407821ebc2ee3ae372047b',06801111111,1);
INSERT INTO PARTICIPANT (P_ID,CONTACTPERSON,EMERGENCYNUMBER) VALUES (1,'Evelyn Mayer','06805646758');
INSERT INTO PERSON (P_ID,ENABLED,BIRTHDAY,EMAIL,FIRSTNAME,LASTNAME,PASSWORD,TELEPHONE,A_ID) 
VALUES (3,TRUE,'1998-04-07','miriam@mail.com','Miriam','Gruber','06802346758',06801111111,2);
INSERT INTO PARTICIPANT (P_ID,CONTACTPERSON,EMERGENCYNUMBER) VALUES (3,'Richard Gruber','06805646758');
INSERT INTO PERSON (P_ID,ENABLED,BIRTHDAY,EMAIL,FIRSTNAME,LASTNAME,PASSWORD,TELEPHONE) 
VALUES (4,TRUE,'1994-08-07','marika@mail.com','Marika','Gruber','06802346758',06801111111);
INSERT INTO PARTICIPANT (P_ID,CONTACTPERSON,EMERGENCYNUMBER) VALUES (4,'Richard Gruber','06805646758');
INSERT INTO PERSON (P_ID,ENABLED,BIRTHDAY,EMAIL,FIRSTNAME,LASTNAME,PASSWORD,TELEPHONE) 
VALUES (5,TRUE,'1988-01-09','josef@mail.com','Josef','Gruber','06802346758',06801111111);
INSERT INTO PARTICIPANT (P_ID,CONTACTPERSON,EMERGENCYNUMBER) VALUES (5,'Richard Gruber','06805646758');

INSERT INTO PARTICIPANT_SIBLING (P_ID, P_ID_REVERSE) VALUES (3, 4);
INSERT INTO PARTICIPANT_SIBLING (P_ID, P_ID_REVERSE) VALUES (5, 4);
INSERT INTO PARTICIPANT_SIBLING (P_ID, P_ID_REVERSE) VALUES (3, 5);


INSERT INTO PERSON (P_ID,ENABLED,BIRTHDAY,EMAIL,FIRSTNAME,LASTNAME,PASSWORD,TELEPHONE,A_ID) 
VALUES (2,TRUE,'1960-04-03','claudia@mail.com','Claudia','Bacher','06802346758',06801111111,3);
INSERT INTO TEACHER (SALARY,SVNR,P_ID) VALUES (400,1234567890,2);

INSERT INTO COURSE(C_ID,ENABLED,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,PRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,A_ID,S_ID,P_ID) 
VALUES (1,TRUE,1,5,'Break Dance - Forever Young',1,'16:00:00',50.0,60,2,2,1,1,2);
INSERT INTO COURSE(C_ID,ENABLED,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,PRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,A_ID,S_ID,P_ID) 
VALUES (2,TRUE,2,2,'Break Dance 2.0',1,'16:00:00',80.0,90,1,3,1,1,2);

INSERT INTO COURSE_PARTICIPANT (C_ID,P_ID) VALUES (1,1);
INSERT INTO COURSE_PARTICIPANT (C_ID,P_ID) VALUES (2,1);
INSERT INTO COURSE_PARTICIPANT (C_ID,P_ID) VALUES (1,3);

