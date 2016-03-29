﻿ALTER TABLE [dbo].[ProductTranslations] ADD  CONSTRAINT [UQ_ProductTranslations_ProductId_LanguageId] UNIQUE NONCLUSTERED 
(
	[ProductId] ASC, 
	[LanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO