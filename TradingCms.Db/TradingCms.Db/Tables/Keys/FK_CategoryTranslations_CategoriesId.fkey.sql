ALTER TABLE [dbo].[CategoryTranslations]
	ADD CONSTRAINT [FK_CategoryTranslations_CategoriesId] FOREIGN KEY ([CategoryId]) REFERENCES [Categories] ([Id])
		ON DELETE CASCADE ON UPDATE CASCADE
