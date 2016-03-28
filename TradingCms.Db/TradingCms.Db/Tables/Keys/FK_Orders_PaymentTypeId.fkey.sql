ALTER TABLE [dbo].[Orders]
	ADD CONSTRAINT [FK_Orders_PaymentTypeId] FOREIGN KEY (PaymentTypeId) REFERENCES [PaymentTypes] (Id)
	ON DELETE SET NULL
