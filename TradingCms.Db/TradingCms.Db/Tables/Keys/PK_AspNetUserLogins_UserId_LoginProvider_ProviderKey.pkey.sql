﻿ALTER TABLE [dbo].[AspNetUserLogins] ADD  CONSTRAINT [PK_AspNetUserLogins_UserId_LoginProvider_ProviderKey] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC, 
	[LoginProvider] ASC, 
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
	