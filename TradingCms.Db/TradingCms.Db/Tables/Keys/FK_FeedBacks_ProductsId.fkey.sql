ALTER TABLE [dbo].[FeedBacks]
	ADD CONSTRAINT [FK_FeedBacks_ProductsId] FOREIGN KEY ([ProductId]) REFERENCES [Products]([Id]);
