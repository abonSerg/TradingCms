CREATE TABLE [dbo].[Categories]
(
	[Id] INT IDENTITY(1,1) NOT NULL,
    [TopId] INT NULL,
	[Img] VARBINARY(MAX) NULL,
	[ImgMimeType ] NVARCHAR(50) NULL
)
