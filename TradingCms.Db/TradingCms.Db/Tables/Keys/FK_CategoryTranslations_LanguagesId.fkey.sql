ALTER TABLE [dbo].[CategoryTranslations]
	ADD CONSTRAINT [FK_CategoryTranslations_LanguagesId] FOREIGN KEY ([LanguageId]) REFERENCES [Languages] ([Id])
