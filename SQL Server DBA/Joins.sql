SELECT * FROM [dbo].[Employee]
-----------------------------------------------------
SELECT * FROM [dbo].[Sale]

SELECT * FROM [dbo].[Employee] e
JOIN [dbo].[Sale] s
On e.empid = s.empid

SELECT e.EmpID,e.EmpName,s.SalesNumber,s.ItemsSold FROM [dbo].[Employee] e
JOIN [dbo].[Sale] s
On e.empid = s.empid
ORDER BY e.empid

SELECT count(SalesNumber) AS NoOfSales,e.EmpID,e.EmpName FROM [dbo].[Employee] e
JOIN [dbo].[Sale] s
On e.empid = s.empid
GROUP BY e.empid,e.empname