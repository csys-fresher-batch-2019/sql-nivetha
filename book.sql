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
insert into book(book_id,book_name,author_name,price,publisher,version,cate,active)values(92,'Twilight','steeves',500,'ravi',1,'romance',1);
insert into book(book_id,book_name,author_name,price,publisher,version,cate,active)values(93,'Twilight saga','chetan',600,'Jhon',2,'love',1);
select *from book;


create table orders(
order_id number not null,
user_name varchar2(50) not null,
book_id number not null,
order_date timestamp not null,
deliver_date timestamp not null,
total_amount number not null,
qty number not null,
status varchar2(50) not null,
comments varchar2(50) not null,
constraint order_id_pk primary key(order_id),
constraint book_id_fk foreign key(book_id) references book (book_id),
constraint sq_uq unique(user_name,book_id,order_date),
constraint total_amount_ck check( total_amount>=0),
constraint qty_ck check(qty>=1)
);

insert into orders(order_id,user_name,book_id,order_date,deliver_date,total_amount,qty,status,comments)values(1,'riya',92,timestamp '2019-12-27 11:50:10',
timestamp '2019-12-30 11:50:10',700,4,'ordered','available');
insert into orders(order_id,user_name,book_id,order_date,deliver_date,total_amount,qty,status,comments)values(2,'renu',93,timestamp '2019-12-28 11:50:10',
timestamp '2019-12-31 1:50:10',800,5,'delivered','sucessful');

select *from orders;


create table order_item(
item_id number not null,
or_id number not null,
bk_id number not null,
quantity number not null,
status varchar2(50),
constraint item_id_pk primary key (item_id),
constraint or_id_fk foreign key(or_id) references orders(order_id),
constraint bk_id_fk foreign key (bk_id) references book(book_id)
);
insert into order_item(item_id,or_id,bk_id,quantity,status)values(100,1,92,4,'ordered');
insert into order_item(item_id,or_id,bk_id,quantity,status)values(101,2,93,5,'ordered');

create table stock(
stock_id number not null,
bo_id number not null,
quan number not null,
constraint stock_id_pk primary key(stock_id),
constraint bo_id_fk foreign key(bo_id) references book(book_id)
);
insert into stock(stock_id,bo_id,quan)values(200,92,20);
insert into stock(stock_id,bo_id,quan)values(201,93,20);
select *from stock;

select book_name,
(select sum(quantity) from order_item where bk_id=b.book_id) as total_count
from book b;


select book_name,
(select sum(quan) from stock where bo_id=b.book_id) as total_count
from book b;

select book_name,
((select sum(quan) from stock where bo_id=b.book_id)-(select sum(quantity) from order_item where bk_id=b.book_id))
as ava_val
 select  book_name ,order_date  from book u inner join orders b on u.book_id=b.book_id;

select  author_name ,order_date  from book u left outer join orders b on u.book_id=b.book_id;

select  book_name ,order_date  from book u right outer join orders b on u.book_id=b.book_id;

select  book_name ,deliver_date  from book u full outer join orders b on u.book_id=b.book_id;
                                                     
                                                      
                                                      
from book b;
