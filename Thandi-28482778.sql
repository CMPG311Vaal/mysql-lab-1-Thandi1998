CREATE DATABASE BIDVESTBANK;

SHOW DATABASES; 

USE BIDVESTBANK;

create table bankbranch
(
branch_name varchar(15) not null,
branch_city varchar (15) not null,
assets int not null
);

create table customer
(
customer_name varchar(15) not null,
customer_street varchar(15) not null,
customer_city varchar(15) not null
);

create table customeraccount
(
account_number char(6) not null primary key,
branch_name varchar (15) not null,
balance double not null
);

create table loan
(
loan_number char(4) not null primary key,
branch_name varchar(15) not null,
amount double not null
);

create table depositor
(
customer_name varchar(15) not null,
account_number char(6) not null
);

create table borrower
(
customer_name varchar(15) not null,
loan_number char(4) not null
);

create table employee
(
employee_name varchar(10) not null,
branch_name varchar(15) not null,
salary double not null
);

insert into bankbranch values('midrand', 'johannesburg', 7100000);
insert into bankbranch values('newtown', 'johannesburg', 9000000);
insert into bankbranch values('mabopane', 'pretoria', 400000);
insert into bankbranch values('belgravia', 'kimberly', 3700000);
insert into bankbranch values('sunnyside', 'pretoria', 1700000);
insert into bankbranch values('amazimtoti', 'durban', 300000);
insert into bankbranch values('universitas', 'bloemfontein', 2100000);
insert into bankbranch values('mamelodi', 'pretoria', 8000000);

insert into customer values('modise', 'spring', 'george');
insert into customer values('brooks', 'senator', 'johannesburg');
insert into customer values('jooste', 'north', 'kimberly');
insert into customer values('lombard', 'sand hill', 'nelspruit');
insert into customer values('mokwena', 'walnut', 'port-elizabeth');
insert into customer values('johnson', 'mmbatho', 'mafikeng');
insert into customer values('johnson', 'almal', 'bloemfontein');
insert into customer values('zwane', 'main', 'mafikeng');
insert into customer values('lindsay', 'park', 'george');
insert into customer values('smith', 'north', 'kimberly');
insert into customer values('dlamini', 'putnam', 'port-elizabeth');
insert into customer values('williams', 'nassau', 'giyane');

insert into customeraccount values('a-5324', 'newtown', 500);
insert into customeraccount values('a-5624', 'sunnyside', 400);
insert into customeraccount values('a-7794', 'midrand', 900);
insert into customeraccount values('a-4467', 'mabopane', 700);
insert into customeraccount values('a-3546', 'midrand', 750);
alter table customeraccount modify branch_name varchar(20);
insert into customeraccount values('a-3453', 'universitas', 700);
insert into customeraccount values('a-2542', 'mamelodi', 350);

insert into loan values('l-11', 'mamelodi', 900);
insert into loan values('l-14', 'newtown', 1500);
insert into loan values('l-15', 'sunnyside', 1500);
insert into loan values('l-16', 'sunnyside', 1300);
insert into loan values('l-17', 'newtown', 1000);
insert into loan values('l-23', 'universitas', 2000);
insert into loan values('l-93', 'mabopane', 500);

insert into depositor values('johnson', 'a-5624');
insert into depositor values('johnson', 'a-7794');
insert into depositor values('zwane', 'a-3546');
insert into depositor values('lindsay', 'a-3453');
insert into depositor values('smith', 'a-4467');
insert into depositor values('dlamini', 'a-2542');

insert into borrower values('modise', 'l-16');
insert into borrower values('jooste', 'l-93');
insert into borrower values('johnson', 'l-15');
insert into borrower values('jackson', 'l-14');
insert into borrower values('zwane', 'l-17');
insert into borrower values('smith', 'l-11');
insert into borrower values('smith', 'l-23');
insert into borrower values('williams', 'l-18');

insert into employee values('modise', 'sunnyside', 1500);
insert into employee values('brown', 'sunnyside', 1300);
insert into employee values('gopal', 'sunnyside', 5300);
insert into employee values('johnson', 'newtown', 1500);
insert into employee values('loreena', 'newtown', 1300);
insert into employee values('peterson', 'newtown', 2500);
insert into employee values('rao', 'austin', 1500);
insert into employee values('sato', 'austin', 1600);

show tables;

select account_number from customeraccount where balance < 700;

select customer_name from customer where customer_city = 'johannesburg';

select * from employee where salary > 1500 and branch_name != 'newtown';

select avg(salary) as 'avg_salary'from employee;

select max(assets), branch_name from bankbranch;

select employee_name from employee where branch_name = 'sunnyside';

select * from borrower;

select account_number from customeraccount where balance > 900;

select account_number, balance from customeraccount where branch_name = 'newtown' and balance > 600;

select branch_name, assets from bankbranch;
