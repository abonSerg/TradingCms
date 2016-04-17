ALTER TABLE [dbo].[AspNetUserClaims]
	ADD CONSTRAINT [FK_AspNetUserClaims_UserId] FOREIGN KEY (UserId) REFERENCES [AspNetUsers] (Id)
	ON DELETE CASCADE
