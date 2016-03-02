ALTER TABLE [dbo].[Product]
	ADD CONSTRAINT [FK_Product_ToCategory]
	FOREIGN KEY (CategoryId)
	REFERENCES [Category] (Id)
