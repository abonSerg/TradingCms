ALTER TABLE [dbo].[OrdersToProducts]
	ADD CONSTRAINT [FK_OrdersToProducts_OrderId] FOREIGN KEY ([OrderId]) REFERENCES [Orders]([Id])
		ON DELETE CASCADE