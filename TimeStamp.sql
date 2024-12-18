use practice;
create table order1 (
id int,
order_name varchar(255),
order_date datetime default current_timestamp()
);
select * from order1;
insert into order1(id, order_name) values(1,"car");
insert into order1(id, order_name) values(2,"bike");
insert into order1(id, order_name) values(3,"mobile");

create table order2(
order_id int not null auto_increment,
order_number int not null,
order_date datetime default current_timestamp(),
primary key (order_id)
);
select * from order2;
drop table order2;
insert into order2(order_number) values(240);
insert into order2(order_number) values(520);
insert into order2(order_number) values(420);

alter table order2 auto_increment 51;
alter table order2 auto_increment 100;

create table order3(
order_id int not null auto_increment,
order_number int not null,
order_date datetime default current_timestamp(),
primary key (order_id)
);
select * from order3;

insert into order3(order_number) values(240);
insert into order3(order_number) values(520);
insert into order3(order_number) values(420);
