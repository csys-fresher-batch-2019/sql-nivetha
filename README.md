# Movie Ticket

*http://movieticket.in

## Features 

 *Viewers can view the movies name list.
 
### Feature 1:List of all movie name
```sql
create table movie_list(
theatre_id number ,
movie_name varchar2(100) not null,
movie_category varchar2(100) not null,
constraint theatre_id_pk primary key (theatre_id)
);
```
* Query
```sql
insert into movie_list(theatre_id,movie_name,movie_category)values( 100,'hero','tamil');
insert into movie_list(theatre_id,movie_name,movie_category)values( 101,'it-2','english');

select * from  movie_list;
```

