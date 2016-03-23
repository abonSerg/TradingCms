ALTER TABLE [dbo].[UsersInRoles]
	ADD CONSTRAINT [FK_UsersInRoles_UsersId] FOREIGN KEY ([User_Id]) REFERENCES [dbo].[Users] ([Id])
go

