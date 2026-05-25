--Temporary Variables
DECLARE @myvar AS int = 2

SET @myvar = @myvar + 1

SELECT @myvar AS myVariable

--Non-Integer numbers
--Decimal&numeric
--numeric/decimal(p,s)
DECLARE @myvar1 AS numeric(7,2) --or decimal(7,2)
--12345.67 valid
--123.456 invalid

SET @myvar1 = 12345.67 

SELECT @myvar AS myVariable

--Conversions
--Implicit
DECLARE @var as decimal(5,2) =3

SELECT @var

--Explicit
SELECT CONVERT(decimal(5,2),3)/2
SELECT CAST(3 AS decimal(5,2))/2
