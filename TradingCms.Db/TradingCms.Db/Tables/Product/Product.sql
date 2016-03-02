CREATE TABLE [dbo].[Product]
(
	[Id] INT NOT NULL, 
    [Name] VARCHAR(128) NOT NULL, 
    [Count] INT NOT NULL DEFAULT 0, 
	[Cost] INT NOT NULL, 
	[IsAvailable] BIT NOT NULL DEFAULT 1,
    [DiscriptionsUk] VARCHAR(256) NULL DEFAULT NULL, 
	[DiscriptionsRu] VARCHAR(256) NULL DEFAULT NULL, 
    [CreateDate] DATETIME NOT NULL, 
    [CategoryId] INT NOT NULL
)

