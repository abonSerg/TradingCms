ALTER TABLE [dbo].[Orders]
	ADD CONSTRAINT [FK_Orders_DeliveryAddressId] FOREIGN KEY (DeliveryAddressId) REFERENCES [DeliveryAddresses] (Id)