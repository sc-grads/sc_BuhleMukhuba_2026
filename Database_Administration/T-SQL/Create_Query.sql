alter table tblEmployee
add Department varchar(10)

select * from [dbo].[tblEmployee]

insert into tblEmployee
values (132,'Dylan','A','Word','HN513777D','1992/09/14','Customer Relations')

alter table tblEmployee
Alter column Department varchar(30)

insert into tblEmployee
values (134,'Gigi','N','Wilson','NN127097A','1969/02/17','Litigation')

SELECT * FROM [dbo].[tblEmployee] 
WHERE [EmployeeLastname] < 'Word'

SELECT * FROM [dbo].[tblEmployee] 
WHERE [EmployeeLastname] like 'W%'

SELECT * FROM [dbo].[tblEmployee] 
WHERE [EmployeeLastname] like '%W'

SELECT * FROM [dbo].[tblEmployee] 
WHERE [EmployeeLastname] like '%W%' --w somewhere between

SELECT * FROM [dbo].[tblEmployee] 
WHERE [EmployeeLastname] like '_W%'  --only one letter before

select * from [dbo].[tblEmployee] 
where [EmployeeNumber] > 200

select * from [dbo].[tblEmployee] 
where not [EmployeeNumber] > 200

select * from [dbo].[tblEmployee]		--same as not
where [EmployeeNumber] != 200

select * from [dbo].[tblEmployee] 
where [EmployeeNumber] >= 200 and [EmployeeNumber] <= 209

select * from [dbo].[tblEmployee] 
where not([EmployeeNumber] >= 200 and [EmployeeNumber] <= 209)

select * from [dbo].[tblEmployee] 
where [EmployeeNumber] < 200 or [EmployeeNumber] > 209

select * from [dbo].[tblEmployee] 
where [EmployeeNumber] between 200 and 209

select * from [dbo].[tblEmployee] 
where [EmployeeNumber] in (200, 204, 208)

