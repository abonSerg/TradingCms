CREATE TABLE [dbo].[Products]
(
	[Id] INT IDENTITY(1,1) NOT NULL,
	[CategoryId] INT NOT NULL, 
    [Price] MONEY NOT NULL, 
	[IsAvailable] BIT NOT NULL,
    [CreateDate] DATETIME NOT NULL
)

