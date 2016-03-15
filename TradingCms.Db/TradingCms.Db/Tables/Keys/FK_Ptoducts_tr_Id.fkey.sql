ALTER TABLE [dbo].[Products_tr]
	ADD CONSTRAINT [Ptoducts_tr_Id]
	FOREIGN KEY ([Id])
	REFERENCES [Products] ([Id])
