USE AdventureWorks2025
;

SELECT * FROM Person.Address

SELECT addressid,city,modifieddate FROM  [Person].[Address]

SELECT city,modifieddate FROM  [Person].[Address]

SELECT TOP 10 * FROM [Person].[Address]

--------------------------------------------------

SELECT * FROM Person.Address Where PostalCode = '98011'

SELECT * FROM Person.Address Where PostalCode != '98011'

SELECT count(*) FROM Person.Address Where PostalCode <> '98011'

SELECT * FROM Person.Address Where ModifiedDate >= '2013-11-08 00:00:00.000'

SELECT * FROM [Person].[Person] Where FirstName LIKE 'MAT%'

SELECT MAX(Rate) AS PayRate FROM [HumanResources].[EmployeePayHistory] 

SELECT MIN(Rate) AS MinPayRate FROM [HumanResources].[EmployeePayHistory] 

SELECT * FROM [Production].[ProductCostHistory] WHERE StartDate = '2013-05-30 00:00:00.000'

SELECT * FROM [Production].[ProductCostHistory] WHERE StartDate = '2013-05-30 00:00:00.000' And StandardCost >= 200.00

SELECT * FROM [Production].[ProductCostHistory] WHERE (StartDate = '2013-05-30 00:00:00.000' And StandardCost >= 200.00) OR ProductID > 800

SELECT * FROM [Production].[ProductCostHistory] WHERE ProductID in (802,803,820,900)

SELECT * FROM [Production].[ProductCostHistory] WHERE EndDate IS NULL

SELECT * FROM [Production].[ProductCostHistory] WHERE EndDate IS NOT NULL

--------------------------------------------------

SELECT * FROM [HumanResources].[EmployeePayHistory] ORDER BY rate

SELECT * FROM [HumanResources].[EmployeePayHistory] ORDER BY rate ASC

SELECT * FROM [HumanResources].[EmployeePayHistory] ORDER BY rate DESC

SELECT * FROM [HumanResources].[EmployeePayHistory] WHERE ModifiedDate >= '2010-06-30 00:00:00.000' ORDER BY ModifiedDate DESC

SELECT * FROM [HumanResources].[EmployeePayHistory] WHERE Year(ModifiedDate) >= '2014' ORDER BY ModifiedDate DESC

--------------------------------------------------

SELECT count(*) FROM Person.Address WHERE PostalCode = '98011'

SELECT * FROM Person.Address WHERE PostalCode = '98011'

SELECT count(*) FROM Person.Address WHERE PostalCode = '98225'

SELECT count(*),PostalCode FROM Person.Address GROUP BY PostalCode ORDER BY postalcode DESC

SELECT count(*),City FROM Person.Address GROUP BY City ORDER BY City DESC

--------------------------------------------------

SELECT * FROM [Production].[Product]

SELECT count(1) AS CountOfProduct,Color FROM [Production].[Product] WHERE color = 'yellow' GROUP BY Color

SELECT count(1) AS CountOfProduct,Color FROM [Production].[Product] GROUP BY Color HAVING Color = 'yellow'

SELECT count(1) AS CountOfProduct,Color,Size FROM [Production].[Product] GROUP BY Color,Size HAVING Size >= '44'