ALTER TABLE [dbo].[FeedBacks]
	ADD CONSTRAINT [FK_FeedBacks_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [Products]([Id]);
