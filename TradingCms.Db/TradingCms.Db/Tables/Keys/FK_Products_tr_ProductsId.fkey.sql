ALTER TABLE [dbo].[Products_tr]
	ADD CONSTRAINT [FK_Products_tr_ProductsId] FOREIGN KEY ([Id])
		REFERENCES [Products] ([Id])
