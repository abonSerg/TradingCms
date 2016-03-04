
if not exists (select * from [Roles] where Name = 'Admin')

	INSERT into [dbo].[Roles] ([Name]) 
		VALUES ('Admin')

if not exists (select * from [Roles] where Name = 'Buyer')
	INSERT into [dbo].[Roles] ([Name]) 
		VALUES ('Buyer')

if not exists (select * from [Roles] where Name = 'Supplier')
	INSERT into [dbo].[Roles] ([Name]) 
		VALUES ('Supplier')



