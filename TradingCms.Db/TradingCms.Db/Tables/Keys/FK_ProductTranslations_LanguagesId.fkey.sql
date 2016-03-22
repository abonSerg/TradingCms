ALTER TABLE [dbo].[ProductTranslations]
	ADD CONSTRAINT [FK_ProductTranslations_LanguagesId] FOREIGN KEY ([LanguageId]) REFERENCES [Languages] ([Id])