CREATE TABLE [dbo].[ProductTranslations] (
    [Id]          INT            IDENTITY (1, 1) NOT NULL,
    [ProductId]   INT            NOT NULL,
    [LanguageId]  INT            NOT NULL,
    [Name]        NVARCHAR (256) NOT NULL,
    [Description] NVARCHAR (MAX) NULL,
);



