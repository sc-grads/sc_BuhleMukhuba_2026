USE [first_database]
GO

INSERT INTO [dbo].[personal_info]
           ([firstname]
           ,[lastname]
           ,[DoB]
           ,[ID])
     VALUES
           ('John',
            'Smith',
            '01/01/2022',
           777)
GO

SELECT * FROM [dbo].[personal_info]
GO



