ALTER TABLE [dbo].[Orders]
    ADD CONSTRAINT [DF_Orders_IsActive] DEFAULT (1) FOR [IsActive]