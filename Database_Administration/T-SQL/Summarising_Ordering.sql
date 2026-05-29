select * from tblEmployee
where DateofBirth between '19760101' and '19861231'

select * from tblEmployee
where DateofBirth >= '19760101' and DateofBirth < '19861231'

select * from tblEmployee
where year(DateofBirth) between 1976 and 1986		--	Not recommended

select year(DateofBirth) as YearofBirth, count(*) as NumberBorn
From tblEmployee
Where 1=1
Group by year(DateofBirth)
Order by year(DateofBirth)

--Criteria on summarised data
select left(EmployeeLastName,1) as Initial, count(*) as CountofInitial
from tblEmployee
group by left(Employeelastname,1)
order by count(*) DESC

select top(5) left(EmployeeLastName,1) as Initial, count(*) as CountofInitial
from tblEmployee
group by left(Employeelastname,1)
order by count(*) DESC

select left(EmployeeLastName,1) as Initial, count(*) as CountofInitial
from tblEmployee
where DateOfBirth > '19860101'
group by left(Employeelastname,1)
having count(*)>=20
order by count(*) DESC

--Changing blank strings to NULLs
Update tblEmployee
Set EmployeeMiddleName = NULL
Where EmployeeMiddleName = ''
