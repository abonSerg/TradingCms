CREATE TABLE [dbo].[FeedBacks]
(
	[Id] INT NOT NULL,
	[ReplyFeedBackId] INT NULL,
	[CreatorId] NVARCHAR (128) NOT NULL,
	[CreateDate] DATETIME NOT NULL, 
    [IsActive] BIT NOT NULL DEFAULT 1, 
    [IsModerated] BIT NOT NULL DEFAULT 0, 
	[ModerateDate] DATETIME NULL, 
    [Rate] SMALLINT CHECK ( rate in (1, 2, 3, 4, 5) ) NULL, 
    [Advantages] NVARCHAR(1024) NULL, 
    [Disadvantages] NVARCHAR(1024) NULL, 
    [Text] NVARCHAR(MAX) NULL, 
    [ProductId] INT NOT NULL
)
