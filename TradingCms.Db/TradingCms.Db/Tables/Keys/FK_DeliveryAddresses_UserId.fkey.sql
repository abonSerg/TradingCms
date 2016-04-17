ALTER TABLE [dbo].[DeliveryAddresses]
	ADD CONSTRAINT [FK_DeliveryAddresses_UserId] FOREIGN KEY (UserId) REFERENCES [AspNetUsers] (Id)
	ON DELETE CASCADE
