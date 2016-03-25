ALTER TABLE [dbo].[CompaniesToCategories]
	ADD CONSTRAINT [FK_CompaniesToCategories_CompanyId] FOREIGN KEY ([CompanyId]) REFERENCES [dbo].[Companies] ([Id])
		ON DELETE CASCADE


