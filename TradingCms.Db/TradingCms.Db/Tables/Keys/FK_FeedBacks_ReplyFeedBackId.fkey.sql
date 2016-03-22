ALTER TABLE [dbo].[FeedBacks]
	ADD CONSTRAINT [FK_FeedBacks_ReplyFeedBackId] FOREIGN KEY ([ReplyFeedBackId]) REFERENCES [FeedBacks]([Id])
	
