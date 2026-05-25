select system_type_id, column_id, cast(system_type_id / column_id as decimal(5,2)) as Calculation
from sys.all_columns

--2
select system_type_id, column_id, round(cast(system_type_id / column_id as decimal(5,2)), 0) as Calculation
from sys.all_columns

--3
select system_type_id, column_id, ceiling(cast(system_type_id / column_id as decimal(5,1))) as Calculation
from sys.all_columns

--4
select system_type_id, column_id, round(cast(system_type_id / column_id as decimal(5,1)), 1) as Calculation
from sys.all_columns

--5
select try_cast(system_type_id*2 as tinyint), round(cast(system_type_id / column_id as decimal(5,1)), 1) as Calculation
from sys.all_columns
