INSERT INTO ADDRESS (A_ID,ENABLED,CITY,NUMBER,STREET,ZIP, CREATED) VALUES (1,TRUE,'WIEN',125,'Waehringerstrasse','1180', CURRENT_TIMESTAMP);
INSERT INTO ADDRESS (A_ID,ENABLED,CITY,NUMBER,STREET,ZIP, CREATED) VALUES (2,TRUE,'WIEN',5,'Plenergasse','1180', CURRENT_TIMESTAMP);
INSERT INTO ADDRESS (A_ID,ENABLED,CITY,DOOR,NUMBER,STAIR,STREET,ZIP, CREATED) VALUES (3,TRUE,'WIEN',8,1,5,'Gumpendorferstrasse','1160', CURRENT_TIMESTAMP);
INSERT INTO ADDRESS (A_ID,ENABLED,CITY,DOOR,NUMBER,STAIR,STREET,ZIP, CREATED) VALUES (4,TRUE,'WIEN',8,1,5,'Gumpendorferstrasse','1160', CURRENT_TIMESTAMP);
INSERT INTO ADDRESS (A_ID,ENABLED,CITY,DOOR,NUMBER,STAIR,STREET,ZIP, CREATED) VALUES (5,TRUE,'WIEN',8,1,5,'Gumpendorferstrasse','1160', CURRENT_TIMESTAMP);
INSERT INTO ADDRESS (A_ID,ENABLED,CITY,DOOR,NUMBER,STAIR,STREET,ZIP, CREATED) VALUES (6,TRUE,'WIEN',2,18,1,'Taubstummengasse','1040', CURRENT_TIMESTAMP);
INSERT INTO ADDRESS (A_ID,ENABLED,CITY,DOOR,NUMBER,STAIR,STREET,ZIP, CREATED) VALUES (7,TRUE,'WIEN',4,15,3,'Favoritenstrasse','1040', CURRENT_TIMESTAMP);
INSERT INTO ADDRESS (A_ID,ENABLED,CITY,DOOR,NUMBER,STAIR,STREET,ZIP, CREATED) VALUES (8,TRUE,'WIEN',6,2,10,'Seidlstrasse','1030', CURRENT_TIMESTAMP);
INSERT INTO ADDRESS (A_ID,ENABLED,CITY,DOOR,NUMBER,STAIR,STREET,ZIP, CREATED) VALUES (9,TRUE,'WIEN',3,5,7,'Alserstrasse','1080', CURRENT_TIMESTAMP);
INSERT INTO ADDRESS (A_ID,ENABLED,CITY,DOOR,NUMBER,STAIR,STREET,ZIP, CREATED) VALUES (10,TRUE,'WIEN',10,2,8,'Thaliastrasse','1150', CURRENT_TIMESTAMP);
INSERT INTO ADDRESS (A_ID,ENABLED,CITY,DOOR,NUMBER,STAIR,STREET,ZIP, CREATED) VALUES (11,TRUE,'WIEN',3,17,2,'Meidlinger Haupstrasse','1120', CURRENT_TIMESTAMP);

INSERT INTO STYLE (S_ID,NAME,ENABLED, CREATED) VALUES (1,'Breakdance',TRUE, CURRENT_TIMESTAMP);
INSERT INTO STYLE (S_ID,NAME,ENABLED, CREATED) VALUES (2,'Step',TRUE, CURRENT_TIMESTAMP);
INSERT INTO STYLE (S_ID,NAME,ENABLED, CREATED) VALUES (3,'Ballet',TRUE, CURRENT_TIMESTAMP);
INSERT INTO STYLE (S_ID,NAME,ENABLED, CREATED) VALUES (4,'Hip Hop',TRUE, CURRENT_TIMESTAMP);
INSERT INTO STYLE (S_ID,NAME,ENABLED, CREATED) VALUES (5,'Videoclipdancing',TRUE, CURRENT_TIMESTAMP);
INSERT INTO STYLE (S_ID,NAME,ENABLED, CREATED) VALUES (6,'Musical',TRUE, CURRENT_TIMESTAMP);
INSERT INTO STYLE (S_ID,NAME,ENABLED, CREATED) VALUES (7,'Jazz',TRUE, CURRENT_TIMESTAMP);
INSERT INTO STYLE (S_ID,NAME,ENABLED, CREATED) VALUES (8,'Dance Mix',TRUE, CURRENT_TIMESTAMP);

INSERT INTO PERSON (P_ID,ENABLED,BIRTHDAY,EMAIL,FIRSTNAME,LASTNAME,PASSWORD,TELEPHONE,A_ID, CREATED) 
VALUES (1,TRUE,'1996-05-07','franz@mail.com','Franz','Mayer','ca92ddbb320e5ba3d78ff898445ab385298bb69fd7129e1c05bf30f48e407821ebc2ee3ae372047b',06801111111,6,CURRENT_TIMESTAMP);
INSERT INTO PARTICIPANT (P_ID,CONTACTPERSON,EMERGENCYNUMBER) VALUES (1,'EvelynMayer','06805646758');
INSERT INTO PERSON (P_ID,ENABLED,BIRTHDAY,EMAIL,FIRSTNAME,LASTNAME,PASSWORD,TELEPHONE,A_ID, CREATED) 
VALUES (3,TRUE,'1998-04-07','miriam@mail.com','Miriam','Gruber','ca92ddbb320e5ba3d78ff898445ab385298bb69fd7129e1c05bf30f48e407821ebc2ee3ae372047b',06801111111,7,CURRENT_TIMESTAMP);
INSERT INTO PARTICIPANT (P_ID,CONTACTPERSON,EMERGENCYNUMBER) VALUES (3,'RichardGruber','06805646758');
INSERT INTO PERSON (P_ID,ENABLED,BIRTHDAY,EMAIL,FIRSTNAME,LASTNAME,PASSWORD,TELEPHONE,A_ID, CREATED) 
VALUES (4,TRUE,'1994-08-07','marika@mail.com','Marika','Gruber','ca92ddbb320e5ba3d78ff898445ab385298bb69fd7129e1c05bf30f48e407821ebc2ee3ae372047b',06801111111,4,CURRENT_TIMESTAMP);
INSERT INTO PARTICIPANT (P_ID,CONTACTPERSON,EMERGENCYNUMBER) VALUES (4,'RichardGruber','06805646758');
INSERT INTO PERSON (P_ID,ENABLED,BIRTHDAY,EMAIL,FIRSTNAME,LASTNAME,PASSWORD,TELEPHONE,A_ID, CREATED) 
VALUES (5,TRUE,'1988-01-09','josef@mail.com','Josef','Gruber','ca92ddbb320e5ba3d78ff898445ab385298bb69fd7129e1c05bf30f48e407821ebc2ee3ae372047b',06801111111,5,CURRENT_TIMESTAMP);
INSERT INTO PARTICIPANT (P_ID,CONTACTPERSON,EMERGENCYNUMBER) VALUES (5,'RichardGruber','06805646758');
INSERT INTO PERSON (P_ID,ENABLED,BIRTHDAY,EMAIL,FIRSTNAME,LASTNAME,PASSWORD,TELEPHONE,A_ID, CREATED) 
VALUES (8,TRUE,'2001-03-29','alexandra@mail.com','Alexandra','Schulz','ca92ddbb320e5ba3d78ff898445ab385298bb69fd7129e1c05bf30f48e407821ebc2ee3ae372047b',06801111111,8,CURRENT_TIMESTAMP);
INSERT INTO PARTICIPANT (P_ID,CONTACTPERSON,EMERGENCYNUMBER) VALUES (8,'EvelynMayer','06805646758');
INSERT INTO PERSON (P_ID,ENABLED,BIRTHDAY,EMAIL,FIRSTNAME,LASTNAME,PASSWORD,TELEPHONE,A_ID, CREATED) 
VALUES (9,TRUE,'2003-05-10','philipp@mail.com','Philipp','Schwab','ca92ddbb320e5ba3d78ff898445ab385298bb69fd7129e1c05bf30f48e407821ebc2ee3ae372047b',06801111111,9,CURRENT_TIMESTAMP);
INSERT INTO PARTICIPANT (P_ID,CONTACTPERSON,EMERGENCYNUMBER) VALUES (9,'RichardGruber','06805646758');
INSERT INTO PERSON (P_ID,ENABLED,BIRTHDAY,EMAIL,FIRSTNAME,LASTNAME,PASSWORD,TELEPHONE,A_ID, CREATED) 
VALUES (10,TRUE,'1996-05-06','laura@mail.com','Laura','Klein','ca92ddbb320e5ba3d78ff898445ab385298bb69fd7129e1c05bf30f48e407821ebc2ee3ae372047b',06801111111,10,CURRENT_TIMESTAMP);
INSERT INTO PARTICIPANT (P_ID,CONTACTPERSON,EMERGENCYNUMBER) VALUES (10,'RichardGruber','06805646758');
INSERT INTO PERSON (P_ID,ENABLED,BIRTHDAY,EMAIL,FIRSTNAME,LASTNAME,PASSWORD,TELEPHONE,A_ID, CREATED) 
VALUES (11,TRUE,'1993-01-12','katharina@mail.com','Katharina','Ulm','ca92ddbb320e5ba3d78ff898445ab385298bb69fd7129e1c05bf30f48e407821ebc2ee3ae372047b',06801111111,11,CURRENT_TIMESTAMP);
INSERT INTO PARTICIPANT (P_ID,CONTACTPERSON,EMERGENCYNUMBER) VALUES (11,'RichardGruber','06805646758');

INSERT INTO PARTICIPANT_SIBLING (P_ID, P_ID_REVERSE) VALUES (3, 4);
INSERT INTO PARTICIPANT_SIBLING (P_ID, P_ID_REVERSE) VALUES (5, 4);
INSERT INTO PARTICIPANT_SIBLING (P_ID, P_ID_REVERSE) VALUES (3, 5);

INSERT INTO PERSON (P_ID,ENABLED,BIRTHDAY,EMAIL,FIRSTNAME,LASTNAME,PASSWORD,TELEPHONE,A_ID,CREATED) 
VALUES (2,TRUE,'1960-04-03','claudia@mail.com','Claudia','Bacher','ca92ddbb320e5ba3d78ff898445ab385298bb69fd7129e1c05bf30f48e407821ebc2ee3ae372047b',06801111111,3,CURRENT_TIMESTAMP);
INSERT INTO TEACHER (SALARY,SVNR,P_ID) VALUES (400,1234567890,2);

INSERT INTO PERSON (P_ID,ENABLED,BIRTHDAY,EMAIL,FIRSTNAME,LASTNAME,PASSWORD,TELEPHONE,A_ID,CREATED) 
VALUES (6,TRUE,'1988-01-09','admin@mail.com','Elisabeth','Padalewski','ca92ddbb320e5ba3d78ff898445ab385298bb69fd7129e1c05bf30f48e407821ebc2ee3ae372047b',06801111121,1,CURRENT_TIMESTAMP);
INSERT INTO ADMIN (P_ID) VALUES (6);


INSERT INTO PERSON (P_ID,ENABLED,BIRTHDAY,EMAIL,FIRSTNAME,LASTNAME,PASSWORD,TELEPHONE,A_ID,CREATED) 
VALUES (7,TRUE,'1988-01-09','julia@mail.com','Julia','Franzelin','ca92ddbb320e5ba3d78ff898445ab385298bb69fd7129e1c05bf30f48e407821ebc2ee3ae372047b',06801111121,5,CURRENT_TIMESTAMP);
INSERT INTO TEACHER (P_ID, SVNR, SALARY) VALUES (7, '11231-123123-1232', 120);

INSERT INTO STYLE_TEACHER (S_ID,P_ID) VALUES (1,2);
INSERT INTO STYLE_TEACHER (S_ID,P_ID) VALUES (2,2);
INSERT INTO STYLE_TEACHER (S_ID,P_ID) VALUES (3,7);

--Studio 1
INSERT INTO COURSE(C_ID,ENABLED,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,SEMESTERPRICE,YEARPRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,YEAR,A_ID,S_ID,P_ID,CREATED) 
VALUES (1,TRUE,0,1,'Ballett 1A MO',0,'15:15:00',50.0,90.0,50,1,0,2013,1,3,2,CURRENT_TIMESTAMP);
INSERT INTO COURSE(C_ID,ENABLED,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,SEMESTERPRICE,YEARPRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,YEAR,A_ID,S_ID,P_ID,CREATED)  
VALUES (2,TRUE,0,1,'Ballett 1 MO',0,'16:05:00',50.0,90.0,50,2,0,2013,1,3,2,CURRENT_TIMESTAMP);
INSERT INTO COURSE(C_ID,ENABLED,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,SEMESTERPRICE,YEARPRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,YEAR,A_ID,S_ID,P_ID,CREATED)  
VALUES (3,TRUE,0,1,'Ballett 3 MO',0,'16:55:00',50.0,90.0,50,1,0,2013,1,3,2,CURRENT_TIMESTAMP);
INSERT INTO COURSE(C_ID,ENABLED,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,SEMESTERPRICE,YEARPRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,YEAR,A_ID,S_ID,P_ID,CREATED)  
VALUES (4,TRUE,1,2,'Breakdance 2',1,'17:45:00',50.0,90.0,75,0,0,2013,1,1,2,CURRENT_TIMESTAMP);
INSERT INTO COURSE(C_ID,ENABLED,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,SEMESTERPRICE,YEARPRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,YEAR,A_ID,S_ID,P_ID,CREATED)  
VALUES (5,TRUE,2,3,'Step Fortg.',0,'19:00:00',50.0,90.0,100,0,0,2013,1,2,2,CURRENT_TIMESTAMP);
INSERT INTO COURSE(C_ID,ENABLED,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,SEMESTERPRICE,YEARPRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,YEAR,A_ID,S_ID,P_ID,CREATED)  
VALUES (6,TRUE,0,1,'Ballett 2 DI',0,'15:00:00',50.0,90.0,50,2,1,2013,1,3,2,CURRENT_TIMESTAMP);
INSERT INTO COURSE(C_ID,ENABLED,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,SEMESTERPRICE,YEARPRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,YEAR,A_ID,S_ID,P_ID,CREATED)  
VALUES (7,TRUE,0,1,'Ballett 1A DI',0,'15:50:00',50.0,90.0,50,2,1,2013,1,3,2,CURRENT_TIMESTAMP);
INSERT INTO COURSE(C_ID,ENABLED,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,SEMESTERPRICE,YEARPRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,YEAR,A_ID,S_ID,P_ID,CREATED)  
VALUES (8,TRUE,1,1,'Ballett 4',0,'16:40:00',50.0,90.0,50,0,1,2013,1,3,2,CURRENT_TIMESTAMP);
INSERT INTO COURSE(C_ID,ENABLED,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,SEMESTERPRICE,YEARPRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,YEAR,A_ID,S_ID,P_ID,CREATED)  
VALUES (9,TRUE,1,2,'Videoclipdancing 1',0,'17:30:00',50.0,90.0,75,0,1,2013,1,5,2,CURRENT_TIMESTAMP);
INSERT INTO COURSE(C_ID,ENABLED,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,SEMESTERPRICE,YEARPRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,YEAR,A_ID,S_ID,P_ID,CREATED)  
VALUES (10,TRUE,2,2,'Ballett Fortg. 2',1,'18:45:00',50.0,90.0,75,0,1,2013,1,3,2,CURRENT_TIMESTAMP);
INSERT INTO COURSE(C_ID,ENABLED,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,SEMESTERPRICE,YEARPRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,YEAR,A_ID,S_ID,P_ID,CREATED)  
VALUES (11,TRUE,0,1,'Ballett Vorb. 1',0,'15:00:00',50.0,90.0,50,2,2,2013,1,3,2,CURRENT_TIMESTAMP);
INSERT INTO COURSE(C_ID,ENABLED,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,SEMESTERPRICE,YEARPRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,YEAR,A_ID,S_ID,P_ID,CREATED)  
VALUES (12,TRUE,0,1,'Ballett 1 MI',0,'15:50:00',50.0,90.0,50,2,2,2013,1,3,2,CURRENT_TIMESTAMP);
INSERT INTO COURSE(C_ID,ENABLED,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,SEMESTERPRICE,YEARPRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,YEAR,A_ID,S_ID,P_ID,CREATED)  
VALUES (13,TRUE,0,1,'Ballett 2 MI',0,'16:40:00',50.0,90.0,50,1,2,2013,1,3,2,CURRENT_TIMESTAMP);
INSERT INTO COURSE(C_ID,ENABLED,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,SEMESTERPRICE,YEARPRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,YEAR,A_ID,S_ID,P_ID,CREATED)  
VALUES (14,TRUE,1,1,'Ballett Fortg. 1',1,'17:30:00',50.0,90.0,75,0,2,2013,1,3,2,CURRENT_TIMESTAMP);
INSERT INTO COURSE(C_ID,ENABLED,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,SEMESTERPRICE,YEARPRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,YEAR,A_ID,S_ID,P_ID,CREATED)  
VALUES (15,TRUE,2,3,'Videoclipdancing 2',2,'18:45:00',50.0,90.0,75,0,2,2013,1,5,2,CURRENT_TIMESTAMP);
INSERT INTO COURSE(C_ID,ENABLED,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,SEMESTERPRICE,YEARPRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,YEAR,A_ID,S_ID,P_ID,CREATED)  
VALUES (16,TRUE,1,1,'Ballett 3 DO',0,'15:20:00',50.0,90.0,50,1,3,2013,1,3,2,CURRENT_TIMESTAMP);
INSERT INTO COURSE(C_ID,ENABLED,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,SEMESTERPRICE,YEARPRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,YEAR,A_ID,S_ID,P_ID,CREATED)  
VALUES (17,TRUE,0,1,'Ballett Vorb 2.',0,'16:10:00',50.0,90.0,50,2,3,2013,1,3,2,CURRENT_TIMESTAMP);
INSERT INTO COURSE(C_ID,ENABLED,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,SEMESTERPRICE,YEARPRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,YEAR,A_ID,S_ID,P_ID,CREATED)  
VALUES (18,TRUE,1,1,'Ballett Fortg. 1A',1,'17:00:00',50.0,90.0,75,2,3,2013,1,3,2,CURRENT_TIMESTAMP);
INSERT INTO COURSE(C_ID,ENABLED,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,SEMESTERPRICE,YEARPRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,YEAR,A_ID,S_ID,P_ID,CREATED)  
VALUES (19,TRUE,2,1,'Step 1 American',0,'18:15:00',50.0,90.0,50,0,3,2013,1,2,2,CURRENT_TIMESTAMP);
INSERT INTO COURSE(C_ID,ENABLED,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,SEMESTERPRICE,YEARPRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,YEAR,A_ID,S_ID,P_ID,CREATED)  
VALUES (20,TRUE,2,3,'Ballett Fortg. 3',2,'19:05:00',50.0,90.0,75,0,3,2013,1,3,2,CURRENT_TIMESTAMP);
INSERT INTO COURSE(C_ID,ENABLED,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,SEMESTERPRICE,YEARPRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,YEAR,A_ID,S_ID,P_ID,CREATED)  
VALUES (21,TRUE,0,1,'Step Kids 1',0,'15:00:00',50.0,90.0,50,0,4,2013,1,2,2,CURRENT_TIMESTAMP);
INSERT INTO COURSE(C_ID,ENABLED,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,SEMESTERPRICE,YEARPRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,YEAR,A_ID,S_ID,P_ID,CREATED)  
VALUES (22,TRUE,0,1,'Step Kids 2',0,'15:50:00',50.0,90.0,50,1,4,2013,1,2,2,CURRENT_TIMESTAMP);
INSERT INTO COURSE(C_ID,ENABLED,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,SEMESTERPRICE,YEARPRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,YEAR,A_ID,S_ID,P_ID,CREATED)  
VALUES (23,TRUE,1,2,'Step Kids 3',1,'16:45:00',50.0,90.0,50,1,4,2013,1,2,2,CURRENT_TIMESTAMP);
INSERT INTO COURSE(C_ID,ENABLED,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,SEMESTERPRICE,YEARPRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,YEAR,A_ID,S_ID,P_ID,CREATED)  
VALUES (24,TRUE,2,3,'Rhythm Tap Fortg.',2,'17:35:00',50.0,90.0,50,0,4,2013,1,2,2,CURRENT_TIMESTAMP);

--Studio 2
INSERT INTO COURSE(C_ID,ENABLED,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,SEMESTERPRICE,YEARPRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,YEAR,A_ID,S_ID,P_ID,CREATED)  
VALUES (25,TRUE,0,1,'Hip Hop Kids',0,'15:40:00',50.0,90.0,50,1,0,2013,2,4,2,CURRENT_TIMESTAMP);
INSERT INTO COURSE(C_ID,ENABLED,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,SEMESTERPRICE,YEARPRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,YEAR,A_ID,S_ID,P_ID,CREATED)  
VALUES (26,TRUE,1,1,'Urban Hip Hop',0,'16:30:00',50.0,90.0,75,1,0,2013,2,4,2,CURRENT_TIMESTAMP);
INSERT INTO COURSE(C_ID,ENABLED,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,SEMESTERPRICE,YEARPRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,YEAR,A_ID,S_ID,P_ID,CREATED)  
VALUES (27,TRUE,1,2,'Videoclipdancing/ Hip Hop 2',1,'17:45:00',50.0,90.0,75,1,0,2013,2,5,2,CURRENT_TIMESTAMP);
INSERT INTO COURSE(C_ID,ENABLED,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,SEMESTERPRICE,YEARPRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,YEAR,A_ID,S_ID,P_ID,CREATED)  
VALUES (28,TRUE,2,3,'Hip Hop Fortg.',2,'19:00:00',50.0,90.0,75,0,0,2013,2,4,2,CURRENT_TIMESTAMP);
INSERT INTO COURSE(C_ID,ENABLED,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,SEMESTERPRICE,YEARPRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,YEAR,A_ID,S_ID,P_ID,CREATED)  
VALUES (29,TRUE,0,1,'Kiddy Jazz',0,'16:00:00',50.0,90.0,50,1,1,2013,2,7,2,CURRENT_TIMESTAMP);
INSERT INTO COURSE(C_ID,ENABLED,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,SEMESTERPRICE,YEARPRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,YEAR,A_ID,S_ID,P_ID,CREATED)  
VALUES (30,TRUE,0,1,'Videoclipdancing Kids 1A',0,'16:50:00',50.0,90.0,50,2,1,2013,2,5,2,CURRENT_TIMESTAMP);
INSERT INTO COURSE(C_ID,ENABLED,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,SEMESTERPRICE,YEARPRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,YEAR,A_ID,S_ID,P_ID,CREATED)  
VALUES (31,TRUE,1,1,'Hip Hop Mix Fortg. 1',0,'17:40:00',50.0,90.0,75,1,1,2013,2,4,2,CURRENT_TIMESTAMP);
INSERT INTO COURSE(C_ID,ENABLED,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,SEMESTERPRICE,YEARPRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,YEAR,A_ID,S_ID,P_ID,CREATED)  
VALUES (32,TRUE,0,1,'Musical 1A',0,'15:00:00',50.0,90.0,75,1,2,2013,2,6,2,CURRENT_TIMESTAMP);
INSERT INTO COURSE(C_ID,ENABLED,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,SEMESTERPRICE,YEARPRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,YEAR,A_ID,S_ID,P_ID,CREATED)  
VALUES (33,TRUE,1,2,'Videoclipdancing Kids Fortg.',1,'16:15:00',50.0,90.0,75,1,2,2013,2,5,2,CURRENT_TIMESTAMP);
INSERT INTO COURSE(C_ID,ENABLED,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,SEMESTERPRICE,YEARPRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,YEAR,A_ID,S_ID,P_ID,CREATED)  
VALUES (34,TRUE,0,1,'Breakdance 1',0,'17:30:00',50.0,90.0,75,0,2,2013,2,1,2,CURRENT_TIMESTAMP);
INSERT INTO COURSE(C_ID,ENABLED,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,SEMESTERPRICE,YEARPRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,YEAR,A_ID,S_ID,P_ID,CREATED)  
VALUES (35,TRUE,2,3,'Hip Hop Funky New Style',2,'18:45:00',50.0,90.0,75,0,2,2013,2,4,2,CURRENT_TIMESTAMP);
INSERT INTO COURSE(C_ID,ENABLED,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,SEMESTERPRICE,YEARPRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,YEAR,A_ID,S_ID,P_ID,CREATED)  
VALUES (36,TRUE,1,1,'Videoclipdancing Fortg. 1A',0,'15:30:00',50.0,90.0,75,1,3,2013,2,5,2,CURRENT_TIMESTAMP);
INSERT INTO COURSE(C_ID,ENABLED,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,SEMESTERPRICE,YEARPRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,YEAR,A_ID,S_ID,P_ID,CREATED)  
VALUES (37,TRUE,2,1,'Hip Hop Mix Fortg. 2',0,'16:45:00',50.0,90.0,75,1,3,2013,2,4,2,CURRENT_TIMESTAMP);
INSERT INTO COURSE(C_ID,ENABLED,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,SEMESTERPRICE,YEARPRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,YEAR,A_ID,S_ID,P_ID,CREATED)  
VALUES (38,TRUE,2,2,'Videoclipdancing Jugendl. Fortg.',1,'18:00:00',50.0,90.0,75,0,3,2013,2,5,2,CURRENT_TIMESTAMP);
INSERT INTO COURSE(C_ID,ENABLED,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,SEMESTERPRICE,YEARPRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,YEAR,A_ID,S_ID,P_ID,CREATED)  
VALUES (39,TRUE,1,2,'Musical Fortg.',2,'15:00:00',50.0,90.0,75,1,4,2013,2,6,2,CURRENT_TIMESTAMP);
--INSERT INTO COURSE(C_ID,ENABLED,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,SEMESTERPRICE,YEARPRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,YEAR,A_ID,S_ID,P_ID,CREATED)  
--VALUES (40,TRUE,2,3,'Dance Mix Fortg. 1',2,'16:15:00',50.0,90.0,75,1,4,2013,2,8,2,CURRENT_TIMESTAMP);
--INSERT INTO COURSE(C_ID,ENABLED,AGEGROUP,AMOUNT_PERFORMANCES,NAME,LEVEL,TIME,SEMESTERPRICE,YEARPRICE,DURATION,ESTIMATED_SPECTATORS,WEEKDAY,YEAR,A_ID,S_ID,P_ID,CREATED)  
--VALUES (41,TRUE,2,3,'Dance Mix Fortg. 2',2,'17:30:00',50.0,90.0,75,1,4,2013,2,8,2,CURRENT_TIMESTAMP);

INSERT INTO COURSE_PARTICIPANT (P_ID,C_ID, DURATION,CREATED, ENABLED) VALUES (1,1,1,CURRENT_TIMESTAMP,TRUE);
INSERT INTO COURSE_PARTICIPANT (P_ID,C_ID, DURATION,CREATED, ENABLED) VALUES (1,29,1,CURRENT_TIMESTAMP,TRUE);
INSERT INTO COURSE_PARTICIPANT (P_ID,C_ID, DURATION,CREATED, ENABLED) VALUES (3,1,1,CURRENT_TIMESTAMP,TRUE);
INSERT INTO COURSE_PARTICIPANT (P_ID,C_ID, DURATION,CREATED, ENABLED) VALUES (4,4,1,CURRENT_TIMESTAMP,TRUE);
INSERT INTO COURSE_PARTICIPANT (P_ID,C_ID, DURATION,CREATED, ENABLED) VALUES (5,24,1,CURRENT_TIMESTAMP,TRUE);
--INSERT INTO COURSE_PARTICIPANT (P_ID,C_ID, DURATION,CREATED, ENABLED) VALUES (5,40,1,CURRENT_TIMESTAMP,TRUE);
INSERT INTO COURSE_PARTICIPANT (P_ID,C_ID, DURATION,CREATED, ENABLED) VALUES (8,12,1,CURRENT_TIMESTAMP,TRUE);
INSERT INTO COURSE_PARTICIPANT (P_ID,C_ID, DURATION,CREATED, ENABLED) VALUES (9,13,1,CURRENT_TIMESTAMP,TRUE);
INSERT INTO COURSE_PARTICIPANT (P_ID,C_ID, DURATION,CREATED, ENABLED) VALUES (10,20,1,CURRENT_TIMESTAMP,TRUE);
INSERT INTO COURSE_PARTICIPANT (P_ID,C_ID, DURATION,CREATED, ENABLED) VALUES (11,16,1,CURRENT_TIMESTAMP,TRUE);


INSERT INTO PERFORMANCE (PER_ID, ENABLED,CREATED) VALUES (1, TRUE,CURRENT_TIMESTAMP);

INSERT INTO COURSE_PERFORMANCE (C_ID, PER_ID) VALUES (1,1);
INSERT INTO COURSE_PERFORMANCE (C_ID, PER_ID) VALUES (2,1);
INSERT INTO COURSE_PERFORMANCE (C_ID, PER_ID) VALUES (3,1);
INSERT INTO COURSE_PERFORMANCE (C_ID, PER_ID) VALUES (4,1);
