alter table [dbo.UserInRoles]
	add CONSTRAINT [PK_dbo.UserInRoles] PRIMARY KEY CLUSTERED ([User_Id] ASC, [Role_Id] ASC)
	
go