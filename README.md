# Online room booking 

*http://roombooking.in

## Features 

 *Viewers can view the rooms in hotel.
 
### Feature 1:List of all hotel name
```sql
create table hotel(
hotel_id number not null,
hotel_name varchar2(100) not null,
location varchar2(100) not null,
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
constraint email_id_pk primary key (email_id)
);
```
* Query
```sql
insert into  customer_table(user_name,mob_no,city,email_id,pass_word)values('riya',9600249285,'bangalore','abcd@gmail.com','abc');
insert into  customer_table(user_name,mob_no,city,email_id,pass_word)values('ravi',9500349785,'chennai','zxy@gmail.com','were');
select *from customer_table;
```
## Feature 3:room type
```sql
create table room(
members number not null,
room_type varchar2(100),
bed_type varchar2(100),
constraint members_ck check(members<=4),
constraint room_type_ck check(room_type in ('ac','nonac')),
constraint bed_type_ck check(bed_type in ('single','double','triple'))
);
```
* Query
```sql
insert into (members,room_type,bed_type)values(2,'ac','triple');
insert into (members,room_type,bed_type)values(3,'nonac','triple');
select *from room;
``` 
## Hotel
```sql
| hotel_id | hotel_name | location   | rating | status       |
|----------|------------|------------|--------|--------------|
| 100      | five star  | chennai    | 4      | avaliable    |
| 101      | three star | vandalur   | 3      | avaliable    |
| 102      | shlyoo     | coimbatore | 3      | notavaliable |
```
## customer_table
```sql
| user_name | mob_no     | city      | email_id       | pass_word |
|-----------|------------|-----------|----------------|-----------|
| riya      | 9600249285 | bangalore | abcd@gmail.com | abc       |
| ravi      | 9500349785 | chennai   | zxy@gmail.com  | were      |
```
## room
```sql
| members | room_type | bed_type |
|---------|-----------|----------|
| 2       | ac        | triple   |
| 3       | nonac     | triple   |
```








