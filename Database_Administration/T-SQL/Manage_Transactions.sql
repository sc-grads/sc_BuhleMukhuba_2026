--Implicit
select *
from [dbo].[tblEmployee]

update [dbo].[tblEmployee]
set EmployeeNumber = 122
where EmployeeNumber = 123

--Explict
begin Transaction

select *
from [dbo].[tblEmployee]

update [dbo].[tblEmployee]
set EmployeeNumber = 122
where EmployeeNumber = 123

rollback/commit Transaction


select *
from [dbo].[tblEmployee]

--Mark a transaction
begin Transaction MyTrans with MARK

select *
from [dbo].[tblEmployee]

update [dbo].[tblEmployee]
set EmployeeNumber = 122
where EmployeeNumber = 123

rollback Transaction MyTrans

--Trancount
update [dbo].[tblEmployee] set EmployeeNumber = 123 where EmployeeNumber = 122


select * from [dbo].[tblEmployee]

select @@TRANCOUNT --0
begin tran
	select @@TRANCOUNT --1
	begin tran
		update [dbo].[tblEmployee] set EmployeeNumber = 122 where EmployeeNumber = 123
		select @@TRANCOUNT --2
	commit tran
	select @@TRANCOUNT --1
if @@TRANCOUNT > 0 --Yes
commit tran
select @@TRANCOUNT --0


select * from [dbo].[tblEmployee]

--Transaction 1
begin transaction 

update [dbo].[tblEmployee] set EmployeeNumber = 122 where EmployeeNumber = 123

commit tran

update [dbo].[tblEmployee] set EmployeeNumber = 123 where EmployeeNumber = 122

insert into [dbo].[tblEmployee]([EmployeeNumber]
      ,[EmployeeFirstName]
      ,[EmployeeMiddleName]
      ,[EmployeeLastName]
      ,[EmployeeGovernmentID]
      ,[DateOfBirth]
      ,[Department])
values (122,'H','I','T','H','2010-01-01','H')

delete from [dbo].[tblEmployee]
where EmployeeNumber = 122


--Transaction 2
set transaction isolation level read committed

begin tran
select * from [dbo].[tblEmployee]
waitfor delay '00:00:20'
select * from [dbo].[tblEmployee]
commit tran
