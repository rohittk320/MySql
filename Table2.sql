create database pay;
create table pay.employe(custumer_id int, amount int, mode_ varchar(20), payment_date date);
insert into pay.employe(custumer_id, amount, mode_, payment_date) values(1,60,"cash",'2020-09-24');
insert into pay.employe(custumer_id, amount, mode_, payment_date) values(2,30,"credit card",'2020-05-22');
insert into pay.employe(custumer_id, amount, mode_, payment_date) values(3,110,"cash",'2021-01-26');
insert into pay.employe(custumer_id, amount, mode_, payment_date) values(4,70,"paytm",'2021-07-24');
insert into pay.employe(custumer_id, amount, mode_, payment_date) values(5,80,"cash",'2022-04-20');
select * from pay.employe;