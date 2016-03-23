﻿ALTER TABLE [dbo].[CategoryTranslations] ADD  CONSTRAINT [UQ_CategoryTranslations_CategoryId_LanguageId] UNIQUE NONCLUSTERED 
(
	[CategoryId] ASC, 
	[LanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO