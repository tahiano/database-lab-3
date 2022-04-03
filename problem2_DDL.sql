Create database LIBRARY
USE LIBRARY;

create table BOOK(
book_id int not null auto_increment,
title varchar(225) not null,
price DECIMAL(7,2) not null,
pub_id int ,
category_id int ,
PRIMARY KEY (book_id)
);
create table CATEGORY(
category_id int not null auto_increment,
name varchar(225) not null,
PRIMARY KEY (category_id)
);
create table PUBLISHER(
pub_id int not null auto_increment,
name varchar(225) not null,
address varchar(225) not null,
    PRIMARY KEY (pub_id)
);
create table MEMBER(
member_id int not null auto_increment,
name varchar(225) not null,
address varchar(225) not null,
join_date DATETIME not null,

PRIMARY KEY (member_id)
);
create table BORROWING_BOOK(
member_id int not null,
book_id int not null,
borrow_date DATETIME not null,
due_date DATETIME not null,
return_date DATETIME not null,
PRIMARY KEY (member_id,book_id,borrow_date),
FOREIGN KEY (book_id) REFERENCES BOOK(book_id) ON DELETE CASCADE,
FOREIGN KEY (member_id) REFERENCES MEMBER(member_id) ON DELETE CASCADE
);


ALTER TABLE BOOK ADD FOREIGN KEY (pub_id) REFERENCES PUBLISHER(pub_id) ON DELETE SET NULL;
ALTER TABLE BOOK ADD FOREIGN KEY (category_id) REFERENCES CATEGORY(category_id) ON DELETE CASCADE;
