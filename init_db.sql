	CREATE TABLE WORKER (
ID INT PRIMARY KEY, 
NAME VARCHAR(1000) NOT  NULL, 
BIRTHDAY DATE, 
LEVEL Varchar, 
SALARY int);

CREATE TABLE CLIENT (
ID INT PRIMARY KEY, NAME VARCHAR (1000) NOT NULL);

CREATE TABLE PROJECT(
ID INT PRIMARY KEY, 
CLIENT_ID INT,
START_DATE DATE,
FINISH_DATE DATE
);

CREATE TABLE PROJECT_WORKER(
PROJECT_ID INT, 
WORKER_ID INT,
FOREIGN KEY (PROJECT_ID) REFERENCES project(id),
FOREIGN KEY (WORKER_ID) REFERENCES worker(id),
PRIMARY KEY (PROJECT_ID, WORKER_ID)
);
