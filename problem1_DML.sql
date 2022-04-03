INSERT INTO DEPARTMENT(Dnumber,Dname,mgr_ssn,mgr_start_date) VALUES
(1,'computer','100','2010-11-11'),
(2,'construction','120','2015-02-25'),
(3,'electronics','140','2016-12-18');

INSERT INTO EMPLOYEE (ssn, fname ,lname,bdate,address,gender,salary,Dno) VALUES
('100','ahmed','elselmy','2000-11-13','mortada','M',10000,1),
('120','ziad','ahmed','1999-09-20','gleem','M',15000,2),
('140','adam','ashraf','2000-04-15','smouha','M',16000,3);



INSERT INTO PROJECT(Pnumber,Pname,Plocation,Dno) VALUES
(10,'robot','basement',1),
(2,'street','first floor',2),
(7,'logic','second floor',3);