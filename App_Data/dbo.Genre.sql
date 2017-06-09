CREATE TABLE [dbo].[Genre]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] NVARCHAR(200) NOT NULL, 
    [SortOrder] INT NOT NULL
)
