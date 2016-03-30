Use TradingCms

INSERT INTO [dbo].[Roles]([Id],[Name])
values ('48646D11-73F7-4D8B-B948-147E6503374D','Supplier'), ('A84E2232-1532-4E1E-B05B-D2EA14AF802E','Buyer'), ('4F680AC3-9559-41CD-991E-F60C1FAE76F1','Admin')

INSERT INTO [dbo].[Languages]([Code],[Name])
values ('Ru', 'Русский')

DECLARE @lang int
SELECT @lang=[Id] from  [dbo].[Languages] where [Code]='Ru'

INSERT INTO [dbo].[Categories]([TopId])
values (NULL)

DECLARE @currentCategory int
SELECT @currentCategory= MAX(Id) from  [dbo].[Categories] where TopId is null

INSERT INTO [dbo].[CategoryTranslations] ([CategoryId],[LanguageId],[Name])
values (@currentCategory, @lang, N'Компьютерная техника')

INSERT INTO [dbo].[Categories]([TopId])
values (@currentCategory)

DECLARE @currentSubCategory int
SELECT @currentSubCategory= MAX(Id) from  [dbo].[Categories]

INSERT INTO [dbo].[CategoryTranslations] ([CategoryId],[LanguageId],[Name])
values (@currentSubCategory,@lang, N'Ноутбуки')

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,6555,1,25/12/2014)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
Select MAX(Id),@lang,N'Lenovo IdeaPad 100-14 (80HH001XUA)', N'Экран 14" (1366x768) HD LED, глянцевый / Intel Celeron N2840 (2.16 ГГц) / RAM 2 ГБ 
					HDD 500 ГБ / Intel HD Graphics / без ОД / LAN / Wi-Fi / веб-камера / DOS / 1.9 кг / черный' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,6555,1,25/12/2014)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'HP 255G4 (NOY69ES)', N'Экран 15.6” (1366x768) HD LED, матовый / AMD Dual-Core E1-6015 (1.4 ГГц) / RAM 2 ГБ 
					HDD 500 ГБ / AMD Radeon R2 / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / Linux / 2.15 кг / черный' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory, 6555,1,25/12/2014)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Dell Inspiron 3551 (135C25NIW-22)', N'Экран 15.6" (1366x768) HD WLED, глянцевый / Intel Celeron N2830 (2.16 ГГц) / RAM 2 ГБ 
					HDD 500 ГБ / Intel HD Graphics / Без ОД / Wi-Fi / Bluetooth 4.0 / веб-камера / Windows 8.1 / 2.14 кг / черный' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory, 6555,1,25/12/2014)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Asus EeeBook E502MA (E502MA-XX0026D) Blue ', N'Экран 15.6" (1366x768) HD, глянцевый / Intel Celeron N2840 (2.16 ГГц) / RAM 4 ГБ 
					HDD 500 ГБ / Intel HD Graphics / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / DOS / 1.86 кг / синий' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,6555,1,25/12/2014 )

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N' Acer Aspire ES1-520-392H (NX.G2JEU.002)', N'Экран 15.6'' (1366x768) HD LED, матовый / AMD E1-2500 (1.4 ГГц) / RAM 4 ГБ 
					HDD 500 ГБ / Radeon HD 8240 / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / Linpus / 2.4 кг / черный' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,6555,1,25/12/2014)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Lenovo IdeaPad 100S White ', N'Экран 11.6" TN (1366x768) WXGA HD LED, глянцевый / Intel Atom Z3735F (1.33 - 1.83 ГГц) / RAM 2 ГБ 
					64 ГБ eMMC / Intel HD Graphics / без ОД / Wi-Fi / Bluetooth / веб-камера / Windows 10 Home / 1 кг / белый
					Цена: 6 799 грн' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,6555,1,25/12/2014)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Acer Aspire E5-573G-312U (NX.MVMEU.025) Black-Iron ', N'Экран 15.6'' (1366x768) HD LED, матовый / Intel Core i3-5005U (2.0 ГГц) / RAM 4 ГБ 
					HDD 500 ГБ / nVidia GeForce 920M, 2 ГБ / Без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / Linux / 2.4 кг / серый с черным' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,6555,1,25/12/2014)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N' Asus EeeBook E502MA (E502MA-XX0020D) Blue ', N'Экран 15.6" (1366x768) HD, глянцевый / Intel Pentium N3540 (2.16 - 2.66 ГГц) / RAM 4 ГБ 
					HDD 1 ТБ / Intel HD Graphics / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / DOS / 1.86 кг / синий
					Цена: 8 999 грн ' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,6555,1,25/12/2014)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Lenovo G50-45 (80E301XLUA) ', N'Экран 15.6" (1366x768) HD LED, глянцевый / AMD Quad-Core A4-6210 (1.8 ГГц) / RAM 2 ГБ 
					HDD 500 ГБ / AMD Radeon R3 / Без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / Windows 10 Home / 2.5 кг / черный' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,6555,1,25/12/2014)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'HP 250 G4 (P5R75ES)',N'Экран 15.6” (1366x768) HD LED, матовый / Intel Core i3-4005U (1.7 ГГц) / RAM 4 ГБ 
					HDD 500 ГБ / Intel HD Graphics / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / DOS / 2.15 кг / черный' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,6555,1,25/12/2014)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Lenovo IdeaPad 100-15 (80QQ004NUA)', N'Экран 15.6" (1366x768) HD LED, глянцевый / Intel Pentium 3825U (1.9 ГГц) / RAM 4 ГБ 
					HDD 500 ГБ / nVidia GeForce 920M, 1 ГБ / без ОД / LAN / Bluetooth / Wi-Fi / веб-камера / DOS / 2.3 кг / черный' from [dbo].[Products]

INSERT INTO [dbo].[Categories]([TopId])
values (@currentCategory)

SELECT @currentSubCategory= MAX(Id) from  [dbo].[Categories]

INSERT INTO [dbo].[CategoryTranslations] ([CategoryId],[LanguageId],[Name])
values (@currentSubCategory,@lang,N'Планшеты')


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values(@currentSubCategory,3000,1,25/12/2015)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Samsung Galaxy Tab E 9.6" 3G White (SM-T561NZWASEK)', N'Экран 9.6" (1280x800) емкостный MultiTouch / T-Shark2 (1.3 ГГц) / RAM 1.5 ГБ 
					8 ГБ встроенной памяти + microSD / 3G / Wi-Fi 802.11a/b/g/n / Bluetooth 4.0 / основная камера 5 Мп, фронтальная 2 Мп 
					GPS / ГЛОНАСС / Android 4.4 (KitKat) / 490 г / белый' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values(@currentSubCategory,3000,1,25/12/2015)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Lenovo TAB 2 A7-10 7" 8GB WiFi Black (59434747)', N'Экран 7" (1024х600) IPS, емкостный MultiTouch / MediaTek MT8127 (1.3 ГГц) / RAM 1 ГБ 
					8 ГБ встроенной памяти + microSD / Wi-Fi / Bluetooth 4.0 
					фронтальная камера 0.3 Мп / A-GPS / Android 4.4 / 269 г / черный' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values(@currentSubCategory,3000,1,25/12/2015)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Asus ZenPad 7.0 16GB White (Z370C-1B042A)', N'Экран 7" IPS (1280x800) емкостный MultiTouch / Intel Atom x3-C3200 / RAM 2 ГБ / 16 ГБ встроенной памяти + microSD
					Wi-Fi 802.11 b/g/n / Bluetooth 4.0 / основная камера 5 Мп, фронтальная - 0.3 Мп / GPS / ГЛОНАСС / ОС Android 5.0 (Lollipop) / 272 г / белый' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values(@currentSubCategory,3000,1,25/12/2015)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Samsung Galaxy Tab S2 9.7" 32GB Black (SM-T810NZKESEK)', N'Экран 9.7" Super AMOLED (2048x1536) емкостный MultiTouch / Samsung Exynos 5433 (1.9 ГГц + 1.3 ГГц) / RAM 3 ГБ 
					32 ГБ встроенной памяти + microSD / 802.11 a/b/g/n/ac / Bluetooth 4.1 
					основная камера 8 Мп, фронтальная 2.1 Мп / GPS / ГЛОНАСС / Android 5.0 (Lollipop) / 375 г / черный' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values(@currentSubCategory,3000,1,25/12/2015)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Lenovo Tab 2 A7-30DC 7" 3G 8GB Black (59444592)', N'Экран 7" (1024х600) IPS, емкостный MultiTouch / MediaTek MT8382M (1.3 ГГц) / RAM 1 ГБ 
					8 ГБ встроенной памяти + microSD / 3G / Wi-Fi / Bluetooth 4.0 
					основная камера 2 Мп + фронтальная 0.3 Мп / GPS / Android 4.4 (KitKat) / 269 г / черный' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values(@currentSubCategory,3000,1,25/12/2015)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Prestigio MultiPad 10.1 3G Black (PMT3341_3G)', N'Экран 10.1" IPS (1280x800) емкостный Multi-Touch / Intel Atom X3 C3230 (1.2 ГГц) / RAM 1 ГБ 
					8 ГБ встроенной памяти + поддержка карт памяти microSD / 3G / Wi-Fi / Bluetooth 
					основная камера 2 Мп, фронтальная - 0.3 Мп / Android 5.1 (Lollipop) / 552 г / черный' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values(@currentSubCategory,3000,1,25/12/2015)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Jeka JK-103 16GB 3G IPS', N'Экран 10.1" IPS (1024х600), емкостный, MultiTouch / ARM Cortex A7 (1.3 ГГц) / RAM 1 ГБ 
					16 ГБ встроенной памяти + microSD / 3G / Wi-Fi / Bluetooth 4.0 / основная камера 2 Мп, фронтальная - 0.3 Мп 
					GPS / A-GPS / ОС Android 5.1 (Lollipop) / вес 568 г / черный' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values(@currentSubCategory,3000,1,25/12/2015)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Prestigio MultiPad Color 2 3G Black (PMT3777_3G_C)',N'Экран 7" IPS (1280x800) емкостный, MultiTouch / Intel Atom x3-C3230RK (1.2 ГГц) / RAM 1 ГБ 
					8 ГБ встроенной памяти + microSD / 3G / Wi-Fi / Bluetooth 4.0 / основная камера 2 Мп, фронтальная - 0.3 Мп 
					GPS / Android 5.1 (Lollipop) / 270 г / черный' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values(@currentSubCategory,3000,1,25/12/2015)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Fly Flylife Connect 10.1 3G 2 Black', N'Экран 10.1" IPS (1280х800) емкостный MultiTouch / MediaTek MT8382V/W (1.3 ГГц) / RAM 1 ГБ 
					8 ГБ встроенной памяти + microSD / Wi-Fi / Bluetooth / 3G / основная камера 5 Мп, фронтальная 0.3 Мп 
					GPS / ОС Android 4.2.2 / 624 г / черный' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values(@currentSubCategory,3000,1,25/12/2015)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Assistant AP-115G White ', N'Экран 10.1 (1024x600) емкостный MultiTouch / MTK6572 Dual Core (1.2 ГГц) / RAM 1 ГБ 
					8 ГБ встроенной памяти + microSD / Wi-Fi b/g/n / 3G / Bluetooth / фронтальная камера 0.3 Мп, тыловая камера 2 Мп 
					GPS / OC Android 4.2 / 530 г / белый' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values(@currentSubCategory,3000,1,25/12/2015)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Lenovo Tab 2 A10-70L 16GB LTE Blue (ZA010015UA)', N'Экран 10.1 (1920x1200) IPS емкостный, MultiTouch / MediaTek MT8732 (1.5 ГГц) / RAM 2 ГБ 
					16 ГБ встроенной памяти + microSD / Wi-Fi b/g/n / Bluetooth 4.0 / 3G / LTE / основная камера 8 Мп, фронтальная - 5 Мп 
					GPS / ГЛОНАСС / Beidou / Android 4.4 (KitKat) / 509 г / темно-синий' from [dbo].[Products]


INSERT INTO [dbo].[Categories]([TopId])
values (@currentCategory)

SELECT @currentSubCategory= MAX(Id) from  [dbo].[Categories]

INSERT INTO [dbo].[CategoryTranslations] ([CategoryId],[LanguageId],[Name])
values (@currentSubCategory,@lang,N'Электронные книги')

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values(@currentSubCategory, 4500,1,2015-04-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'PocketBook 624 Basic Touch Grey (PB624-Y-WW)', N'Диагональ дисплея: 6" / Разрешение: 800х600 / Тип матрицы: E Ink / Количество градаций серого: 16
					Встроенная память: 4 ГБ / Вес: 191 г' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values(@currentSubCategory,3500,1,2015-04-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'PocketBook 626 Touch Lux2 Black (PB626-E-CIS)',N'Диагональ дисплея: 6" / Разрешение: 1024х758 / Тип матрицы: E Ink Pearl / Количество градаций серого: 16
					Встроенная память: 4 ГБ / Вес: 208 г' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values(@currentSubCategory,2500,1,2015-04-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'PocketBook InkPad 840 Brown', N'Диагональ дисплея: 8" / Разрешение: 1600x1200 / Тип матрицы: E Ink Pearl / Количество градаций серого: 16
					Встроенная память: 4 ГБ / Вес: 350 г' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values(@currentSubCategory,2500,1,2015-04-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'PocketBook 630 Kenzo Grey (PB630-G-CIS-KNZ)', N'Диагональ дисплея: 6" / Разрешение: 1024х758 / Тип матрицы: E Ink Pearl / Количество градаций серого: 16
					Встроенная память: 4 ГБ / Вес: 155 г' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values(@currentSubCategory,2500,1,2015-04-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'PocketBook 614 Basic 2 White (PB614-D-CIS)', N'Диагональ дисплея: 6" / Разрешение: 800х600	/ Тип матрицы: E Ink Pearl / Количество градаций серого: 16
					Встроенная память: 4 ГБ / Вес: 188 г' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values(@currentSubCategory,2500,1,2015-04-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'EvroMedia Е-Учебник Classic Pro', N'Диагональ дисплея: 9.7" / Разрешение: 1200x800	/ Тип матрицы: E Ink Pearl / Количество градаций серого: 16
					Встроенная память: 4 ГБ / Вес: 350 г' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values(@currentSubCategory,2500,1,2015-04-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'PocketBook 630 Sense Brown (PB630-X-CIS)', N'Диагональ дисплея: 6" / Разрешение: 1024х758 / Тип матрицы: E Ink Pearl / Количество градаций серого: 16
					Встроенная память: 4 ГБ / Вес: 155 г' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values(@currentSubCategory,2500,1,2015-04-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Evromedia E-учебник Classic One', N'Диагональ дисплея: 6" / Разрешение: 800х600 / Тип матрицы: E Ink / Количество градаций серого: 16
					Встроенная память: 4 ГБ / Вес: 191 г' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values(@currentSubCategory,2500,1,2015-04-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'EvroMedia Е-Учебник HD Paper', N'Диагональ дисплея: 6" / Разрешение: 1024х758 / Тип матрицы: E Ink Pearl / Количество градаций серого: 16
					Встроенная память: 4 ГБ / Вес: 155 г' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values(@currentSubCategory,2500,1,2015-04-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'PocketBook Ultra 650 Белый ', N'Диагональ дисплея: 6" / Разрешение: 1024х758 / Тип матрицы: E Ink Pearl / Количество градаций серого: 16
					Встроенная память: 4 ГБ / Вес: 175 г'from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values(@currentSubCategory,2500,1,2015-04-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'PocketBook 515 Grey (PB515-Y)', N'Диагональ дисплея: 5" / Разрешение: 800х600 / Тип матрицы: E Ink / Количество градаций серого: 16
					Встроенная память: 4 ГБ / Вес: 131 г' from [dbo].[Products]


INSERT INTO [dbo].[Categories]([TopId])
values (NULL)

SELECT @currentCategory= MAX(Id) from  [dbo].[Categories] where TopId is null

INSERT INTO [dbo].[CategoryTranslations] ([CategoryId],[LanguageId],[Name])
values (@currentCategory,@lang,N'Телефоны, MP3, GPS')

INSERT INTO [dbo].[Categories]([TopId])
values (@currentCategory)

SELECT @currentSubCategory= MAX(Id) from  [dbo].[Categories]

INSERT INTO [dbo].[CategoryTranslations] ([CategoryId],[LanguageId],[Name])
values (@currentSubCategory,@lang,N'Смартфоны')

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Samsung Galaxy J5 J500H/DS Black', N'Экран (5", Super AMOLED, 1280x720)/ Qualcomm Snapdragon 410 (1.2 ГГц)/ основная камера: 13 Мп, фронтальная камера: 5 Мп
					RAM 1.5 ГБ/ 8 ГБ встроенной памяти + microSD/SDHC (до 128 ГБ)/ 3G / GPS/ поддержка 2х SIM-карт (Micro-SIM)
					Android 5.1 (Lollipop) / 2600 мА*ч' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Lenovo A7000 Onyx Black ', N'Экран (5.5", IPS, 1280x720)/ MediaTek MT6752 (1.5 ГГц)/ основная камера: 8 Мп, фронтальная камера: 5 Мп
					RAM 2 ГБ/ 8 ГБ встроенной памяти + microSD/SDHC (до 32 ГБ)/ 3G/ GPS/ поддержка 2х SIM-карт (Micro-SIM)
					Android 5.0 (Lollipop) / 2900 мА*ч' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Samsung Galaxy A3 2016 Duos SM-A310 16Gb Black',N'Экран (4.7", Super AMOLED, 1280x720)/ Четырехъядерный Qualcomm Snapdragon 410 (1.5 ГГц)/ основная камера: 13 Мп, фронтальная камера: 5 Мп
					RAM 1.5 ГБ/ 16 ГБ встроенной памяти + microSD/SDHC (до 128 ГБ)/ 3G/ LTE/ GPS/ поддержка 2х SIM-карт (Nano-SIM)
					Android 5.1.1 (Lollipop)/ 2300 мА*ч' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Samsung Galaxy S6 SS 32GB G920 Gold', N'Экран (5.1", Super AMOLED, 2560х1440)/ Samsung Exynos 7420 (Quad 2.1 ГГц + Quad 1.5 ГГц)/ основная камера: 16 Мп, фронтальная камера: 5 Мп
					RAM 3 ГБ/ 32 ГБ встроенной памяти/ 3G/ LTE/ GPS/ Nano-SIM
					Android 5.0 (Lollipop) / 2550 мА*ч' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'LG G4 Leather Brown', N'Экран (5.5", IPS, 2560х1440)/ Qualcomm Snapdragon 808 (1.8 ГГц)/ основная камера: 16 Мп, фронтальная камера: 8 Мп
					RAM 3 ГБ/ 32 ГБ встроенной памяти + microSD/SDHC (до 2 ТБ)/ 3G/ LTE/ GPS/ поддержка 2х SIM-карт (Micro-SIM)
					Android 5.1 (Lollipop) / 3000 мА*ч' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Apple iPhone 5s 16GB Space Gray', N'Экран (4", IPS, 1136x640)/ Apple A7 (1.3 ГГц)/ основная камера: 8 Мп, фронтальная камера: 1.2 Мп
					RAM 1 ГБ/ 16 ГБ встроенной памяти/ 3G/ LTE/ GPS/ Nano-SIM/ iOS 9/ 1560 мА*ч' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Meizu M2 Note 16GB White с наушниками EP-21HD (Международная версия)', N'Экран (5.5", IGZO, 1920x1080)/ MediaTek MT6753 (1.3 ГГц)/ основная камера: 13 Мп, фронтальная камера: 5 Мп
					RAM 2 ГБ/ 16 ГБ встроенной памяти + microSD/SDHC (до 128 ГБ)/ 3G/ LTE/ GPS/ поддержка 2х SIM-карт (Nano-SIM)
					Android 5.1 (Lollipop) / 3100 мА*ч' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Samsung Galaxy S3 Neo Duos I9300i Black', N'Экран (4.8", Super AMOLED, 1280x720)/ Qualcomm MSM8226 Snapdragon 400 (1.4 ГГц)/ основная камера: 8 Мп, фронтальная камера: 1.9 Мп
					RAM 1.5 ГБ/ 16 ГБ встроенной памяти + microSD/SDHC (до 64 ГБ)/ 3G/ GPS/ поддержка 2х SIM-карт (Micro-SIM)
					Android 4.3 (Jelly Bean) / 2100 мА*ч' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Xiaomi Redmi Note 2 16GB Gray', N'Экран (5.5", IPS, 1920x1080)/ MediaTek Helio X10 MT6795 (2.0 ГГц)/ основная камера: 13 Мп, фронтальная камера: 5 Мп
					RAM 2 ГБ/ 16 ГБ встроенной памяти + microSD/SDHC (до 32 ГБ)/ 3G/ LTE/ GPS/ поддержка 2х SIM-карт (Micro-SIM)
					Android 5.0 (Lollipop) / 3060 мА*ч' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Microsoft Lumia 640 XL (Nokia) DS Cyan', N'Экран (5.7", IPS, 1280x720)/ Qualcomm Snapdragon 400 (1.2 ГГц)/ основная камера: 13 Мп, фронтальная камера: 5 Мп
					RAM 1 ГБ/ 8 ГБ встроенной памяти + microSD/SDHC (до 128 ГБ)/ 3G/ GPS/ поддержка 2х SIM-карт (Micro-SIM)
					Windows Phone 8.1/ 3000 мА*ч' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Lenovo A2010 Black ', N'Экран (4.5", TN, 854x480)/ MediaTek MTK6735M (1.0 ГГц)/ основная камера: 5 Мп, фронтальная камера: 2 Мп
					RAM 1 ГБ/ 8 ГБ встроенной памяти + microSD/SDHC (до 32 ГБ)/ 3G/ GPS/ поддержка 2х SIM-карт (Micro-SIM)
					Android 5.1 (Lollipop) / 2000 мА*ч' from [dbo].[Products]


INSERT INTO [dbo].[Categories]([TopId])
values (@currentCategory)

SELECT @currentSubCategory= MAX(Id) from  [dbo].[Categories]

INSERT INTO [dbo].[CategoryTranslations] ([CategoryId],[LanguageId],[Name])
values(@currentSubCategory,@lang,N'MP3-плееры')

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Sony Walkman NWZ-A15 16GB Blue',N'16 ГБ / MP3, WMA, FLAC, L-PCM, AAC, HE-AAC, ALAC, AIFF, WAV, AVCHD, MPEG4, WMV9, JPEG 
					2.2" TFT QVGA (320 x 240) / FM-радио / NFC / Bluetooth / USB / 66 г / голубой' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Jeka Neo 8GB Black/Blue ',N'8 ГБ / MP3, WMA, WAV, PEG, BMP, AVI, TXT 
					1.8" TFT (160x128) / FM-приемник / miniUSB / 40 х 80 х 9 мм, 19 г / черный с синим' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Transcend T-Sonic 350 8GB Blue', N'8 ГБ / MP3, WMA, WAV / OLED / USB 2.0 / FM-приемник / Диктофон / 22 г / синий' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Apple iPod touch 64GB Blue', N'64 ГБ / AAC, защищенный AAC, HE-AAC, MP3, MP3 VBR, Audible, Apple Lossless, AIFF, WAV, H.264, MPEG-4, M-JPEG 
					сенсорный 4" Multi-Touch дисплей / камера 8 Мп + фронтальная камера 1.2 Мп 
					Wi-Fi / Bluetooth 4.1 / iOS 8 / 88 г / голубой' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Pixus Six 8GB New White ', N'8 ГБ / MP3, WMA, WAV / OLED черно-белый / FM-приемник 
					Диктофон / USB 2.0 / 80 x 20 x 11 мм, 18 г / белый' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
Select MAX(Id),@lang,'NRG Stick Pro ', N'8 ГБ / MP3, WMA, WAV, FLAC / OLED 4х-строчный / FM-приемник / диктофон 
					USB / 84 х 27 х 13 мм, 26 г / черный' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Apple iPod nano 7Gen 16GB Space Gray',N'16 ГБ / АAC, защищенный AAC, HE-AAC, MP3, MP3 VBR, Audible, Apple Lossless, AIFF, WAV, H.264, M4V, MP4, MOV, MPEG-4 
					2.5" Multi-Touch дисплей / FM-радио / Bluetooth 4.0 / 31 г / серый' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Sony Walkman NWZ-WS613 4GB White ', N'4 ГБ / MP3, WMA, Linear PCM, AAC / USB / Bluetooth / NFC / водонепроницаемый / 37 г / белый' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'FiiO M3 White ', N'8 ГБ / APE / FLAC / WAV / MP3 / AAC / WMA / OGG / 2" TFT-экран / 40 г' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Apple iPod shuffle 2GB Pink', N'2 ГБ / АAC, защищенный AAC, MP3, MP3 VBR, Audible, Apple Lossless, AIFF, WAV / 12.5 г / розовый' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Apple iPod touch 16GB Gold', N'16 ГБ / AAC, защищенный AAC, HE-AAC, MP3, MP3 VBR, Audible, Apple Lossless, AIFF, WAV, H.264, MPEG-4, M-JPEG 
					сенсорный 4" Multi-Touch дисплей / камера 8 Мп + фронтальная камера 1.2 Мп 
					Wi-Fi / Bluetooth 4.1 / iOS 8 / 88 г / золотистый' from [dbo].[Products]

INSERT INTO [dbo].[Categories]([TopId])
values (@currentCategory)

SELECT @currentSubCategory= MAX(Id) from  [dbo].[Categories]

INSERT INTO [dbo].[CategoryTranslations] ([CategoryId],[LanguageId],[Name])
values(@currentSubCategory,@lang,N'Зарядные устройтсва ')


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Сетевой адаптер E-Power 1 USB + holder 2.1 A', N'Тип: Сетевые / Подходит для зарядки: Электронных книг, Планшетов, Мобильных телефонов
					Количество USB-портов 1 / Дополнительные характеристики: LED индикация процесса зарядки / Цвет Black / Гарантия: 6 месяцев' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Автомобильное зарядное устройство E-Power MicroUSB', N'Тип: Автомобильные / Подходит для зарядки: Электронных книг, Планшетов, Мобильных телефонов
					Количество USB-портов: 1 / Дополнительные характеристики: LED индикация процесса зарядки / Цвет: Black / Гарантия: 6 месяцев' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Сетевое зарядное устройство E-Power кабель Smart', N'Тип: Сетевые / Подходит для зарядки: Электронных книг, Планшетов, Мобильных телефонов
					Количество USB-портов: 2 / Дополнительные характеристики: LED индикация процесса зарядки / Цвет: Black / Гарантия: 6 месяцев' from [dbo].[Products]



INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Сетевое зарядное устройство Pixus Charge One Turquoise', N'Тип: Сетевые / Подходит для зарядки: Электронных книг, Планшетов, Мобильных телефонов / Количество USB-портов: 1
					Кабель: 1.2 м / Цвет: Turquoise / Гарантия: 12 месяцев' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,250,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Универсальный зарядный комплект E-Power 3 в 1',N'Тип: Автомобильные, Сетевые \ Подходит для зарядки: Электронных книг, Планшетов, Мобильных телефонов
					Количество USB-портов: 2 / Дополнительные характеристики: LED индикация процесса зарядки / Цвет: Black / Гарантия: 6 месяцев' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Сетевое зарядное устройство Logan Quad USB Wall Charger 5V 4A CH-4 Orange', N'Тип: Сетевые / Подходит для зарядки: Электронных книг, Планшетов, Мобильных телефонов
					Совместимость: Мобильные телефоны, смартфоны, фотоаппараты, mp3-плееры, планшеты с возможностью зарядки от USB порта
					Количество USB-портов: 4 / Цвет: Orange / Гарантия: 12 месяцев' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Автомобильное зарядное устройство E-Power кабель MicroUSB',  N'Тип: Сетевые / Подходит для зарядки: Планшетов, Мобильных телефонов / Совместимость: iPhone 5, iPhone 6' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Сетевое зарядное устройство',  N'Тип: Сетевые / Подходит для зарядки: Планшетов, Мобильных телефонов / Совместимость: iPhone 5, iPhone 6' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Сетевое зарядное устройство Global MSH-TR-071 c кабелем для iPhone 5, 6 White', N'Тип: Сетевые / Подходит для зарядки: Планшетов, Мобильных телефонов / Совместимость: iPhone 5, iPhone 6
					Цвет: White / Гарантия: 12 месяцев' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Сетевое зарядное устройство Drobak Power Dual 220V-USB White/Black', N'Тип: Сетевые / Подходит для зарядки: Электронных книг, Планшетов, Мобильных телефонов / Количество USB-портов: 2
					Дополнительные характеристики: Прочный корпус, стойкий к царапинам и ударам / Цвет: White-Black / Гарантия: 6 месяцев' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Сетевое зарядное устройство Logan Quad USB Wall Charger 5V 2.6A CHC-4 White',N'Тип: Сетевые / Подходит для зарядки: Электронных книг, Планшетов, Мобильных телефонов
					Совместимость: Мобильные телефоны, смартфоны, фотоаппараты, mp3-плееры, планшеты с возможностью зарядки от USB порта
					Количество USB-портов: 4 / Цвет: White / Гарантия: 12 месяцев' from [dbo].[Products]

INSERT INTO [dbo].[Categories]([TopId])
values (NULL)

SELECT @currentCategory= MAX(Id) from  [dbo].[Categories] where TopId is null

INSERT INTO [dbo].[CategoryTranslations] ([CategoryId],[LanguageId],[Name])
values (@currentCategory,@lang,N'Бытовая техника')

INSERT INTO [dbo].[Categories]([TopId])
values (@currentCategory)

SELECT @currentSubCategory= MAX(Id) from  [dbo].[Categories]

INSERT INTO [dbo].[CategoryTranslations] ([CategoryId],[LanguageId],[Name])
values (@currentSubCategory,@lang,N'Холодильники')

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,6500,1,2015-03-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'SNAIGE FR-240.1101AA',N'Тип холодильника: двухкамерный /  Общий объем холодильника: 220 л /  Полезный объем холод. камеры: 166 л  
					Полезный объем мороз. камеры: 46 л /  Дисплей: нет/  Тип управления: механическое /  No Frost (Frost Free) : нет 
					Уровень шума: 39 дБ /  Габариты (ВхШхГ): 144х56х60 см. /  Цвет: белый.' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'SAMSUNG RB31FSRNDEF', N'Тип холодильника: двухкамерный. /  Общий объем холодильника: 331 л. / Полезный объем холод. камеры: 212 л.
					Полезный объем мороз. камеры: 98 л. /  Дисплей: нет. /  Тип управления: электронное. 
					No Frost (Frost Free) : холодильное+морозильное отделения /  Уровень шума: 37 дБ. /  Габариты (ВхШхГ): 185x59,5x66,8 см. 
					Вес: 65 кг. / Цвет: бежевый.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'INDESIT NBS 18 AA UA', N'Тип холодильника: двухкамерный. / Общий объем холодильника: 339 л. / Полезный объем холод. камеры: 233 л. 
					Полезный объем мороз. камеры: 85 л. / Дисплей: нет. / Тип управления: механическое. / No Frost (Frost Free) : нет.
					Уровень шума: 39 дБ. / Габариты (ВхШхГ): 185х60х66 см. / Цвет: белый.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'LG GA-B419SQCL ', N'Тип холодильника: двухкамерный. / Общий объем холодильника: 354 л. / Полезный объем холод. камеры: 225 л. 
					Полезный объем мороз. камеры: 87 л. / Дисплей: нет. / Тип управления: электронное. 
					No Frost (Frost Free) : холодильное+морозильное отделения . / Уровень шума: 41 дБ. / Габариты (ВхШхГ): 190,7x59,5x64,3 см. 
					Вес: 75 кг. / Цвет: белый.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'SNAIGE FR-275.1101AA ', N'Тип холодильника: двухкамерный. / Общий объем холодильника: 260 л. / Полезный объем холод. камеры: 201 л. 
					Полезный объем мороз. камеры: 57 л. / Дисплей: нет. / Тип управления: механическое. / No Frost (Frost Free) : нет. 
					Уровень шума: 39 дБ. / Габариты (ВхШхГ): 169х56х60 см. / Цвет: белый.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'INDESIT NTS 14 AA (UA) ', N'Тип холодильника: двухкамерный. / Общий объем холодильника: 249 л. / Полезный объем холод. камеры: 194 л. 
					Полезный объем мороз. камеры: 51 л. / Дисплей: нет. / Тип управления: механическое. / No Frost (Frost Free) : нет.
					Уровень шума: 39 дБ. / Габариты (ВхШхГ): 145х60х62 см. / Цвет: белый.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'BOSCH KGV39VW31', N'Тип холодильника: двухкамерный. / Общий объем холодильника: 347 л. / Полезный объем холод. камеры: 250 л. 
					Полезный объем мороз. камеры: 94 л. / Дисплей: нет. / Тип управления: электронное. / No Frost (Frost Free) : нет. 
					Уровень шума: 39 дБ. / Габариты (ВхШхГ): 201x60x65 см. / Цвет: белый' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'ATLANT XM-6025-100', N'Тип холодильника: двухкамерный. / Общий объем холодильника: 384 л. / Полезный объем холод. камеры: 225 л.
					Полезный объем мороз. камеры: 129 л. / Дисплей: нет. / Тип управления: механическое. / No Frost (Frost Free) : нет. 
					Уровень шума: 39-42 дБ. / Габариты (ВхШхГ): 205х60х63 см. / Вес: 87 кг. / Цвет: белый' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'LG GA-B419SEQL',N'Тип холодильника: двухкамерный. / Общий объем холодильника: 354 л. / Полезный объем холод. камеры: 225 л.
					Полезный объем мороз. камеры: 87 л. / Дисплей: есть. / Тип управления: электронное.
					No Frost (Frost Free) : холодильное+морозильное отделения . / Уровень шума: 41 дБ. / Габариты (ВхШхГ): 190,7х59,5х64,3 см. 
					Вес: 75 кг. / Цвет: бежевый.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'INDESIT NBS 20 AA (UA) ', N'Тип холодильника: двухкамерный. / Общий объем холодильника: 363 л. / Полезный объем холод. камеры: 233 л.
					Полезный объем мороз. камеры: 108 л. / Дисплей: нет. / Тип управления: механическое. / No Frost (Frost Free) : нет. 
					Уровень шума: 39 дБ. / Габариты (ВхШхГ): 200х60х66 см. / Цвет: белый.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'SAMSUNG RB31FSRNDWW ', N'Тип холодильника: двухкамерный. / Общий объем холодильника: 331 л. / Полезный объем холод. камеры: 212 л.
					Полезный объем мороз. камеры: 98 л. / Дисплей: нет. / Тип управления: электронное.
					No Frost (Frost Free) : холодильное+морозильное отделения / Уровень шума: 37 дБ. / Габариты (ВхШхГ): 185x59,5x66,8 см.
					Вес: 65 кг. / Цвет: белый.' from [dbo].[Products]


INSERT INTO [dbo].[Categories]([TopId])
values (@currentCategory)

SELECT @currentSubCategory= MAX(Id) from  [dbo].[Categories]

INSERT INTO [dbo].[CategoryTranslations] ([CategoryId],[LanguageId],[Name])
values (@currentSubCategory,@lang,N'Плиты')

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'NORD 100-2В Белая ', N'Тип: газовая. / Газ-контроль: нет. / Зоны нагрева: газовые. / Материал решеток поверхности: эмалированные. 
					Тип духовки: газовая. / Полезный объем: 62 л. / Гриль: нет. / Конвекция: нет. / Таймер: нет. / Подсветка: нет. 
					Габариты (ВхШхГ): 85х50х60 см. / Вес: 32,5 кг. / Цвет: белый.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'GRETA 1470-0012 (WM)',N'Тип: газовая. / Газ-контроль: нет. / Зоны нагрева: газовые. / Материал решеток поверхности: эмалированные. 
					Тип духовки: газовая. / Полезный объем: 54 л. / Гриль: нет. / Конвекция: нет. / Таймер: нет. / Подсветка: нет. 
					Габариты (ВхШхГ): 85х50х54 см. / Вес: 31 кг. / Цвет: белый.' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'ZANUSSI ZCE9550G1W', N'Тип: электрическая. / Зоны нагрева: электрические. / Материал решеток поверхности: нет. / Тип духовки: электрическая.
					Полезный объем: 56 л. / Гриль: есть. / Конвекция: есть. / Таймер: нет. / Подсветка: есть. / Габариты (ВхШхГ): 85,5х50х60 см. / Цвет: белый.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'KAISER HGG 52511 W ', N'Тип: газовая. / Газ-контроль: поверхности+духовки. / Зоны нагрева: газовые. / Материал решеток поверхности: чугунные. 
					Тип духовки: газовая. / Полезный объем: 58 л. / Гриль: есть. / Конвекция: нет. / Таймер: есть. / Подсветка: есть. 
					Габариты (ВхШхГ): 85х50х60 см. / Вес: 43,9 кг. / Цвет: белый/черное зеркальное стекло.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'HANSA FCEW 53000', N'Тип: электрическая. / Зоны нагрева: электрические. / Материал решеток поверхности: нет. / Тип духовки: электрическая. 
					Полезный объем: 69 л. / Гриль: нет. / Конвекция: нет. / Таймер: нет. / Подсветка: есть. 
					Габариты (ВхШхГ): 85х50х60 см. / Вес: 40 кг. / Цвет: белый.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'HANSA FCMW53050 ', N'Тип: комбинированная (газ+электро). / Газ-контроль: нет. / Зоны нагрева: газовые, электрические. 
					Материал решеток поверхности: эмалированные. / Тип духовки: электрическая. / Полезный объем: 69 л. / Гриль: есть. 
					Конвекция: нет. / Таймер: нет. / Подсветка: есть. / Габариты (ВхШхГ): 85х50х60 см. / Цвет: белый.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'GEFEST 6100-01 ', N'Тип: газовая. / Газ-контроль: духовки. / Зоны нагрева: газовые. / Материал решеток поверхности: чугунные.
					Тип духовки: газовая. / Полезный объем: 52 л. / Гриль: нет. / Конвекция: нет. / Таймер: нет. / Подсветка: есть. 
					Габариты (ВхШхГ): 85х60х60 см. / Вес: 43,5 кг. / Цвет: белый.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'GRETA 1470-0016 (W)', N'Тип: газовая. / Газ-контроль: нет. / Зоны нагрева: газовые. / Материал решеток поверхности: эмалированные. 
					Тип духовки: газовая. / Полезный объем: 54 л. / Гриль: нет. / Конвекция: нет. / Таймер: нет. / Подсветка: нет.
					Габариты (ВхШхГ): 85х50х54 см. / Вес: 32 кг. / Цвет: белый.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'GRETA 1470-0007 (WM) ', N'Тип: газовая. / Газ-контроль: нет. / Зоны нагрева: газовые. / Материал решеток поверхности: эмалированные. 
					Тип духовки: газовая. / Полезный объем: 54 л. / Гриль: нет. / Конвекция: нет. / Таймер: нет. / Подсветка: есть. 
					Габариты (ВхШхГ): 85х50х54 см. / Вес: 37 кг. / Цвет: белый.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'ELECTROLUX EKK 954507 W ', N'Тип: комбинированная (газ+электро). / Газ-контроль: поверхности. / Зоны нагрева: газовые. / Материал решеток поверхности: чугунные. 
					Тип духовки: электрическая. / Полезный объем: 56 л. / Гриль: есть. / Конвекция: есть. / Таймер: есть. / Подсветка: есть.
					Габариты (ВхШхГ): 85,5x50x60 см. / Цвет: белый.' from [dbo].[Products]


INSERT INTO [dbo].[Categories]([TopId])
values (@currentCategory)

SELECT @currentSubCategory= MAX(Id) from  [dbo].[Categories]

INSERT INTO [dbo].[CategoryTranslations] ([CategoryId],[LanguageId],[Name])
values (@currentSubCategory,@lang,N'Стиральные машины')

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,4700,1,2015-06-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'INDESIT WISN 821 UA ', N'Тип: узкая. / Количество белья при стирке: 5 кг. / Скорость отжима: 800 об/мин. / Класс энергопотребления: А+. 
					Дисплей: нет. / Количество программ: 16. / Габариты (ВхШхГ) : 85x59,5x42 см. / Цвет:белый.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'ZANUSSI ZWSE 680 V', N'Тип: узкая. / Количество белья при стирке: 5 кг. / Скорость отжима: 800 об/мин. / Класс энергопотребления: А++. 
					Дисплей: нет. / Количество программ: 14. / Габариты (ВхШхГ) : 85х59,5х37,7 см. / Цвет:белый.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'ZANUSSI ZWSE 7120 V ',N'Тип: узкая. / Количество белья при стирке: 5 кг. / Скорость отжима: 1200 об/мин. / Класс энергопотребления: А++. 
					Дисплей: есть. / Количество программ: 14. / Габариты (ВхШхГ) : 85х59,5х37,7 см. / Цвет:белый.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'WHIRLPOOL AWS 63013', N'Тип: узкая. / Количество белья при стирке: 6 кг. / Скорость отжима: 1000 об/мин. / Класс энергопотребления: А+++. 
					Дисплей: есть. / Количество программ: 18. / Габариты (ВхШхГ) : 84,5х59,5х45,3 см. / Вес: 61 кг. / Цвет:белый.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'ELECTROLUX EWS1266CI ', N'Тип: узкая. / Количество белья при стирке: 6 кг. / Скорость отжима: 1200 об/мин. / Класс энергопотребления: А+++.
					Дисплей: есть. / Количество программ: 14. / Габариты (ВхШхГ) : 85х59,5х37,7 см. / Цвет:белый.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'INDESIT IWSD 51051 UA ', N'Тип: узкая. / Количество белья при стирке: 5 кг. / Скорость отжима: 1000 об/мин. / Класс энергопотребления: А+. 
					Дисплей: есть. / Количество программ: 16. / Габариты (ВхШхГ) : 85х59,5х42 см. / Цвет:белый.
					Цена: 4 758 грн' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
Select MAX(Id),@lang,N'ZANUSSI ZWSE 6100 V', N'Тип: узкая. / Количество белья при стирке: 5 кг. / Скорость отжима: 1000 об/мин. / Класс энергопотребления: А++.
					Дисплей: нет. / Количество программ: 14. / Габариты (ВхШхГ) : 85х59,5х37,7 см. / Цвет:белый.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'ZANUSSI ZWSE 7100 VS ',N'Тип: узкая. / Количество белья при стирке: 5 кг. / Скорость отжима: 1000 об/мин. / Класс энергопотребления: А++.
					Дисплей: есть. / Габариты (ВхШхГ) : 85x59,5x37,7 . / Цвет:белый/серебристый.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'ELECTROLUX EWS1052NDU', N'Тип: узкая. / Количество белья при стирке: 5 кг. / Скорость отжима: 1000 об/мин. / Класс энергопотребления: А++.
					Дисплей: нет. / Количество программ: 14. / Габариты (ВхШхГ) : 85х59,5х37,7. / Цвет:белый.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'LG F80C3LD', N'Тип: узкая. / Количество белья при стирке: 5 кг. / Скорость отжима: 800 об/мин./ Класс энергопотребления: А++. 
					Дисплей: нет. / Количество программ: 9. / Габариты (ВхШхГ) : 85x60x44 см. / Вес: 59 кг. / Цвет:белый.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'GORENJE W 7202/S ', N'Тип: узкая. / Количество белья при стирке: 7 кг. / Скорость отжима: 1000 об/мин. / Класс энергопотребления: А++. 
					Дисплей: нет. / Количество программ: 18. / Габариты (ВхШхГ) : 85х60х44 см. / Вес: 61,5 кг. / Цвет:белый.' from [dbo].[Products]

INSERT INTO [dbo].[Categories]([TopId])
values (NULL)

SELECT @currentCategory= MAX(Id) from  [dbo].[Categories] where TopId is null

INSERT INTO [dbo].[CategoryTranslations] ([CategoryId],[LanguageId],[Name])
values (@currentCategory, @lang, N'Спортивные товары')

INSERT INTO [dbo].[Categories]([TopId])
values (@currentCategory)

SELECT @currentSubCategory= MAX(Id) from  [dbo].[Categories]

INSERT INTO [dbo].[CategoryTranslations] ([CategoryId],[LanguageId],[Name])
values (@currentSubCategory,@lang, N'Беговые дорожки')


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'EnergyFIT EF-6606B ', N'Назначение: Домашние / конструкция: складные / особенности: транспортировочные ролики, подставка для аксессуаров
					максимальная скорость: 14 км/ч / максимальный вес пользователя: 125 кг / регулировка угла наклона: механическая' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N' EnergyFIT EF-5501В ', N'Назначение: Домашние / Конструкция: Складные / Особенности: Транспортировочные ролики, Подставка для аксессуаров
					Максимальная скорость: 13 км/ч / Максимальный вес пользователя: 120 кг / Регулировка угла наклона: Механическая' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'EnergyFIT EF-7705A ', N'Назначение: Домашние / Конструкция: Складные / Особенности: Транспортировочные ролики, Подставка для аксессуаров
					Максимальная скорость: 16 км/ч / Максимальный вес пользователя: 140 кг / Регулировка угла наклона: Механическая' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'InterAtletika Jessie KL-803',N'Назначение: Домашние / Конструкция: Складные / Особенности: Транспортировочные ролик, / Максимальный вес пользователя: 100 кг
					Регулировка угла наклона: Механическая' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'ProForm Endurance S9 (PETL99714) ', N'Назначение: Домашние / Конструкция: Складные / Особенности: Вентилятор / Максимальная скорость: 20 км/ч
					Максимальный вес пользователя: 135 кг / Регулировка угла наклона: Электрическая' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'NordicTrack T15 (NETL14711)',N'Назначение: Домашние / Конструкция: Складные / Особенности: Вентилятор / Максимальная скорость: 22 км/ч
					Максимальный вес пользователя: 159 кг / Регулировка угла наклона: Электрическая' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Spirit Esprit XT-485 ',N'Назначение: Домашние / Конструкция: Складные / Особенности: Транспортировочные ролики, Подставка для аксессуаров, Держатель для бутылки, Вентилятор
					Максимальная скорость: 18 км/ч / Максимальный вес пользователя: 195 кг / Регулировка угла наклона: Электрическая' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'NordicTrack C200 (NETL10814)', N'Назначение: Домашние / Конструкция: Складные / Особенности: Вентилятор / Максимальная скорость: 20 км/ч
					Максимальный вес пользователя: 150 кг / Регулировка угла наклона: Электрическая' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'HouseFit HT 9138HP (HT 9138HP)',N'Назначение: Домашние / Конструкция: Складные /  Максимальная скорость: 12 км/ч
					Максимальный вес пользователя: 100 кг / Регулировка угла наклона: Механическая' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,3700,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
Select MAX(Id),@lang,'Circle Fitness M7', N'Назначение: Профессиональные / Конструкция: Нескладные / Особенности: Транспортировочные ролики, Подставка для аксессуаров, Держатель для бутылки, Вентилятор
					Максимальная скорость: 20 км/ч / Максимальный вес пользователя: 182 кг/ Регулировка угла наклона: Электрическая' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,2900,1,2015-05-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
Select MAX(Id),@lang,'Discovery F-16', N'Назначение: Домашние / Конструкция: Складные /  Максимальная скорость: 16 км/ч
					Максимальный вес пользователя: 120 кг / Регулировка угла наклона: Электрическая' from [dbo].[Products]

INSERT INTO [dbo].[Categories]([TopId])
values (@currentCategory)

SELECT @currentSubCategory= MAX(Id) from  [dbo].[Categories]

INSERT INTO [dbo].[CategoryTranslations] ([CategoryId],[LanguageId],[Name])
values (@currentSubCategory,@lang,N'Велотренажеры')

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,7000,1,2015-09-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
Select MAX(Id),@lang,'Reebok One Series GB50 (RVON-10401BK)',N'Тип: Электромагнитные / Уровни нагрузки: 32 / Количество программ: 23 / Максимальный вес пользователя: 120 кг' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,7000,1,2015-09-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
Select MAX(Id),@lang,'Reebok One Series GB40 (RVON-10101BK)',N'Тип: Электромагнитные / Уровни нагрузки: 8 / Максимальный вес пользователя: 110 кг / Количество программ: 4' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,7000,1,2015-09-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
Select MAX(Id),@lang,'Sportop B800P+ ', N'Тип: Электромагнитные / Уровни нагрузки: 16 / Максимальный вес пользователя: 130 кг / Количество программ: 16
					Цена: 10 441 грн ' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,7000,1,2015-09-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
Select MAX(Id),@lang,'Sportop B600', N'Тип: Магнитные / Уровни нагрузки: 8 / Максимальный вес пользователя: 105 кг / Количество программ: Нет' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,7000,1,2015-09-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
Select MAX(Id),@lang,'InterFit Bike Drive (K.07)', N'Тип: Магнитные / Уровни нагрузки: 8 / Максимальный вес пользователя: 120 кг / Количество программ: 8' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,7000,1,2015-09-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
Select MAX(Id),@lang,'HouseFit Kinetic B1.0 (KINETIC B1.0)', N'Тип: Магнитные / Уровни нагрузки: 8 / Максимальный вес пользователя: 120 к, / Количество программ: Нет' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,7000,1,2015-09-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
Select MAX(Id),@lang,'EnergyFIT BC1200 ', N'Тип: Магнитные / Уровни нагрузки: 8 / Максимальный вес пользователя: 110 кг / Количество программ: Нет' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,7000,1,2015-09-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
Select MAX(Id),@lang,'EnergyFIT GB1206',N'Тип: Магнитные / Уровни нагрузки: 8 / Максимальный вес пользователя: 100 кг / Количество программ: Нет' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,7000,1,2015-09-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
Select MAX(Id),@lang,'EnergyFIT GBBT1503', N'Тип: Магнитные / Максимальный вес пользователя: 100 кг' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,7000,1,2015-09-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
Select MAX(Id),@lang,'NordicTrack GX 5.0 (NTEVEX71014) ', N'Тип: Электромагнитные / Уровни нагрузки: 20 / Максимальный вес пользователя: 125 кг / Количество программ: 20' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,7000,1,2015-09-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
Select MAX(Id),@lang,'Vision R60', N'Тип: Электромагнитные / Уровни нагрузки: 25 / Максимальный вес пользователя: 182 кг / Количество программ: 12' from [dbo].[Products]

INSERT INTO [dbo].[Categories]([TopId])
values (@currentCategory)

SELECT @currentSubCategory= MAX(Id) from  [dbo].[Categories]

INSERT INTO [dbo].[CategoryTranslations] ([CategoryId],[LanguageId],[Name])
values (@currentSubCategory,@lang,N'Гантели, диски')

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,1700,1,2015-09-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Гантель чугунная наборная Body Max 25 кг (ВМ-018)', N'Тип: Гантели / Вид замка: Винтовой / Форма грифа: Прямая / Длина: 38 см' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,7000,1,2015-09-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Гантель наборная Newt 17.5 кг (TI-968-745-17)', N'Тип: Гантели / Вид замка: Винтовой / Форма грифа: Прямая / Длина: 33 см' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,7000,1,2015-09-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Гантель наборная Newt 15.5 кг (TI-968-745-1-1)',N'Тип: Гантели / Вид замка: Винтовой / Форма грифа: Прямая / Длина: 33 см' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,7000,1,2015-09-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Гантель наборная Newt 10 кг (TI-968-747)', N'Тип: Гантели / Вид замка: Винтовой / Форма грифа: Прямая / Длина: 33 см' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,7000,1,2015-09-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Гантель наборная Newt 25.5 кг (TI-968-745-25-1) ', N'Тип: Гантели / Вид замка: Винтовой / Форма грифа: Прямая / Длина: 40 см' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,7000,1,2015-09-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N' Гантель чугунная наборная Body Max 20 кг (ВМ-016) ', N'Тип: Гантели / Вид замка: Винтовой / Форма грифа: Прямая / Длина: 38 см' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,7000,1,2015-09-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Диск Newt стальной 5 кг (TI-0006)', N'Тип: Диски / Материал: Сталь / Покрытие: Покраска / Диаметр отвертсия: 27 - 30 мм' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,7000,1,2015-09-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Диск Newt стальной 1 кг (TI-0011)',N'Тип: Диски / Материал: Сталь / Покрытие: Покраска / Диаметр отвертсия: 27 - 30 мм' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,7000,1,2015-09-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Диск Newt стальной 3 кг (TI-0014)',N'Тип: Диски / Материал: Сталь / Покрытие: Покраска / Диаметр отвертсия: 27 - 30 мм' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,7000,1,2015-09-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Наборная штанга Newt Home 50 кг (TI-0201-180-50)',  N'Тип: Штанги / Вид замка: Винтовой / Форма грифа: Прямая / Длина: 180 см' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,7000,1,2015-09-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Наборная штанга Newt Home 50 кг (TI-0201-180-50)', N'Тип: Штанги / Вид замка: Винтовой / Форма грифа: Прямая / Длина: 180 см' from [dbo].[Products]

INSERT INTO [dbo].[Categories]([TopId])
values (NULL)

SELECT @currentCategory= MAX(Id) from  [dbo].[Categories] where TopId is null

INSERT INTO [dbo].[CategoryTranslations] ([CategoryId],[LanguageId],[Name])
values (@currentCategory, @lang, N'Активный отдых и туризм')

INSERT INTO [dbo].[Categories]([TopId])
values (@currentCategory)

SELECT @currentSubCategory= MAX(Id) from  [dbo].[Categories]

INSERT INTO [dbo].[CategoryTranslations] ([CategoryId],[LanguageId],[Name])
values (@currentSubCategory,@lang,N'Лодки')

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,7000,1,2015-09-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Storm mk240',N'Тип: Гребные / Тип днища: Без днища в комплекте / Пассажировместимость: 2 чел. / Поворотные уключины и алюминиевые весла' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,7000,1,2015-09-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Ладья ЛТ-190', N'Тип: Гребные / Тип днища: Без днища в комплекте / Пассажировместимость: 1 чел. ' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,7000,1,2015-09-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Ладья ЛТ-190У', N'Тип: Гребные / Тип днища: Без днища в комплекте / Пассажировместимость: 1 чел.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,7000,1,2015-09-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Ладья ЛТ-330М', N'Тип: Гребные / Тип днища: Без днища в комплекте / Пассажировместимость: 4 чел.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,7000,1,2015-09-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
Select MAX(Id),@lang,'Storm stk-380', N'Тип: Моторные со стационарным транцем / Тип днища: Жесткое разборное / Пассажировместимость: 4 чел.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,7000,1,2015-09-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Ладья ЛО-250-С ', N'Тип: Гребные / Тип днища: Слань / Пассажировместимость: 2 чел.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,7000,1,2015-09-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Ладья ЛТ-220-ДС', N'Тип: Гребные / Тип днища: Слань / Пассажировместимость: 1 чел.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,7000,1,2015-09-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
Select MAX(Id),@lang,'Storm stm-280-40 ', N'Тип: Моторные со стационарным транцем / Тип днища: Слань / Пассажировместимость: 2 чел.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,7000,1,2015-09-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
Select MAX(Id),@lang,'Storm stm-330 ', N'Тип: Моторные со стационарным транцем / Тип днища: Слань / Пассажировместимость: 2 чел.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,7000,1,2015-09-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
Select MAX(Id),@lang,' Storm mk260', N'Тип: Гребные / Тип днища: Без днища в комплекте / Пассажировместимость: 2 чел.' from [dbo].[Products]

INSERT INTO [dbo].[Categories]([TopId])
values (@currentCategory)

SELECT @currentSubCategory= MAX(Id) from  [dbo].[Categories]

INSERT INTO [dbo].[CategoryTranslations] ([CategoryId],[LanguageId],[Name])
values (@currentSubCategory,@lang, N'Бинокли')

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,7000,1,2015-09-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
Select MAX(Id),@lang,'Arsenal 20x50 (10-2050) ', N'Тип: Бинокль / Кратность приближения: 20x / Диаметр объектива: 50 мм / Вес: 0.74 кг' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,7000,1,2015-09-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Arsenal 7x50 Морской Чёрный (NB61-0750C1 Black)',N'Тип: Бинокль / Кратность приближения: 7x / Диаметр объектива: 50 мм / Вес: 0.89 кг' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,7000,1,2015-09-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
Select MAX(Id),@lang,'Arsenal 12x25 NB25-1225', N'Тип: Бинокль / Диаметр объектива: 25 мм / Вес: 0.25 кг' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,7000,1,2015-09-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
Select MAX(Id),@lang,'Alpen Sport II 10x25 Green (920296)', N'Тип: Бинокль / Кратность приближения: 10х / Диаметр объектива: 25 мм / Вес: 0.2 кг' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,7000,1,2015-09-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
Select MAX(Id),@lang,'Arsenal 10-30х60 Porro (BF1-103060)', N'Тип: Бинокль / Кратность приближения: 10x - 30x / Диаметр объектива: 60 мм / Вес: 0.85 кг' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,7000,1,2015-09-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
Select MAX(Id),@lang,'Arsenal 12x25 NB27-1225 ', N'Тип: Монокль / Кратность приближения: 12x / Диаметр объектива: 25 мм / Вес: 0.07 кг' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,7000,1,2015-09-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
Select MAX(Id),@lang,'Arsenal 10x50 (10-1050)', N'Тип: Бинокль / Кратность приближения: 10х / Диаметр объектива: 50 мм / Вес: 0.7 кг' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,7000,1,2015-09-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
Select MAX(Id),@lang,'Praktica 12x25 (920721)',N'Бинокль Zeiss Victory HT 10х42 524529 (7120216)' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,7000,1,2015-09-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
SELECT MAX(Id),@lang,N'Бинокль Zeiss Victory HT 10х42 524529 (7120216)',N'Тип: Бинокль / Кратность приближения: 10x / Диаметр объектива: 42 мм / Вес: 0.8 кг' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,7000,1,2015-09-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
Select MAX(Id),@lang,'Kowa SV 10x42 WP (914770)', N'Тип: Бинокль / Кратность приближения: 10х / Диаметр объектива: 42 мм / Вес: 0.67 кг' from [dbo].[Products]

INSERT INTO [dbo].[Categories]([TopId])
values (@currentCategory)

SELECT @currentSubCategory= MAX(Id) from  [dbo].[Categories]

INSERT INTO [dbo].[CategoryTranslations] ([CategoryId],[LanguageId],[Name])
values (@currentSubCategory,@lang, N'Рации')


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,500,1,2015-10-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
Select MAX(Id),@lang,'Motorola TLKR T80 Extreme', N'Стандарт: PMR446 / Назначение: Переносные безлицензионные / Мощность: 0.5 Вт 
					Дальность связи: до 10 км / Вес: 140 г' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,500,1,2015-10-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
Select MAX(Id),@lang,'Voxtel MR160 ', N'Стандарт: PMR446 / Назначение: Переносные безлицензионные / Мощность: 0.5 Вт
					Дальность связи: до 3 км / Вес: 76 г' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,500,1,2015-10-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
Select MAX(Id),@lang,'Motorola TLKR T80 Extreme ', N'Стандарт: PMR446 / Назначение: Переносные безлицензионные / Мощность: 0.5 Вт
					Дальность связи: до 10 км / Вес: 140 г' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,500,1,2015-10-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
Select MAX(Id),@lang,'Motorola TLKR T41 Pink (P14MAA03A1BN)',N'Стандарт: PMR446 / Назначение: Переносные безлицензионные / Мощность: 0.5 Вт
					Дальность связи: до 4 км / Вес: 74 г' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,500,1,2015-10-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
Select MAX(Id),@lang,'Yaesu VX-6E', N'Стандарт: VHF/UHF / Назначение: Портативные радиолюбительские / Мощность: 5 Вт / Вес: 270 г
					Цена: 9 410 грн' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,500,1,2015-10-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
Select MAX(Id),@lang,'Baofeng UV-3R ', N'Стандарт: VHF/UHF / Назначение: Портативные радиолюбительские / Мощность: 2 Вт
					Дальность связи: до 5 км / Вес: 150 г' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,500,1,2015-10-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
Select MAX(Id),@lang,'President Truman ASC (TXMU092) ', N'Стандарт: AM/FM / Назначение: Автомобильные / Мощность: 4 Вт / Вес: 700 г' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,500,1,2015-10-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
Select MAX(Id),@lang,'Motorola TLKR T60', N'Стандарт: PMR446 / Назначение: Переносные безлицензионные / Мощность: 0.5 Вт
					Дальность связи: до 8 км / Вес: 103 г' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,500,1,2015-10-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
Select MAX(Id),@lang,'Voxtel MR950',N'Стандарт: PMR446 / Назначение: Переносные безлицензионные / Мощность: 0.5 Вт
					Дальность связи: до 10 км / Вес: 350 г' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
values (@currentSubCategory,500,1,2015-10-07)

INSERT INTO [dbo].[ProductTranslations] ([ProductId],[LanguageId],[Name],[Description])
Select MAX(Id),@lang,'President Jimmy II ASC (TXMU045) ',N'Стандарт: AM / Назначение: Автомобильные / Мощность: 4 Вт / Вес: 600 г' from [dbo].[Products]


--USERS--
INSERT INTO [dbo].[Users] ([Id],[Email],[EmailConfirmed],[PasswordHash],[SecurityStamp],[PhoneNumber],[PhoneNumberConfirmed],[TwoFactorEnabled],[LockoutEndDateUtc],[LockoutEnabled],[AccessFailedCount],[UserName],[CompanyId])
     VALUES (1, 'test1@app.com', 1, 'AKMKBYBitWlt0Gm81eVp+lO/feu2TaQFfBtRWkGcD/xH3mQVvqXagxIlN03aXl6Fjg==', 'dbd3a7ee-f435-4151-8c29-b2cd2f377128', '+3897276748361', 0, 0, null, 0, 0, 'Sara Connor', NULL)
INSERT INTO [dbo].[Users] ([Id],[Email],[EmailConfirmed],[PasswordHash],[SecurityStamp],[PhoneNumber],[PhoneNumberConfirmed],[TwoFactorEnabled],[LockoutEndDateUtc],[LockoutEnabled],[AccessFailedCount],[UserName],[CompanyId])
     VALUES (2, 'test2@app.com', 1, 'AKMKBYBitWlt0Gm81eVp+lO/feu2TaQFfBtRWkGcD/xH3mQVvqXagxIlN03aXl6Fjg==', 'dbd3a7ee-f435-4151-8c29-b2cd2f377128', '+3897276748362', 0, 0, null, 0, 0, 'Sara Connor 2', NULL)
INSERT INTO [dbo].[Users] ([Id],[Email],[EmailConfirmed],[PasswordHash],[SecurityStamp],[PhoneNumber],[PhoneNumberConfirmed],[TwoFactorEnabled],[LockoutEndDateUtc],[LockoutEnabled],[AccessFailedCount],[UserName],[CompanyId])
     VALUES (3, 'test3@app.com', 1, 'AKMKBYBitWlt0Gm81eVp+lO/feu2TaQFfBtRWkGcD/xH3mQVvqXagxIlN03aXl6Fjg==', 'dbd3a7ee-f435-4151-8c29-b2cd2f377128', '+3897276748363', 0, 0, null, 0, 0, 'Sara Connor 3', NULL)
INSERT INTO [dbo].[Users] ([Id],[Email],[EmailConfirmed],[PasswordHash],[SecurityStamp],[PhoneNumber],[PhoneNumberConfirmed],[TwoFactorEnabled],[LockoutEndDateUtc],[LockoutEnabled],[AccessFailedCount],[UserName],[CompanyId])
     VALUES (4, 'test4@app.com', 1, 'AKMKBYBitWlt0Gm81eVp+lO/feu2TaQFfBtRWkGcD/xH3mQVvqXagxIlN03aXl6Fjg==', 'dbd3a7ee-f435-4151-8c29-b2cd2f377128', '+3897276748364', 0, 0, null, 0, 0, 'Sara Connor 4', NULL)
INSERT INTO [dbo].[Users] ([Id],[Email],[EmailConfirmed],[PasswordHash],[SecurityStamp],[PhoneNumber],[PhoneNumberConfirmed],[TwoFactorEnabled],[LockoutEndDateUtc],[LockoutEnabled],[AccessFailedCount],[UserName],[CompanyId])
     VALUES (5, 'test5@app.com', 1, 'AKMKBYBitWlt0Gm81eVp+lO/feu2TaQFfBtRWkGcD/xH3mQVvqXagxIlN03aXl6Fjg==', 'dbd3a7ee-f435-4151-8c29-b2cd2f377128', '+3897276748365', 0, 0, null, 0, 0, 'Sara Connor 5', NULL)

--[PaymentTypes]--
INSERT INTO [dbo].[PaymentTypes] ([Type]) values (N'Наличными')
INSERT INTO [dbo].[PaymentTypes] ([Type]) values (N'PayPal')
INSERT INTO [dbo].[PaymentTypes] ([Type]) values (N'Карта Visa')
INSERT INTO [dbo].[PaymentTypes] ([Type]) values (N'Карта Master')
INSERT INTO [dbo].[PaymentTypes] ([Type]) values (N'Банковский перевод')

--[DeliveryTypes]--
INSERT INTO [dbo].[DeliveryTypes]([Type]) values (N'Самовывоз')
INSERT INTO [dbo].[DeliveryTypes]([Type]) values (N'Курьер')
INSERT INTO [dbo].[DeliveryTypes]([Type]) values (N'Новая почта')

--[Orders]--
INSERT INTO [dbo].[Orders] ([CreatorId],[CreateDate],[IsActive],[PaymentTypeId],[PaymentDate],[DeliveryTypeId],[DeliveryAddressId],[ComentsToOrder])
     VALUES (1, '20151215 09:11:32.590', 1, 1, null, 1, null, 'comment to order 1')
INSERT INTO [dbo].[Orders] ([CreatorId],[CreateDate],[IsActive],[PaymentTypeId],[PaymentDate],[DeliveryTypeId],[DeliveryAddressId],[ComentsToOrder])
     VALUES (1, '20151215 09:11:32.590', 1, 2, null, 2, null, 'comment to order 2')
INSERT INTO [dbo].[Orders] ([CreatorId],[CreateDate],[IsActive],[PaymentTypeId],[PaymentDate],[DeliveryTypeId],[DeliveryAddressId],[ComentsToOrder])
     VALUES (1, '20151215 09:11:32.590', 1, 2, null, 2, null, 'comment to order 3')
INSERT INTO [dbo].[Orders] ([CreatorId],[CreateDate],[IsActive],[PaymentTypeId],[PaymentDate],[DeliveryTypeId],[DeliveryAddressId],[ComentsToOrder])
     VALUES (2, '20151215 09:11:32.590', 1, 3, null, 3, null, 'comment to order 4')
INSERT INTO [dbo].[Orders] ([CreatorId],[CreateDate],[IsActive],[PaymentTypeId],[PaymentDate],[DeliveryTypeId],[DeliveryAddressId],[ComentsToOrder])
     VALUES (2, '20151215 09:11:32.590', 1, 1, null, 3, null, 'comment to order 5')
INSERT INTO [dbo].[Orders] ([CreatorId],[CreateDate],[IsActive],[PaymentTypeId],[PaymentDate],[DeliveryTypeId],[DeliveryAddressId],[ComentsToOrder])
     VALUES (3, '20151215 09:11:32.590', 1, 2, null, 2, null, 'comment to order 6')
INSERT INTO [dbo].[Orders] ([CreatorId],[CreateDate],[IsActive],[PaymentTypeId],[PaymentDate],[DeliveryTypeId],[DeliveryAddressId],[ComentsToOrder])
     VALUES (4, '20151215 09:11:32.590', 1, 2, null, 1, null, 'comment to order 7')
INSERT INTO [dbo].[Orders] ([CreatorId],[CreateDate],[IsActive],[PaymentTypeId],[PaymentDate],[DeliveryTypeId],[DeliveryAddressId],[ComentsToOrder])
     VALUES (5, '20151215 09:11:32.590', 1, 1, null, 1, null, 'comment to order 8')
	 
--[OrdersToProducts]--
DECLARE @productPrice MONEY

SELECT @productPrice = [Price] from  [dbo].[Products] where Id = 1
INSERT INTO [dbo].[OrdersToProducts] ([OrderId],[ProductId],[ProductCost])
     VALUES (1, 1, @productPrice)

SELECT @productPrice = [Price] from  [dbo].[Products] where Id = 2
INSERT INTO [dbo].[OrdersToProducts] ([OrderId],[ProductId],[ProductCost])
     VALUES (1, 2, @productPrice)

SELECT @productPrice = [Price] from  [dbo].[Products] where Id = 3
INSERT INTO [dbo].[OrdersToProducts] ([OrderId],[ProductId],[ProductCost])
     VALUES (1, 3, @productPrice)

SELECT @productPrice = [Price] from  [dbo].[Products] where Id = 2
INSERT INTO [dbo].[OrdersToProducts] ([OrderId],[ProductId],[ProductCost])
     VALUES (2, 2, @productPrice)

SELECT @productPrice = [Price] from  [dbo].[Products] where Id = 4
INSERT INTO [dbo].[OrdersToProducts] ([OrderId],[ProductId],[ProductCost])
     VALUES (2, 4, @productPrice)

SELECT @productPrice = [Price] from  [dbo].[Products] where Id = 5
INSERT INTO [dbo].[OrdersToProducts] ([OrderId],[ProductId],[ProductCost])
     VALUES (3, 5, @productPrice)

SELECT @productPrice = [Price] from  [dbo].[Products] where Id = 6
INSERT INTO [dbo].[OrdersToProducts] ([OrderId],[ProductId],[ProductCost])
     VALUES (4, 6, @productPrice)

SELECT @productPrice = [Price] from  [dbo].[Products] where Id = 7
INSERT INTO [dbo].[OrdersToProducts] ([OrderId],[ProductId],[ProductCost])
     VALUES (4, 7, @productPrice)

SELECT @productPrice = [Price] from  [dbo].[Products] where Id = 8
INSERT INTO [dbo].[OrdersToProducts] ([OrderId],[ProductId],[ProductCost])
     VALUES (5, 8, @productPrice)

SELECT @productPrice = [Price] from  [dbo].[Products] where Id = 9
INSERT INTO [dbo].[OrdersToProducts] ([OrderId],[ProductId],[ProductCost])
     VALUES (6, 9, @productPrice)

SELECT @productPrice = [Price] from  [dbo].[Products] where Id = 10
INSERT INTO [dbo].[OrdersToProducts] ([OrderId],[ProductId],[ProductCost])
     VALUES (7, 10, @productPrice)

SELECT @productPrice = [Price] from  [dbo].[Products] where Id = 11
INSERT INTO [dbo].[OrdersToProducts] ([OrderId],[ProductId],[ProductCost])
     VALUES (8, 11, @productPrice)

SELECT @productPrice = [Price] from  [dbo].[Products] where Id = 12
INSERT INTO [dbo].[OrdersToProducts] ([OrderId],[ProductId],[ProductCost])
     VALUES (8, 12, @productPrice)