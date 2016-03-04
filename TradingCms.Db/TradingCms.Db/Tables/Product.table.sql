CREATE TABLE [dbo].[Product]
(
	[Id] INT IDENTITY(1,1) NOT NULL, 
    [Name] VARCHAR(128) NOT NULL, 
    [Count] INT NOT NULL DEFAULT 0, 
	[Cost] INT NOT NULL, 
	[IsAvailable] BIT NOT NULL DEFAULT 1,
    [DescriptionUk] VARCHAR(256) NULL DEFAULT NULL, 
	[DescriptionRu] VARCHAR(256) NULL DEFAULT NULL, 
    [CreateDate] DATETIME NOT NULL, 
    [CategoryId] INT NOT NULL
)

