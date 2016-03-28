ALTER TABLE [dbo].[DeliveryAddresses]
	ADD CONSTRAINT [FK_DeliveryAddresses_UserId] FOREIGN KEY (UserId) REFERENCES [Users] (Id)
	ON DELETE CASCADE
