ALTER TABLE [dbo].[UsersInRoles]
	ADD CONSTRAINT [FK_UsersInRoles_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[Roles] ([Id]) 
		ON DELETE CASCADE