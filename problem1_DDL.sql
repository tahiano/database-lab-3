create database company
Use company;
create table EMPLOYEE(
ssn char(10) not null,
fname varchar(225) not null,
lname varchar(225) not null,
bdate date not null ,
address varchar(225) not null,
gender char not null,
salary decimal(7,2) not null,
Dno int not null,
PRIMARY KEY (ssn)
);
create table DEPARTMENT(
Dnumber int not null,
Dname varchar(225) not null,
mgr_ssn char(10) not null,
mgr_start_date date not null ,
PRIMARY KEY (Dnumber)
);
create table PROJECT(
Pnumber int not null,
Pname varchar(225) not null,
Plocation varchar(225) not null,
Dno int not null,
PRIMARY KEY (Pnumber)
);

ALTER TABLE EMPLOYEE ADD FOREIGN KEY (dno) REFERENCES DEPARTMENT(dnumber);
ALTER TABLE DEPARTMENT ADD FOREIGN KEY (mgr_ssn) REFERENCES EMPLOYEE(ssn);
ALTER TABLE PROJECT ADD FOREIGN KEY (dno) REFERENCES DEPARTMENT(dnumber);