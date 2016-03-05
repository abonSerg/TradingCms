CREATE TABLE [dbo].[Categories]
(
	[Id] INT IDENTITY(1,1) NOT NULL, 
    [TopId] INT NULL, 
    [Name] VARCHAR(32) NOT NULL, 
    [Description] VARCHAR(128) NULL
)
