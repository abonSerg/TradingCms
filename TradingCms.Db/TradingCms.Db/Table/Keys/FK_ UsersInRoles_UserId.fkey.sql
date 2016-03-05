ALTER TABLE [dbo].[UsersInRoles]
	ADD CONSTRAINT [FK_UsersInRoles_UsersId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([Id])
go

