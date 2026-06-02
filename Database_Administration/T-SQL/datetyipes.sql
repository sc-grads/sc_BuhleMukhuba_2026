--Setting & Extracting
declare @mydate as datetime = '2015-06-20 12:34:56.124'
select @mydate as MyDate

declare @mydate2 as datetime2(3) = '20150620 12:34:56.124'
select @mydate2 as MyDate

select datefromparts(2015,06,24) as ThisDate
select DATETIME2FROMPARTS(2015,06,24,12,34,56,124,3) as ThatDate
select year(@mydate) as myYear, month(@mydate) as myMonth, day(@mydate) as myDay

--Todays date and more
select CURRENT_TIMESTAMP as RightNow
select getdate() as RightNow
select SYSDATETIME() as RightNow
SELECT dateadd(YEAR,1,'2015-01-02 03:04:05') AS MyYear
SELECT datepart(hour,'2015-01-02 03:04:05') AS MyHour
SELECT datename getdate() AS MyAnswer
SELECT datediff(second, '2015-01-02 03:04:05', getdate()) as secondsElapsed

--date offset
declare @mydateoffset as datetimeoffset = '2015-06-20 12:34:56.124 +05:30'
select @mydateoffset as MyDateOffset
;
declare @mydate3 as datetime2 = '2015-06-20 12:34:56.124'
select TODATETIMEOFFSET(@mydate3, '+05:30') as myDateTimeOffset

select DATETIMEOFFSETFROMPARTS(2015,06,20,12,34,56,124,5,30,3) as mydateoffset

select SYSDATETIMEOFFSET() as Timenowwithoffset;
select SYSUTCDATETIME() as timenowUTC;

DECLARE @MydateOffset2 as datetimeoffset = '2015-06-20 12:34:56.124 +05:30'
select SWITCHOFFSET(@MydateOffset2,'-05:00') as mydateoffsettexas

--Converting date to strings
declare @mydate4 as datetime = '2015-06-20 12:34:56.124'
select 'The date and time is: ' +convert(nvarchar(20), @mydate) as MyConverteddate
;
declare @mydate5 as datetime = '2015-06-20 12:34:56.124'
select cast(@mydate as nvarchar(20) as MyCastDate

