# Movie Ticket

*http://movieticket.in

## Features 

 *Viewers can view the movies name list.
 
### Feature 1:List of all movie name
```sql
create table movie_list(
movie_id number not null,
movie_name varchar2(100) not null,
movie_category varchar2(100) not null,
constraint movie_id_pk primary key (movie_id)
);
```
* Query
```sql
insert into movie_list(movie_id,movie_name,movie_category)values( 100,'hero','tamil');
insert into movie_list(movie_id,movie_name,movie_category)values( 101,'it-2','english');

select * from  movie_list;
```

