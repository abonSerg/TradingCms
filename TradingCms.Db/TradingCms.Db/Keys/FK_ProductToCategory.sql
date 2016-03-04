ALTER TABLE [dbo].[Product]
	ADD CONSTRAINT [FK_ProductToCategory]
	FOREIGN KEY (CategoryId)
	REFERENCES [Category] (Id)
