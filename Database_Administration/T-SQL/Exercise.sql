select DATENAME(MONTH, DateofBirth) as MonthNumber, count(*) as NumberOfEmployees,
count(EmployeeMiddleName) as NumberOfMiddleNames,
count(*) -count(EmployeeMiddleName) as NoMiddleName,
FORMAT(min(DateOfBirth), 'D') as EarliestDoB,
format(MAX(DateOfBirth), 'D') as LatestDob
from tblEmployee
group by DATENAME(MONTH, DateofBirth), DATEPART(MONTH, DateofBirth)
ORDER BY DATEPART(MONTH, DateofBirth)