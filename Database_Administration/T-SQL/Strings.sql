DECLARE @myCharacters as char(10)

set @myCharacters = 'hello'

select @myCharacters as myString, len(@myCharacters) as MyLength, DATALENGTH(@myCharacters) as myDataLength
;
DECLARE @myCharacters1 as varchar(10)

set @myCharacters1 = 'hello'

select @myCharacters1 as myString, len(@myCharacters1) as MyLength, DATALENGTH(@myCharacters1) as myDataLength
;

DECLARE @myCharacters2 as nvarchar(10)

set @myCharacters2 = 'hello'

select @myCharacters2 as myString, len(@myCharacters2) as MyLength, DATALENGTH(@myCharacters2) as myDataLength
;
DECLARE @myCharacters3 as char(10)

set @myCharacters3 = 'hello'

select @myCharacters3 as myString, len(@myCharacters3) as MyLength, DATALENGTH(@myCharacters3) as myDataLength
;

--Extraction
declare @chrASCII as varchar(10) = 'hellothere'

declare @chrUnicode as nvarchar(10) = N'helloࢮ'

select left(@chrASCII,2) as myASCII, right(@chrUnicode,2) as my unicode
select substring(@chrASCII,3,2) as middleletters
select rtrim(@chrASCII) as TRIM
select ltrim(rtrim(@chrASCII)) as TRIM
select replace(@chrASCII,'l','L')as myReplace
select upper(@chrASCII) as myUpper
select lower(@chrASCII) as myLower

--Null
declare @mystring as nvarchar(20)
select datalength(@mystring) as myString

--Adding two strings
declare @firstname as nvarchar(20)
declare @middlename as nvarchar(20)
declare @lastname as nvarchar(20)

set @firstname = 'Sarah'
set @middlename = 'Johnson'
set @lastname = 'Milligan'

select @firstname + ' ' + @middlename + ' ' + @lastname as FullName
select concat(@firstname,' ',@middlename, ' ', @lastname) as FullName1

--Adding a string to a number
select 'My number is: ' + convert(varchar(20),4567)
select 'My number is: ' + cast(4567 as varchar(20))

select 'My number is: ' + convert(varchar(20),4567.6)
select 'My number is: ' + FORMAT(4567,6, 'C') --FORMAT AS CURRENCY