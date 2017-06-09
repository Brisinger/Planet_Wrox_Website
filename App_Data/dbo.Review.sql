CREATE TABLE [dbo].[Review]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Title] NVARCHAR(200) NOT NULL, 
    [Summary] NVARCHAR(MAX) NOT NULL, 
    [Body] NVARCHAR(MAX) NOT NULL, 
    [GenreId] INT NOT NULL, 
    [Authorized] BIT NOT NULL, 
    [CreateDateTime] DATETIME NOT NULL DEFAULT getdate(), 
    [UpdateDateTime] DATETIME NOT NULL DEFAULT getdate(), 
    CONSTRAINT [FK_Review] FOREIGN KEY ([GenreId]) REFERENCES [Genre]([Id])
)
