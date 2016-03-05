ALTER TABLE [dbo].[Products]
	ADD CONSTRAINT [FK_Products_CategoriesId]
	FOREIGN KEY (CategoryId)
	REFERENCES [Categories] (Id)
