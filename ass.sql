create table  daily_work(
status_check varchar2(30) not null,
work_name varchar2(50) not null,
work_by varchar2(50)not null,
deadline_date date,
completed_date date,constraint status_check_cq check(status_check in('completed','not-completed'))
);
insert into daily_work(status_check,work_name,work_by,deadline_date,completed_date)
values('completed','installation','nandhu',to_date('27-12-2019','dd-MM-yyyy'),to_date('26-12-2019','dd-MM-yyyy);
select * from daily_work;

alter table daily_work add(priority number)
insert into daily_work(status_check,work_name,work_by,deadline_date,completed_date,priority)
values('completed','installation','nandhu',to_date('27-12-2019','dd-MM-yyyy'),to_date('26-12-2019','dd-MM-yyyy,'1');

