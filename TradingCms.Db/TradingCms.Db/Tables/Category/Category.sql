CREATE TABLE [dbo].[Category]
(
	[Id] INT NOT NULL, 
    [TopId] INT NULL DEFAULT NULL, 
    [Name] VARCHAR(32) NOT NULL, 
    [Discriptions] VARCHAR(128) NULL DEFAULT NULL
)
