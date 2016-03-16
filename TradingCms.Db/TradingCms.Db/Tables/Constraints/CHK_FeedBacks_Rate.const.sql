ALTER TABLE [dbo].[FeedBacks]
	ADD CONSTRAINT [CHK_FeedBacks_Rate] CHECK ( Rate in (1, 2, 3, 4, 5) )