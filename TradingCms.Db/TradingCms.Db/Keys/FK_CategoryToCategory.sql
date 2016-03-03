ALTER TABLE [dbo].[Category]
	ADD CONSTRAINT [FK_CategoryToCategory]
	FOREIGN KEY (TopId)
	REFERENCES [Category] (Id)
