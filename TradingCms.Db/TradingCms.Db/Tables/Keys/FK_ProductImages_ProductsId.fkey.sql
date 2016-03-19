ALTER TABLE [dbo].[ProductImages]
	ADD CONSTRAINT [FK_ProductImages_ProductsId] FOREIGN KEY (ProductId)
		REFERENCES [Products] (Id)
