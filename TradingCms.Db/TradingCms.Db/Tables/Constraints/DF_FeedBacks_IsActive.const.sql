ALTER TABLE [dbo].[FeedBacks]
    ADD CONSTRAINT [DF_FeedBacks_IsActive] DEFAULT (1) FOR [IsActive];