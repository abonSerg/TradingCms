ALTER TABLE [dbo].[CompaniesToCategories]
	ADD CONSTRAINT [FK_CompaniesToCategories_CategoryId] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[Categories] ([Id])