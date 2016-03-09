/**
 * @author LYES KHERBICHE
 */
/**
 * SQL Sqript 
 */

CREATE  TABLE USERS (
  USERNAME VARCHAR(45) NOT NULL ,
  PASSWORD VARCHAR(45) NOT NULL ,
  ENABLED TINYINT NOT NULL DEFAULT 1,
  PRIMARY KEY (USERNAME)
  );

CREATE TABLE USERROLE (
  USERROLEID int(11) NOT NULL AUTO_INCREMENT,
  USERNAME varchar(45) NOT NULL,
  ROLE varchar(45) NOT NULL,
  PRIMARY KEY (USERROLEID),
  UNIQUE KEY uni_username_role (ROLE,USERNAME),
  KEY fk_username_idx (USERNAME),
  CONSTRAINT fk_username FOREIGN KEY (USERNAME) REFERENCES USERS (USERNAME));

CREATE TABLE EVENT (
     eventName CHAR(45) NOT NULL,
     typeEvent CHAR(45) NOT NULL,
     dateEvent CHAR(10) NOT NULL,
     descEvent CHAR(45) NOT NULL,
     PRIMARY KEY (eventName)
);

CREATE TABLE AGEVENT (
     eventName CHAR(45) NOT NULL,
     PRIMARY KEY (eventName),
     CONSTRAINT FK_AGEVENT FOREIGN KEY (eventName) REFERENCES EVENT (eventName)
);

CREATE TABLE QUESTION (
     ID INT NOT NULL auto_increment,
     QUEST  VARCHAR(45) NOT NULL,
     TOWARD  INT,
     AGAINST INT,
     ABSTENTION INT,
     IDPOLL CHAR(45) default NULL,
     PRIMARY KEY (ID)
);

CREATE TABLE ADDRESS (
  ID INT NOT NULL auto_increment,
  NUMADRESS   VARCHAR(45) NOT NULL,
  TYPEADDRESS VARCHAR(45) NOT NULL,
  STREET      VARCHAR(45) NOT NULL,
  CITY        VARCHAR(45) NOT NULL,
  ZIPCODE     VARCHAR(45) NOT NULL,
  COUNTRY     VARCHAR(45) NOT NULL,
  PLACENAME   VARCHAR(45) NOT NULL,
  CONSTRAINT PK_ADDRESS PRIMARY KEY (ID)
);

CREATE TABLE LOT (
  ID INT NOT NULL auto_increment,
  NUM INT NOT NULL,
  TYPE  VARCHAR(45) NOT NULL,
  FLOOR INT NOT NULL,
  AREA DOUBLE NOT NULL,
  PART DOUBLE NOT NULL,
  IDC INT default NULL,
  CONSTRAINT PK_LOT PRIMARY KEY (ID)
);

CREATE TABLE CONDO (
   ID INT NOT NULL auto_increment,
   NAME   VARCHAR(45) NOT NULL,
   ADDRESS INT NOT NULL,
   AREA DOUBLE NOT NULL,
   CONSTRAINT PK_CONDO PRIMARY KEY (ID),
   CONSTRAINT FK_CONDO FOREIGN KEY (ADDRESS) REFERENCES ADDRESS (ID)
);

CREATE TABLE EVENTCONDO (
   IDEVENT CHAR(45) NOT NULL,
   IDCOND INT NOT NULL,
   PRIMARY KEY (IDEVENT,IDCOND)
);

CREATE TABLE USERDATA (
  ID int NOT NULL auto_increment,
  TYPE VARCHAR(45) NOT NULL,
  FIRSTNAME   VARCHAR(45),
  LASTNAME    VARCHAR(45),
  PHONE       VARCHAR(45),
  MOBILE      VARCHAR(45),
  EMAIL       VARCHAR(45),
  ADDRESS     INT NOT NULL,
  USERS VARCHAR(45) NOT NULL ,
  CONSTRAINT PK_USERDATA PRIMARY KEY (ID),
  CONSTRAINT FK_USERDATA_USERS FOREIGN KEY (USERS) REFERENCES USERS (USERNAME),
  CONSTRAINT FK_USERDATA_ADDRESS FOREIGN KEY (ADDRESS) REFERENCES ADDRESS (ID)
);

CREATE TABLE PARTOWNER(
  ID INT NOT NULL auto_increment,
  NUMBEROFLOT INT NOT NULL,
  CONSTRAINT PK_PARTOWNER PRIMARY KEY (ID),
  CONSTRAINT FK_PARTOWNER FOREIGN KEY (ID) REFERENCES USERDATA (ID)
);

CREATE TABLE POLLINGPARTOWNER (
  ID INT NOT NULL auto_increment,
  POLLINGID CHAR(45) default NULL,
  PARTOWNERID INT default NULL,
  ISPOLL boolean,
  CONSTRAINT PK_POLLINGPARTOWNER PRIMARY KEY (ID)
);

CREATE TABLE PROVIDER (
  ID INT NOT NULL auto_increment,
  NAMEPROVIDER VARCHAR(45) NOT NULL,
  DESCRIPTION VARCHAR(45),
  DATECREATION VARCHAR(45),
  CONSTRAINT PK_PROVIDER PRIMARY KEY (ID)
);

CREATE TABLE GARDIEN(
  ID INT NOT NULL auto_increment,
  JOURNEES VARCHAR(45) auto_incrementNOT NULL,
  HORAIRES VARCHAR(45) NOT NULL,
  TACHES VARCHAR(200) NOT NULL,
  USERDATA int not null,
  LOT int not null,
  CONSTRAINT PK_GARDIEN PRIMARY KEY (ID),
  CONSTRAINT FK_GARDIEN_USERDATA FOREIGN KEY (USERDATA) REFERENCES USERDATA(ID),
  CONSTRAINT FK_GARDIEN_LOT FOREIGN KEY (LOT) REFERENCES LOT(ID)
);

CREATE TABLE CONTRACT(
  ID INT NOT NULL,
  NAMECONTRACT VARCHAR(45) NOT NULL,
  DATECONTRACT VARCHAR(45) NOT NULL,
  PROVIDER INT NOT NULL,
  CONSTRAINT PK_CONTRACT PRIMARY KEY (ID),
  CONSTRAINT FK_CONTRACT_PROVIDER FOREIGN KEY (PROVIDER) REFERENCES PROVIDER (ID)
);

CREATE TABLE POLLING (
  ID CHAR(45) NOT NULL ,
  ISCLOSE boolean,
  CONSTRAINT PK_POLLING PRIMARY KEY (ID),
  CONSTRAINT FK_POLLING FOREIGN KEY (ID) REFERENCES AGEVENT (eventName)
);

CREATE TABLE MESSAGE (
  ID INT NOT NULL auto_increment,
  USERNAMEDESTINATAIRE VARCHAR(45) NOT NULL,
  USERNAMEEMETTEUR VARCHAR(45) NOT NULL,
  OBJECT VARCHAR(45),
  CONTENT TEXT,
  STATUT VARCHAR(45),
  CONSTRAINT PK_MESSAGE PRIMARY KEY (ID),
  CONSTRAINT FK_MESSAGE_USERS_D FOREIGN KEY (USERNAMEDESTINATAIRE) REFERENCES USERS (USERNAME),
  CONSTRAINT FK_MESSAGE_USERS_R FOREIGN KEY (USERNAMEEMETTEUR) REFERENCES USERS (USERNAME)
);




INSERT INTO USERS(username,password,enabled)
VALUES ('alex','123456', true);

INSERT INTO USERROLE (username, role)
VALUES ('alex', 'ROLE_USER');

INSERT INTO USERS(username,password,enabled)
VALUES ('lyes','lyes', true);

INSERT INTO USERROLE (username, role)
VALUES ('lyes', 'ROLE_ADMIN');