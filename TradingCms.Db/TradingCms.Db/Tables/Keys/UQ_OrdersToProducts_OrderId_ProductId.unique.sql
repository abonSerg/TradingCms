﻿ALTER TABLE [dbo].[OrdersToProducts] ADD  CONSTRAINT [UQ_OrdersToProducts_OrderId_ProductId] UNIQUE NONCLUSTERED 
(
	[OrderId] ASC, 
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO