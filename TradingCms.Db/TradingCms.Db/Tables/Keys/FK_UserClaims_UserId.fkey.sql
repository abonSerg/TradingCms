﻿ALTER TABLE [dbo].[UserClaims]
	ADD CONSTRAINT [FK_UserClaims_UserId] FOREIGN KEY (UserId) REFERENCES [Users] (Id)
	ON DELETE CASCADE