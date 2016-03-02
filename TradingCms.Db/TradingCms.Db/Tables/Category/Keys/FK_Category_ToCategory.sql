ALTER TABLE [dbo].[Category]
	ADD CONSTRAINT [FK_Category_ToCategory]
	FOREIGN KEY (TopId)
	REFERENCES [Category] (Id)
