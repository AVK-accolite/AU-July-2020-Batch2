CREATE DATABASE HMS;
USE HMS;
CREATE TABLE DOCTOR(
   DID   INT              NOT NULL,
   DNAME VARCHAR (20)     NOT NULL,
   DAGE  INT              NOT NULL,
   DADDRESS  VARCHAR (50) ,
   DSALARY   INT,
   DEPID INT,
   HID INT,
   PRIMARY KEY (DID)
);

CREATE TABLE HOSPITAL(
   HID   INT              NOT NULL,
   HNAME VARCHAR (20)     NOT NULL,
   HADDRESS  VARCHAR (50) ,
   PRIMARY KEY (HID)
);
CREATE TABLE PATIENT(
   PID   INT              NOT NULL,
   PNAME VARCHAR (20)     NOT NULL,
   PAGE  INT              NOT NULL,
   PGENDER VARCHAR(20),
   PADDRESS  VARCHAR (50) ,
   DID   INT,
   DOA DATE,
   DOD DATE,
   PRIMARY KEY (PID)
);

CREATE TABLE DEPARTMENT(
   DEPID   INT              NOT NULL,
   DEPNAME VARCHAR (20)     NOT NULL,
   PRIMARY KEY (DEPID)
);

------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO DOCTOR VALUES(1,'PRIYA',30,'XYZ','100000',1,1);
INSERT INTO DOCTOR VALUES(2,'PRIYANKA',32,'ABC','100000',2,1);
INSERT INTO DOCTOR VALUES(3,'RAHUL',30,'DASD','100000',2,1);
INSERT INTO DOCTOR VALUES(4,'JACK',40,'FGH','100000',1,1);
INSERT INTO HOSPITAL VALUES(1,'GEMS','SKLM');
INSERT INTO DEPARTMENT VALUES(1,'ANATOMY');
INSERT INTO DEPARTMENT VALUES(2,'PHYSIOLOGY');
INSERT INTO PATIENT VALUES(1,'A',25,'MALE','ABCD',1,STR_TO_DATE('5-8-2020', '%d-%m-%Y'),STR_TO_DATE('14-8-2020', '%d-%m-%Y'));
INSERT INTO PATIENT VALUES(2,'B',25,'MALE','ABCD',2,STR_TO_DATE('5-8-2020', '%d-%m-%Y'),STR_TO_DATE('10-8-2020', '%d-%m-%Y'));
INSERT INTO PATIENT VALUES(3,'C',25,'feMALE','ABCD',1,STR_TO_DATE('7-8-2020', '%d-%m-%Y'),STR_TO_DATE('14-8-2020', '%d-%m-%Y'));
INSERT INTO PATIENT VALUES(4,'D',25,'feMALE','ABCD',3,STR_TO_DATE('5-8-2020', '%d-%m-%Y'),STR_TO_DATE('11-8-2020', '%d-%m-%Y'));

----------------------------------------------------------------------------------------------------------------------------------------------

SELECT D.DNAME,DEP.DEPNAME,COUNT(P.PNAME) FROM  PATIENT P RIGHT JOIN DOCTOR D ON P.DID=D.DID JOIN DEPARTMENT DEP ON  D.DEPID=DEP.DEPID GROUP BY DNAME,DEPNAME;

----------------------------------------------------------------------------------------------------------------------------------------------

select DOD,COUNT(PNAME) from  PATIENT where DOD BETWEEN '2020-08-07' and '2020-08-14' GROUP BY DOD;