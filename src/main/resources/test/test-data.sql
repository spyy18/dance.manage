INSERT INTO ADDRESS (A_ID,ENABLED,CITY,DOOR,NUMBER,STAIR,STREET,ZIP, CREATED) VALUES (1,TRUE,'WIEN','2','18','1','Taubstummengasse','1040', CURRENT_TIMESTAMP);
INSERT INTO ADDRESS (A_ID,ENABLED,CITY,DOOR,NUMBER,STAIR,STREET,ZIP, CREATED) VALUES (2,TRUE,'WIEN','4','15','3','Favoritenstrasse','1040', CURRENT_TIMESTAMP);
INSERT INTO ADDRESS (A_ID,ENABLED,CITY,DOOR,NUMBER,STAIR,STREET,ZIP, CREATED) VALUES (3,TRUE,'WIEN','8','1','5','Gumpendorferstrasse','1160', CURRENT_TIMESTAMP);
INSERT INTO ADDRESS (A_ID,ENABLED,CITY,DOOR,NUMBER,STAIR,STREET,ZIP, CREATED) VALUES (4,TRUE,'WIEN','8','1','5','Gumpendorferstrasse','1160', CURRENT_TIMESTAMP);
INSERT INTO ADDRESS (A_ID,ENABLED,CITY,DOOR,NUMBER,STAIR,STREET,ZIP, CREATED) VALUES (5,TRUE,'WIEN','8','1','5','Gumpendorferstrasse','1160', CURRENT_TIMESTAMP);

INSERT INTO STYLE (S_ID,NAME, CREATED) VALUES (1,'Break Dance', CURRENT_TIMESTAMP);
INSERT INTO STYLE (S_ID,NAME, CREATED) VALUES (2,'Step', CURRENT_TIMESTAMP);
INSERT INTO STYLE (S_ID,NAME, CREATED) VALUES (3,'Ballet', CURRENT_TIMESTAMP);
INSERT INTO STYLE (S_ID,NAME, CREATED) VALUES (4,'Hip Hop', CURRENT_TIMESTAMP);
INSERT INTO STYLE (S_ID,NAME, CREATED) VALUES (5,'Videoclip Dance', CURRENT_TIMESTAMP);

INSERT INTO PERSON (P_ID,ENABLED,BIRTHDAY,EMAIL,FIRSTNAME,LASTNAME,PASSWORD,TELEPHONE,A_ID,CREATED) 
VALUES (1,TRUE,'1996-05-07','franz@mail.com','Franz','Mayer','ca92ddbb320e5ba3d78ff898445ab385298bb69fd7129e1c05bf30f48e407821ebc2ee3ae372047b',06801111111,1,CURRENT_TIMESTAMP);
INSERT INTO PARTICIPANT (P_ID,CONTACTPERSON,EMERGENCYNUMBER) VALUES (1,'Evelyn Mayer','06805646758');
INSERT INTO PERSON (P_ID,ENABLED,BIRTHDAY,EMAIL,FIRSTNAME,LASTNAME,PASSWORD,TELEPHONE,A_ID,CREATED) 
VALUES (3,TRUE,'1998-04-07','miriam@mail.com','Miriam','Gruber','ca92ddbb320e5ba3d78ff898445ab385298bb69fd7129e1c05bf30f48e407821ebc2ee3ae372047b',06801111111,2,CURRENT_TIMESTAMP);
INSERT INTO PARTICIPANT (P_ID,CONTACTPERSON,EMERGENCYNUMBER) VALUES (3,'Richard Gruber','06805646758');
INSERT INTO PERSON (P_ID,ENABLED,BIRTHDAY,EMAIL,FIRSTNAME,LASTNAME,PASSWORD,TELEPHONE,A_ID,CREATED) 
VALUES (4,TRUE,'1994-08-07','marika@mail.com','Marika','Gruber','ca92ddbb320e5ba3d78ff898445ab385298bb69fd7129e1c05bf30f48e407821ebc2ee3ae372047b',06801111111,4,CURRENT_TIMESTAMP);
INSERT INTO PARTICIPANT (P_ID,CONTACTPERSON,EMERGENCYNUMBER) VALUES (4,'Richard Gruber','06805646758');
INSERT INTO PERSON (P_ID,ENABLED,BIRTHDAY,EMAIL,FIRSTNAME,LASTNAME,PASSWORD,TELEPHONE,A_ID,CREATED) 
VALUES (5,TRUE,'1988-01-09','josef@mail.com','Josef','Gruber','ca92ddbb320e5ba3d78ff898445ab385298bb69fd7129e1c05bf30f48e407821ebc2ee3ae372047b',06801111111,5,CURRENT_TIMESTAMP);
INSERT INTO PARTICIPANT (P_ID,CONTACTPERSON,EMERGENCYNUMBER) VALUES (5,'Richard Gruber','06805646758');

INSERT INTO PARTICIPANT_SIBLING (P_ID, P_ID_REVERSE) VALUES (3, 4);
INSERT INTO PARTICIPANT_SIBLING (P_ID, P_ID_REVERSE) VALUES (5, 4);
INSERT INTO PARTICIPANT_SIBLING (P_ID, P_ID_REVERSE) VALUES (3, 5);

INSERT INTO PERSON (P_ID,ENABLED,BIRTHDAY,EMAIL,FIRSTNAME,LASTNAME,PASSWORD,TELEPHONE,A_ID,CREATED) 
VALUES (2,TRUE,'1960-04-03','claudia@mail.com','Claudia','Bacher','ca92ddbb320e5ba3d78ff898445ab385298bb69fd7129e1c05bf30f48e407821ebc2ee3ae372047b',06801111111,3,CURRENT_TIMESTAMP);
INSERT INTO TEACHER (SALARY,SVNR,P_ID) VALUES (400,1234567890,2);

INSERT INTO PERSON (P_ID,ENABLED,BIRTHDAY,EMAIL,FIRSTNAME,LASTNAME,PASSWORD,TELEPHONE,A_ID,CREATED) 
VALUES (6,TRUE,'1988-01-09','admin@mail.com','Franz','Oberhauser','ca92ddbb320e5ba3d78ff898445ab385298bb69fd7129e1c05bf30f48e407821ebc2ee3ae372047b',06801111121,5,CURRENT_TIMESTAMP);
INSERT INTO ADMIN (P_ID) VALUES (6);

INSERT INTO PERSON (P_ID,ENABLED,BIRTHDAY,EMAIL,FIRSTNAME,LASTNAME,PASSWORD,TELEPHONE,A_ID,CREATED) 
VALUES (7,TRUE,'1988-01-09','julia@mail.com','Julia','Franzelin','ca92ddbb320e5ba3d78ff898445ab385298bb69fd7129e1c05bf30f48e407821ebc2ee3ae372047b',06801111121,5,CURRENT_TIMESTAMP);
INSERT INTO TEACHER (P_ID, SVNR, SALARY) VALUES (7, '11231-123123-1232', 120);

INSERT INTO COURSE(C_ID,ENABLED,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,SEMESTERPRICE,YEARPRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,YEAR,A_ID,S_ID,P_ID,CREATED) 
VALUES (1,TRUE,1,5,'Break Dance - Forever Young',1,'16:00:00',50.0,90.0,60,2,2,'2012',1,1,2,CURRENT_TIMESTAMP);
INSERT INTO COURSE(C_ID,ENABLED,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,SEMESTERPRICE,YEARPRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,YEAR,A_ID,S_ID,P_ID,CREATED) 
VALUES (2,TRUE,2,2,'Break Dance 2.0',1,'16:00:00',80.0,140.0,90,1,3,'2012',1,1,2,CURRENT_TIMESTAMP);
INSERT INTO COURSE(C_ID,ENABLED,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,SEMESTERPRICE,YEARPRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,YEAR,A_ID,S_ID,P_ID,CREATED) 
VALUES (3,TRUE,2,1,'Step 1.0',1,'16:00:00',80.0,140.0,90,1,3,'2012',1,2,2,CURRENT_TIMESTAMP);
INSERT INTO COURSE(C_ID,ENABLED,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,SEMESTERPRICE,YEARPRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,YEAR,A_ID,S_ID,P_ID,CREATED) 
VALUES (4,TRUE,1,1,'Step 2.0',1,'16:00:00',80.0,140.0,90,1,3,'2012',1,2,2,CURRENT_TIMESTAMP);
INSERT INTO COURSE(C_ID,ENABLED,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,SEMESTERPRICE,YEARPRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,YEAR,A_ID,S_ID,P_ID,CREATED) 
VALUES (5,TRUE,2,1,'Ballet 1.0',1,'16:00:00',80.0,140.0,90,1,3,'2012',1,3,2,CURRENT_TIMESTAMP);
INSERT INTO COURSE(C_ID,ENABLED,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,SEMESTERPRICE,YEARPRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,YEAR,A_ID,S_ID,P_ID,CREATED) 
VALUES (6,TRUE,2,1,'Ballet 2.0',1,'16:00:00',80.0,140.0,90,1,3,'2012',1,3,2,CURRENT_TIMESTAMP);
INSERT INTO COURSE(C_ID,ENABLED,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,SEMESTERPRICE,YEARPRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,YEAR,A_ID,S_ID,P_ID,CREATED) 
VALUES (7,TRUE,2,1,'Hip Hop 1.0',1,'16:00:00',80.0,140.0,90,1,3,'2012',1,4,2,CURRENT_TIMESTAMP);
INSERT INTO COURSE(C_ID,ENABLED,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,SEMESTERPRICE,YEARPRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,YEAR,A_ID,S_ID,P_ID,CREATED) 
VALUES (8,TRUE,1,1,'Hip Hop 2.0',1,'16:00:00',80.0,140.0,90,1,3,'2012',1,4,2,CURRENT_TIMESTAMP);
INSERT INTO COURSE(C_ID,ENABLED,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,SEMESTERPRICE,YEARPRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,YEAR,A_ID,S_ID,P_ID,CREATED) 
VALUES (9,TRUE,2,1,'Ballet 3.0',1,'16:00:00',80.0,140.0,90,1,3,'2012',1,3,2,CURRENT_TIMESTAMP);
INSERT INTO COURSE(C_ID,ENABLED,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,SEMESTERPRICE,YEARPRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,YEAR,A_ID,S_ID,P_ID,CREATED) 
VALUES (10,TRUE,2,1,'Videoclip Dance 1.0',1,'16:00:00',80.0,140.0,90,1,3,'2012',1,5,2,CURRENT_TIMESTAMP);
INSERT INTO COURSE(C_ID,ENABLED,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,SEMESTERPRICE,YEARPRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,YEAR,A_ID,S_ID,P_ID,CREATED) 
VALUES (11,TRUE,1,1,'Videoclip Dance 2.0',1,'16:00:00',80.0,140.0,90,1,3,'2012',1,5,2,CURRENT_TIMESTAMP);
INSERT INTO COURSE(C_ID,ENABLED,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,SEMESTERPRICE,YEARPRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,YEAR,A_ID,S_ID,P_ID,CREATED) 
VALUES (12,TRUE,1,1,'Videoclip Dance 3.0',1,'16:00:00',80.0,140.0,90,1,3,'2012',1,5,2,CURRENT_TIMESTAMP);

INSERT INTO COURSE_PARTICIPANT (C_ID,P_ID, DURATION,CREATED) VALUES (1,1,1,CURRENT_TIMESTAMP);
INSERT INTO COURSE_PARTICIPANT (C_ID,P_ID, DURATION,CREATED) VALUES (2,1,1,CURRENT_TIMESTAMP);
INSERT INTO COURSE_PARTICIPANT (C_ID,P_ID, DURATION,CREATED) VALUES (1,3,1,CURRENT_TIMESTAMP);


INSERT INTO PERFORMANCE (PER_ID, ENABLED,CREATED) VALUES (1, TRUE,CURRENT_TIMESTAMP);

INSERT INTO COURSE_PERFORMANCE (C_ID, PER_ID) VALUES (1,1);
INSERT INTO COURSE_PERFORMANCE (C_ID, PER_ID) VALUES (2,1);
INSERT INTO COURSE_PERFORMANCE (C_ID, PER_ID) VALUES (3,1);
INSERT INTO COURSE_PERFORMANCE (C_ID, PER_ID) VALUES (4,1);

