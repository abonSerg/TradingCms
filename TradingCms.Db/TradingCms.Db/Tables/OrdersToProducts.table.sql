CREATE TABLE [dbo].[OrdersToProducts]
(
	[Id] INT IDENTITY(1,1) NOT NULL,
	[OrderId] INT NOT NULL,
	[ProductId] INT NOT NULL,
	[Price] MONEY NULL
)
