CREATE TABLE [dbo].[Products]
(
	[Id] INT IDENTITY(1,1) NOT NULL,
	[CategoryId] INT NOT NULL, 
    [Price] MONEY NOT NULL, 
	[IsAvailable] BIT NOT NULL DEFAULT 1,
    [CreateDate] DATETIME NOT NULL
)

