CREATE TABLE [dbo].[FeedBacks]
(
	[Id] INT IDENTITY(1,1) NOT NULL,
	[ReplyFeedBackId] INT NULL,
	[CreatorId] NVARCHAR (128) NOT NULL,
	[CreateDate] DATETIME NOT NULL, 
    [IsActive] BIT NOT NULL, 
    [IsModerated] BIT NOT NULL, 
	[ModerateDate] DATETIME NULL, 
    [Rate] SMALLINT NULL, 
    [Advantages] NVARCHAR(1024) NULL, 
    [Disadvantages] NVARCHAR(1024) NULL, 
    [Text] NVARCHAR(MAX) NULL, 
    [ProductId] INT NOT NULL
)
