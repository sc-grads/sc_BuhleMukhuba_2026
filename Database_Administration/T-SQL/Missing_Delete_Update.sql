select *
from(
select E.EmployeeNumber as ENumber, E.EmployeeFirstName, 
	E.EmployeeLastName, T.EmployeeNumber as TNumber,
	sum(T.Amount) as TotalAmount
from tblEmployee as E
Left join tblTransaction as T
ON E.EmployeeNumber = T.EmployeeNumber
Group by E.EmployeeNumber, T.EmployeeNumber, 
	E.EmployeeFirstname, E.EmployeeLastname) as newTable
	where T.EmployeeNumber IS NULL
order by E.EmployeeNumber, T.EmployeeNumber, 
	E.EmployeeFirstname, E.EmployeeLastname

--Deleting Data
begin transaction

delete tblTransaction
from tblEmployee as E
right join tblTransaction as T
ON E.EmployeeNumber = T.EmployeeNumber
where T.EmployeeNumber IS NULL

Rollback Transaction

--Updating Data
begin tran

update tblTransaction
set EmployeeNumber = 194
Output inserted.*, deleted.*
from tblTransaction
where EmployeeNumber = 3

rollback tran