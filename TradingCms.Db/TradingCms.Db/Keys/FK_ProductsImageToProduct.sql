ALTER TABLE [dbo].[ProductsImage]
	ADD CONSTRAINT [FK_ProductsImageToProduct]
	FOREIGN KEY (ProductId)
	REFERENCES [Product] (Id)
