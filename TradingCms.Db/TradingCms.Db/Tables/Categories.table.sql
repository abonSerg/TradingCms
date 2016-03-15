CREATE TABLE [dbo].[Categories]
(
	[Id] INT IDENTITY(1,1) NOT NULL, 
    [TopId] INT NULL, 
    [Name] NVARCHAR(32) NOT NULL, 
    [Description] NVARCHAR(128) NULL
)
