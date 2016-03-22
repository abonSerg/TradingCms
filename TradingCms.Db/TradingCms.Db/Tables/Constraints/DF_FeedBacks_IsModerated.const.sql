ALTER TABLE [dbo].[FeedBacks]
    ADD CONSTRAINT [DF_FeedBacks_IsModerated] DEFAULT (0) FOR [IsModerated];

