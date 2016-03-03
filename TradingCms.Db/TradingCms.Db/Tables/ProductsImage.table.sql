CREATE TABLE [dbo].[ProductsImage]
(
	[Id] INT IDENTITY(1,1) NOT NULL, 
    [Path] VARCHAR(512) NOT NULL, 
    [ProductId] INT NOT NULL
)
