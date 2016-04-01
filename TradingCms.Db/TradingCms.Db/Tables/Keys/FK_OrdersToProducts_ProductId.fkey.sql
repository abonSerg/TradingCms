ALTER TABLE [dbo].[OrdersToProducts]
	ADD CONSTRAINT [FK_OrdersToProducts_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [Products]([Id])
		ON DELETE CASCADE