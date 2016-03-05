ALTER TABLE [dbo].[ProductImages]
	ADD CONSTRAINT [FK_ProductImages_ProductId]
	FOREIGN KEY (ProductId)
	REFERENCES [Products] (Id)
