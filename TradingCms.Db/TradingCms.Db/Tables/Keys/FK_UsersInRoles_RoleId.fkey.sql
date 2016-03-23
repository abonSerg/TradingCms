ALTER TABLE [dbo].[UsersInRoles]
	add Constraint [FK_UsersInRoles_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[Roles] ([Id]) ON DELETE CASCADE
	
