

---Запустить скрипт для получения тестовых данных---


CREATE TABLE [dbo].[Categories]
(
	[Id] INT IDENTITY(1,1) NOT NULL, 
    [TopId] INT NULL
)


ALTER TABLE [dbo].[Categories]
	ADD CONSTRAINT [PK_Categories_Id]
	PRIMARY KEY (Id)

ALTER TABLE [dbo].[Categories]
	ADD CONSTRAINT [FK_Categories_TopId]
	FOREIGN KEY (TopId)
	REFERENCES [Categories] (Id)





CREATE TABLE [dbo].[Categories_tr]
(
	[Id] INT NOT NULL,
	[Languagecode] VARCHAR(2) NOT NULL,
    [Name] NVARCHAR(32) NOT NULL, 
    [Description] NVARCHAR(128) NULL
)


ALTER TABLE [dbo].[Categories_tr]
	ADD CONSTRAINT [PK_Categories_tr_Id]
	primary KEY ([Id])
	


ALTER TABLE [dbo].[Categories_tr]
	ADD CONSTRAINT [Categories_tr_Id]
	FOREIGN KEY ([Id])
	REFERENCES [Categories] ([Id])







	CREATE TABLE [dbo].[Products]

(
	[Id] INT IDENTITY(1,1) NOT NULL,
	[CategoryId] INT NOT NULL, 
    [Price] MONEY NOT NULL, 
	[IsAvailable] BIT NOT NULL DEFAULT 1,
    [CreateDate] DATETIME NOT NULL
)
CREATE TABLE [dbo].[Products_tr]
(
	[Id] INT NOT NULL,
	[Languagecode] VARCHAR(2) NOT NULL,
    [Name] NVARCHAR(256) NOT NULL,
	[Description] NVARCHAR(MAX) NULL
)
CREATE TABLE [dbo].[ProductImages]
(
	[Id] INT IDENTITY(1,1) NOT NULL, 
    [Path] VARCHAR(512) NOT NULL, 
    [ProductId] INT NOT NULL
)



ALTER TABLE [dbo].[Products]
	ADD CONSTRAINT [PK_Products_Id]
	PRIMARY KEY (Id)
ALTER TABLE [dbo].[ProductImages]
	ADD CONSTRAINT [PK_ProductImages_Id]
	PRIMARY KEY (Id)




ALTER TABLE [dbo].[Products_tr]
	ADD CONSTRAINT [Ptoducts_tr_Id]
	FOREIGN KEY ([Id])
	REFERENCES [Products] ([Id])
ALTER TABLE [dbo].[Products]
	ADD CONSTRAINT [FK_Products_CategoriesId]
	FOREIGN KEY (CategoryId)
	REFERENCES [Categories] (Id)	
ALTER TABLE [dbo].[ProductImages]
	ADD CONSTRAINT [FK_ProductImages_ProductId]
	FOREIGN KEY (ProductId)
	REFERENCES [Products] (Id)







	SET IDENTITY_INSERT [dbo].[Categories] ON
INSERT INTO [dbo].[Categories] ([Id], [TopId]) VALUES (1, NULL)
INSERT INTO [dbo].[Categories] ([Id], [TopId]) VALUES (2, 1)
INSERT INTO [dbo].[Categories] ([Id], [TopId]) VALUES (3, 2)
INSERT INTO [dbo].[Categories] ([Id], [TopId]) VALUES (4, 3)
INSERT INTO [dbo].[Categories] ([Id], [TopId]) VALUES (5, 4)
INSERT INTO [dbo].[Categories] ([Id], [TopId]) VALUES (6, 5)
INSERT INTO [dbo].[Categories] ([Id], [TopId]) VALUES (7, 6)
INSERT INTO [dbo].[Categories] ([Id], [TopId]) VALUES (8, 7)
INSERT INTO [dbo].[Categories] ([Id], [TopId]) VALUES (9, NULL)
INSERT INTO [dbo].[Categories] ([Id], [TopId]) VALUES (10, 1)
INSERT INTO [dbo].[Categories] ([Id], [TopId]) VALUES (11, 2)
INSERT INTO [dbo].[Categories] ([Id], [TopId]) VALUES (12, 3)
INSERT INTO [dbo].[Categories] ([Id], [TopId]) VALUES (13, 4)
INSERT INTO [dbo].[Categories] ([Id], [TopId]) VALUES (14, 5)
INSERT INTO [dbo].[Categories] ([Id], [TopId]) VALUES (15, 6)
INSERT INTO [dbo].[Categories] ([Id], [TopId]) VALUES (16, 7)
INSERT INTO [dbo].[Categories] ([Id], [TopId]) VALUES (17, NULL)
INSERT INTO [dbo].[Categories] ([Id], [TopId]) VALUES (18, 1)
INSERT INTO [dbo].[Categories] ([Id], [TopId]) VALUES (19, 2)
INSERT INTO [dbo].[Categories] ([Id], [TopId]) VALUES (20, 3)
INSERT INTO [dbo].[Categories] ([Id], [TopId]) VALUES (21, 4)
INSERT INTO [dbo].[Categories] ([Id], [TopId]) VALUES (22, 5)
INSERT INTO [dbo].[Categories] ([Id], [TopId]) VALUES (23, 6)
INSERT INTO [dbo].[Categories] ([Id], [TopId]) VALUES (24, 7)
INSERT INTO [dbo].[Categories] ([Id], [TopId]) VALUES (26, NULL)
INSERT INTO [dbo].[Categories] ([Id], [TopId]) VALUES (27, 1)
INSERT INTO [dbo].[Categories] ([Id], [TopId]) VALUES (28, 2)
INSERT INTO [dbo].[Categories] ([Id], [TopId]) VALUES (29, 3)
INSERT INTO [dbo].[Categories] ([Id], [TopId]) VALUES (1023, NULL)
INSERT INTO [dbo].[Categories] ([Id], [TopId]) VALUES (1024, 1)
INSERT INTO [dbo].[Categories] ([Id], [TopId]) VALUES (1025, 2)
INSERT INTO [dbo].[Categories] ([Id], [TopId]) VALUES (1026, 3)
SET IDENTITY_INSERT [dbo].[Categories] OFF


INSERT INTO [dbo].[Categories_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1, N'Ru', N'Компютерная техника', N'Black')
INSERT INTO [dbo].[Categories_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (2, N'Ru', N'????????', N'Black')
INSERT INTO [dbo].[Categories_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (3, N'Ru', N'Планшеты', NULL)
INSERT INTO [dbo].[Categories_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (4, N'Ru', N'Электронные книги', NULL)
INSERT INTO [dbo].[Categories_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (5, N'Ru', N'Компьютеры', NULL)
INSERT INTO [dbo].[Categories_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (6, N'Ru', N'Процессоры', NULL)
INSERT INTO [dbo].[Categories_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (7, N'Ru', N'Антивирусы', NULL)
INSERT INTO [dbo].[Categories_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (8, N'Ru', N' Аксессуары для ПК ', NULL)
INSERT INTO [dbo].[Categories_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (9, N'Ru', N'Телефоны, MP3, GPS', NULL)
INSERT INTO [dbo].[Categories_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (10, N'Ru', N'Смартфоны', NULL)
INSERT INTO [dbo].[Categories_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (11, N'Ru', N' MP3-плееры', NULL)
INSERT INTO [dbo].[Categories_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (12, N'Ru', N'Зарядные устройтсва ', NULL)
INSERT INTO [dbo].[Categories_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (13, N'Ru', N'Карты памяти', NULL)
INSERT INTO [dbo].[Categories_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (14, N'Ru', N'Защитные пленки', NULL)
INSERT INTO [dbo].[Categories_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (15, N'Ru', N'Мобильная связь и интернет', NULL)
INSERT INTO [dbo].[Categories_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (16, N'Ru', N'Беспроводная  гарнитура', NULL)
INSERT INTO [dbo].[Categories_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (17, N'Ru', N'Бытовая техника', NULL)
INSERT INTO [dbo].[Categories_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (18, N'Ru', N'Холодильники', NULL)
INSERT INTO [dbo].[Categories_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (19, N'Ru', N'Плиты', NULL)
INSERT INTO [dbo].[Categories_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (20, N'Ru', N'Стиральные машины', NULL)
INSERT INTO [dbo].[Categories_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (21, N'Ru', N'Встраиваемые микроволновые печи', NULL)
INSERT INTO [dbo].[Categories_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (22, N'Ru', N'Кофеварки', NULL)
INSERT INTO [dbo].[Categories_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (23, N'Ru', N'Посудомоечные машины', NULL)
INSERT INTO [dbo].[Categories_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (24, N'Ru', N'Пылесосы', NULL)
INSERT INTO [dbo].[Categories_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (26, N'Ru', N'Спортивные товары', NULL)
INSERT INTO [dbo].[Categories_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (27, N'Ru', N'Беговые дорожки', NULL)
INSERT INTO [dbo].[Categories_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (28, N'Ru', N'Велотренажеры', NULL)
INSERT INTO [dbo].[Categories_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (29, N'Ru', N'Гантели, диски', NULL)
INSERT INTO [dbo].[Categories_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1023, N'Ru', N'Активный отдых и туризм', NULL)
INSERT INTO [dbo].[Categories_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1024, N'Ru', N'Лодки', NULL)
INSERT INTO [dbo].[Categories_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1025, N'Ru', N'Бинокли', NULL)
INSERT INTO [dbo].[Categories_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1026, N'Ru', N'Рации', NULL)




SET IDENTITY_INSERT [dbo].[Products] ON
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1, 2, CAST(6555.0000 AS Money), 1, N'1900-01-01 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (2, 2, CAST(6599.0000 AS Money), 1, N'2015-02-17 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (4, 2, CAST(7599.0000 AS Money), 1, N'2016-01-12 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (6, 2, CAST(7999.0000 AS Money), 1, N'2016-01-11 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (10, 2, CAST(7199.0000 AS Money), 1, N'2015-01-10 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (11, 2, CAST(6799.0000 AS Money), 1, N'2015-02-09 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (12, 2, CAST(12399.0000 AS Money), 1, N'2015-03-10 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (13, 2, CAST(8999.0000 AS Money), 1, N'2015-09-07 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (15, 2, CAST(7599.0000 AS Money), 1, N'2016-10-01 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (17, 2, CAST(9799.0000 AS Money), 1, N'2015-11-02 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (21, 2, CAST(9499.0000 AS Money), 1, N'2015-02-05 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (23, 3, CAST(5999.0000 AS Money), 1, N'2015-02-07 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (24, 3, CAST(2099.0000 AS Money), 1, N'2015-02-02 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (25, 3, CAST(3699.0000 AS Money), 1, N'2016-02-07 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (26, 3, CAST(13999.0000 AS Money), 1, N'2015-04-07 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (27, 3, CAST(2999.0000 AS Money), 1, N'2015-02-03 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (28, 3, CAST(3299.0000 AS Money), 1, N'2015-02-09 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (29, 3, CAST(2099.0000 AS Money), 1, N'2015-04-07 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (30, 3, CAST(3379.0000 AS Money), 1, N'2015-02-15 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (31, 3, CAST(2499.0000 AS Money), 1, N'2015-03-16 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (32, 3, CAST(7399.0000 AS Money), 1, N'2015-02-02 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (33, 3, CAST(2699.0000 AS Money), 1, N'2015-02-07 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (34, 4, CAST(3999.0000 AS Money), 1, N'2015-06-02 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (35, 4, CAST(5299.0000 AS Money), 1, N'2015-08-02 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (36, 4, CAST(7499.0000 AS Money), 1, N'2015-09-02 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (37, 4, CAST(5399.0000 AS Money), 1, N'2015-08-09 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (38, 4, CAST(3333.0000 AS Money), 1, N'2015-10-02 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (39, 4, CAST(4420.0000 AS Money), 1, N'2015-11-02 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (40, 4, CAST(5555.0000 AS Money), 1, N'2016-08-02 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (41, 4, CAST(1872.0000 AS Money), 1, N'2014-08-02 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (42, 4, CAST(2262.0000 AS Money), 1, N'2015-08-12 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (43, 4, CAST(6100.0000 AS Money), 1, N'2015-08-02 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (44, 4, CAST(1972.0000 AS Money), 1, N'2015-08-03 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (45, 5, CAST(10175.0000 AS Money), 1, N'2015-10-12 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (46, 5, CAST(6799.0000 AS Money), 1, N'2015-10-11 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (47, 5, CAST(5899.0000 AS Money), 1, N'2015-09-11 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (48, 5, CAST(5149.0000 AS Money), 1, N'2015-11-11 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (49, 5, CAST(8232.0000 AS Money), 1, N'2015-10-01 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (50, 5, CAST(7969.0000 AS Money), 1, N'2015-10-10 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (51, 5, CAST(10920.0000 AS Money), 1, N'2015-10-22 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (52, 5, CAST(2099.0000 AS Money), 1, N'2015-11-10 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (53, 5, CAST(9449.0000 AS Money), 1, N'2015-07-12 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (54, 5, CAST(39772.0000 AS Money), 1, N'2015-06-11 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (55, 5, CAST(41769.0000 AS Money), 1, N'2015-07-05 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (56, 6, CAST(5583.0000 AS Money), 1, N'2015-08-06 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (57, 6, CAST(3300.0000 AS Money), 1, N'2015-09-07 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (58, 6, CAST(3300.0000 AS Money), 1, N'2015-10-06 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (59, 6, CAST(1680.0000 AS Money), 1, N'2015-10-08 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (60, 6, CAST(10124.0000 AS Money), 1, N'2015-12-07 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (61, 6, CAST(1653.0000 AS Money), 1, N'2014-10-05 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (62, 6, CAST(3420.0000 AS Money), 1, N'2014-09-06 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (63, 6, CAST(5920.0000 AS Money), 1, N'2015-08-05 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (64, 6, CAST(6402.0000 AS Money), 1, N'2015-07-03 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (65, 6, CAST(11704.0000 AS Money), 1, N'2015-08-02 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (66, 6, CAST(1610.0000 AS Money), 1, N'2014-07-01 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (67, 7, CAST(120.0000 AS Money), 1, N'2015-08-02 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (68, 7, CAST(2499.0000 AS Money), 1, N'2016-01-01 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (69, 7, CAST(699.0000 AS Money), 1, N'2016-07-02 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (70, 7, CAST(299.0000 AS Money), 1, N'2016-08-01 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (71, 7, CAST(440.0000 AS Money), 1, N'2016-04-03 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (72, 7, CAST(263.0000 AS Money), 1, N'2016-02-01 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (75, 7, CAST(499.0000 AS Money), 1, N'2016-02-02 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (76, 7, CAST(224.0000 AS Money), 1, N'2016-03-01 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (77, 7, CAST(659.0000 AS Money), 1, N'2016-01-02 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (78, 7, CAST(344.0000 AS Money), 1, N'2016-05-03 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (79, 7, CAST(890.0000 AS Money), 1, N'2016-02-01 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1002, 8, CAST(179.0000 AS Money), 1, N'2015-12-02 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1006, 8, CAST(230.0000 AS Money), 1, N'2015-12-02 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1007, 8, CAST(97.0000 AS Money), 1, N'2015-12-02 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1008, 8, CAST(10383.0000 AS Money), 1, N'2015-12-05 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1009, 8, CAST(97.0000 AS Money), 1, N'2015-12-01 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1010, 8, CAST(360.0000 AS Money), 1, N'2015-12-02 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1011, 8, CAST(289.0000 AS Money), 1, N'2015-12-02 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1012, 8, CAST(7425.0000 AS Money), 1, N'2015-12-02 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1013, 8, CAST(9909.0000 AS Money), 1, N'2015-12-02 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1014, 8, CAST(292.0000 AS Money), 1, N'2015-12-02 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1016, 10, CAST(4999.0000 AS Money), 1, N'2105-11-03 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1017, 10, CAST(3999.0000 AS Money), 1, N'2105-11-03 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1018, 10, CAST(7999.0000 AS Money), 1, N'2105-11-03 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1019, 10, CAST(15999.0000 AS Money), 1, N'2105-11-03 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1020, 10, CAST(12999.0000 AS Money), 1, N'2105-11-03 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1021, 10, CAST(10599.0000 AS Money), 1, N'2105-11-03 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1022, 10, CAST(4299.0000 AS Money), 1, N'2015-10-04 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1023, 10, CAST(3999.0000 AS Money), 1, N'2105-11-03 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1025, 10, CAST(4099.0000 AS Money), 1, N'2105-11-03 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1026, 10, CAST(4599.0000 AS Money), 1, N'2105-11-03 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1027, 10, CAST(2299.0000 AS Money), 1, N'2105-11-03 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1028, 11, CAST(4999.0000 AS Money), 1, N'2015-03-02 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1029, 11, CAST(599.0000 AS Money), 1, N'2015-03-02 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1030, 11, CAST(1299.0000 AS Money), 1, N'2015-03-02 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1031, 11, CAST(12129.0000 AS Money), 1, N'2015-03-02 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1032, 11, CAST(749.0000 AS Money), 1, N'2015-03-02 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1033, 11, CAST(999.0000 AS Money), 1, N'2015-03-02 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1034, 11, CAST(6759.0000 AS Money), 1, N'2015-03-02 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1035, 11, CAST(4199.0000 AS Money), 1, N'2015-03-02 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1036, 11, CAST(1755.0000 AS Money), 1, N'2015-03-02 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1038, 11, CAST(2049.0000 AS Money), 1, N'2015-03-02 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1039, 11, CAST(8279.0000 AS Money), 1, N'2015-03-04 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1040, 12, CAST(273.0000 AS Money), 1, N'2016-04-05 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1041, 12, CAST(317.0000 AS Money), 1, N'2016-04-05 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1042, 12, CAST(436.0000 AS Money), 1, N'2016-04-05 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1043, 12, CAST(225.0000 AS Money), 1, N'2016-04-05 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1044, 12, CAST(750.0000 AS Money), 1, N'2016-04-05 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1045, 12, CAST(275.0000 AS Money), 1, N'2016-04-05 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1046, 12, CAST(299.0000 AS Money), 1, N'2016-04-05 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1047, 12, CAST(289.0000 AS Money), 1, N'2016-04-05 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1048, 12, CAST(174.0000 AS Money), 1, N'2016-04-05 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1049, 12, CAST(369.0000 AS Money), 1, N'2016-04-05 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1050, 13, CAST(129.0000 AS Money), 1, N'2015-05-06 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1051, 13, CAST(249.0000 AS Money), 1, N'2015-05-06 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1052, 13, CAST(285.0000 AS Money), 1, N'2015-05-06 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1053, 13, CAST(499.0000 AS Money), 1, N'2015-05-06 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1054, 13, CAST(119.0000 AS Money), 1, N'2015-05-06 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1055, 13, CAST(500.0000 AS Money), 1, N'2015-05-06 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1056, 13, CAST(280.0000 AS Money), 1, N'2015-05-06 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1057, 13, CAST(299.0000 AS Money), 1, N'2015-05-06 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1058, 13, CAST(455.0000 AS Money), 1, N'2015-05-06 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1059, 13, CAST(1444.0000 AS Money), 1, N'2015-05-06 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1060, 14, CAST(119.0000 AS Money), 1, N'2015-04-07 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1061, 14, CAST(58.0000 AS Money), 1, N'2015-04-07 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1062, 14, CAST(96.0000 AS Money), 1, N'2015-04-07 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1063, 14, CAST(199.0000 AS Money), 1, N'2015-04-07 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1064, 14, CAST(59.0000 AS Money), 1, N'2015-04-07 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1066, 14, CAST(169.0000 AS Money), 1, N'2015-04-07 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1067, 14, CAST(161.0000 AS Money), 1, N'2015-04-07 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1068, 14, CAST(73.0000 AS Money), 1, N'2015-04-07 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1069, 14, CAST(155.0000 AS Money), 1, N'2015-04-07 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1071, 14, CAST(198.0000 AS Money), 1, N'2015-04-07 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1072, 15, CAST(50.0000 AS Money), 1, N'2015-12-14 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1073, 15, CAST(30.0000 AS Money), 1, N'2015-12-14 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1074, 15, CAST(399.0000 AS Money), 1, N'2015-12-14 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1075, 15, CAST(707.0000 AS Money), 1, N'2015-12-14 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1076, 15, CAST(899.0000 AS Money), 1, N'2015-12-14 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1077, 15, CAST(1170.0000 AS Money), 1, N'2015-12-14 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1078, 15, CAST(1499.0000 AS Money), 1, N'2015-12-14 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1079, 15, CAST(2355.0000 AS Money), 1, N'2015-12-14 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1080, 15, CAST(1577.0000 AS Money), 1, N'2015-12-14 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1081, 15, CAST(999.0000 AS Money), 1, N'2015-12-14 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1082, 16, CAST(655.0000 AS Money), 1, N'2015-06-15 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1083, 16, CAST(480.0000 AS Money), 1, N'2015-06-15 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1084, 16, CAST(415.0000 AS Money), 1, N'2015-06-15 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1085, 16, CAST(639.0000 AS Money), 1, N'2015-06-15 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1086, 16, CAST(699.0000 AS Money), 1, N'2015-06-15 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1087, 16, CAST(1850.0000 AS Money), 1, N'2015-06-15 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1088, 16, CAST(2459.0000 AS Money), 1, N'2015-06-15 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1089, 16, CAST(1099.0000 AS Money), 1, N'2015-06-15 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1090, 16, CAST(1780.0000 AS Money), 1, N'2015-06-15 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1091, 16, CAST(1799.0000 AS Money), 1, N'2015-06-15 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1092, 18, CAST(5544.0000 AS Money), 1, N'2015-07-12 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1093, 18, CAST(14229.0000 AS Money), 1, N'2015-07-12 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1094, 18, CAST(7039.0000 AS Money), 1, N'2015-07-12 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1095, 18, CAST(14999.0000 AS Money), 1, N'2015-07-12 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1096, 18, CAST(6254.0000 AS Money), 1, N'2015-07-12 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1097, 18, CAST(5130.0000 AS Money), 1, N'2015-07-12 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1098, 18, CAST(11499.0000 AS Money), 1, N'2015-07-12 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1099, 18, CAST(8971.0000 AS Money), 1, N'2015-07-12 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1100, 18, CAST(15799.0000 AS Money), 1, N'2015-07-12 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1101, 18, CAST(7745.0000 AS Money), 1, N'2015-07-12 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1102, 18, CAST(14099.0000 AS Money), 1, N'2015-07-12 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1104, 19, CAST(1999.0000 AS Money), 1, N'2015-04-15 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1106, 19, CAST(2659.0000 AS Money), 1, N'2015-06-12 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1108, 19, CAST(4882.0000 AS Money), 1, N'2015-06-12 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1109, 19, CAST(9777.0000 AS Money), 1, N'2015-06-12 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1110, 19, CAST(5706.0000 AS Money), 1, N'2015-06-12 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1111, 19, CAST(5545.0000 AS Money), 1, N'2015-06-12 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1112, 19, CAST(6129.0000 AS Money), 1, N'2015-06-12 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1113, 19, CAST(2688.0000 AS Money), 1, N'2015-06-12 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1114, 19, CAST(3161.0000 AS Money), 1, N'2015-06-12 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1115, 19, CAST(7510.0000 AS Money), 1, N'2015-06-12 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1116, 20, CAST(4500.0000 AS Money), 1, N'2015-11-11 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1117, 20, CAST(4700.0000 AS Money), 1, N'2015-12-11 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1118, 20, CAST(5500.0000 AS Money), 1, N'2015-12-11 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1122, 20, CAST(6600.0000 AS Money), 1, N'2015-12-11 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1123, 20, CAST(8800.0000 AS Money), 1, N'2015-12-11 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1124, 20, CAST(7500.0000 AS Money), 1, N'2015-12-11 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1125, 20, CAST(7200.0000 AS Money), 1, N'2015-12-11 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1126, 20, CAST(6500.0000 AS Money), 1, N'2015-12-11 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1127, 20, CAST(9500.0000 AS Money), 1, N'2015-12-11 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1128, 20, CAST(7000.0000 AS Money), 1, N'2015-12-11 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1129, 20, CAST(10000.0000 AS Money), 1, N'2015-12-11 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1130, 21, CAST(4300.0000 AS Money), 1, N'2015-10-10 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1131, 21, CAST(5000.0000 AS Money), 1, N'2015-10-11 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1132, 21, CAST(4500.0000 AS Money), 1, N'2015-10-11 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1133, 21, CAST(9000.0000 AS Money), 1, N'2015-10-11 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1134, 21, CAST(6300.0000 AS Money), 1, N'2015-10-11 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1135, 21, CAST(5500.0000 AS Money), 1, N'2015-10-11 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1136, 21, CAST(6700.0000 AS Money), 1, N'2015-10-11 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1137, 21, CAST(6200.0000 AS Money), 1, N'2015-10-11 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1138, 21, CAST(4400.0000 AS Money), 1, N'2015-10-11 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1139, 21, CAST(5800.0000 AS Money), 1, N'2015-10-11 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1140, 21, CAST(4900.0000 AS Money), 1, N'2015-10-11 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1141, 22, CAST(323.0000 AS Money), 1, N'2015-03-06 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1142, 22, CAST(2050.0000 AS Money), 1, N'2015-03-06 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1143, 22, CAST(507.0000 AS Money), 1, N'2015-03-06 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1144, 22, CAST(326.0000 AS Money), 1, N'2015-03-06 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1145, 22, CAST(1929.0000 AS Money), 1, N'2015-03-06 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1146, 22, CAST(968.0000 AS Money), 1, N'2015-03-06 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1147, 22, CAST(1199.0000 AS Money), 1, N'2015-03-06 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1148, 22, CAST(11496.0000 AS Money), 1, N'2015-03-06 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1149, 22, CAST(4326.0000 AS Money), 1, N'2015-03-06 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1150, 22, CAST(8444.0000 AS Money), 1, N'2015-03-06 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1151, 22, CAST(11999.0000 AS Money), 1, N'2015-03-06 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1152, 23, CAST(8499.0000 AS Money), 1, N'2015-02-02 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1153, 23, CAST(7840.0000 AS Money), 1, N'2015-02-02 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1154, 23, CAST(9599.0000 AS Money), 1, N'2015-02-02 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1155, 23, CAST(4263.0000 AS Money), 1, N'2015-02-02 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1156, 23, CAST(27040.0000 AS Money), 1, N'2015-02-02 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1157, 23, CAST(15717.0000 AS Money), 1, N'2015-02-02 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1158, 23, CAST(7523.0000 AS Money), 1, N'2015-02-02 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1159, 23, CAST(9632.0000 AS Money), 1, N'2015-02-02 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1160, 23, CAST(8059.0000 AS Money), 1, N'2015-02-02 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1161, 23, CAST(10655.0000 AS Money), 1, N'2015-02-02 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1162, 23, CAST(14026.0000 AS Money), 1, N'2015-02-02 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1163, 24, CAST(1200.0000 AS Money), 1, N'2015-10-03 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1164, 24, CAST(1500.0000 AS Money), 1, N'2015-10-03 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1165, 24, CAST(1900.0000 AS Money), 1, N'2015-10-03 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1166, 24, CAST(2200.0000 AS Money), 1, N'2015-10-03 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1167, 24, CAST(2500.0000 AS Money), 1, N'2015-10-03 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1168, 24, CAST(2700.0000 AS Money), 1, N'2015-10-03 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1169, 24, CAST(3000.0000 AS Money), 1, N'2015-10-03 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1170, 24, CAST(4000.0000 AS Money), 1, N'2015-10-03 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1173, 24, CAST(5000.0000 AS Money), 1, N'2015-10-03 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1174, 24, CAST(3000.0000 AS Money), 1, N'2015-10-03 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1175, 24, CAST(4500.0000 AS Money), 1, N'2015-10-03 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1176, 27, CAST(20000.0000 AS Money), 1, N'2015-07-07 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1177, 27, CAST(30000.0000 AS Money), 1, N'2015-07-07 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1179, 27, CAST(40000.0000 AS Money), 1, N'2015-07-07 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1181, 27, CAST(35000.0000 AS Money), 1, N'2015-07-07 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1182, 27, CAST(45000.0000 AS Money), 1, N'2015-07-07 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1183, 27, CAST(32000.0000 AS Money), 1, N'2015-07-07 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1184, 27, CAST(28000.0000 AS Money), 1, N'2015-07-07 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1185, 27, CAST(50000.0000 AS Money), 1, N'2015-07-07 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1186, 27, CAST(42000.0000 AS Money), 1, N'2015-07-07 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1187, 27, CAST(48000.0000 AS Money), 1, N'2015-07-07 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1188, 27, CAST(38000.0000 AS Money), 1, N'2015-07-07 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1189, 28, CAST(7000.0000 AS Money), 1, N'2015-09-09 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1190, 28, CAST(6000.0000 AS Money), 1, N'2015-09-09 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1191, 28, CAST(6500.0000 AS Money), 1, N'2015-09-09 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1192, 28, CAST(7800.0000 AS Money), 1, N'2015-09-09 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1193, 28, CAST(8000.0000 AS Money), 1, N'2015-09-09 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1194, 28, CAST(6200.0000 AS Money), 1, N'2015-09-09 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1195, 28, CAST(7100.0000 AS Money), 1, N'2015-09-09 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1196, 28, CAST(9000.0000 AS Money), 1, N'2015-09-09 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1197, 28, CAST(8000.0000 AS Money), 1, N'2015-09-09 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1198, 28, CAST(10000.0000 AS Money), 1, N'2015-09-09 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (1199, 28, CAST(12000.0000 AS Money), 1, N'2015-09-09 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (2126, 29, CAST(1000.0000 AS Money), 1, N'2015-04-03 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (2127, 29, CAST(900.0000 AS Money), 1, N'2015-04-03 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (2128, 29, CAST(1500.0000 AS Money), 1, N'2015-04-03 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (2129, 29, CAST(900.0000 AS Money), 1, N'2015-11-05 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (2130, 29, CAST(750.0000 AS Money), 1, N'2015-04-03 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (2131, 29, CAST(80.0000 AS Money), 1, N'2015-04-03 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (2132, 29, CAST(500.0000 AS Money), 1, N'2015-04-03 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (2133, 29, CAST(50.0000 AS Money), 1, N'2015-04-03 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (2134, 29, CAST(1000.0000 AS Money), 1, N'2015-04-03 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (2135, 29, CAST(1200.0000 AS Money), 1, N'2015-04-03 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (2136, 1024, CAST(1000.0000 AS Money), 1, N'2015-08-11 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (2137, 1024, CAST(1200.0000 AS Money), 1, N'2015-08-11 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (2138, 1024, CAST(1500.0000 AS Money), 1, N'2015-08-11 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (2139, 1024, CAST(2000.0000 AS Money), 1, N'2015-08-11 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (2140, 1024, CAST(1500.0000 AS Money), 1, N'2015-08-11 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (2141, 1024, CAST(2100.0000 AS Money), 1, N'2015-08-11 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (2142, 1024, CAST(2700.0000 AS Money), 1, N'2015-08-11 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (2143, 1024, CAST(1200.0000 AS Money), 1, N'2015-08-11 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (2144, 1024, CAST(1700.0000 AS Money), 1, N'2015-08-11 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (2145, 1024, CAST(2500.0000 AS Money), 1, N'2015-08-11 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (2146, 1025, CAST(1500.0000 AS Money), 1, N'2015-08-03 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (2147, 1025, CAST(1700.0000 AS Money), 1, N'2015-07-04 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (2148, 1025, CAST(2000.0000 AS Money), 1, N'2015-07-04 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (2149, 1025, CAST(500.0000 AS Money), 1, N'2015-07-04 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (2150, 1025, CAST(700.0000 AS Money), 1, N'2015-07-04 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (2151, 1025, CAST(800.0000 AS Money), 1, N'2015-07-04 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (2152, 1025, CAST(950.0000 AS Money), 1, N'2015-07-04 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (2153, 1025, CAST(1100.0000 AS Money), 1, N'2015-07-04 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (2154, 1025, CAST(1150.0000 AS Money), 1, N'2015-07-04 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (2155, 1025, CAST(1400.0000 AS Money), 1, N'2015-07-04 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (2157, 1026, CAST(2000.0000 AS Money), 1, N'2015-08-03 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (2158, 1026, CAST(1500.0000 AS Money), 1, N'2015-08-03 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (2159, 1026, CAST(1700.0000 AS Money), 1, N'2015-08-03 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (2160, 1026, CAST(1200.0000 AS Money), 1, N'2015-08-03 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (2161, 1026, CAST(1700.0000 AS Money), 1, N'2015-08-03 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (2162, 1026, CAST(800.0000 AS Money), 1, N'2015-08-03 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (2163, 1026, CAST(1400.0000 AS Money), 1, N'2015-08-03 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (2164, 1026, CAST(1800.0000 AS Money), 1, N'2015-08-03 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (2165, 1026, CAST(550.0000 AS Money), 1, N'2015-08-03 00:00:00')
INSERT INTO [dbo].[Products] ([Id], [CategoryId], [Price], [IsAvailable], [CreateDate]) VALUES (2166, 1026, CAST(900.0000 AS Money), 1, N'2015-08-03 00:00:00')
SET IDENTITY_INSERT [dbo].[Products] OFF







INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1, N'Ru', N'Lenovo IdeaPad 100-14 (80HH001XUA)', N'????? 14" (1366x768) HD LED, ????????? / Intel Celeron N2840 (2.16 ???) / RAM 2 ?? 
					HDD 500 ?? / Intel HD Graphics / ??? ?? / LAN / Wi-Fi / ???-?????? / DOS / 1.9 ?? / ??????')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (2, N'Ru', N'HP 255G4 (NOY69ES)', N'Экран 15.6” (1366x768) HD LED, матовый / AMD Dual-Core E1-6015 (1.4 ГГц) / RAM 2 ГБ 
					HDD 500 ГБ / AMD Radeon R2 / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / Linux / 2.15 кг / черный')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (4, N'Ru', N'Dell Inspiron 3551 (135C25NIW-22)', N'Экран 15.6" (1366x768) HD WLED, глянцевый / Intel Celeron N2830 (2.16 ГГц) / RAM 2 ГБ 
					HDD 500 ГБ / Intel HD Graphics / Без ОД / Wi-Fi / Bluetooth 4.0 / веб-камера / Windows 8.1 / 2.14 кг / черный')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (23, N'Ru', N'Samsung Galaxy Tab E 9.6" 3G White (SM-T561NZWASEK)', N'Экран 9.6" (1280x800) емкостный MultiTouch / T-Shark2 (1.3 ГГц) / RAM 1.5 ГБ 
					8 ГБ встроенной памяти + microSD / 3G / Wi-Fi 802.11a/b/g/n / Bluetooth 4.0 / основная камера 5 Мп, фронтальная 2 Мп 
					GPS / ГЛОНАСС / Android 4.4 (KitKat) / 490 г / белый')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (24, N'Ru', N'Lenovo TAB 2 A7-10 7" 8GB WiFi Black (59434747)', N'Экран 7" (1024х600) IPS, емкостный MultiTouch / MediaTek MT8127 (1.3 ГГц) / RAM 1 ГБ 
					8 ГБ встроенной памяти + microSD / Wi-Fi / Bluetooth 4.0 
					фронтальная камера 0.3 Мп / A-GPS / Android 4.4 / 269 г / черный')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (25, N'Ru', N'Asus ZenPad 7.0 16GB White (Z370C-1B042A)', N'Экран 7" IPS (1280x800) емкостный MultiTouch / Intel Atom x3-C3200 / RAM 2 ГБ / 16 ГБ встроенной памяти + microSD
					Wi-Fi 802.11 b/g/n / Bluetooth 4.0 / основная камера 5 Мп, фронтальная - 0.3 Мп / GPS / ГЛОНАСС / ОС Android 5.0 (Lollipop) / 272 г / белый')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (26, N'Ru', N'Samsung Galaxy Tab S2 9.7" 32GB Black (SM-T810NZKESEK)', N'Экран 9.7" Super AMOLED (2048x1536) емкостный MultiTouch / Samsung Exynos 5433 (1.9 ГГц + 1.3 ГГц) / RAM 3 ГБ 
					32 ГБ встроенной памяти + microSD / 802.11 a/b/g/n/ac / Bluetooth 4.1 
					основная камера 8 Мп, фронтальная 2.1 Мп / GPS / ГЛОНАСС / Android 5.0 (Lollipop) / 375 г / черный')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (27, N'Ru', N'Lenovo Tab 2 A7-30DC 7" 3G 8GB Black (59444592)', N'Экран 7" (1024х600) IPS, емкостный MultiTouch / MediaTek MT8382M (1.3 ГГц) / RAM 1 ГБ 
					8 ГБ встроенной памяти + microSD / 3G / Wi-Fi / Bluetooth 4.0 
					основная камера 2 Мп + фронтальная 0.3 Мп / GPS / Android 4.4 (KitKat) / 269 г / черный')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (28, N'Ru', N'Prestigio MultiPad 10.1 3G Black (PMT3341_3G)', N'Экран 10.1" IPS (1280x800) емкостный Multi-Touch / Intel Atom X3 C3230 (1.2 ГГц) / RAM 1 ГБ 
					8 ГБ встроенной памяти + поддержка карт памяти microSD / 3G / Wi-Fi / Bluetooth 
					основная камера 2 Мп, фронтальная - 0.3 Мп / Android 5.1 (Lollipop) / 552 г / черный')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (29, N'Ru', N'Jeka JK-103 16GB 3G IPS', N'Экран 10.1" IPS (1024х600), емкостный, MultiTouch / ARM Cortex A7 (1.3 ГГц) / RAM 1 ГБ 
					16 ГБ встроенной памяти + microSD / 3G / Wi-Fi / Bluetooth 4.0 / основная камера 2 Мп, фронтальная - 0.3 Мп 
					GPS / A-GPS / ОС Android 5.1 (Lollipop) / вес 568 г / черный')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (30, N'Ru', N'Prestigio MultiPad Color 2 3G Black (PMT3777_3G_C)', N'Экран 7" IPS (1280x800) емкостный, MultiTouch / Intel Atom x3-C3230RK (1.2 ГГц) / RAM 1 ГБ 
					8 ГБ встроенной памяти + microSD / 3G / Wi-Fi / Bluetooth 4.0 / основная камера 2 Мп, фронтальная - 0.3 Мп 
					GPS / Android 5.1 (Lollipop) / 270 г / черный')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (31, N'Ru', N'Fly Flylife Connect 10.1 3G 2 Black', N'Экран 10.1" IPS (1280х800) емкостный MultiTouch / MediaTek MT8382V/W (1.3 ГГц) / RAM 1 ГБ 
					8 ГБ встроенной памяти + microSD / Wi-Fi / Bluetooth / 3G / основная камера 5 Мп, фронтальная 0.3 Мп 
					GPS / ОС Android 4.2.2 / 624 г / черный')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (34, N'Ru', N'PocketBook 624 Basic Touch Grey (PB624-Y-WW)', N'Диагональ дисплея: 6" / Разрешение: 800х600 / Тип матрицы: E Ink / Количество градаций серого: 16
					Встроенная память: 4 ГБ / Вес: 191 г')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (36, N'Ru', N'PocketBook InkPad 840 Brown', N'Диагональ дисплея: 8" / Разрешение: 1600x1200 / Тип матрицы: E Ink Pearl / Количество градаций серого: 16
					Встроенная память: 4 ГБ / Вес: 350 г')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (6, N'Ru', N'Asus EeeBook E502MA (E502MA-XX0026D) Blue ', N'Экран 15.6" (1366x768) HD, глянцевый / Intel Celeron N2840 (2.16 ГГц) / RAM 4 ГБ 
					HDD 500 ГБ / Intel HD Graphics / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / DOS / 1.86 кг / синий')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (10, N'Ru', N'Acer Aspire ES1-520-392H (NX.G2JEU.002)', N'Экран 15.6'''' (1366x768) HD LED, матовый / AMD E1-2500 (1.4 ГГц) / RAM 4 ГБ 
					HDD 500 ГБ / Radeon HD 8240 / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / Linpus / 2.4 кг / черный
					Цена: 7 199 грн')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (11, N'Ru', N'Lenovo IdeaPad 100S White ', N'кран 11.6" TN (1366x768) WXGA HD LED, глянцевый / Intel Atom Z3735F (1.33 - 1.83 ГГц) / RAM 2 ГБ 
					64 ГБ eMMC / Intel HD Graphics / без ОД / Wi-Fi / Bluetooth / веб-камера / Windows 10 Home / 1 кг / белый')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (12, N'Ru', N'Acer Aspire E5-573G-312U (NX.MVMEU.025) Black-Iron ', N'Экран 15.6'''' (1366x768) HD LED, матовый / Intel Core i3-5005U (2.0 ГГц) / RAM 4 ГБ 
					HDD 500 ГБ / nVidia GeForce 920M, 2 ГБ / Без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / Linux / 2.4 кг / серый с черным')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (21, N'Ru', N' Lenovo IdeaPad 100-15 (80QQ004NUA)', N'Экран 15.6" (1366x768) HD LED, глянцевый / Intel Pentium 3825U (1.9 ГГц) / RAM 4 ГБ 
					HDD 500 ГБ / nVidia GeForce 920M, 1 ГБ / без ОД / LAN / Bluetooth / Wi-Fi / веб-камера / DOS / 2.3 кг / черный')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (32, N'Ru', N'Assistant AP-115G White', N'Экран 10.1" (1024x600) емкостный MultiTouch / MTK6572 Dual Core (1.2 ГГц) / RAM 1 ГБ 
					8 ГБ встроенной памяти + microSD / Wi-Fi b/g/n / 3G / Bluetooth / фронтальная камера 0.3 Мп, тыловая камера 2 Мп 
					GPS / OC Android 4.2 / 530 г / белый')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (33, N'Ru', N'Lenovo Tab 2 A10-70L 16GB LTE Blue (ZA010015UA)', N'Экран 10.1" (1920x1200) IPS емкостный, MultiTouch / MediaTek MT8732 (1.5 ГГц) / RAM 2 ГБ 
					16 ГБ встроенной памяти + microSD / Wi-Fi b/g/n / Bluetooth 4.0 / 3G / LTE / основная камера 8 Мп, фронтальная - 5 Мп 
					GPS / ГЛОНАСС / Beidou / Android 4.4 (KitKat) / 509 г / темно-синий')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (35, N'Ru', N'PocketBook 626 Touch Lux2 Black (PB626-E-CIS)', N'Диагональ дисплея: 6" / Разрешение: 1024х758 / Тип матрицы: E Ink Pearl / Количество градаций серого: 16
					Встроенная память: 4 ГБ / Вес: 208 г')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (37, N'Ru', N'PocketBook 630 Kenzo Grey (PB630-G-CIS-KNZ)', N'Диагональ дисплея: 6" / Разрешение: 1024х758 / Тип матрицы: E Ink Pearl / Количество градаций серого: 16
					Встроенная память: 4 ГБ / Вес: 155 г')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (38, N'Ru', N'PocketBook 614 Basic 2 White (PB614-D-CIS)', N'Диагональ дисплея: 6" / Разрешение: 800х600	/ Тип матрицы: E Ink Pearl / Количество градаций серого: 16
					Встроенная память: 4 ГБ / Вес: 188 г')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (39, N'Ru', N'EvroMedia Е-Учебник Classic Pro', N'Диагональ дисплея: 9.7" / Разрешение: 1200x800	/ Тип матрицы: E Ink Pearl / Количество градаций серого: 16
					Встроенная память: 4 ГБ / Вес: 350 г')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (40, N'Ru', N'PocketBook 630 Sense Brown (PB630-X-CIS)', N'Диагональ дисплея: 6" / Разрешение: 1024х758 / Тип матрицы: E Ink Pearl / Количество градаций серого: 16
					Встроенная память: 4 ГБ / Вес: 155 г')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (41, N'Ru', N'Evromedia E-учебник Classic One', N'Диагональ дисплея: 6" / Разрешение: 800х600 / Тип матрицы: E Ink / Количество градаций серого: 16
					Встроенная память: 4 ГБ / Вес: 191 г')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (42, N'Ru', N' EvroMedia Е-Учебник HD Paper', N'Диагональ дисплея: 6" / Разрешение: 1024х758 / Тип матрицы: E Ink Pearl / Количество градаций серого: 16
					Встроенная память: 4 ГБ / Вес: 155 г')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (43, N'Ru', N'PocketBook Ultra 650 Белый ', N'Диагональ дисплея: 6" / Разрешение: 1024х758 / Тип матрицы: E Ink Pearl / Количество градаций серого: 16
					Встроенная память: 4 ГБ / Вес: 175 г')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (44, N'Ru', N'PocketBook 515 Grey (PB515-Y)', N'Диагональ дисплея: 5" / Разрешение: 800х600 / Тип матрицы: E Ink / Количество градаций серого: 16
					Встроенная память: 4 ГБ / Вес: 131 г')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (45, N'Ru', N'ARTLINE Home H43 v02 (H43v02)', N'AMD Athlon II X4 840 (3.1 ГГц) / RAM 4 ГБ / HDD 1 TБ / nVidia GeForce GT 730, 2 ГБ / DVD±RW / LAN / без ОС
					Цена: 10 175 грн')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (46, N'Ru', N'Lenovo IdeaCentre H535 (57331379)', N'MD Trinity A8-5500 (3.2 - 3.7 ГГц) / RAM 4 ГБ / HDD 500 ГБ / AMD Radeon AHD 7560D / DVD±RW / LAN / кардридер / DOS / клавиатура+ мышь')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (13, N'Ru', N'Asus EeeBook E502MA (E502MA-XX0020D) Blue ', N'Экран 15.6" (1366x768) HD, глянцевый / Intel Pentium N3540 (2.16 - 2.66 ГГц) / RAM 4 ГБ 
					HDD 1 ТБ / Intel HD Graphics / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / DOS / 1.86 кг / синий')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (15, N'Ru', N' Lenovo G50-45 (80E301XLUA) ', N'Экран 15.6" (1366x768) HD LED, глянцевый / AMD Quad-Core A4-6210 (1.8 ГГц) / RAM 2 ГБ 
					HDD 500 ГБ / AMD Radeon R3 / Без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / Windows 10 Home / 2.5 кг / черный')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (17, N'Ru', N'HP 250 G4 (P5R75ES)', N'Экран 15.6” (1366x768) HD LED, матовый / Intel Core i3-4005U (1.7 ГГц) / RAM 4 ГБ 
					HDD 500 ГБ / Intel HD Graphics / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / DOS / 2.15 кг / черный')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (21, N'Ru', N'Lenovo IdeaPad 100-15 (80QQ004NUA)', N'Экран 15.6" (1366x768) HD LED, глянцевый / Intel Pentium 3825U (1.9 ГГц) / RAM 4 ГБ 
					HDD 500 ГБ / nVidia GeForce 920M, 1 ГБ / без ОД / LAN / Bluetooth / Wi-Fi / веб-камера / DOS / 2.3 кг / черный')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (56, N'Ru', N'Intel Core i5-4460 3.2GHz/5GT/s/6MB (BX80646I54460) s1150 BOX', N'Семейство процессора: Intel Core i5 / Тип разъема: Socket 1150 / Поколение процессора Intel: Haswell (четвертое) / Количество ядер: 4
					Внутренняя тактовая частота: 3200 МГц / Интегрированная графика: Intel HD Graphics 4600 / Объем кэш памяти 3 уровня: 6 МБ')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (57, N'Ru', N'AMD FX-6300 3.5GHz/5200MHz /8MB (FD6300WMHKBOX) sAM3+ BOX', N'Семейство процессора: AMD FX-Series / Тип разъема: Socket AM3+ / Количество ядер: 6 
					Внутренняя тактовая частота: 3500 МГц / Интегрированная графика: Нет / Объем кэш памяти 3 уровня: 8 МБ')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (58, N'Ru', N'Intel Core i3-4170 3.7GHz/5GT/s/3MB (BX80646I34170) s1150 BOX', N'Семейство процессора: Intel Core i3 / Тип разъема: Socket 1150 / Поколение процессора Intel: Haswell (четвертое) / Количество ядер: 2
					Внутренняя тактовая частота: 3700 МГц / Интегрированная графика: Intel HD Graphics 4400 / Объем кэш памяти 3 уровня: 3 МБ')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (59, N'Ru', N'Intel Pentium G3260 3.3GHz/5GT/s/3MB (BX80646G3260) s1150 BOX ', N'Семейство процессора: Intel Pentium Dual-Core / Тип разъема: Socket 1150 / Поколение процессора Intel: Haswell (четвертое) / Количество ядер: 2
					Внутренняя тактовая частота: 3300 МГц / Интегрированная графика: Intel HD Graphics / Объем кэш памяти 3 уровня: 3 МБ')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (60, N'Ru', N'Intel Core i7-4790K 4.0GHz/5GT/s/8MB (BX80646I74790K) s1150 BOX', N'Семейство процессора: Intel Core i7 / Тип разъема: Socket 1150 / Поколение процессора Intel: Haswell (четвертое) / Количество ядер: 4
					Внутренняя тактовая частота: 4000 МГц / Интегрированная графика: Intel HD Graphics 4600 / Объем кэш памяти 3 уровня: 8 МБ')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (61, N'Ru', N'Intel Pentium G3250 3.2GHz/5GT/s/3MB (BX80646G3250) s1150 BOX', N'Семейство процессора: Intel Pentium Dual-Core / Тип разъема: Socket 1150 / Поколение процессора Intel: Haswell (четвертое) / Количество ядер: 2
					Внутренняя тактовая частота: 3200 МГц / Интегрированная графика: Intel HD Graphics / Объем кэш памяти 3 уровня: 3 МБ')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (62, N'Ru', N'Intel Core i3-4160 3.6GHz/5GT/s/3MB (BX80646I34160) s1150 BOX', N'Семейство процессора: Intel Core i3 \ Тип разъема: Socket 1150 / Поколение процессора Intel: Haswell (четвертое) / Количество ядер: 2
					Внутренняя тактовая частота: 3600 МГц / Интегрированная графика: Intel HD Graphics 4400 / Объем кэш памяти 3 уровня: 3 МБ')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (63, N'Ru', N'Intel Core i5-4590 3.3GHz/5GT/s/6MB (BX80646I54590) s1150 BOX', N'Семейство процессора: Intel Core i5 \ Тип разъема: Socket 1150 / Поколение процессора Intel: Haswell (четвертое) / Количество ядер: 4
					Внутренняя тактовая частота: 3300 МГц / Интегрированная графика: Intel HD Graphics 4600 / Объем кэш памяти 3 уровня: 6 МБ')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1029, N'Ru', N'Jeka Neo 8GB Black/Blue ', N'8 ГБ / MP3, WMA, WAV, PEG, BMP, AVI, TXT 
					1.8" TFT (160x128) / FM-приемник / miniUSB / 40 х 80 х 9 мм, 19 г / черный с синим')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1030, N'Ru', N'Transcend T-Sonic 350 8GB Blue', N'8 ГБ / MP3, WMA, WAV / OLED / USB 2.0 / FM-приемник / Диктофон / 22 г / синий')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (47, N'Ru', N'ARTLINE Business B23 v05 (B23v05)', N'Intel Celeron Dual Core G1820 (2.7 ГГц) / RAM 4 ГБ / HDD 500 ГБ / Intel HD Graphics / без ОД / LAN / без ОС')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (48, N'Ru', N'Everest Home & Office 1005 (1005_2511)', N'Intel Celeron Dual Core J1800 (2.41 ГГц) / RAM 4 ГБ / HDD 500 ГБ / Intel HD Graphics / без ОД / LAN / без ОС')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (49, N'Ru', N'Everest Home & Office 4060 (4060_5610)', N'Intel Pentium Dual Core G3220 (3.0 ГГц) / RAM 4 ГБ / HDD 500 ГБ / nVidia GeForce GT730, 2 ГБ / без ОД / LAN / без ОС')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (50, N'Ru', N'Everest Home&Office 1006 (1006_4103)', N'AMD A4-4000 (3.0 ГГц) / RAM 4 ГБ / HDD 1 ТБ / AMD Radeon R7 240 2 ГБ / DVD±RW / LAN / без ОС')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (51, N'Ru', N'Everest Home A6620 (6620_7910)', N'AMD Athlon II X4 750K (3.4 ГГц) / RAM 8 ГБ / HDD 1 ТБ / nVidia GeForce GT 730, 2 ГБ / DVD±RW / кардридер / LAN / без ОС')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (52, N'Ru', N'Modecom FreePC', N'Intel Atom Z3735F (1.33 ГГц) / RAM 2 ГБ / HDD 16 ГБ / Intel HD Graphics / без ОД / Wi-Fi / Bluetooth / кардридер / Windows 8.1')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (53, N'Ru', N'Lenovo IdeaCentre C20-00 (F0BB0044UA)', N'Экран 19.5" (1920x1080) LED / Intel Celeron N3050 (1.6 ГГц) / RAM 4 ГБ / HDD 500 ГБ / Intel HD Graphics / DVD-RW / Wi-Fi / Bluetooth / веб-камера / DOS / 3.88 кг / черный / клавиатура + мышь')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (54, N'Ru', N'Everest Game 9085 (9085_9109)', N'Intel Core i7-4790 (3.6 ГГц) / RAM 16 ГБ / SSD 120 ГБ + HDD 2 ТБ / nVidia GeForce GTX 970, 4 ГБ / DVD±RW / LAN / кардридер / без ОС')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (55, N'Ru', N'Everest Game 9085 (9085_9110)', N'Intel Core i7-6700 (3.4 ГГц) / RAM 16 ГБ / SSD 120 ГБ + HDD 2 ТБ / nVidia GeForce GTX 970, 4 ГБ / DVD±RW / LAN / кардридер / без ОС')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1002, N'Ru', N' Мышь Trust Primo Wireless Mouse Black (20322)', N'Тип датчика: Оптический / Интерфейс: Wireless / Количество кнопок: 4 / Особенности: Для обеих рук (симметричный дизайн), Поддержка MacOS
					Совместимость с ОС: Mac OS, Microsoft Windows')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1014, N'En', N'Мышь Acme Compact Wireless Mouse MW13 (4770070874592)', N'Тип датчика: Оптический / Интерфейс: USB / Количество кнопок: 4 / Особенности: Для обеих рук (симметричный дизайн)
					Совместимость с ОС: Microsoft Windows')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1006, N'Ru', N'Наушники Beats Solo 2 Wireless Headphones Black (MHNG2ZM/A) ', N'Тип наушников: Закрытые / Интерфейс проводного подключения: 1 x mini-jack (разъем 3.5 мм) / Длина шнура: 1.361 м / Вес: 205 г')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1007, N'Ru', N'Наушники Trust Primo Headset HS-2100 (11916)	', N'Тип наушников: Открытые / Диапазон частот наушников: 20 - 20000 Гц / Интерфейс проводного подключения: 2 x mini-jack (разъем 3.5 мм)
					Длина шнура: 1.2 м / Вес: 75 г')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1008, N'Ru', N'Клавиатура Genius SlimStar i222 USB (31310046108)', N'Интерфейс: USB / Количество кнопок: 105 / Совместимость с ОС: Microsoft Windows / Тип упаковки: BOX / Подсветка клавиш: Нет')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1009, N'Ru', N'Клавиатура Acme Ultrathin Bluetooth Keyboard BK01 (4770070874271)', N'Интерфейс: Bluetooth / Особенности: Без цифрового блока, Встроенный USB-порт / Совместимость с ОС: Microsoft Windows / Подсветка клавиш: Нет')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1010, N'Ru', N'Монитор 23.8" Dell P2414H Professional (860-BBBQ)', N'Тип матрицы: S-IPS \ Особенности: Поворотный экран (Pivot), USB-концентратор, Регулировка по высоте / Интерфейсы: USB, DisplayPort, DVI, VGA
					Время реакции матрицы: 8 мс / Яркость дисплея: 250 кд/м2 / Контрастность дисплея: 1000:1')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1011, N'Ru', N' Монитор 24" Dell UltraSharp U2412M Black (860-10161)', N'Тип матрицы: E-IPS / Особенности: Поворотный экран (Pivot), USB-концентратор, Регулировка по высоте / Интерфейсы: DisplayPort, DVI, VGA
					Время реакции матрицы: 8 мс / Яркость дисплея: 300 кд/м2 / Контрастность дисплея: 1000:1')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1012, N'Ru', N'Веб-камера Gemix T21 Black (T21B)', N'Разрешение видео: VGA (640x480) / Встроенный микрофон: Есть / Гарантия: 24 месяца')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1013, N'Ru', N'Веб-камера Logitech Webcam HD Pro C920 (960-001055)', N'Разрешение видео: FullHD (1920x1080) / Встроенный микрофон: Есть / Гарантия: 24 месяца')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1039, N'Ru', N'Apple iPod shuffle 2GB Pink', N'2 ГБ / АAC, защищенный AAC, MP3, MP3 VBR, Audible, Apple Lossless, AIFF, WAV / 12.5 г / розовый')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1179, N'Ru', N'Discovery F-16', N'Назначение: Домашние / Конструкция: Складные /  Максимальная скорость: 16 км/ч
					Максимальный вес пользователя: 120 кг / Регулировка угла наклона: Электрическая')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (64, N'Ru', N'Intel Core i5-6500 3.2GHz/8GT/s/6MB (BX80662I56500) s1151 BOX	', N'Семейство процессора: Intel Core i5 / Тип разъема: Socket 1151 / Поколение процессора Intel: Skylake (шестое) / Количество ядер: 4
					Внутренняя тактовая частота: 3200 МГц / Интегрированная графика: Intel HD Graphics 530 / Объем кэш памяти 3 уровня: 6 МБ')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (65, N'Ru', N'Intel Core i7-6700K 4.0GHz/8GT/s/8MB (BX80662I76700K) s1151 BOX', N'Семейство процессора: Intel Core i7 / Тип разъема: Socket 1151 / Поколение процессора Intel: Skylake (шестое) / Количество ядер: 4
					Внутренняя тактовая частота: 4000 МГц / Интегрированная графика: Intel HD Graphics 530 / Объем кэш памяти 3 уровня: 8 МБ')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (66, N'Ru', N'Intel Pentium G3240 3.1GHz/5GT/s/3MB (BX80646G3240) s1150 BOX', N'Семейство процессора: Intel Pentium Dual-Core / Тип разъема: Socket 1150/ Поколение процессора Intel: Haswell (четвертое) / Количество ядер: 2
					Внутренняя тактовая частота: 3100 МГц / Интегрированная графика: Intel HD Graphics / Объем кэш памяти 3 уровня: 3 МБ ')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (67, N'Ru', N'Dr.Web Katana 1 ПК/1 год (скретч-карта)', N'Системные требования: Windows 10/8/8.1/7/Vista SP2/XP SP2+ (32-битные системы) / Windows 10/8/8.1/7/Vista SP2 (64-битные системы) / Оперативная память не менее 100 МБ
					Свободное пространство на жестком диске: ~150 МБ. / Тип продукта: Скретч-карточка / Срок действия лицензии: 1 год (для 1 ПК)')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (68, N'Ru', N'Kaspersky Small Office Security 4(KL4531OCEFW) ', N'Системные требования: Intel Pentium 1 ГГц x86/x64* или выше (или совместимый аналог), 1 ГБ (x86)/2 ГБ (x64) свободной оперативной памяти
					Тип продукта: Корпоративная лицензия / Срок действия лицензии: 1 год')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (69, N'Ru', N'ESET Smart Security 5 на 12 месяцев, для 2 ПК Коробочная версия', N'Системные требования: i386 (Intel ® 80386), amd64 (x86-64) / Операционные системы: Microsoft Windows 2000, Microsoft Windows XP, Microsoft Windows Vista, Microsoft Windows 7, Microsoft Windows Home Server
					Оперативная память: 100 МБ / Свободного места на жестком диске: 400 МБ / Срок действия лицензии: 1 год / Тип продукта: Коробочная версия')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (70, N'Ru', N'McAfee AntiVirus Plus (на 1 год 1ПК, скретч-карточка)', N'Системные требования: 1 ГБ ОЗУ для Vista и Windows 7, 2 ГБ ОЗУ для Windows 8 и выше / 500 МБ свободного места на диске
					Минимальное разрешение экрана: 1024 х 768 или выше / Срок действия лицензии: 1 год / Тип продукта: Скретч-карточка')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (71, N'Ru', N'Kaspersky Internet Securit', N'y для всех устройств 2016 1+1 Device 1 year Renewal Card (продление лицензии на 1 год 1+1 ПК, скретч-карточка) 
					Системные требования: Процессор: не менее 800 МГц / ОЗУ: 512 MБ или больше / ПЗУ: Около 480 МБ свободного дискового пространства  
					ОС: Windows 10 RTM**, 8.1, 8, 7, Vista, XP (32/64-bit***) / Срок действия лицензии: 1 год / Тип продукта: Скретч-карточка')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (72, N'Ru', N'Dr. Web Security Space 2', N'ПК/1 год (1 ПК/2 года) Версия 10.0 Коробочная версия
					Системные требования: Windows 10/8.1/8/7/Vista (32- и 64-битные системы) и XP (32-битная система) / Оперативная память: не менее 512 МБ.
					Cвободное пространство на жестком диске: ~400 МБ / Срок действия лицензии 1 год (для 2 ПК), 2 года (для 1 ПК) / Тип продукта: Коробочная версия')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (75, N'Ru', N'McAfee Internet Security (на 1 год 1ПК, скретч-карточка)', N'Системные требования: 1 ГБ ОЗУ для Vista и Windows 7, 2 ГБ ОЗУ для Windows 8 и выше / 500 МБ свободного места на диске
					Срок действия лицензии: 1 год / Тип продукта: Скретч-карточка')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1033, N'Ru', N'Pixus Six 8GB New White ', N'8 ГБ / MP3, WMA, WAV / OLED черно-белый / FM-приемник 
					Диктофон / USB 2.0 / 80 x 20 x 11 мм, 18 г / белый')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1034, N'Ru', N'NRG Stick Pro ', N'8 ГБ / MP3, WMA, WAV, FLAC / OLED 4х-строчный / FM-приемник / диктофон 
					USB / 84 х 27 х 13 мм, 26 г / черный')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1036, N'Ru', N'Sony Walkman NWZ-WS613 4GB White ', N'4 ГБ / MP3, WMA, Linear PCM, AAC / USB / Bluetooth / NFC / водонепроницаемый / 37 г / белый')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1038, N'Ru', N'FiiO M3 White ', N'8 ГБ / APE / FLAC / WAV / MP3 / AAC / WMA / OGG / 2" TFT-экран / 40 г')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (76, N'Ru', N'Dr. Web Security Space 1', N'ПК/1 год Версия 10.0 Коробочная версия
					Системные требования: Windows 10/8.1/8/7/Vista (32- и 64-битные системы) и XP (32-битная система) / Оперативная память: не менее 512 МБ.
					Cвободное пространство на жестком диске: ~400 МБ / Срок действия лицензии: 1 год (для 1 ПК) / Тип продукта: Коробочная версия')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (77, N'Ru', N'Dr. Web Малый бизнес NEW 5 ПК/1 год Версия 10.0 Коробочная версия', N'Системные требования: Windows 10/8.1/8/7/Vista (32- и 64-битные системы) и XP (32-битная система) / Оперативная память: не менее 512 МБ.
					Cвободное пространство на жестком диске: ~400 МБ / Срок действия лицензии: 1 год (для 5 ПК) / Тип продукта: Коробочная версия')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (78, N'Ru', N'Dr. Web Security Space 3 ПК/1 год Версия 10.0 Коробочная версия', N'Системные требования: Windows 10/8.1/8/7/Vista (32- и 64-битные системы) и XP (32-битная система) / Оперативная память: не менее 512 МБ.
					Cвободное пространство на жестком диске: ~400 МБ / Срок действия лицензии: 1 год (для 3 ПК) / Тип продукта: Коробочная версия')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (79, N'Ru', N'Kaspersky Internet Security для всех устройств 2016 2+1 Device 1 year Base Box', N'Системные требования: Процессор: не менее 800 МГц / ОЗУ: 512 MБ или больше / ПЗУ: Около 480 МБ свободного дискового пространства 
					ОС: Windows 10 RTM**, 8.1, 8, 7, Vista, XP (32/64-bit***)/ Срок действия лицензии: 1 год / Тип продукта: Коробочная версия')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1016, N'Ru', N'Samsung Galaxy J5 J500H/DS Black', N'Экран (5", Super AMOLED, 1280x720)/ Qualcomm Snapdragon 410 (1.2 ГГц)/ основная камера: 13 Мп, фронтальная камера: 5 Мп
					RAM 1.5 ГБ/ 8 ГБ встроенной памяти + microSD/SDHC (до 128 ГБ)/ 3G / GPS/ поддержка 2х SIM-карт (Micro-SIM)
					Android 5.1 (Lollipop) / 2600 мА*ч')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1017, N'Ru', N'Lenovo A7000 Onyx Black ', N'Экран (5.5", IPS, 1280x720)/ MediaTek MT6752 (1.5 ГГц)/ основная камера: 8 Мп, фронтальная камера: 5 Мп
					RAM 2 ГБ/ 8 ГБ встроенной памяти + microSD/SDHC (до 32 ГБ)/ 3G/ GPS/ поддержка 2х SIM-карт (Micro-SIM)
					Android 5.0 (Lollipop) / 2900 мА*ч')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1018, N'Ru', N'Samsung Galaxy A3 2016 Duos SM-A310 16Gb Black', N'Экран (4.7", Super AMOLED, 1280x720)/ Четырехъядерный Qualcomm Snapdragon 410 (1.5 ГГц)/ основная камера: 13 Мп, фронтальная камера: 5 Мп
					RAM 1.5 ГБ/ 16 ГБ встроенной памяти + microSD/SDHC (до 128 ГБ)/ 3G/ LTE/ GPS/ поддержка 2х SIM-карт (Nano-SIM)
					Android 5.1.1 (Lollipop)/ 2300 мА*ч')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1019, N'Ru', N'Samsung Galaxy S6 SS 32GB G920 Gold', N'Экран (5.1", Super AMOLED, 2560х1440)/ Samsung Exynos 7420 (Quad 2.1 ГГц + Quad 1.5 ГГц)/ основная камера: 16 Мп, фронтальная камера: 5 Мп
					RAM 3 ГБ/ 32 ГБ встроенной памяти/ 3G/ LTE/ GPS/ Nano-SIM
					Android 5.0 (Lollipop) / 2550 мА*ч')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1020, N'Ru', N' LG G4 Leather Brown', N'Экран (5.5", IPS, 2560х1440)/ Qualcomm Snapdragon 808 (1.8 ГГц)/ основная камера: 16 Мп, фронтальная камера: 8 Мп
					RAM 3 ГБ/ 32 ГБ встроенной памяти + microSD/SDHC (до 2 ТБ)/ 3G/ LTE/ GPS/ поддержка 2х SIM-карт (Micro-SIM)
					Android 5.1 (Lollipop) / 3000 мА*ч')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1021, N'Ru', N'Apple iPhone 5s 16GB Space Gray', N'Экран (4", IPS, 1136x640)/ Apple A7 (1.3 ГГц)/ основная камера: 8 Мп, фронтальная камера: 1.2 Мп
					RAM 1 ГБ/ 16 ГБ встроенной памяти/ 3G/ LTE/ GPS/ Nano-SIM/ iOS 9/ 1560 мА*ч')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1022, N'Ru', N'izu M2 Note 16GB White с наушниками EP-21HD (Международная версия)', N'Экран (5.5", IGZO, 1920x1080)/ MediaTek MT6753 (1.3 ГГц)/ основная камера: 13 Мп, фронтальная камера: 5 Мп
					RAM 2 ГБ/ 16 ГБ встроенной памяти + microSD/SDHC (до 128 ГБ)/ 3G/ LTE/ GPS/ поддержка 2х SIM-карт (Nano-SIM)
					Android 5.1 (Lollipop) / 3100 мА*ч')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1189, N'Ru', N'Reebok One Series GB50 (RVON-10401BK)', N'Тип: Электромагнитные / Уровни нагрузки: 32 / Количество программ: 23 / Максимальный вес пользователя: 120 кг')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1190, N'Ru', N' Reebok One Series GB40 (RVON-10101BK)', N'Тип: Электромагнитные / Уровни нагрузки: 8 / Максимальный вес пользователя: 110 кг / Количество программ: 4')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1191, N'Ru', N'Sportop B800P+ ', N'Тип: Электромагнитные / Уровни нагрузки: 16 / Максимальный вес пользователя: 130 кг / Количество программ: 16')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1023, N'Ru', N'Samsung Galaxy S3 Neo Duos I9300i Black', N'Экран (4.8", Super AMOLED, 1280x720)/ Qualcomm MSM8226 Snapdragon 400 (1.4 ГГц)/ основная камера: 8 Мп, фронтальная камера: 1.9 Мп
					RAM 1.5 ГБ/ 16 ГБ встроенной памяти + microSD/SDHC (до 64 ГБ)/ 3G/ GPS/ поддержка 2х SIM-карт (Micro-SIM)
					Android 4.3 (Jelly Bean) / 2100 мА*ч')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1025, N'Ru', N'Xiaomi Redmi Note 2 16GB Gray', N'Экран (5.5", IPS, 1920x1080)/ MediaTek Helio X10 MT6795 (2.0 ГГц)/ основная камера: 13 Мп, фронтальная камера: 5 Мп
					RAM 2 ГБ/ 16 ГБ встроенной памяти + microSD/SDHC (до 32 ГБ)/ 3G/ LTE/ GPS/ поддержка 2х SIM-карт (Micro-SIM)
					Android 5.0 (Lollipop) / 3060 мА*ч')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1026, N'Ru', N'Microsoft Lumia 640 XL (Nokia) DS Cyan', N'Экран (5.7", IPS, 1280x720)/ Qualcomm Snapdragon 400 (1.2 ГГц)/ основная камера: 13 Мп, фронтальная камера: 5 Мп
					RAM 1 ГБ/ 8 ГБ встроенной памяти + microSD/SDHC (до 128 ГБ)/ 3G/ GPS/ поддержка 2х SIM-карт (Micro-SIM)
					Windows Phone 8.1/ 3000 мА*ч')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1027, N'Ru', N'Lenovo A2010 Black ', N'Экран (4.5", TN, 854x480)/ MediaTek MTK6735M (1.0 ГГц)/ основная камера: 5 Мп, фронтальная камера: 2 Мп
					RAM 1 ГБ/ 8 ГБ встроенной памяти + microSD/SDHC (до 32 ГБ)/ 3G/ GPS/ поддержка 2х SIM-карт (Micro-SIM)
					Android 5.1 (Lollipop) / 2000 мА*ч')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1028, N'Ru', N'Sony Walkman NWZ-A15 16GB Blue', N'16 ГБ / MP3, WMA, FLAC, L-PCM, AAC, HE-AAC, ALAC, AIFF, WAV, AVCHD, MPEG4, WMV9, JPEG 
					2.2" TFT QVGA (320 x 240) / FM-радио / NFC / Bluetooth / USB / 66 г / голубой')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1031, N'Ru', N'Apple iPod touch 64GB Blue', N'64 ГБ / AAC, защищенный AAC, HE-AAC, MP3, MP3 VBR, Audible, Apple Lossless, AIFF, WAV, H.264, MPEG-4, M-JPEG 
					сенсорный 4" Multi-Touch дисплей / камера 8 Мп + фронтальная камера 1.2 Мп 
					Wi-Fi / Bluetooth 4.1 / iOS 8 / 88 г / голубой')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1035, N'Ru', N'Apple iPod nano 7Gen 16GB Space Gray', N'16 ГБ / АAC, защищенный AAC, HE-AAC, MP3, MP3 VBR, Audible, Apple Lossless, AIFF, WAV, H.264, M4V, MP4, MOV, MPEG-4 
					2.5" Multi-Touch дисплей / FM-радио / Bluetooth 4.0 / 31 г / серый')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1040, N'Ru', N' Сетевой адаптер E-Power 1 USB + holder 2.1 A', N'Тип: Сетевые / Подходит для зарядки: Электронных книг, Планшетов, Мобильных телефонов
					Количество USB-портов 1 / Дополнительные характеристики: LED индикация процесса зарядки / Цвет Black / Гарантия: 6 месяцев')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1041, N'Ru', N'Автомобильное зарядное устройство E-Power MicroUSB', N'Тип: Автомобильные / Подходит для зарядки: Электронных книг, Планшетов, Мобильных телефонов
					Количество USB-портов: 1 / Дополнительные характеристики: LED индикация процесса зарядки / Цвет: Black / Гарантия: 6 месяцев')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1042, N'Ru', N'Сетевое зарядное устройство E-Power кабель Smart', N'Тип: Сетевые / Подходит для зарядки: Электронных книг, Планшетов, Мобильных телефонов
					Количество USB-портов: 2 / Дополнительные характеристики: LED индикация процесса зарядки / Цвет: Black / Гарантия: 6 месяцев')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1043, N'Ru', N'Сетевое зарядное устройство Pixus Charge One Turquoise', N'Тип: Сетевые / Подходит для зарядки: Электронных книг, Планшетов, Мобильных телефонов / Количество USB-портов: 1
					Кабель: 1.2 м / Цвет: Turquoise / Гарантия: 12 месяцев')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1044, N'Ru', N' Универсальный зарядный комплект E-Power 3 в 1', N'Тип: Автомобильные, Сетевые \ Подходит для зарядки: Электронных книг, Планшетов, Мобильных телефонов
					Количество USB-портов: 2 / Дополнительные характеристики: LED индикация процесса зарядки / Цвет: Black / Гарантия: 6 месяцев')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1192, N'Ru', N'Sportop B600', N'Тип: Магнитные / Уровни нагрузки: 8 / Максимальный вес пользователя: 105 кг / Количество программ: Нет')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1193, N'Ru', N'InterFit Bike Drive (K.07)', N'Тип: Магнитные / Уровни нагрузки: 8 / Максимальный вес пользователя: 120 кг / Количество программ: 8')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1194, N'Ru', N'HouseFit Kinetic B1.0 (KINETIC B1.0)', N'Тип: Магнитные / Уровни нагрузки: 8 / Максимальный вес пользователя: 120 к, / Количество программ: Нет')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1195, N'Ru', N'EnergyFIT BC1200 ', N'Тип: Магнитные / Уровни нагрузки: 8 / Максимальный вес пользователя: 110 кг / Количество программ: Нет')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1045, N'Ru', N'Сетевое зарядное устройство Logan Quad USB Wall Charger 5V 4A CH-4 Orange', N'ип: Сетевые / Подходит для зарядки: Электронных книг, Планшетов, Мобильных телефонов
					Совместимость: Мобильные телефоны, смартфоны, фотоаппараты, mp3-плееры, планшеты с возможностью зарядки от USB порта
					Количество USB-портов: 4 / Цвет: Orange / Гарантия: 12 месяцев')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1046, N'Ru', N' Автомобильное зарядное устройство E-Power кабель MicroUSB', N'Тип: Автомобильные / Подходит для зарядки: Электронных книг, Планшетов, Мобильных телефонов
					Совместимость: Любой кабель с USB и MicroUSB / Количество USB-портов: 2 / Дополнительные характеристики: LED индикация процесса зарядки
					Цвет: Black / Гарантия: 6 месяцев')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1047, N'Ru', N'Сетевое зарядное устройство Global MSH-TR-071 c кабелем для iPhone 5, 6 White', N'Тип: Сетевые / Подходит для зарядки: Планшетов, Мобильных телефонов / Совместимость: iPhone 5, iPhone 6
					Цвет: White / Гарантия: 12 месяцев')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1048, N'Ru', N'Сетевое зарядное устройство Drobak Power Dual 220V-USB White/Black', N'Тип: Сетевые / Подходит для зарядки: Электронных книг, Планшетов, Мобильных телефонов / Количество USB-портов: 2
					Дополнительные характеристики: Прочный корпус, стойкий к царапинам и ударам / Цвет: White-Black / Гарантия: 6 месяцев')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1049, N'Ru', N' Сетевое зарядное устройство Logan Quad USB Wall Charger 5V 2.6A CHC-4 White', N'Тип: Сетевые / Подходит для зарядки: Электронных книг, Планшетов, Мобильных телефонов
					Совместимость: Мобильные телефоны, смартфоны, фотоаппараты, mp3-плееры, планшеты с возможностью зарядки от USB порта
					Количество USB-портов: 4 / Цвет: White / Гарантия: 12 месяцев')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1050, N'Ru', N'Kingston MicroSDHC/MicroSDXC 16GB Class 10 UHS-I + SD адаптер', N'тандарт памяти: MicroSD / Объём памяти: 16 ГБ / Размеры:  15 x 11 мм / Гарантия: 60 месяцев')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1051, N'Ru', N'Kingston MicroSDHC/MicroSDXC 32GB Class 10 UHS-I + SD адаптер', N'Стандарт памяти: MicroSD / Объём памяти: 32 ГБ / Размеры: 15 x 11 мм / Гарантия: 60 месяцев')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1052, N'Ru', N'Transcend SDHC 32GB Class10 UHS-I 400X', N'Стандарт памяти: SD / Объём памяти: 32 ГБ / Размеры: 32 x 24 мм / Гарантия 60 месяцев')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1053, N'Ru', N'Kingston MicroSDHC 32GB Class 10 UHS-I U3 + SD-adapter', N'тандарт памяти: MicroSD / Объём памяти: 32 ГБ / Размеры 11 x 15 x 1 мм / Гарантия 60 месяцев')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1054, N'Ru', N'Transcend microSDHC 16GB Class 10 UHS-I Premium', N'Стандарт памяти: MicroSD / Объём памяти: 16 ГБ / Размеры: 11 x 15 x 1 мм / Гарантия: 60 месяцев')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1055, N'Ru', N'Transcend microSDXC 64GB Class 10 UHS-I Premium + SD-adapter ', N'Стандарт памяти: MicroSD / Объём памяти: 64 Г / Размеры: 11 x 15 x 1 мм / Гарантия: 60 месяцев')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1056, N'Ru', N'Transcend MicroSDHC 32GB Class 10 + P3 Card Reader', N'Стандарт памяти MicroSD / Объём памяти: 32 ГБ / Размеры: 11 x 15 x 1 (micro) / 32.7 x 16.0 x 7.8 (reader) мм / Гарантия: 24 месяца')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1057, N'Ru', N'Kingston Ultimate SDHC 16GB Class 10 UHS-I', N'Стандарт памяти: SD / Объём памяти: 16 ГБ / Размеры: 24 x 32 x 2.1 мм / Гарантия: 60 месяцев')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1058, N'Ru', N'Pretec MicroSDXC 64GB Class 10 UHS-I + adapter', N'Стандарт памяти: MicroSD / Объём памяти: 64 ГБ / Размеры: 15 x 11 x 1 мм / Гарантия: 12 месяцев')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1059, N'Ru', N' Kingston MicroSDHC/MicroSDXC 128GB Class 10 UHS-I + SD адаптер', N'Стандарт памяти: MicroSD / Объём памяти: 128 ГБ / Размеры: 15 x 11 мм / Гарантия: 60 месяцев')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1060, N'Ru', N'Gorilla 2.5D для Xiaomi Redmi Note 2 (Note2Glass)', N'Тип: Защитное стекло / Вид: Противоударные / Назначение: Для мобильных телефонов / Совместимость: Xiaomi Redmi Note 2
					Толщина: 0.26 мм / Олеофобное покрытие / Твердость поверхности: 9 / Кромка: 2.5D / Гарантия: 12 месяцев')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1061, N'Ru', N'Spolky для Lenovo A2010', N'Тип: Пленки / Вид: Глянцевые / Назначение: Для мобильных телефонов / Совместимость: Lenovo A2010')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1062, N'Ru', N'Drobak для Samsung Galaxy J5', N'Тип: Пленки / Вид: Глянцевые / Назначение: Для мобильных телефонов / Размер: 5 " / Совместимость: Samsung Galaxy J5 / Гарантия: 14 дней')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1066, N'Ru', N'Global Shield Multi-Matte для Apple iPhone 5/5S', N'Тип: Пленки / Вид: Матовые / Назначение: Для мобильных телефонов / Совместимость: Apple iPhone 5/5S')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1064, N'Ru', N'robak Tempered Glass для Samsung Galaxy Grand Prime G530H', N'Тип: Защитное стекло / Вид: Глянцевые / Назначение: Для мобильных телефонов / Размер: 5 "
					Совместимость: Samsung Galaxy Grand Prime G530H / Дополнительные характеристики: Толщина: 0.33 мм / Гарантия: 14 дней')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1067, N'Ru', N'Auzer для Lenovo A536 ', N'Тип Защитное стекло / Вид: Глянцевые/ Назначение: Для мобильных телефонов  
					Размер: 5 / Совместимость: Lenovo A536/ Дополнительные характеристики: Толщина: 0.33 мм')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1068, N'Ru', N' Drobak Tempered Glass для Samsung Galaxy J7', N'Тип: Защитное стекло / Вид: Глянцевые / Назначение: Для мобильных телефонов 
					Размер: 5.5 / Совместимость: Samsung Galaxy J7 SM-J700H / Дополнительные характеристики: Толщина: 0.33 мм / Гарантия: 14 дней')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1069, N'Ru', N' Drobak Diamond универсальная для планшетов 7"', N'Тип: Пленки / Назначение: Для планшетов / Размер: 7 " / Совместимость: Для устройства с диагональю экрана 7"
					Ширина: 152 мм / Высота: 92 мм')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1071, N'Ru', N'robak Tempered Glass для Microsoft (Nokia) Lumia 535 DS', N'Тип: Защитное стекло / Вид: Глянцевые / Назначение: Для мобильных телефонов / Размер: 5 " / Совместимость: Microsoft (Nokia) Lumia 535 DS
					Дополнительные характеристики: Прочность: 9H / Толщина: 0.33 мм / Гарантия: 14 дней')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1063, N'Ru', N'ColorWay для Apple iPhone 5/5s/5c', N'Тип: Защитное стекло / Назначение: Для мобильных телефонов / Размер: 4 " / Совместимость: Apple iPhone 5/5s/5c / Дополнительные характеристики: Твердость: H9
					Толщина: 0.33 мм / Закругленные края: 2.5D / Гарантия: 14 дней')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1072, N'Ru', N'Стартовый пакет Vodafone Red ', N'Назначение: Частным клиентам / Использование: Для звонков и Интернета, Для международных звонков, Для роуминга
					Тип: Стартовый пакет / География использования: Вся Украина')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1073, N'Ru', N'Стартовый пакет 3Mob 3G Смарт', N'Назначение: Частным клиентам / Использование: Для Интернета / Тип: Стартовый пакет
					География использования: Вся Украина / Гарантия: 12 месяцев')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1074, N'Ru', N'Набор "Интертелеком мобильный Wi-Fi роутер" Huawei EC 5220u-1', N'Тип: Стартовый набор (модем + подключение) / Поддержка стандартов: 3G / Максимальная скорость приема данных: 3.1 Мбит/с
					Максимальная скорость отправки данных: 1.8 Мбит/с / Вес: 25 г / Комплектация: Модем Huawei EC 176,Справочник пользователя,Гарантийный талон
					Размеры: 78.5 х 26 х 10.5 мм / Гарантия: 6 месяцев')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1075, N'Ru', N'3G Модем ZTE MF710М ', N'Тип: Модем (без подключения) / Поддержка стандартов: 3G, GSM / Максимальная скорость приема данных: до 21.6 Мбит/с
					Максимальная скорость отправки данных: до 11 Мбит/с / GSM: 850/900/1800/1900 МГц
					Комплектация: 3G Модем, Справочник пользователя, Гарантийный талон
					Размеры: 88.7 х 27.3 х 10.5 / Гарантия: 6 месяцев')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1076, N'Ru', N'3G Модем Huawei E3531i-1 ', N'Тип: Модем (без подключения) / Поддержка стандартов: 3G, GSM / Максимальная скорость приема данных: до 21.6 Мбит/с
					Поддерживаемые ОС: Windows XP SP3, Vista SP1/SP2, 7, 8, 8.1 (исключая RT версию), Mac OS X10.7, 10.8, 10.9
					Размеры :84 x 27 x 10.5 мм / Гарантия: 12 месяцев')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1077, N'Ru', N' 3G Роутер ZTE MF65M ', N'Тип: Роутер (без подключения) / Поддержка стандартов: 3G, GSM / Максимальная скорость приема данных: до 21.6 Мбит/с
					Максимальная скорость отправки данных: до 11 Мбит/с / Аккумулятор: Емкость: 1500 мА*ч, Время работы: до 4.5 часов, Время ожидания: до 200 часов')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1131, N'Ru', N'HANSA AMG 20 BFH', N'Тип: с грилем. / Тип управления: сенсорное. / Объем(л): 20. / Мощность микроволн: 700 Вт. О
					чистка паром: нет. / Габариты: 30,4х45,2х33 см. / Цвет: черный.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1132, N'Ru', N' SAMSUNG FW77SR-B', N'Тип: обычная (соло). / Тип управления: кнопочное. / Объем(л): 20. / Мощность микроволн: 800 Вт. 
					Габариты: 31,2х48,9х35 см. / Цвет: черный.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1134, N'Ru', N'SAMSUNG FW77SR-W', N'Тип: обычная (соло). / Тип управления: кнопочное. / Объем(л): 20. / Мощность микроволн: 800 Вт.
					Габариты: 27,5х48,9х31,2 см. / Цвет: белый.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1078, N'Ru', N'Набор "Интертелеком мобильный Wi-Fi роутер" Huawei EC 5321u-1', N'Тип: Стартовый набор (модем + подключение) / Поддержка стандартов: CDMA / Максимальная скорость приема данных: 14.7 Мбит/с
					Максимальная скорость отправки данных: 5.4 Мбит/с / Вес: 150 г / Комплектация: Модем Huawei EC 5321u-1,Справочник пользователя,Гарантийный талон
					Размеры: 92.8 × 60 × 13.8 мм / Гарантия: 6 месяцев')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1079, N'Ru', N'3G Роутер Huawei E5356s-2 ', N'Тип: Роутер (без подключения) / Поддержка стандартов: 3G, GSM /  Максимальная скорость приема данных до 43.2 Мбит/с
					Поддерживаемые ОС:Windows XP, Vista, 7, 8Mac OS X10.6, 10.7, 10.8 / Размеры 93.2 x 60 x 14.5 мм / Гарантия 12 месяцев')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1080, N'Ru', N'3G Роутер Huawei E5330Bs-2 ', N'Тип: Роутер (без подключения) / Максимальная скорость приема данных: до 21.6 Мбит/с / Емкость аккумулятора: 1500 мА*ч 
					Поддерживаемые ОС:Windows XP SP3, Vista SP1/SP2, 7, 8 (исключая RT версию), Mac OS X10.6, 10.7, 10.8
					Размеры: 92.8 x 60 x 14 мм / Гарантия: 12 месяцев')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1081, N'Ru', N'Набор "Интертелеком 3G Турбо" Huawei EC 306-2', N'Тип: Стартовый набор (модем + подключение) / Поддержка стандартов: 3G / Максимальная скорость приема данных: 14.7 Мбит/с
					Максимальная скорость отправки данных: 5.4 Мбит/с / Вес: 35 г / Размеры: 89 х 28 х 13.5 мм / Гарантия: 6 месяцев')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1082, N'Ru', N'Jabra Mini Black', N'Спецификация Bluetooth: Bluetooth 4.0 / Время работы от батареи: В режиме разговора: до 9 часов 
					В режиме ожидания: до 9 дней ')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1083, N'Ru', N'Gemix BH-06 Black', N'Спецификация Bluetooth: 4.1 / Время работы от батареи: Время работы в режиме разговора — до 8 ч 
					Время работы в режиме прослушивания музыки — до 8 ч / Время работы в режиме ожидания – приблизительно 120 ч')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1084, N'Ru', N'Jabra BT2046', N'Спецификация Bluetooth: Bluetooth 2.1 + EDR / Разъем: Проприетарный / Время работы от батареи: Время работы в режиме разговора: до 8 часов
					Время работы в режиме ожидания: 240 часов / Время зарядки: 2 часа / Вес: 10 г')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1085, N'Ru', N'Gemix BH-03 Black', N'Спецификация Bluetooth: 3.0 / Время работы от батареи: Время работы в режиме разговора — до 7 ч 
					Время работы в режиме прослушивания музыки — до 4 ч / Время работы в режиме ожидания – приблизительно до 100 ч')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1086, N'Ru', N'Jabra Classic Black', N'Спецификация Bluetooth: Bluetooth 4.0 / Время работы от батареи: Время работы в режиме разговора: до 9 часов
					Время работы в режиме ожидания: 9 дней / Время зарядки: 2 часа')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1087, N'Ru', N'Sennheiser EZX 80 2in1', N'Спецификация Bluetooth: Bluetooth 3.0 + EDR / Время работы от батареи 10 часов в режиме разговора / 10 дней режиме ожидания
					Цвет Black / Гарантия 12 месяцев')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1088, N'Ru', N'Sennheiser Communications VMX 200 II EU	', N'Спецификация Bluetooth Bluetooth 3.0 + EDR / поддержка профилей: A2DP + AVRCP + HSP + HFP \Время работы от батареи: До 10 часов непрерывного разговора
					До 12 дней в режиме ожидания / Гарантия: 12 месяцев')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1089, N'Ru', N'Jabra Style Black', N'Спецификация Bluetooth: Bluetooth 4.0 / Время работы от батареи: Время работы в режиме разговора: до 6 часов
					Время работы в режиме ожидания: до 7 дней / Время зарядки: 2 часа / Вес: 10 г')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1090, N'Ru', N'Jabra Stealth', N'Спецификация Bluetooth: Bluetooth 4.0 / Время работы от батареи: Время работы в режиме разговора: до 6 часов
					Время работы в режиме ожидания: до 10 дней / Время зарядки: 2 часа / Вес: 7.9 грамм')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1098, N'Ru', N'SAMSUNG RB31FSRNDWW ', N'Тип холодильника: двухкамерный. / Общий объем холодильника: 331 л. / Полезный объем холод. камеры: 212 л.
					Полезный объем мороз. камеры: 98 л. / Дисплей: нет. / Тип управления: электронное.
					No Frost (Frost Free) : холодильное+морозильное отделения / Уровень шума: 37 дБ. / Габариты (ВхШхГ): 185x59,5x66,8 см.
					Вес: 65 кг. / Цвет: белый.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1130, N'Ru', N'SAMSUNG FW77SSTR', N'Тип: обычная (соло). / Тип управления: кнопочное. / Объем(л): 20. / Мощность микроволн: 800 Вт. 
					Габариты: 31,2х48,9х35 см. / Цвет: нержавеющая сталь.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1091, N'Ru', N'Jabra Storm Black', N'Спецификация Bluetooth: Bluetooth 4.0 / Время работы от батареи: Время работы в режиме разговора: до 10 часов
					Время работы в режиме ожидания: 10 дней / Время зарядки: 2 часа / Вес: 7.9 г')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1092, N'Ru', N'SNAIGE FR-240.1101AA', N'Тип холодильника: двухкамерный /  Общий объем холодильника: 220 л /  Полезный объем холод. камеры: 166 л  
					Полезный объем мороз. камеры: 46 л /  Дисплей: нет/  Тип управления: механическое /  No Frost (Frost Free) : нет 
					Уровень шума: 39 дБ /  Габариты (ВхШхГ): 144х56х60 см. /  Цвет: белый.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1093, N'Ru', N'SAMSUNG RB31FSRNDEF', N'Тип холодильника: двухкамерный. /  Общий объем холодильника: 331 л. / Полезный объем холод. камеры: 212 л.
					Полезный объем мороз. камеры: 98 л. /  Дисплей: нет. /  Тип управления: электронное. 
					No Frost (Frost Free) : холодильное+морозильное отделения /  Уровень шума: 37 дБ. /  Габариты (ВхШхГ): 185x59,5x66,8 см. 
					Вес: 65 кг. / Цвет: бежевый.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1099, N'Ru', N'INDESIT NBS 18 AA UA ', N'Тип холодильника: двухкамерный. / Общий объем холодильника: 339 л. / Полезный объем холод. камеры: 233 л. 
					Полезный объем мороз. камеры: 85 л. / Дисплей: нет. / Тип управления: механическое. / No Frost (Frost Free) : нет.
					Уровень шума: 39 дБ. / Габариты (ВхШхГ): 185х60х66 см. / Цвет: белый.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1100, N'Ru', N'LG GA-B419SQCL ', N'Тип холодильника: двухкамерный. / Общий объем холодильника: 354 л. / Полезный объем холод. камеры: 225 л. 
					Полезный объем мороз. камеры: 87 л. / Дисплей: нет. / Тип управления: электронное. 
					No Frost (Frost Free) : холодильное+морозильное отделения . / Уровень шума: 41 дБ. / Габариты (ВхШхГ): 190,7x59,5x64,3 см. 
					Вес: 75 кг. / Цвет: белый.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1101, N'Ru', N'SNAIGE FR-275.1101AA ', N'Тип холодильника: двухкамерный. / Общий объем холодильника: 260 л. / Полезный объем холод. камеры: 201 л. 
					Полезный объем мороз. камеры: 57 л. / Дисплей: нет. / Тип управления: механическое. / No Frost (Frost Free) : нет. 
					Уровень шума: 39 дБ. / Габариты (ВхШхГ): 169х56х60 см. / Цвет: белый.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1102, N'Ru', N'INDESIT NTS 14 AA (UA) ', N'Тип холодильника: двухкамерный. / Общий объем холодильника: 249 л. / Полезный объем холод. камеры: 194 л. 
					Полезный объем мороз. камеры: 51 л. / Дисплей: нет. / Тип управления: механическое. / No Frost (Frost Free) : нет.
					Уровень шума: 39 дБ. / Габариты (ВхШхГ): 145х60х62 см. / Цвет: белый.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1094, N'Ru', N'BOSCH KGV39VW31 ', N'Тип холодильника: двухкамерный. / Общий объем холодильника: 347 л. / Полезный объем холод. камеры: 250 л. 
					Полезный объем мороз. камеры: 94 л. / Дисплей: нет. / Тип управления: электронное. / No Frost (Frost Free) : нет. 
					Уровень шума: 39 дБ. / Габариты (ВхШхГ): 201x60x65 см. / Цвет: белый')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1095, N'Ru', N'ATLANT XM-6025-100', N'Тип холодильника: двухкамерный. / Общий объем холодильника: 384 л. / Полезный объем холод. камеры: 225 л.
					Полезный объем мороз. камеры: 129 л. / Дисплей: нет. / Тип управления: механическое. / No Frost (Frost Free) : нет. 
					Уровень шума: 39-42 дБ. / Габариты (ВхШхГ): 205х60х63 см. / Вес: 87 кг. / Цвет: белый')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1096, N'Ru', N'LG GA-B419SEQL', N'Тип холодильника: двухкамерный. / Общий объем холодильника: 354 л. / Полезный объем холод. камеры: 225 л.
					Полезный объем мороз. камеры: 87 л. / Дисплей: есть. / Тип управления: электронное.
					No Frost (Frost Free) : холодильное+морозильное отделения . / Уровень шума: 41 дБ. / Габариты (ВхШхГ): 190,7х59,5х64,3 см. 
					Вес: 75 кг. / Цвет: бежевый.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1097, N'Ru', N'INDESIT NBS 20 AA (UA)', N'Тип холодильника: двухкамерный. / Общий объем холодильника: 363 л. / Полезный объем холод. камеры: 233 л.
					Полезный объем мороз. камеры: 108 л. / Дисплей: нет. / Тип управления: механическое. / No Frost (Frost Free) : нет. 
					Уровень шума: 39 дБ. / Габариты (ВхШхГ): 200х60х66 см. / Цвет: белый.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1104, N'Ru', N'NORD 100-2В Белая ', N'Тип: газовая. / Газ-контроль: нет. / Зоны нагрева: газовые. / Материал решеток поверхности: эмалированные. 
					Тип духовки: газовая. / Полезный объем: 62 л. / Гриль: нет. / Конвекция: нет. / Таймер: нет. / Подсветка: нет. 
					Габариты (ВхШхГ): 85х50х60 см. / Вес: 32,5 кг. / Цвет: белый.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1106, N'Ru', N'GRETA 1470-0012 (WM)', N'Тип: газовая. / Газ-контроль: нет. / Зоны нагрева: газовые. / Материал решеток поверхности: эмалированные. 
					Тип духовки: газовая. / Полезный объем: 54 л. / Гриль: нет. / Конвекция: нет. / Таймер: нет. / Подсветка: нет. 
					Габариты (ВхШхГ): 85х50х54 см. / Вес: 31 кг. / Цвет: белый.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1108, N'Ru', N'ZANUSSI ZCE9550G1W ', N'
					Тип: электрическая. / Зоны нагрева: электрические. / Материал решеток поверхности: нет. / Тип духовки: электрическая.
					Полезный объем: 56 л. / Гриль: есть. / Конвекция: есть. / Таймер: нет. / Подсветка: есть. / Габариты (ВхШхГ): 85,5х50х60 см. / Цвет: белый.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1109, N'Ru', N'KAISER HGG 52511 W ', N'Тип: газовая. / Газ-контроль: поверхности+духовки. / Зоны нагрева: газовые. / Материал решеток поверхности: чугунные. 
					Тип духовки: газовая. / Полезный объем: 58 л. / Гриль: есть. / Конвекция: нет. / Таймер: есть. / Подсветка: есть. 
					Габариты (ВхШхГ): 85х50х60 см. / Вес: 43,9 кг. / Цвет: белый/черное зеркальное стекло.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1110, N'Ru', N'HANSA FCEW 53000', N'Тип: электрическая. / Зоны нагрева: электрические. / Материал решеток поверхности: нет. / Тип духовки: электрическая. 
					Полезный объем: 69 л. / Гриль: нет. / Конвекция: нет. / Таймер: нет. / Подсветка: есть. 
					Габариты (ВхШхГ): 85х50х60 см. / Вес: 40 кг. / Цвет: белый.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1111, N'Ru', N'HANSA FCMW53050', N'Тип: комбинированная (газ+электро). / Газ-контроль: нет. / Зоны нагрева: газовые, электрические. 
					Материал решеток поверхности: эмалированные. / Тип духовки: электрическая. / Полезный объем: 69 л. / Гриль: есть. 
					Конвекция: нет. / Таймер: нет. / Подсветка: есть. / Габариты (ВхШхГ): 85х50х60 см. / Цвет: белый.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1112, N'Ru', N'GEFEST 6100-01', N'Тип: газовая. / Газ-контроль: духовки. / Зоны нагрева: газовые. / Материал решеток поверхности: чугунные.
					Тип духовки: газовая. / Полезный объем: 52 л. / Гриль: нет. / Конвекция: нет. / Таймер: нет. / Подсветка: есть. 
					Габариты (ВхШхГ): 85х60х60 см. / Вес: 43,5 кг. / Цвет: белый.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1113, N'Ru', N'GRETA 1470-0016 (W)', N'Тип: газовая. / Газ-контроль: нет. / Зоны нагрева: газовые. / Материал решеток поверхности: эмалированные. 
					Тип духовки: газовая. / Полезный объем: 54 л. / Гриль: нет. / Конвекция: нет. / Таймер: нет. / Подсветка: нет.
					Габариты (ВхШхГ): 85х50х54 см. / Вес: 32 кг. / Цвет: белый.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1114, N'Ru', N'GRETA 1470-0007 (WM) ', N'Тип: газовая. / Газ-контроль: нет. / Зоны нагрева: газовые. / Материал решеток поверхности: эмалированные. 
					Тип духовки: газовая. / Полезный объем: 54 л. / Гриль: нет. / Конвекция: нет. / Таймер: нет. / Подсветка: есть. 
					Габариты (ВхШхГ): 85х50х54 см. / Вес: 37 кг. / Цвет: белый.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1115, N'Ru', N'ELECTROLUX EKK 954507 W ', N'Тип: комбинированная (газ+электро). / Газ-контроль: поверхности. / Зоны нагрева: газовые. / Материал решеток поверхности: чугунные. 
					Тип духовки: электрическая. / Полезный объем: 56 л. / Гриль: есть. / Конвекция: есть. / Таймер: есть. / Подсветка: есть.
					Габариты (ВхШхГ): 85,5x50x60 см. / Цвет: белый.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1116, N'Ru', N'INDESIT WISN 821 UA ', N'Тип: узкая. / Количество белья при стирке: 5 кг. / Скорость отжима: 800 об/мин. / Класс энергопотребления: А+. 
					Дисплей: нет. / Количество программ: 16. / Габариты (ВхШхГ) : 85x59,5x42 см. / Цвет:белый.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1117, N'Ru', N'ZANUSSI ZWSE 680 V', N'Тип: узкая. / Количество белья при стирке: 5 кг. / Скорость отжима: 800 об/мин. / Класс энергопотребления: А++. 
					Дисплей: нет. / Количество программ: 14. / Габариты (ВхШхГ) : 85х59,5х37,7 см. / Цвет:белый.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1118, N'Ru', N'ZANUSSI ZWSE 7120 V ', N'Тип: узкая. / Количество белья при стирке: 5 кг. / Скорость отжима: 1200 об/мин. / Класс энергопотребления: А++. 
					Дисплей: есть. / Количество программ: 14. / Габариты (ВхШхГ) : 85х59,5х37,7 см. / Цвет:белый.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1122, N'Ru', N' WHIRLPOOL AWS 63013', N'Тип: узкая. / Количество белья при стирке: 6 кг. / Скорость отжима: 1000 об/мин. / Класс энергопотребления: А+++. 
					Дисплей: есть. / Количество программ: 18. / Габариты (ВхШхГ) : 84,5х59,5х45,3 см. / Вес: 61 кг. / Цвет:белый.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1123, N'Ru', N'ELECTROLUX EWS1266CI ', N'Тип: узкая. / Количество белья при стирке: 6 кг. / Скорость отжима: 1200 об/мин. / Класс энергопотребления: А+++.
					Дисплей: есть. / Количество программ: 14. / Габариты (ВхШхГ) : 85х59,5х37,7 см. / Цвет:белый.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1124, N'Ru', N'INDESIT IWSD 51051 UA', N'Тип: узкая. / Количество белья при стирке: 5 кг. / Скорость отжима: 1000 об/мин. / Класс энергопотребления: А+. 
					Дисплей: есть. / Количество программ: 16. / Габариты (ВхШхГ) : 85х59,5х42 см. / Цвет:белый.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1125, N'Ru', N'ZANUSSI ZWSE 6100 V', N'Тип: узкая. / Количество белья при стирке: 5 кг. / Скорость отжима: 1000 об/мин. / Класс энергопотребления: А++.
					Дисплей: нет. / Количество программ: 14. / Габариты (ВхШхГ) : 85х59,5х37,7 см. / Цвет:белый.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1126, N'Ru', N'ZANUSSI ZWSE 7100 VS ', N'Тип: узкая. / Количество белья при стирке: 5 кг. / Скорость отжима: 1000 об/мин. / Класс энергопотребления: А++.
					Дисплей: есть. / Габариты (ВхШхГ) : 85x59,5x37,7 . / Цвет:белый/серебристый.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1127, N'Ru', N'ELECTROLUX EWS1052NDU', N'Тип: узкая. / Количество белья при стирке: 5 кг. / Скорость отжима: 1000 об/мин. / Класс энергопотребления: А++.
					Дисплей: нет. / Количество программ: 14. / Габариты (ВхШхГ) : 85х59,5х37,7. / Цвет:белый.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1128, N'Ru', N' LG F80C3LD ', N'Тип: узкая. / Количество белья при стирке: 5 кг. / Скорость отжима: 800 об/мин./ Класс энергопотребления: А++. 
					Дисплей: нет. / Количество программ: 9. / Габариты (ВхШхГ) : 85x60x44 см. / Вес: 59 кг. / Цвет:белый.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1129, N'Ru', N'GORENJE W 7202/S ', N'Тип: узкая. / Количество белья при стирке: 7 кг. / Скорость отжима: 1000 об/мин. / Класс энергопотребления: А++. 
					Дисплей: нет. / Количество программ: 18. / Габариты (ВхШхГ) : 85х60х44 см. / Вес: 61,5 кг. / Цвет:белый.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1133, N'Ru', N'WHIRLPOOL AMW 497 IX', N'Тип: с грилем. / Тип управления: кнопочное. / Объем(л): 22. / Мощность микроволн: 750 Вт. 
					Очистка паром: нет. / Габариты: 38,2х59,5х32 см. / Цвет: нержавеющая сталь/зеркальный.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1196, N'Ru', N'EnergyFIT GB1206', N'Тип: Магнитные / Уровни нагрузки: 8 / Максимальный вес пользователя: 100 кг / Количество программ: Нет')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1197, N'Ru', N'EnergyFIT GBBT1503 ', N'Тип: Магнитные / Максимальный вес пользователя: 100 кг')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1198, N'Ru', N'NordicTrack GX 5.0 (NTEVEX71014) ', N'Тип: Электромагнитные / Уровни нагрузки: 20 / Максимальный вес пользователя: 125 кг / Количество программ: 20')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1199, N'Ru', N'Vision R60', N'Тип: Электромагнитные / Уровни нагрузки: 25 / Максимальный вес пользователя: 182 кг / Количество программ: 12')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1135, N'Ru', N'HANSA AMM 20 BIH ', N'Тип: с грилем. / Тип управления: кнопочное с поворотным переключателем. / Объем(л): 20.
					Мощность микроволн: 800 Вт. / Габариты: 38,5х59,5х32 см. / Цвет: нержавеющая сталь.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1136, N'Ru', N'KAISER EM 3200 ', N'Тип: мультифункциональная (гриль+конвекция). / Тип управления: сенсорное. / Объем(л): 32. 
					Мощность микроволн: 1000 Вт. / Габариты: 45,5х59,5х54,2 см. / Цвет: серебристый.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1137, N'Ru', N' WHIRLPOOL AMW 498 WH', N'Тип: с грилем. / Тип управления: кнопочное. / Объем(л): 22. / Мощность микроволн: 750 Вт.
					Очистка паром: нет. / Габариты: 38,2х59,5х32 см. / Цвет: белый.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1138, N'Ru', N'TEKA MWR 32 BI BGB ', N'Тип: с грилем. / Тип управления: механическое. / Объем(л): 32. / Мощность микроволн: 1000 Вт. 
					Габариты: 45,5х59,5х47,2 см. / Цвет: бежевый, фурнитура - состаренная бронза .')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1139, N'Ru', N' WHIRLPOOL AMW 498 NB', N'Тип: с грилем. Тип управления: кнопочное. / Объем(л): 22. / Мощность микроволн: 750 Вт. 
					Очистка паром: нет. / Габариты: 38,2х59,5х32 см. / Цвет: черный')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1140, N'Ru', N' ELECTROLUX EMS 26204 OX ', N'Тип: с грилем. Тип управления: кнопочное с поворотным переключателем. / Объем(л): 25,37. / Мощность микроволн: 900 Вт. 
					Очистка паром: нет. / Габариты: 45,9х59,4х41,7 см / Цвет: нержавеющая сталь')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1141, N'Ru', N'MAGIO MG-345', N'Тип: капельная (фильтрационная). / Тип управления: механическое. / Тип используемого кофе: молотый.
					Резервуар для воды: 0,24 л. / Цвет: коричневый')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1142, N'Ru', N'VITEK VT-1513 BK ', N'Тип: эспрессо (рожковая). / Тип управления: электронное. / Приготовление капучино: ручное.
					Тип используемого кофе: молотый. / Резервуар для воды: 1,25 л. / Давление водяного насоса: 15 бар. 
					Функции: подогрев чашек. / Вес: 4,9 кг. / Цвет: черный/нержавеющая сталь.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1143, N'Ru', N' MAGIO MG-343', N'Тип: капельная (фильтрационная). / Тип управления: механическое. / Тип используемого кофе: молотый. 
					Резервуар для воды: 1,2 л. / Цвет: чёрный.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1144, N'Ru', N'MAGIO MG-342 ', N'Тип: капельная (фильтрационная). / Тип управления: механическое. / Тип используемого кофе: молотый.
					Резервуар для воды: 0,24 л. / Цвет: белый.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1145, N'Ru', N'VITEK VT-1511 BK ', N'Тип: эспрессо (рожковая). / Тип управления: электронное. / Приготовление капучино: ручное.
					Тип используемого кофе: молотый. / Резервуар для воды: 1,5 л. / Давление водяного насоса: 15 бар. 
					Функции: подогрев чашек. / Цвет: черный/серый.
					Цена: 1 929 грн')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1146, N'Ru', N' PHILIPS-SAECO HD7457/20 ', N'Тип: капельная (фильтрационная). / Тип управления: кнопочное. / Тип используемого кофе: молотый. 
					Резервуар для воды: 1,2 л. / Функции: подогрев кофейника. / Габариты: 29х22х22 см. 
					Вес: 1,42 кг. / Цвет: черный/металлик')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1147, N'Ru', N'PHILIPS-SAECO HD7459/20 ', N'Тип: капельная (фильтрационная). / Тип управления: электоронное. / Тип используемого кофе: молотый.
					Резервуар для воды: 1,2 л. / Функции: автоотключение. / Габариты: 32х24х21 см.
					Вес: 1,42 кг. / Цвет: черный')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1148, N'Ru', N'PHILIPS-SAECO Lirika', N'Тип: кофемашина эспрессо. / Тип управления: электронный. / Приготовление капучино: ручное.
					Тип используемого кофе: зерновой. / Резервуар для воды: 2,5 л. / Давление водяного насоса: 15 бар. 
					Функции: выбор объема порции, подача горячей воды для чая. / Габариты: 21,5x38,1x45 см. / Вес: 8 кг, / Цвет: черный.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1149, N'Ru', N'VITEK VT-1514 BK', N'Тип: эспрессо (рожковая). / Тип управления: электронное. / Приготовление капучино: автоматическое.
					Тип используемого кофе: молотый. / Резервуар для воды: 1,65 л. / Давление водяного насоса: 15 бар.
					Функции: подогрев чашек. / Цвет: черный.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1150, N'Ru', N'DELONGHI ESAM 3000 B', N'Тип: кофемашина эспрессо. / Тип управления: электронное. / Приготовление капучино: ручное. / Тип используемого кофе: зерновой, молотый. 
					Резервуар для воды: 1,8 л. / Давление водяного насоса: 15 бар. 
					Функции: автоматическая очистка от накипи, автоотключение, выбор объема порции, регулировка крепости кофе. 
					Габариты: 28.5x37.5x36 см. / Вес: 10 кг. / Цвет: черный.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1151, N'Ru', N'DELONGHI ECAM 22.110 B ', N'Тип: кофемашина эспрессо. / Тип управления: электронное. / Приготовление капучино: ручное. / Тип используемого кофе: зерновой, молотый. 
					Резервуар для воды: 1,8 л. / Давление водяного насоса: 15 бар. 
					Функции: автоматическая очистка от накипи, автоотключение, выбор объема порции, подогрев чашек, регулировка крепости кофе. 
					Габариты: 35,1x23,8x43 см. / Вес: 9 кг. / Цвет: черный')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1152, N'Ru', N' WHIRLPOOL ADP 500 WH ', N'Вид: полногабаритная (60 см). / Класс энергопотребления/сушки/мойки: А++/А/А. / Вместимость комплектов: 13. 
					Расход воды за цикл/год: 10/2800 л. / Потребление электроэнергии за цикл/год: 0,92/261 кВт/ч. / Количество программ: 6.
					Режим половинной загрузки: есть. / Габариты (ВхШхГ): 85x60x59 см. / Цвет изделия: белый.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1153, N'Ru', N'BOSCH SKS50E32EU', N'Вид: компактная. / Класс энергопотребления/сушки/мойки: А+/А/А. / Вместимость комплектов: 6. / Расход воды за цикл/год: 8/2240 л. 
					Потребление электроэнергии за цикл/год: 0,61/174 кВт/ч. / Количество программ: 5. / Режим половинной загрузки: нет. 
					Габариты (ВхШхГ): 45х55,1х50 см')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1154, N'Ru', N' KAISER S 4581 XL', N'Узкая посудомоечная машина. / Расход воды: 12 л/цикл. / Класс энергопотребления/мойки/сушки: A/A/A.
					Продолжительность норм. программы, 55 °С 110 мин. / Количество основных программ: 8. / Простое управление Logic Control.
					Специальный режим 3 в 1. / Система смягчения воды. / LCD дисплей. / Размеры (ВхШхГ): 85х45х60 см. 
					Вес: 38 кг. / Цвет дверцы: нерж. сталь. / Цвет боковых панелей: серый.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1155, N'Ru', N' DELFA DDW-3201 (WQP6-3201) ', N'Вид: компактная. / Класс энергопотребления/сушки/мойки: А+/А/А. / Вместимость комплектов: 6. / Расход воды за цикл/год: 7/1960 л. 
					Потребление электроэнергии за цикл/год: 0,61/170 кВт/ч. / Количество программ: 6. / Режим половинной загрузки: нет.
					Габариты (ВхШхГ): 43,8х55х50 см')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1156, N'Ru', N'SIEMENS SN 278 I 03 TE ', N'Посудомоечная машина. / Количество комплектов: 13. / Количество программ: 8. / Количество температурных режимов: 6. 
					Уровень шума: 44 дБ. / Система aquaStop. / Гидравлическая система speedMatic. / Система сушки Zeolith. / Сенсор загрузки. 
					Система защиты стекла glassProtec. / Габариты (ВxШxГ): 84,5x60x60 см. / Цвет: имитация нерж. стали')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1157, N'Ru', N'KAISER S 6086 XL W ', N'Отдельностоящая посудомоечная машина. / Вместимость: 14 комплектов. / Количество программ мойки: 8.
					Класс энергопотребления/мойки/сушки: A+/A/A. / Сенсорное управление Full Touch Control. / Система смягчения воды. 
					Габариты (ВхШхГ): 81,5х60х64 см. / Вес: 49 кг. / Цвет: белый.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1158, N'Ru', N'WHIRLPOOL ADP 100 WH ', N'Вид: полногабаритная (60 см). / Класс энергопотребления/сушки/мойки: А+/А/А. / Вместимость комплектов: 12.
					Расход воды за цикл/год: 12/3360 л. / Потребление электроэнергии за цикл/год: 1,02/291 кВт/ч. / Количество программ: 5. 
					Режим половинной загрузки: есть. / Габариты (ВхШхГ): 85x60x59 см. / Цвет изделия: белый.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1159, N'Ru', N'WHIRLPOOL ADP 7570 IX', N'Вид: полногабаритная (60 см). / Класс энергопотребления/сушки/мойки: А++/А/А. / Вместимость комплектов: 13. 
					Расход воды за цикл/год: 9/2520 л. / Потребление электроэнергии за цикл/год: 0,92/262 кВт/ч. / Количество программ: 8. 
					Режим половинной загрузки: есть. / Габариты (ВхШхГ): 85x60x59 см. / Цвет изделия: нержавеющая сталь.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1160, N'Ru', N'FAGOR 2LF-458', N'Вид: узкая (45 см). / Класс энергопотребления/сушки/мойки: А+/А/А. / Вместимость комплектов: 9.
					Расход воды за цикл/год: 10/2800 л. / Потребление электроэнергии за цикл/год: 0,8/224 кВт/ч. / Количество программ: 7. 
					Режим половинной загрузки: нет. / Габариты (ВхШхГ): 85х45х58 см. / Цвет изделия: белый.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1161, N'Ru', N'FAGOR FDW-100W ', N'Вид: полногабаритная (60 см). / Класс энергопотребления/сушки/мойки: А/А/А. / Вместимость комплектов: 13.
					Расход воды за цикл/год: 12/3360 л. / Потребление электроэнергии за цикл/год: 1,05/294 кВт/ч./  Количество программ: 6. 
					Режим половинной загрузки: нет. / Габариты (ВхШхГ): 85х60х60 см. / Цвет изделия: белый')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1162, N'Ru', N'FAGOR FDW-200WE ', N'Вид: полногабаритная (60 см). / Класс энергопотребления/сушки/мойки: А++/А/А. / Вместимость комплектов: 13.
					Расход воды за цикл/год: 10/2800 л. / Потребление электроэнергии за цикл/год: 0,94/263 кВт/ч. / Количество программ: 6. 
					Режим половинной загрузки: нет. / Габариты (ВхШхГ): 85х60х60 см. / Цвет изделия: белый.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1163, N'Ru', N'SAMSUNG VCC4325S3K/SBW', N'Тип пылесоса: без мешка контейнерного типа. / Тип уборки: сухая. / Потребляемая мощность: 1600 Вт. 
					Насадки: пол-ковер, щелевая. / Регулировка мощности: без регулировки. / Объем пылесборника: 1,3 л. 
					Длина шнура: 6,1 м. / Автосматывание шнура: есть. / Цвет: черный.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1164, N'Ru', N'PHILIPS FC8632/01 ', N'Тип пылесоса: без мешка контейнерного типа. / Тип уборки: сухая. / Потребляемая мощность: 2000 Вт.
					Насадки: для ламината/паркета, пол-ковер, щелевая. / Регулировка мощности: на корпусе. / Объем пылесборника: 1,7 л.
					Длина шнура: 6 м. / Автосматывание шнура: есть. / Цвет: красный/металлик.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1165, N'Ru', N'SCARLETT IS 580 ', N'Тип пылесоса: без мешка контейнерного типа. / Тип уборки: сухая. / Потребляемая мощность: 1800 Вт.
					Насадки: для мягкой мебели, пол-ковер, щелевая. / Регулировка мощности: на корпусе. / Объем пылесборника: 2 л.
					Длина шнура: 5 м. / Автосматывание шнура: есть. / Цвет: черный/оранжевый')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1166, N'Ru', N'PHILIPS FC9170/01 ', N'Тип пылесоса: с мешком. / Тип уборки: сухая. / Потребляемая мощность: 2200 Вт. 
					Насадки: щелевая. / Регулировка мощности: на корпусе. / Объем пылесборника: 4 л. 
					Длина шнура: 9 м. / Автосматывание шнура: есть. / Цвет: серый/синий.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1167, N'Ru', N' ZELMER ZVC 762 ZKUA (VC 7920.5 SK) ', N'Тип пылесоса: моющий с аквафильтром. / Тип уборки: влажная, сбор воды, сухая. / Потребляемая мощность: 1500 Вт. 
					Насадки: для мягкой мебели, щелевая. / Регулировка мощности: без регулировки. / Объем пылесборника: 2,5 л. 
					Длина шнура: 6 м. / Автосматывание шнура: есть. / Цвет: серый/желтый.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1168, N'Ru', N'PHILIPS FC9176/01', N'Тип пылесоса: с мешком. / Тип уборки: сухая. / Потребляемая мощность: 2200 Вт. 
					Насадки: для ламината/паркета, щелевая. / Регулировка мощности: на ручке. / Объем пылесборника: 4 л. 
					Длина шнура: 7 м. / Автосматывание шнура: есть. / Цвет: черный')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1169, N'Ru', N'SCARLETT SC-VC80B04', N'Тип пылесоса: с мешком. / Тип уборки: сухая. / Потребляемая мощность: 1500 Вт. / Насадки: пол-ковер, щелевая. 
					Объем пылесборника: 1,5 л. / Автосматывание шнура: есть. / Цвет: серый/красный.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1170, N'Ru', N' SAMSUNG VCC4140V38/XEV ', N'Тип пылесоса: с мешком. / Тип уборки: сухая. / Потребляемая мощность: 1600 Вт. 
					Насадки: пол-ковер, щелевая. / Регулировка мощности: на корпусе./  Объем пылесборника: 3 л. 
					Автосматывание шнура: есть. / Цвет: синий.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1173, N'Ru', N'VITEK VT-1833 PR ', N'Тип пылесоса: с аквафильтром. / Тип уборки: сухая. / Потребляемая мощность: 1800 Вт.
					Насадки: для мягкой мебели, пол-ковер, турбощетка, щелевая. / Регулировка мощности: на корпусе. 
					Объем пылесборника: 3,5 л. / Автосматывание шнура: есть. / Цвет: фиолетовый.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1174, N'Ru', N' BLACK&DECKER NW4820N-QW ', N'Тип пылесоса: электровеник/аккумуляторный пылесос. / Тип уборки: влажная, сухая. / Насадки: щелевая. 
					Регулировка мощности: без регулировки. / Объем пылесборника: 0,175 л. / Автосматывание шнура: нет. / Цвет: белый.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1175, N'Ru', N'PHILIPS FC9912/01 PowerPro Ultimate', N'Тип пылесоса: без мешка контейнерного типа. / Тип уборки: сухая. / Потребляемая мощность: 2400 Вт. 
					Насадки: щелевая. / Регулировка мощности: на ручке. / Объем пылесборника: 2 л. 
					Длина шнура: 7 м. / Автосматывание шнура: есть. / Цвет: черный/медный.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1176, N'Ru', N'EnergyFIT EF-6606B ', N'Назначение: Домашние / конструкция: складные / особенности: транспортировочные ролики, подставка для аксессуаров
					максимальная скорость: 14 км/ч / максимальный вес пользователя: 125 кг / регулировка угла наклона: механическая')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1177, N'Ru', N'EnergyFIT EF-5501В ', N'Назначение: Домашние / Конструкция: Складные / Особенности: Транспортировочные ролики, Подставка для аксессуаров
					Максимальная скорость: 13 км/ч / Максимальный вес пользователя: 120 кг / Регулировка угла наклона: Механическая')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1181, N'Ru', N' EnergyFIT EF-7705A ', N'Назначение: Домашние / Конструкция: Складные / Особенности: Транспортировочные ролики, Подставка для аксессуаров
					Максимальная скорость: 16 км/ч / Максимальный вес пользователя: 140 кг / Регулировка угла наклона: Механическая')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1182, N'Ru', N'InterAtletika Jessie KL-803 ', N'Назначение: Домашние / Конструкция: Складные / Особенности: Транспортировочные ролик, / Максимальный вес пользователя: 100 кг
					Регулировка угла наклона: Механическая')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1183, N'Ru', N'ProForm Endurance S9 (PETL99714) ', N'Назначение: Домашние / Конструкция: Складные / Особенности: Вентилятор / Максимальная скорость: 20 км/ч
					Максимальный вес пользователя: 135 кг / Регулировка угла наклона: Электрическая')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1184, N'Ru', N'NordicTrack T15 (NETL14711)', N'Назначение: Домашние / Конструкция: Складные / Особенности: Вентилятор / Максимальная скорость: 22 км/ч
					Максимальный вес пользователя: 159 кг / Регулировка угла наклона: Электрическая')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1185, N'Ru', N'Spirit Esprit XT-485 ', N'Назначение: Домашние / Конструкция: Складные / Особенности: Транспортировочные ролики, Подставка для аксессуаров, Держатель для бутылки, Вентилятор
					Максимальная скорость: 18 км/ч / Максимальный вес пользователя: 195 кг / Регулировка угла наклона: Электрическая')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1186, N'Ru', N'NordicTrack C200 (NETL10814)', N'Назначение: Домашние / Конструкция: Складные / Особенности: Вентилятор / Максимальная скорость: 20 км/ч
					Максимальный вес пользователя: 150 кг / Регулировка угла наклона: Электрическая
					Цена: 33 816 грн')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1187, N'Ru', N'HouseFit HT 9138HP (HT 9138HP)', N'Назначение: Домашние / Конструкция: Складные /  Максимальная скорость: 12 км/ч
					Максимальный вес пользователя: 100 кг / Регулировка угла наклона: Механическая')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (1188, N'Ru', N'Circle Fitness M7', N'Назначение: Профессиональные / Конструкция: Нескладные / Особенности: Транспортировочные ролики, Подставка для аксессуаров, Держатель для бутылки, Вентилятор
					Максимальная скорость: 20 км/ч / Максимальный вес пользователя: 182 кг/ Регулировка угла наклона: Электрическая')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (2126, N'Ru', N'антель чугунная наборная Body Max 25 кг (ВМ-018)', N'Тип: Гантели / Вид замка: Винтовой / Форма грифа: Прямая / Длина: 38 см')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (2127, N'Ru', N'Гантель наборная Newt 17.5 кг (TI-968-745-17)', N'Тип: Гантели / Вид замка: Винтовой / Форма грифа: Прямая / Длина: 33 см')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (2128, N'Ru', N'Гантель наборная Newt 15.5 кг (TI-968-745-1-1)', N'Тип: Гантели / Вид замка: Винтовой / Форма грифа: Прямая / Длина: 33 см')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (2129, N'Ru', N'Гантель наборная Newt 10 кг (TI-968-747)', N'Тип: Гантели / Вид замка: Винтовой / Форма грифа: Прямая / Длина: 33 см')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (2130, N'Ru', N'Гантель наборная Newt 25.5 кг (TI-968-745-25-1) ', N'ип: Гантели / Вид замка: Винтовой / Форма грифа: Прямая / Длина: 40 см')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (2131, N'Ru', N'Гантель чугунная наборная Body Max 20 кг (ВМ-016) ', N'ип: Гантели / Вид замка: Винтовой / Форма грифа: Прямая / Длина: 38 см')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (2132, N'Ru', N'Диск Newt стальной 5 кг (TI-0006)', N'Тип: Диски / Материал: Сталь / Покрытие: Покраска / Диаметр отвертсия: 27 - 30 мм')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (2133, N'Ru', N'Диск Newt стальной 1 кг (TI-0011)', N'Тип: Диски / Материал: Сталь / Покрытие: Покраска / Диаметр отвертсия: 27 - 30 мм')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (2134, N'Ru', N'Диск Newt стальной 3 кг (TI-0014)', N'Тип: Диски / Материал: Сталь / Покрытие: Покраска / Диаметр отвертсия: 27 - 30 мм')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (2135, N'Ru', N'Наборная штанга Newt Home 50 кг (TI-0201-180-50)', N'Тип: Штанги / Вид замка: Винтовой / Форма грифа: Прямая / Длина: 180 см')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (2136, N'Ru', N'Storm mk240 ', N'Тип: Гребные / Тип днища: Без днища в комплекте / Пассажировместимость: 2 чел. / Поворотные уключины и алюминиевые весла')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (2137, N'Ru', N'Ладья ЛТ-190', N'ип: Гребные / Тип днища: Без днища в комплекте / Пассажировместимость: 1 чел.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (2138, N'Ru', N'Ладья ЛТ-190У', N'Тип: Гребные / Тип днища: Без днища в комплекте / Пассажировместимость: 1 чел.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (2139, N'Ru', N'Ладья ЛТ-330М', N'Тип: Гребные / Тип днища: Без днища в комплекте / Пассажировместимость: 4 чел.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (2140, N'Ru', N'Storm stk-380', N'Тип: Моторные со стационарным транцем / Тип днища: Жесткое разборное / Пассажировместимость: 4 чел.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (2141, N'Ru', N'Ладья ЛО-250-С ', N'Тип: Гребные / Тип днища: Слань / Пассажировместимость: 2 чел.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (2142, N'Ru', N'Ладья ЛТ-220-ДС', N'Тип: Гребные / Тип днища: Слань / Пассажировместимость: 1 чел.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (2143, N'Ru', N'Storm stm-280-40 ', N'Тип: Моторные со стационарным транцем / Тип днища: Слань / Пассажировместимость: 2 чел.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (2144, N'Ru', N'Storm stm-330 ', N'Тип: Моторные со стационарным транцем / Тип днища: Слань / Пассажировместимость: 2 чел.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (2145, N'Ru', N'Storm mk260 ', N'Тип: Гребные / Тип днища: Без днища в комплекте / Пассажировместимость: 2 чел.')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (2146, N'Ru', N' Arsenal 20x50 (10-2050) ', N'Тип: Бинокль / Кратность приближения: 20x / Диаметр объектива: 50 мм / Вес: 0.74 кг')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (2147, N'Ru', N'rsenal 7x50 Морской Чёрный (NB61-0750C1 Black)', N'Тип: Бинокль / Кратность приближения: 7x / Диаметр объектива: 50 мм / Вес: 0.89 кг')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (2148, N'Ru', N'Arsenal 12x25 NB25-1225 ', N'Тип: Бинокль / Диаметр объектива: 25 мм / Вес: 0.25 кг')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (2149, N'Ru', N'Alpen Sport II 10x25 Green (920296)', N'Тип: Бинокль / Кратность приближения: 10х / Диаметр объектива: 25 мм / Вес: 0.2 кг')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (2150, N'Ru', N'Arsenal 10-30х60 Porro (BF1-103060) ', N'Тип: Бинокль / Кратность приближения: 10x - 30x / Диаметр объектива: 60 мм / Вес: 0.85 кг')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (2151, N'Ru', N'Arsenal 12x25 NB27-1225 ', N'Тип: Монокль / Кратность приближения: 12x / Диаметр объектива: 25 мм / Вес: 0.07 кг')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (2152, N'Ru', N'Arsenal 10x50 (10-1050) ', N'Тип: Бинокль / Кратность приближения: 10х / Диаметр объектива: 50 мм / Вес: 0.7 кг')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (2153, N'Ru', N'Praktica 12x25 (920721) ', N'Тип: Бинокль / Кратность приближения: 12x / Диаметр объектива: 25 мм / Вес: 0.2 кг')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (2154, N'Ru', N'Бинокль Zeiss Victory HT 10х42 524529 (7120216)', N'Тип: Бинокль / Кратность приближения: 10x / Диаметр объектива: 42 мм / Вес: 0.8 кг')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (2155, N'Ru', N'Kowa SV 10x42 WP (914770)', N'Тип: Бинокль / Кратность приближения: 10х / Диаметр объектива: 42 мм / Вес: 0.67 кг')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (2157, N'Ru', N'Motorola TLKR T80 Extreme ', N'Дальность связи: до 10 км / Вес: 140 г')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (2158, N'Ru', N'Voxtel MR160 ', N'Стандарт: PMR446 / Назначение: Переносные безлицензионные / Мощность: 0.5 Вт
					Дальность связи: до 3 км / Вес: 76 г')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (2159, N'Ru', N'Motorola TLKR T80 Extreme ', N'Стандарт: PMR446 / Назначение: Переносные безлицензионные / Мощность: 0.5 Вт')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (2160, N'Ru', N'Motorola TLKR T41 Pink (P14MAA03A1BN)', N'Стандарт: PMR446 / Назначение: Переносные безлицензионные / Мощность: 0.5 Вт
					Дальность связи: до 4 км / Вес: 74 г')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (2161, N'Ru', N'Yaesu VX-6E', N'Стандарт: VHF/UHF / Назначение: Портативные радиолюбительские / Мощность: 5 Вт / Вес: 270 г
					Цена: 9 410 грн')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (2162, N'Ru', N'Baofeng UV-3R ', N'Стандарт: VHF/UHF / Назначение: Портативные радиолюбительские / Мощность: 2 Вт
					Дальность связи: до 5 км / Вес: 150 г')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (2163, N'Ru', N'President Truman ASC (TXMU092) ', N'Стандарт: AM/FM / Назначение: Автомобильные / Мощность: 4 Вт / Вес: 700 г')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (2164, N'Ru', N'Motorola TLKR T60', N'Стандарт: PMR446 / Назначение: Переносные безлицензионные / Мощность: 0.5 Вт
					Дальность связи: до 8 км / Вес: 103 г')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (2165, N'Ru', N'Voxtel MR950', N'Стандарт: PMR446 / Назначение: Переносные безлицензионные / Мощность: 0.5 Вт
					Дальность связи: до 10 км / Вес: 350 г')
INSERT INTO [dbo].[Products_tr] ([Id], [Languagecode], [Name], [Description]) VALUES (2166, N'Ru', N'President Jimmy II ASC (TXMU045) ', N'Стандарт: AM / Назначение: Автомобильные / Мощность: 4 Вт / Вес: 600 г')



