CREATE TABLE [dbo].[UsersInRoles]
(
	[User_Id] NvarCHAR(128) NOT NUll, 
    [Role_Id] NvarCHAR(128)NOT NUll,
	CONSTRAINT [PK_dbo.UserInRoles] PRIMARY KEY CLUSTERED ([User_Id] ASC, [Role_Id] ASC),
    CONSTRAINT [FK_dbo.UserInRoles_dbo.Roles_RoleId] FOREIGN KEY ([Role_Id]) REFERENCES [dbo].[Roles] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_dbo.UserInRoles_dbo.Users_UserId] FOREIGN KEY ([User_Id]) REFERENCES [dbo].[Users] ([Id]) ON DELETE CASCADE
)
