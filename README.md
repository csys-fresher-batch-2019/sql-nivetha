# Online room booking 

*http://roombooking.in

## Features 

 *Viewers can view the rooms in hotel.
 
### Feature 1:List of all hotel name
```sql
create table hotel(
hotel_id number not null,
hotel_name varchar2(100) not null,
loaction varchar2(100) not null,
rating number not null,
status varchar2(100),
constraint hotel_id_pk primary key (hotel_id),
constraint rating_ck check(rating <=5),
constraint status_ck check(status in ('avaliable','not avaliable'))
);

```
* Query
```sql
insert into hotel(hotel_id,hotel_name,loaction,rating,status)values(100,'five star','chennai',4,'avaliable');
insert into hotel(hotel_id,hotel_name,loaction,rating,status)values(101,'three star','vandalur',3,'avaliable');
insert into hotel(hotel_id,hotel_name,loaction,rating,status)values(102,'shyloo','coimbatore',3,'not avaliable');

select *from hotel;
```
#### Feature 2:List of room
```sql
create table customer_table(
user_name varchar2(100) not null,
mob_no number not null,
city varchar2(100) not null,
email_id varchar2(100) not null,
pass_word varchar2(100) not null,
members number not null,
room_type varchar2(100),
bed_type varchar2(100),
constraint mob_no_pk primary key (mob_no),
constraint members_ck check(members<=4),
constraint room_type_ck check(room_type in ('AC','NON AC')),
constraint bed_type_ck check(bed_type in ('single','double','triple'))
);
```
* Query
```sql
insert into  customer_table(user_name,mob_no,city,email_id,pass_word,members,room_type,bed_type)values('riya',9600249285,'bangalore','abcd@gmail.com','abc',
1,'ac','double');
insert into  customer_table(user_name,mob_no,city,email_id,pass_word,members,room_type,bed_type)values('ravi',9500349785,'chennai','zxy@gmail.com','were',
2,'nonac','double');
select *from customer_table;
```
create table login_table(
login_id varchar2(100) not null,
email varchar2(100) not null,
pass varchar2(100)not null,
constraint email_fk foreign key (email) references customer_table(email_id),
constraint pass_fk foreign key (pass) references customer_table(pass_word)
);


