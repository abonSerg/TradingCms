ALTER TABLE [dbo].[AspNetUserLogins]
	ADD CONSTRAINT [FK_AspNetUserLogins_UserId] FOREIGN KEY (UserId) REFERENCES [AspNetUsers] (Id)
	ON DELETE CASCADE
