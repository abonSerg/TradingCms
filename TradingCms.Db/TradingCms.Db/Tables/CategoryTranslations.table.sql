CREATE TABLE [dbo].[CategoryTranslations]
(
	[Id] INT IDENTITY(1,1) NOT NULL,
	[CategoryId] INT NOT NULL, 
	[LanguageId] INT NOT NULL,
    [Name] NVARCHAR(32) NOT NULL
)
