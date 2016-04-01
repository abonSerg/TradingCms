CREATE TABLE [dbo].[Orders]
(
	[Id] INT IDENTITY(1,1) NOT NULL,
	[UserId] NVARCHAR (128) NOT NULL,
	[CreateDate] DATETIME NOT NULL, 
    [IsActive] BIT NOT NULL, 
	[PaymentTypeId] INT NULL, 
	[PaymentDate]  DATETIME NULL, 
	[DeliveryTypeId] INT NULL,
	[DeliveryAddressId] INT NULL,
    [Comments] NVARCHAR(MAX) NULL
)
