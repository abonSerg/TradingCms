ALTER TABLE [dbo].[ApplicationUser]
	ADD CONSTRAINT [FK_ApplicationUser_UserId] FOREIGN KEY (applicationuser_key) REFERENCES [AspNetUsers] (Id)
	ON DELETE CASCADE
