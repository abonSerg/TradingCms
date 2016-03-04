alter table [dbo.UserInRoles]
	
	add CONSTRAINT [FK_dbo.Users_UserId] FOREIGN KEY ([User_Id]) REFERENCES [dbo].[Users] ([Id]) ON DELETE CASCADE
go

