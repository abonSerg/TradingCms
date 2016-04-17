ALTER TABLE [dbo].[AspNetUserRoles]
	ADD CONSTRAINT [FK_AspNetUserRoles_UsersId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id])


