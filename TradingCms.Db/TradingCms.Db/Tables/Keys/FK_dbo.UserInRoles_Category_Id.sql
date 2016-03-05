alter table [dbo.UserInRoles]
add	CONSTRAINT [FK_dbo.Category_CategoryId] FOREIGN KEY ([Category_Id]) REFERENCES [dbo].[Category] ([Id]) ON DELETE CASCADE	
go