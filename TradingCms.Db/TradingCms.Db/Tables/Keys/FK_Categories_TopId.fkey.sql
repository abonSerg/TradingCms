ALTER TABLE [dbo].[Categories]
	ADD CONSTRAINT [FK_Categories_TopId] FOREIGN KEY (TopId) REFERENCES [Categories] (Id)
      