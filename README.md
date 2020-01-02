# Online room booking 

*http://roombooking.in

## Features 

 *Viewers can view the rooms in hotel.
 
### Feature 1:List of all hotel name
```sql
create table hotel(
hotel_id number not null,
user_id number not null,
hotel_name varchar2(100) not null,
location varchar2(100) not null,
rating number not null,
status varchar2(100),
constraint hotel_id_pk primary key (hotel_id),
constraint user_id_fk foreign key (user_id) references customer_table(user_id),
constraint rating_ck check(rating <=5),
constraint status_ck check(status in ('avaliable','not avaliable'))
);

```
* Query
```sql
insert into hotel(hotel_id,hotel_name,location,rating,status)values(100,'five star','chennai',4,'avaliable');
insert into hotel(hotel_id,hotel_name,location,rating,status)values(101,'three star','ooty',3,'avaliable');
insert into hotel(hotel_id,hotel_name,location,rating,status)values(102,'deepam inn','coimbatore',4,'not avaliable');

select *from hotel;
```
```sql

| HOTEL_ID | HOTEL_NAME  | LOACTION   | RATING | STATUS        |
|----------|-------------|------------|--------|---------------|
| 100      | five star   | chennai    | 4      | avaliable     |
| 101      | three star  | ooty       | 3      | avaliable     |
| 102      | deepam inn  | coimbatore | 4      | not avaliable |
```
```sql
select hotel_name,location,rating from hotel;
```
#### Feature 2:Displaying customer details
```sql
create table customer_table(
user_id number not null,
user_name varchar2(100) not null,
mob_no number not null,
city varchar2(100) not null,
email_id varchar2(100) not null,
pass_word varchar2(100) not null,
constraint user_id_pk primary key (user_id)
);
```
* Query
```sql
insert into customer_table(user_id,user_name,mob_no,city,email_id,pass_word)values(1,'riya',9600249285,'bangalore','abcd@gmail.com','abc');
insert into  customer_table(user_id,user_name,mob_no,city,email_id,pass_word)values(2,'ravi',9500349785,'chennai','zxy@gmail.com','were');
insert into  customer_table(user_id,user_name,mob_no,city,email_id,pass_word)values(3,'venkat',9837526709,'kerala','abceg@gmail.com','abcth');

select *from customer_table;
```
```sql
| USER_ID | USER_NAME | MOB_NO     | CITY      | EMAIL_ID        | PASS_WORD |
|---------|-----------|------------|-----------|-----------------|-----------|
| 1       | riya      | 9600249285 | bangalore | abcd@gmail.com  | abc       |
| 2       | ravi      | 9500349785 | chennai   | zxy@gmail.com   | were      |
| 3       | venkat    | 9837526709 | kerala    | abceg@gmail.com | abcth     |
```
## Feature 3:Displaying booking time and facility of rooms
```sql
create table room(
us_er number not null,
members number not null,
room_type varchar2(100),
bed_type varchar2(100),
check_in timestamp not null,
check_out timestamp not null,
payment varchar2(100)not null,
constraint us_er_fk foreign key (us_er) references customer_table(user_id),
constraint members_ck check(members<=4),
constraint room_type_ck check(room_type in ('ac','nonac')),
constraint bed_type_ck check(bed_type in ('single','double','triple')),
constraint payment_ck check(payment in ('paid','not paid'))
);
```
* Query
```sql
insert into room(us_er,members,room_type,bed_type,check_in,check_out,payment)values(1,2,'ac','double',timestamp '2019-12-26 11:50:10',timestamp '2019-12-27 11:50:10','paid');
insert into room(us_er,members,room_type,bed_type,check_in,check_out,payment)values(2,3,'nonac','triple',timestamp '2019-12-10 11:50:10',timestamp '2019-12-12 11:50:10','not paid');
insert into room(us_er,members,room_type,bed_type,check_in,check_out,payment)values(3,1,'nonac','single',timestamp '2019-12-28 11:50:10',timestamp '2019-12-30 11:50:10','paid');
select *from room;
```
```sql
| US_ER | MEMBERS | ROOM_TYPE | BED_TYPE | CHECK_IN                     | CHECK_OUT                    | PAYMENT  |
|-------|---------|-----------|----------|------------------------------|------------------------------|----------|
| 1     | 2       | ac        | double   | 26-DEC-19 11.50.10.000000 AM | 27-DEC-19 11.50.10.000000 AM | paid     |
| 2     | 3       | nonac     | triple   | 10-DEC-19 11.50.10.000000 AM | 12-DEC-19 11.50.10.000000 AM | not paid |
| 3     | 1       | nonac     | single   | 28-DEC-19 11.50.10.000000 AM | 30-DEC-19 11.50.10.000000 AM | paid     |
```

