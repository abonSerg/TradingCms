ALTER TABLE [dbo].[ProductsImage]
	ADD CONSTRAINT [FK_ProductsImage_ToProduct]
	FOREIGN KEY (ProductId)
	REFERENCES [Product] (Id)
