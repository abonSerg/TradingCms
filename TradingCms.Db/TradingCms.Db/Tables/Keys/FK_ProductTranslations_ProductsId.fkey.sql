ALTER TABLE [dbo].[ProductTranslations]
	ADD CONSTRAINT [FK_ProductTranslations_ProductsId] FOREIGN KEY ([ProductId]) REFERENCES [Products] ([Id])
		ON DELETE CASCADE ON UPDATE CASCADE