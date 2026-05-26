select [name]
from sys.all_columns
--1
select concat([name],'A') as name
from sys.all_columns

--2
select concat([name],'Ⱥ') as name
from sys.all_columns

--3
select substring([name], 2)
from sys.all_columns
