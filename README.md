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
RoomType varchar2(100)not null,
constraint hotel_id_pk primary key (hotel_id),
constraint rating_ck check(rating <=5),
constraint status_ck check(status in ('available','not available'))
);
alter table hotel add(
pic varchar2(100));
```
* Query
```sql
select *from hotel;
```
```sql
| hotel_id | hotel_name | location   | rating | status        | Roomtype    | pic            |
|----------|------------|------------|--------|---------------|-------------|----------------|
| 100      | five star  | chennai    | 4.5    | not available | A/C,non-A/C | fivestar.jpg   |
| 101      | three star | ooty       | 3      | available     | A/C         | threestar.jpg  |
| 102      | deepam inn | coimbatore | 4      | available     | non-A/C     | deepam inn.jpg |

```
#### Feature 2:Displaying customer details
```sql
create sequence user_id_sq increment by 1;
create table customer_table(
user_id number not null,
user_name varchar2(100) not null,
mob_no number not null,
city varchar2(100) not null,
email_id varchar2(100) not null,
pass_word varchar2(100) not null,
constraint user_id_pk primary key (user_id),
constraint email_id_uq unique (email_id)
);
```
* Query
```sql
select *from customer_table;
```
```sql
| userid | username | mobno      | city      | emailid          | password |
|--------|----------|------------|-----------|------------------|----------|
| 1      | riya     | 9600249285 | bangalore | riya@gmail.com   | abc      |
| 2      | ravi     | 9500349785 | chennai   | ravi@gmail.com   | 123      |
| 3      | naveen   | 9837526709 | kerala    | naveen@gmail.com | naveen   |
```
## Feature 3:Displaying booking time and facility of rooms
```sql
create table room(
userid number not null,
hotel number not null,
members number not null,
room_type varchar2(100),
bed_type varchar2(100),
check_in date not null,
check_out date not null,
payment varchar2(100) default 'not paid',
constraint hotel_fk foreign key (hotel) references hotel(hotel_id),
constraint userid_fk foreign key (userid) references customer_table(user_id),
constraint members_ck check(members<=4),
constraint room_type_ck check(room_type in ('ac','nonac')),
constraint bed_type_ck check(bed_type in ('single bed','queen-size bed','king-size bed'))
);
alter table room add(
active_status varchar2(20) default 'active',
constraint active_status_ck check(active_status in( 'active','inactive'))
);
```
* Query
```sql
select *from room;
```
```sql
| userid | hotel | members | room_type | bed_type       | check_in | check_out | payment  | active_status |
|--------|-------|---------|-----------|----------------|----------|-----------|----------|---------------|
| 1      | 100   | 2       | ac        | queen-size bed | 12-01-20 | 14-01-20  | not paid | active        |
| 2      | 101   | 3       | nonac     | king-size bed  | 01-02-20 | 04-02-20  | not paid | active        |
| 3      | 102   | 1       | nonac     | single bed     | 28-12-19 | 31-12-19  | not paid | active        |
```
####Admin Login
```sql
create table login1(
 username varchar2(100) not null,
 password varchar2(100) not null
 );
 * Query
```sql
select *from login;
```sql

```sql
| username | password |
|----------|----------|
| admin    | 12345    |
```sql






