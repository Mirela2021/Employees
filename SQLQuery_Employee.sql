
-- CREATE TABLE Employee 
create table Employee 
(
FirstName varchar (15),
LastName varchar (15),
PhoneNumber int,
OfficeNumber int,
HireDate date,
Salary decimal (5,2),
AnnualSalary int
);

insert into Employee
(
FirstName,
LastName ,
PhoneNumber,
OfficeNumber,
HireDate,
Salary,
AnnualSalary
)
values 
(
'Maria',
'Manolescu',
'0760100000',
'0210000000',
'2000-01-08',
4500,
(4500*12)
);

select * from Employee; 

alter table employee
add constraint default_officenumber default '0210000000' for officenumber;

alter table employee 
alter column FirstName varchar (15) not null; 

alter table employee 
alter column LastName varchar (15) not null; 

alter table employee
add constraint Minimun_Salary check (salary > 5000);



-- CREATE TABLE Employee BONUSES

create table EmployeeBonuses
(
EmployeeID int identity (100,1) not null,
Salary decimal (10,2),
QuarterBonus decimal(10,2)
);

drop table EmployeeBonuses;

insert into EmployeeBonuses (Salary, QuarterBonus)
Values 
(4000, 300);

alter table EmployeeBonuses
drop constraint FK_EmployeeBonuses_EmployeeID;


update employee set EmployeeID = 106 where EmployeeID= 105;

alter table EmployeeBonuses
add constraint FK_EmployeeBonuses_EmployeeID foreign key (EmployeeID)
references Employee (EmployeeID)
on update cascade
on delete cascade;


alter table EmployeeBonuses
add constraint PK_EmployeeBonuses_Salary primary key (salary);

alter table Employee
add constraint FK_EmployeeBonuses_Salary foreign key (Salary)
references EmployeeBonuses (Salary)
on update cascade
on delete cascade;


update EmployeeBonuses set Salary = 5500 where Salary=5300;

use Customers;
create index IX_ListaClienti_LastName
on ListaClienti (LastName);


select FirstName, LastName, Email from ListaClienti
where lastname = 'tudo%';

select FirstName, LastName, Email from ListaClienti
where lastname like 'tudo%';


