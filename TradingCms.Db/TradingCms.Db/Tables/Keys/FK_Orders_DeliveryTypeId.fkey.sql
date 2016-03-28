ALTER TABLE [dbo].[Orders]
	ADD CONSTRAINT [FK_Orders_DeliveryTypeId] FOREIGN KEY (DeliveryTypeId) REFERENCES [DeliveryTypes] (Id)
	ON DELETE SET NULL
