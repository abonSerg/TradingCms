CREATE TABLE [dbo].[Products]
(
	[Id] INT IDENTITY(1,1) NOT NULL,
	[CategoryId] INT NOT NULL, 
    [Name] VARCHAR(128) NOT NULL, 
    [Price] MONEY NOT NULL, 
	[IsAvailable] BIT NOT NULL DEFAULT 1,
    [DescriptionUk] VARCHAR(256) NULL, 
	[DescriptionRu] VARCHAR(256) NULL, 
    [CreateDate] DATETIME NOT NULL
)

