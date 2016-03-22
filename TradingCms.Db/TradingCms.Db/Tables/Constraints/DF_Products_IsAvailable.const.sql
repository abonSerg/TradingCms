ALTER TABLE [dbo].[Products]
    ADD CONSTRAINT [DF_Products_IsAvailable] DEFAULT (1) FOR [IsAvailable]