ALTER TABLE [dbo].[Categories_tr]
	ADD CONSTRAINT [Categories_tr_Id]
	FOREIGN KEY ([Id])
	REFERENCES [Categories] ([Id])
