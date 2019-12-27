create table book (
book_id number not null,
book_name varchar2(50) not null,
author_name varchar2(50) not null,
price number not null,
publisher varchar2(50) not null,
version number not null,
cate varchar2(50) not null,
active number default 1,
constraint book_id_pk primary key(book_id),
constraint sp_uq unique(book_name,author_name,version),
constraint price_ck check(price>=0)
);
insert into book(book_id,book_name,author_name,price,publisher,version,category,active)values(92,'Twilight','steeves',500,'ravi',1,'romance',1);


create table order(
order_id number not null,
user varchar2(50) not null,
book_id number not null,
order_date timestamp not null,
deliver_date timestamp not null,
total_amount number not null,
qty number not null,
status varchar2(50) not null,
comments varchar2(50) not null,
constraint order_id_pk primary key(order_id),
constraint book_id_fk foregin key(book_id) reference book(book_id),
constraint sq_uq unique(user,book_id,order_date),
constraint total_amount_ck check( total_amount>=0),
constraint qty_ck check(qty>=1)
);
insert into orders(order_id,user,book_id,order_date,deliver_date,total_amount,qty,status,comments)values(11,'riya',1,(timestamp'2019-12-27
11:50:10),(timestamp'2019-12-30 11:50:10),700,4,'order',available);

create table order_item(
item_id number not null,
or_id number not null,
bk_id number not null,
qty number not null,
status varchar2(50),
constraint item_id_pk primary key (item_id),
constraint book_id_fk foregin key(bk_id) reference book(book_id),
constraint order_id_fk foregin key (or_id) reference order(order_id)
);
insert into order_item(item_id,or_id,bk_id,quantity,status)values(100,11,,1,4,'ordered);

create table stock(
stock_id number not null;
bo_id number not null;
quan number not null;
constraint bo_id_fk foregin key(bo_id) reference book(book_id),
constraint stock_id_pk primary key (stock_id)
);
insert into stock(stock_id,bo_id,quan)values(200,92,20);




