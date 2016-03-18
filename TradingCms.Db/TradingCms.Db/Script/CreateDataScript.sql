





---Category---

INSERT INTO [dbo].[Categories]([TopId])
values (NULL)

INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),'Ru','Компьютерная техника',NULL from [dbo].[Categories]

INSERT INTO [dbo].[Categories]([TopId])
values (1)

INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),'Ru','Ноутбуки',NULL from [dbo].[Categories]


---Product---

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) ,  6555,1,25/12/2014   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Lenovo IdeaPad 100-14 (80HH001XUA)', 'Экран 14" (1366x768) HD LED, глянцевый / Intel Celeron N2840 (2.16 ГГц) / RAM 2 ГБ 
					HDD 500 ГБ / Intel HD Graphics / без ОД / LAN / Wi-Fi / веб-камера / DOS / 1.9 кг / черный' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) ,  6555,1,25/12/2014   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','HP 255G4 (NOY69ES)', 'Экран 15.6” (1366x768) HD LED, матовый / AMD Dual-Core E1-6015 (1.4 ГГц) / RAM 2 ГБ 
					HDD 500 ГБ / AMD Radeon R2 / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / Linux / 2.15 кг / черный' from [dbo].[Products]



INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) ,  6555,1,25/12/2014   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Dell Inspiron 3551 (135C25NIW-22)', 'Экран 15.6" (1366x768) HD WLED, глянцевый / Intel Celeron N2830 (2.16 ГГц) / RAM 2 ГБ 
					HDD 500 ГБ / Intel HD Graphics / Без ОД / Wi-Fi / Bluetooth 4.0 / веб-камера / Windows 8.1 / 2.14 кг / черный' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) ,  6555,1,25/12/2014   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU',' Asus EeeBook E502MA (E502MA-XX0026D) Blue ', 'Экран 15.6" (1366x768) HD, глянцевый / Intel Celeron N2840 (2.16 ГГц) / RAM 4 ГБ 
					HDD 500 ГБ / Intel HD Graphics / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / DOS / 1.86 кг / синий' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) ,  6555,1,25/12/2014   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU',' Acer Aspire ES1-520-392H (NX.G2JEU.002)', 'Экран 15.6'' (1366x768) HD LED, матовый / AMD E1-2500 (1.4 ГГц) / RAM 4 ГБ 
					HDD 500 ГБ / Radeon HD 8240 / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / Linpus / 2.4 кг / черный' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) ,  6555,1,25/12/2014   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Lenovo IdeaPad 100S White ', 'Экран 11.6" TN (1366x768) WXGA HD LED, глянцевый / Intel Atom Z3735F (1.33 - 1.83 ГГц) / RAM 2 ГБ 
					64 ГБ eMMC / Intel HD Graphics / без ОД / Wi-Fi / Bluetooth / веб-камера / Windows 10 Home / 1 кг / белый
					Цена: 6 799 грн' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) ,  6555,1,25/12/2014   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Acer Aspire E5-573G-312U (NX.MVMEU.025) Black-Iron ', 'Экран 15.6'' (1366x768) HD LED, матовый / Intel Core i3-5005U (2.0 ГГц) / RAM 4 ГБ 
					HDD 500 ГБ / nVidia GeForce 920M, 2 ГБ / Без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / Linux / 2.4 кг / серый с черным' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) ,  6555,1,25/12/2014   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU',' Asus EeeBook E502MA (E502MA-XX0020D) Blue ', 'Экран 15.6" (1366x768) HD, глянцевый / Intel Pentium N3540 (2.16 - 2.66 ГГц) / RAM 4 ГБ 
					HDD 1 ТБ / Intel HD Graphics / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / DOS / 1.86 кг / синий
					Цена: 8 999 грн ' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) ,  6555,1,25/12/2014   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Lenovo G50-45 (80E301XLUA) ', 'Экран 15.6" (1366x768) HD LED, глянцевый / AMD Quad-Core A4-6210 (1.8 ГГц) / RAM 2 ГБ 
					HDD 500 ГБ / AMD Radeon R3 / Без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / Windows 10 Home / 2.5 кг / черный' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) ,  6555,1,25/12/2014   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','HP 250 G4 (P5R75ES)', 'Экран 15.6” (1366x768) HD LED, матовый / Intel Core i3-4005U (1.7 ГГц) / RAM 4 ГБ 
					HDD 500 ГБ / Intel HD Graphics / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / DOS / 2.15 кг / черный' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) ,  6555,1,25/12/2014   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Lenovo IdeaPad 100-15 (80QQ004NUA)', 'Экран 15.6" (1366x768) HD LED, глянцевый / Intel Pentium 3825U (1.9 ГГц) / RAM 4 ГБ 
					HDD 500 ГБ / nVidia GeForce 920M, 1 ГБ / без ОД / LAN / Bluetooth / Wi-Fi / веб-камера / DOS / 2.3 кг / черный' from [dbo].[Products]




INSERT INTO [dbo].[Categories]([TopId])
values (2)

INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),'Ru','Планшеты',NULL from [dbo].[Categories]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3000,1,25/12/2015   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU',' Samsung Galaxy Tab E 9.6" 3G White (SM-T561NZWASEK)', 'Экран 9.6" (1280x800) емкостный MultiTouch / T-Shark2 (1.3 ГГц) / RAM 1.5 ГБ 
					8 ГБ встроенной памяти + microSD / 3G / Wi-Fi 802.11a/b/g/n / Bluetooth 4.0 / основная камера 5 Мп, фронтальная 2 Мп 
					GPS / ГЛОНАСС / Android 4.4 (KitKat) / 490 г / белый' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3000,1,25/12/2015   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Lenovo TAB 2 A7-10 7" 8GB WiFi Black (59434747)', 'Экран 7" (1024х600) IPS, емкостный MultiTouch / MediaTek MT8127 (1.3 ГГц) / RAM 1 ГБ 
					8 ГБ встроенной памяти + microSD / Wi-Fi / Bluetooth 4.0 
					фронтальная камера 0.3 Мп / A-GPS / Android 4.4 / 269 г / черный' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3000,1,25/12/2015   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Asus ZenPad 7.0 16GB White (Z370C-1B042A)', 'Экран 7" IPS (1280x800) емкостный MultiTouch / Intel Atom x3-C3200 / RAM 2 ГБ / 16 ГБ встроенной памяти + microSD
					Wi-Fi 802.11 b/g/n / Bluetooth 4.0 / основная камера 5 Мп, фронтальная - 0.3 Мп / GPS / ГЛОНАСС / ОС Android 5.0 (Lollipop) / 272 г / белый' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3000,1,25/12/2015   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Samsung Galaxy Tab S2 9.7" 32GB Black (SM-T810NZKESEK)', 'Экран 9.7" Super AMOLED (2048x1536) емкостный MultiTouch / Samsung Exynos 5433 (1.9 ГГц + 1.3 ГГц) / RAM 3 ГБ 
					32 ГБ встроенной памяти + microSD / 802.11 a/b/g/n/ac / Bluetooth 4.1 
					основная камера 8 Мп, фронтальная 2.1 Мп / GPS / ГЛОНАСС / Android 5.0 (Lollipop) / 375 г / черный' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3000,1,25/12/2015   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Lenovo Tab 2 A7-30DC 7" 3G 8GB Black (59444592)', 'Экран 7" (1024х600) IPS, емкостный MultiTouch / MediaTek MT8382M (1.3 ГГц) / RAM 1 ГБ 
					8 ГБ встроенной памяти + microSD / 3G / Wi-Fi / Bluetooth 4.0 
					основная камера 2 Мп + фронтальная 0.3 Мп / GPS / Android 4.4 (KitKat) / 269 г / черный' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3000,1,25/12/2015   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Prestigio MultiPad 10.1 3G Black (PMT3341_3G)', 'Экран 10.1" IPS (1280x800) емкостный Multi-Touch / Intel Atom X3 C3230 (1.2 ГГц) / RAM 1 ГБ 
					8 ГБ встроенной памяти + поддержка карт памяти microSD / 3G / Wi-Fi / Bluetooth 
					основная камера 2 Мп, фронтальная - 0.3 Мп / Android 5.1 (Lollipop) / 552 г / черный' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3000,1,25/12/2015   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Jeka JK-103 16GB 3G IPS', 'Экран 10.1" IPS (1024х600), емкостный, MultiTouch / ARM Cortex A7 (1.3 ГГц) / RAM 1 ГБ 
					16 ГБ встроенной памяти + microSD / 3G / Wi-Fi / Bluetooth 4.0 / основная камера 2 Мп, фронтальная - 0.3 Мп 
					GPS / A-GPS / ОС Android 5.1 (Lollipop) / вес 568 г / черный' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3000,1,25/12/2015   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Prestigio MultiPad Color 2 3G Black (PMT3777_3G_C)', 'Экран 7" IPS (1280x800) емкостный, MultiTouch / Intel Atom x3-C3230RK (1.2 ГГц) / RAM 1 ГБ 
					8 ГБ встроенной памяти + microSD / 3G / Wi-Fi / Bluetooth 4.0 / основная камера 2 Мп, фронтальная - 0.3 Мп 
					GPS / Android 5.1 (Lollipop) / 270 г / черный' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3000,1,25/12/2015   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Fly Flylife Connect 10.1 3G 2 Black', 'Экран 10.1" IPS (1280х800) емкостный MultiTouch / MediaTek MT8382V/W (1.3 ГГц) / RAM 1 ГБ 
					8 ГБ встроенной памяти + microSD / Wi-Fi / Bluetooth / 3G / основная камера 5 Мп, фронтальная 0.3 Мп 
					GPS / ОС Android 4.2.2 / 624 г / черный' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3000,1,25/12/2015   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU',' Assistant AP-115G White ', 'Экран 10.1" (1024x600) емкостный MultiTouch / MTK6572 Dual Core (1.2 ГГц) / RAM 1 ГБ 
					8 ГБ встроенной памяти + microSD / Wi-Fi b/g/n / 3G / Bluetooth / фронтальная камера 0.3 Мп, тыловая камера 2 Мп 
					GPS / OC Android 4.2 / 530 г / белый' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3000,1,25/12/2015   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','', '' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3000,1,25/12/2015   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Lenovo Tab 2 A10-70L 16GB LTE Blue (ZA010015UA)', 'Экран 10.1" (1920x1200) IPS емкостный, MultiTouch / MediaTek MT8732 (1.5 ГГц) / RAM 2 ГБ 
					16 ГБ встроенной памяти + microSD / Wi-Fi b/g/n / Bluetooth 4.0 / 3G / LTE / основная камера 8 Мп, фронтальная - 5 Мп 
					GPS / ГЛОНАСС / Beidou / Android 4.4 (KitKat) / 509 г / темно-синий' from [dbo].[Products]



INSERT INTO [dbo].[Categories]([TopId])
values (3)

INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),'Ru','Электронные книги',NULL from [dbo].[Categories]



INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 4500,1,2015-04-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','PocketBook 624 Basic Touch Grey (PB624-Y-WW)', 'Диагональ дисплея: 6" / Разрешение: 800х600 / Тип матрицы: E Ink / Количество градаций серого: 16
					Встроенная память: 4 ГБ / Вес: 191 г' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3500,1,2015-04-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','PocketBook 626 Touch Lux2 Black (PB626-E-CIS)', 'Диагональ дисплея: 6" / Разрешение: 1024х758 / Тип матрицы: E Ink Pearl / Количество градаций серого: 16
					Встроенная память: 4 ГБ / Вес: 208 г' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 2500,1,2015-04-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','PocketBook InkPad 840 Brown', 'Диагональ дисплея: 8" / Разрешение: 1600x1200 / Тип матрицы: E Ink Pearl / Количество градаций серого: 16
					Встроенная память: 4 ГБ / Вес: 350 г' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 2500,1,2015-04-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU',' PocketBook 630 Kenzo Grey (PB630-G-CIS-KNZ)', 'Диагональ дисплея: 6" / Разрешение: 1024х758 / Тип матрицы: E Ink Pearl / Количество градаций серого: 16
					Встроенная память: 4 ГБ / Вес: 155 г' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 2500,1,2015-04-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','PocketBook 614 Basic 2 White (PB614-D-CIS)', 'Диагональ дисплея: 6" / Разрешение: 800х600	/ Тип матрицы: E Ink Pearl / Количество градаций серого: 16
					Встроенная память: 4 ГБ / Вес: 188 г' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 2500,1,2015-04-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','EvroMedia Е-Учебник Classic Pro', 'Диагональ дисплея: 9.7" / Разрешение: 1200x800	/ Тип матрицы: E Ink Pearl / Количество градаций серого: 16
					Встроенная память: 4 ГБ / Вес: 350 г' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 2500,1,2015-04-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','PocketBook 630 Sense Brown (PB630-X-CIS)', 'Диагональ дисплея: 6" / Разрешение: 1024х758 / Тип матрицы: E Ink Pearl / Количество градаций серого: 16
					Встроенная память: 4 ГБ / Вес: 155 г' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 2500,1,2015-04-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Evromedia E-учебник Classic One', 'Диагональ дисплея: 6" / Разрешение: 800х600 / Тип матрицы: E Ink / Количество градаций серого: 16
					Встроенная память: 4 ГБ / Вес: 191 г' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 2500,1,2015-04-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','EvroMedia Е-Учебник HD Paper', 'Диагональ дисплея: 6" / Разрешение: 1024х758 / Тип матрицы: E Ink Pearl / Количество градаций серого: 16
					Встроенная память: 4 ГБ / Вес: 155 г' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 2500,1,2015-04-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','PocketBook Ultra 650 Белый ', 'Диагональ дисплея: 6" / Разрешение: 1024х758 / Тип матрицы: E Ink Pearl / Количество градаций серого: 16
					Встроенная память: 4 ГБ / Вес: 175 г' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 2500,1,2015-04-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','PocketBook 515 Grey (PB515-Y)', 'Диагональ дисплея: 5" / Разрешение: 800х600 / Тип матрицы: E Ink / Количество градаций серого: 16
					Встроенная память: 4 ГБ / Вес: 131 г' from [dbo].[Products]






INSERT INTO [dbo].[Categories]([TopId])
values (NULL)

INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),'Ru','Телефоны, MP3, GPS',NULL from [dbo].[Categories]

INSERT INTO [dbo].[Categories]([TopId])
values (1)

INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),'Ru','Смартфоны',NULL from [dbo].[Categories]



INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Samsung Galaxy J5 J500H/DS Black', 'Экран (5", Super AMOLED, 1280x720)/ Qualcomm Snapdragon 410 (1.2 ГГц)/ основная камера: 13 Мп, фронтальная камера: 5 Мп
					RAM 1.5 ГБ/ 8 ГБ встроенной памяти + microSD/SDHC (до 128 ГБ)/ 3G / GPS/ поддержка 2х SIM-карт (Micro-SIM)
					Android 5.1 (Lollipop) / 2600 мА*ч' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Lenovo A7000 Onyx Black ', 'Экран (5.5", IPS, 1280x720)/ MediaTek MT6752 (1.5 ГГц)/ основная камера: 8 Мп, фронтальная камера: 5 Мп
					RAM 2 ГБ/ 8 ГБ встроенной памяти + microSD/SDHC (до 32 ГБ)/ 3G/ GPS/ поддержка 2х SIM-карт (Micro-SIM)
					Android 5.0 (Lollipop) / 2900 мА*ч' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Samsung Galaxy A3 2016 Duos SM-A310 16Gb Black', 'Экран (4.7", Super AMOLED, 1280x720)/ Четырехъядерный Qualcomm Snapdragon 410 (1.5 ГГц)/ основная камера: 13 Мп, фронтальная камера: 5 Мп
					RAM 1.5 ГБ/ 16 ГБ встроенной памяти + microSD/SDHC (до 128 ГБ)/ 3G/ LTE/ GPS/ поддержка 2х SIM-карт (Nano-SIM)
					Android 5.1.1 (Lollipop)/ 2300 мА*ч' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Samsung Galaxy S6 SS 32GB G920 Gold', 'Экран (5.1", Super AMOLED, 2560х1440)/ Samsung Exynos 7420 (Quad 2.1 ГГц + Quad 1.5 ГГц)/ основная камера: 16 Мп, фронтальная камера: 5 Мп
					RAM 3 ГБ/ 32 ГБ встроенной памяти/ 3G/ LTE/ GPS/ Nano-SIM
					Android 5.0 (Lollipop) / 2550 мА*ч' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','LG G4 Leather Brown', 'Экран (5.5", IPS, 2560х1440)/ Qualcomm Snapdragon 808 (1.8 ГГц)/ основная камера: 16 Мп, фронтальная камера: 8 Мп
					RAM 3 ГБ/ 32 ГБ встроенной памяти + microSD/SDHC (до 2 ТБ)/ 3G/ LTE/ GPS/ поддержка 2х SIM-карт (Micro-SIM)
					Android 5.1 (Lollipop) / 3000 мА*ч' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Apple iPhone 5s 16GB Space Gray', 'Экран (4", IPS, 1136x640)/ Apple A7 (1.3 ГГц)/ основная камера: 8 Мп, фронтальная камера: 1.2 Мп
					RAM 1 ГБ/ 16 ГБ встроенной памяти/ 3G/ LTE/ GPS/ Nano-SIM/ iOS 9/ 1560 мА*ч' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Meizu M2 Note 16GB White с наушниками EP-21HD (Международная версия)', 'Экран (5.5", IGZO, 1920x1080)/ MediaTek MT6753 (1.3 ГГц)/ основная камера: 13 Мп, фронтальная камера: 5 Мп
					RAM 2 ГБ/ 16 ГБ встроенной памяти + microSD/SDHC (до 128 ГБ)/ 3G/ LTE/ GPS/ поддержка 2х SIM-карт (Nano-SIM)
					Android 5.1 (Lollipop) / 3100 мА*ч' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Samsung Galaxy S3 Neo Duos I9300i Black', 'Экран (4.8", Super AMOLED, 1280x720)/ Qualcomm MSM8226 Snapdragon 400 (1.4 ГГц)/ основная камера: 8 Мп, фронтальная камера: 1.9 Мп
					RAM 1.5 ГБ/ 16 ГБ встроенной памяти + microSD/SDHC (до 64 ГБ)/ 3G/ GPS/ поддержка 2х SIM-карт (Micro-SIM)
					Android 4.3 (Jelly Bean) / 2100 мА*ч' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Xiaomi Redmi Note 2 16GB Gray', 'Экран (5.5", IPS, 1920x1080)/ MediaTek Helio X10 MT6795 (2.0 ГГц)/ основная камера: 13 Мп, фронтальная камера: 5 Мп
					RAM 2 ГБ/ 16 ГБ встроенной памяти + microSD/SDHC (до 32 ГБ)/ 3G/ LTE/ GPS/ поддержка 2х SIM-карт (Micro-SIM)
					Android 5.0 (Lollipop) / 3060 мА*ч' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Microsoft Lumia 640 XL (Nokia) DS Cyan', 'Экран (5.7", IPS, 1280x720)/ Qualcomm Snapdragon 400 (1.2 ГГц)/ основная камера: 13 Мп, фронтальная камера: 5 Мп
					RAM 1 ГБ/ 8 ГБ встроенной памяти + microSD/SDHC (до 128 ГБ)/ 3G/ GPS/ поддержка 2х SIM-карт (Micro-SIM)
					Windows Phone 8.1/ 3000 мА*ч' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Lenovo A2010 Black ', 'Экран (4.5", TN, 854x480)/ MediaTek MTK6735M (1.0 ГГц)/ основная камера: 5 Мп, фронтальная камера: 2 Мп
					RAM 1 ГБ/ 8 ГБ встроенной памяти + microSD/SDHC (до 32 ГБ)/ 3G/ GPS/ поддержка 2х SIM-карт (Micro-SIM)
					Android 5.1 (Lollipop) / 2000 мА*ч' from [dbo].[Products]





INSERT INTO [dbo].[Categories]([TopId])
values (2)

INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),'Ru','MP3-плееры',NULL from [dbo].[Categories]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Sony Walkman NWZ-A15 16GB Blue', '16 ГБ / MP3, WMA, FLAC, L-PCM, AAC, HE-AAC, ALAC, AIFF, WAV, AVCHD, MPEG4, WMV9, JPEG 
					2.2" TFT QVGA (320 x 240) / FM-радио / NFC / Bluetooth / USB / 66 г / голубой' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Jeka Neo 8GB Black/Blue ', '8 ГБ / MP3, WMA, WAV, PEG, BMP, AVI, TXT 
					1.8" TFT (160x128) / FM-приемник / miniUSB / 40 х 80 х 9 мм, 19 г / черный с синим' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Transcend T-Sonic 350 8GB Blue', '8 ГБ / MP3, WMA, WAV / OLED / USB 2.0 / FM-приемник / Диктофон / 22 г / синий' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Apple iPod touch 64GB Blue', '64 ГБ / AAC, защищенный AAC, HE-AAC, MP3, MP3 VBR, Audible, Apple Lossless, AIFF, WAV, H.264, MPEG-4, M-JPEG 
					сенсорный 4" Multi-Touch дисплей / камера 8 Мп + фронтальная камера 1.2 Мп 
					Wi-Fi / Bluetooth 4.1 / iOS 8 / 88 г / голубой' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Pixus Six 8GB New White ', '8 ГБ / MP3, WMA, WAV / OLED черно-белый / FM-приемник 
					Диктофон / USB 2.0 / 80 x 20 x 11 мм, 18 г / белый' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','NRG Stick Pro ', '8 ГБ / MP3, WMA, WAV, FLAC / OLED 4х-строчный / FM-приемник / диктофон 
					USB / 84 х 27 х 13 мм, 26 г / черный' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Apple iPod nano 7Gen 16GB Space Gray', '16 ГБ / АAC, защищенный AAC, HE-AAC, MP3, MP3 VBR, Audible, Apple Lossless, AIFF, WAV, H.264, M4V, MP4, MOV, MPEG-4 
					2.5" Multi-Touch дисплей / FM-радио / Bluetooth 4.0 / 31 г / серый' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Sony Walkman NWZ-WS613 4GB White ', '4 ГБ / MP3, WMA, Linear PCM, AAC / USB / Bluetooth / NFC / водонепроницаемый / 37 г / белый' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','FiiO M3 White ', '8 ГБ / APE / FLAC / WAV / MP3 / AAC / WMA / OGG / 2" TFT-экран / 40 г' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Apple iPod shuffle 2GB Pink', '2 ГБ / АAC, защищенный AAC, MP3, MP3 VBR, Audible, Apple Lossless, AIFF, WAV / 12.5 г / розовый' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Apple iPod touch 16GB Gold', '16 ГБ / AAC, защищенный AAC, HE-AAC, MP3, MP3 VBR, Audible, Apple Lossless, AIFF, WAV, H.264, MPEG-4, M-JPEG 
					сенсорный 4" Multi-Touch дисплей / камера 8 Мп + фронтальная камера 1.2 Мп 
					Wi-Fi / Bluetooth 4.1 / iOS 8 / 88 г / золотистый' from [dbo].[Products]




INSERT INTO [dbo].[Categories]([TopId])
values (3)

INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),'Ru','Зарядные устройтсва ',NULL from [dbo].[Categories]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Сетевой адаптер E-Power 1 USB + holder 2.1 A', 'Тип: Сетевые / Подходит для зарядки: Электронных книг, Планшетов, Мобильных телефонов
					Количество USB-портов 1 / Дополнительные характеристики: LED индикация процесса зарядки / Цвет Black / Гарантия: 6 месяцев' from [dbo].[Products]



INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Автомобильное зарядное устройство E-Power MicroUSB', 'Тип: Автомобильные / Подходит для зарядки: Электронных книг, Планшетов, Мобильных телефонов
					Количество USB-портов: 1 / Дополнительные характеристики: LED индикация процесса зарядки / Цвет: Black / Гарантия: 6 месяцев' from [dbo].[Products]



INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Сетевое зарядное устройство E-Power кабель Smart', 'Тип: Сетевые / Подходит для зарядки: Электронных книг, Планшетов, Мобильных телефонов
					Количество USB-портов: 2 / Дополнительные характеристики: LED индикация процесса зарядки / Цвет: Black / Гарантия: 6 месяцев' from [dbo].[Products]



INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Сетевое зарядное устройство Pixus Charge One Turquoise', 'Тип: Сетевые / Подходит для зарядки: Электронных книг, Планшетов, Мобильных телефонов / Количество USB-портов: 1
					Кабель: 1.2 м / Цвет: Turquoise / Гарантия: 12 месяцев' from [dbo].[Products]



INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 250,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Универсальный зарядный комплект E-Power 3 в 1', 'Тип: Автомобильные, Сетевые \ Подходит для зарядки: Электронных книг, Планшетов, Мобильных телефонов
					Количество USB-портов: 2 / Дополнительные характеристики: LED индикация процесса зарядки / Цвет: Black / Гарантия: 6 месяцев' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Сетевое зарядное устройство Logan Quad USB Wall Charger 5V 4A CH-4 Orange', 'Тип: Сетевые / Подходит для зарядки: Электронных книг, Планшетов, Мобильных телефонов
					Совместимость: Мобильные телефоны, смартфоны, фотоаппараты, mp3-плееры, планшеты с возможностью зарядки от USB порта
					Количество USB-портов: 4 / Цвет: Orange / Гарантия: 12 месяцев' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Автомобильное зарядное устройство E-Power кабель MicroUSB', '' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Сетевое зарядное устройство', '' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Сетевое зарядное устройство Global MSH-TR-071 c кабелем для iPhone 5, 6 White', 'Тип: Сетевые / Подходит для зарядки: Планшетов, Мобильных телефонов / Совместимость: iPhone 5, iPhone 6
					Цвет: White / Гарантия: 12 месяцев' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Сетевое зарядное устройство Drobak Power Dual 220V-USB White/Black', 'Тип: Сетевые / Подходит для зарядки: Электронных книг, Планшетов, Мобильных телефонов / Количество USB-портов: 2
					Дополнительные характеристики: Прочный корпус, стойкий к царапинам и ударам / Цвет: White-Black / Гарантия: 6 месяцев' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Сетевое зарядное устройство Logan Quad USB Wall Charger 5V 2.6A CHC-4 White', 'Тип: Сетевые / Подходит для зарядки: Электронных книг, Планшетов, Мобильных телефонов
					Совместимость: Мобильные телефоны, смартфоны, фотоаппараты, mp3-плееры, планшеты с возможностью зарядки от USB порта
					Количество USB-портов: 4 / Цвет: White / Гарантия: 12 месяцев' from [dbo].[Products]





INSERT INTO [dbo].[Categories]([TopId])
values (NULL)
INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),'Ru','Бытовая техника',NULL from [dbo].[Categories]
INSERT INTO [dbo].[Categories]([TopId])
values (1)
INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),'Ru','Холодильники',NULL from [dbo].[Categories]



INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 6500,1,2015-03-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'Ru','SNAIGE FR-240.1101AA','Тип холодильника: двухкамерный /  Общий объем холодильника: 220 л /  Полезный объем холод. камеры: 166 л  
					Полезный объем мороз. камеры: 46 л /  Дисплей: нет/  Тип управления: механическое /  No Frost (Frost Free) : нет 
					Уровень шума: 39 дБ /  Габариты (ВхШхГ): 144х56х60 см. /  Цвет: белый.' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','SAMSUNG RB31FSRNDEF', 'Тип холодильника: двухкамерный. /  Общий объем холодильника: 331 л. / Полезный объем холод. камеры: 212 л.
					Полезный объем мороз. камеры: 98 л. /  Дисплей: нет. /  Тип управления: электронное. 
					No Frost (Frost Free) : холодильное+морозильное отделения /  Уровень шума: 37 дБ. /  Габариты (ВхШхГ): 185x59,5x66,8 см. 
					Вес: 65 кг. / Цвет: бежевый.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','INDESIT NBS 18 AA UA', 'Тип холодильника: двухкамерный. / Общий объем холодильника: 339 л. / Полезный объем холод. камеры: 233 л. 
					Полезный объем мороз. камеры: 85 л. / Дисплей: нет. / Тип управления: механическое. / No Frost (Frost Free) : нет.
					Уровень шума: 39 дБ. / Габариты (ВхШхГ): 185х60х66 см. / Цвет: белый.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','LG GA-B419SQCL ', 'Тип холодильника: двухкамерный. / Общий объем холодильника: 354 л. / Полезный объем холод. камеры: 225 л. 
					Полезный объем мороз. камеры: 87 л. / Дисплей: нет. / Тип управления: электронное. 
					No Frost (Frost Free) : холодильное+морозильное отделения . / Уровень шума: 41 дБ. / Габариты (ВхШхГ): 190,7x59,5x64,3 см. 
					Вес: 75 кг. / Цвет: белый.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','SNAIGE FR-275.1101AA ', 'Тип холодильника: двухкамерный. / Общий объем холодильника: 260 л. / Полезный объем холод. камеры: 201 л. 
					Полезный объем мороз. камеры: 57 л. / Дисплей: нет. / Тип управления: механическое. / No Frost (Frost Free) : нет. 
					Уровень шума: 39 дБ. / Габариты (ВхШхГ): 169х56х60 см. / Цвет: белый.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','INDESIT NTS 14 AA (UA) ', 'Тип холодильника: двухкамерный. / Общий объем холодильника: 249 л. / Полезный объем холод. камеры: 194 л. 
					Полезный объем мороз. камеры: 51 л. / Дисплей: нет. / Тип управления: механическое. / No Frost (Frost Free) : нет.
					Уровень шума: 39 дБ. / Габариты (ВхШхГ): 145х60х62 см. / Цвет: белый.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','BOSCH KGV39VW31', 'Тип холодильника: двухкамерный. / Общий объем холодильника: 347 л. / Полезный объем холод. камеры: 250 л. 
					Полезный объем мороз. камеры: 94 л. / Дисплей: нет. / Тип управления: электронное. / No Frost (Frost Free) : нет. 
					Уровень шума: 39 дБ. / Габариты (ВхШхГ): 201x60x65 см. / Цвет: белый' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU',' ATLANT XM-6025-100', 'Тип холодильника: двухкамерный. / Общий объем холодильника: 384 л. / Полезный объем холод. камеры: 225 л.
					Полезный объем мороз. камеры: 129 л. / Дисплей: нет. / Тип управления: механическое. / No Frost (Frost Free) : нет. 
					Уровень шума: 39-42 дБ. / Габариты (ВхШхГ): 205х60х63 см. / Вес: 87 кг. / Цвет: белый' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','LG GA-B419SEQL', 'Тип холодильника: двухкамерный. / Общий объем холодильника: 354 л. / Полезный объем холод. камеры: 225 л.
					Полезный объем мороз. камеры: 87 л. / Дисплей: есть. / Тип управления: электронное.
					No Frost (Frost Free) : холодильное+морозильное отделения . / Уровень шума: 41 дБ. / Габариты (ВхШхГ): 190,7х59,5х64,3 см. 
					Вес: 75 кг. / Цвет: бежевый.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','INDESIT NBS 20 AA (UA) ', 'Тип холодильника: двухкамерный. / Общий объем холодильника: 363 л. / Полезный объем холод. камеры: 233 л.
					Полезный объем мороз. камеры: 108 л. / Дисплей: нет. / Тип управления: механическое. / No Frost (Frost Free) : нет. 
					Уровень шума: 39 дБ. / Габариты (ВхШхГ): 200х60х66 см. / Цвет: белый.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','SAMSUNG RB31FSRNDWW ', 'Тип холодильника: двухкамерный. / Общий объем холодильника: 331 л. / Полезный объем холод. камеры: 212 л.
					Полезный объем мороз. камеры: 98 л. / Дисплей: нет. / Тип управления: электронное.
					No Frost (Frost Free) : холодильное+морозильное отделения / Уровень шума: 37 дБ. / Габариты (ВхШхГ): 185x59,5x66,8 см.
					Вес: 65 кг. / Цвет: белый.' from [dbo].[Products]



INSERT INTO [dbo].[Categories]([TopId])
values (2)
INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),'Ru','Плиты',NULL from [dbo].[Categories]



INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','NORD 100-2В Белая ', 'Тип: газовая. / Газ-контроль: нет. / Зоны нагрева: газовые. / Материал решеток поверхности: эмалированные. 
					Тип духовки: газовая. / Полезный объем: 62 л. / Гриль: нет. / Конвекция: нет. / Таймер: нет. / Подсветка: нет. 
					Габариты (ВхШхГ): 85х50х60 см. / Вес: 32,5 кг. / Цвет: белый.' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','GRETA 1470-0012 (WM)', 'Тип: газовая. / Газ-контроль: нет. / Зоны нагрева: газовые. / Материал решеток поверхности: эмалированные. 
					Тип духовки: газовая. / Полезный объем: 54 л. / Гриль: нет. / Конвекция: нет. / Таймер: нет. / Подсветка: нет. 
					Габариты (ВхШхГ): 85х50х54 см. / Вес: 31 кг. / Цвет: белый.' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','ZANUSSI ZCE9550G1W', 'Тип: электрическая. / Зоны нагрева: электрические. / Материал решеток поверхности: нет. / Тип духовки: электрическая.
					Полезный объем: 56 л. / Гриль: есть. / Конвекция: есть. / Таймер: нет. / Подсветка: есть. / Габариты (ВхШхГ): 85,5х50х60 см. / Цвет: белый.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','KAISER HGG 52511 W ', 'Тип: газовая. / Газ-контроль: поверхности+духовки. / Зоны нагрева: газовые. / Материал решеток поверхности: чугунные. 
					Тип духовки: газовая. / Полезный объем: 58 л. / Гриль: есть. / Конвекция: нет. / Таймер: есть. / Подсветка: есть. 
					Габариты (ВхШхГ): 85х50х60 см. / Вес: 43,9 кг. / Цвет: белый/черное зеркальное стекло.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','HANSA FCEW 53000', 'Тип: электрическая. / Зоны нагрева: электрические. / Материал решеток поверхности: нет. / Тип духовки: электрическая. 
					Полезный объем: 69 л. / Гриль: нет. / Конвекция: нет. / Таймер: нет. / Подсветка: есть. 
					Габариты (ВхШхГ): 85х50х60 см. / Вес: 40 кг. / Цвет: белый.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','HANSA FCMW53050 ', 'Тип: комбинированная (газ+электро). / Газ-контроль: нет. / Зоны нагрева: газовые, электрические. 
					Материал решеток поверхности: эмалированные. / Тип духовки: электрическая. / Полезный объем: 69 л. / Гриль: есть. 
					Конвекция: нет. / Таймер: нет. / Подсветка: есть. / Габариты (ВхШхГ): 85х50х60 см. / Цвет: белый.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','GEFEST 6100-01 ', 'Тип: газовая. / Газ-контроль: духовки. / Зоны нагрева: газовые. / Материал решеток поверхности: чугунные.
					Тип духовки: газовая. / Полезный объем: 52 л. / Гриль: нет. / Конвекция: нет. / Таймер: нет. / Подсветка: есть. 
					Габариты (ВхШхГ): 85х60х60 см. / Вес: 43,5 кг. / Цвет: белый.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','GRETA 1470-0016 (W)', 'Тип: газовая. / Газ-контроль: нет. / Зоны нагрева: газовые. / Материал решеток поверхности: эмалированные. 
					Тип духовки: газовая. / Полезный объем: 54 л. / Гриль: нет. / Конвекция: нет. / Таймер: нет. / Подсветка: нет.
					Габариты (ВхШхГ): 85х50х54 см. / Вес: 32 кг. / Цвет: белый.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','GRETA 1470-0007 (WM) ', 'Тип: газовая. / Газ-контроль: нет. / Зоны нагрева: газовые. / Материал решеток поверхности: эмалированные. 
					Тип духовки: газовая. / Полезный объем: 54 л. / Гриль: нет. / Конвекция: нет. / Таймер: нет. / Подсветка: есть. 
					Габариты (ВхШхГ): 85х50х54 см. / Вес: 37 кг. / Цвет: белый.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','ELECTROLUX EKK 954507 W ', 'Тип: комбинированная (газ+электро). / Газ-контроль: поверхности. / Зоны нагрева: газовые. / Материал решеток поверхности: чугунные. 
					Тип духовки: электрическая. / Полезный объем: 56 л. / Гриль: есть. / Конвекция: есть. / Таймер: есть. / Подсветка: есть.
					Габариты (ВхШхГ): 85,5x50x60 см. / Цвет: белый.' from [dbo].[Products]



INSERT INTO [dbo].[Categories]([TopId])
values (3)
INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),'Ru','Стиральные машины',NULL from [dbo].[Categories]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 4700,1,2015-06-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','INDESIT WISN 821 UA ', 'Тип: узкая. / Количество белья при стирке: 5 кг. / Скорость отжима: 800 об/мин. / Класс энергопотребления: А+. 
					Дисплей: нет. / Количество программ: 16. / Габариты (ВхШхГ) : 85x59,5x42 см. / Цвет:белый.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','ZANUSSI ZWSE 680 V', 'Тип: узкая. / Количество белья при стирке: 5 кг. / Скорость отжима: 800 об/мин. / Класс энергопотребления: А++. 
					Дисплей: нет. / Количество программ: 14. / Габариты (ВхШхГ) : 85х59,5х37,7 см. / Цвет:белый.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','ZANUSSI ZWSE 7120 V ', 'Тип: узкая. / Количество белья при стирке: 5 кг. / Скорость отжима: 1200 об/мин. / Класс энергопотребления: А++. 
					Дисплей: есть. / Количество программ: 14. / Габариты (ВхШхГ) : 85х59,5х37,7 см. / Цвет:белый.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','WHIRLPOOL AWS 63013', 'Тип: узкая. / Количество белья при стирке: 6 кг. / Скорость отжима: 1000 об/мин. / Класс энергопотребления: А+++. 
					Дисплей: есть. / Количество программ: 18. / Габариты (ВхШхГ) : 84,5х59,5х45,3 см. / Вес: 61 кг. / Цвет:белый.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','ELECTROLUX EWS1266CI ', 'Тип: узкая. / Количество белья при стирке: 6 кг. / Скорость отжима: 1200 об/мин. / Класс энергопотребления: А+++.
					Дисплей: есть. / Количество программ: 14. / Габариты (ВхШхГ) : 85х59,5х37,7 см. / Цвет:белый.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','INDESIT IWSD 51051 UA ', 'Тип: узкая. / Количество белья при стирке: 5 кг. / Скорость отжима: 1000 об/мин. / Класс энергопотребления: А+. 
					Дисплей: есть. / Количество программ: 16. / Габариты (ВхШхГ) : 85х59,5х42 см. / Цвет:белый.
					Цена: 4 758 грн' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','ZANUSSI ZWSE 6100 V', 'Тип: узкая. / Количество белья при стирке: 5 кг. / Скорость отжима: 1000 об/мин. / Класс энергопотребления: А++.
					Дисплей: нет. / Количество программ: 14. / Габариты (ВхШхГ) : 85х59,5х37,7 см. / Цвет:белый.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','ZANUSSI ZWSE 7100 VS ', 'Тип: узкая. / Количество белья при стирке: 5 кг. / Скорость отжима: 1000 об/мин. / Класс энергопотребления: А++.
					Дисплей: есть. / Габариты (ВхШхГ) : 85x59,5x37,7 . / Цвет:белый/серебристый.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','ELECTROLUX EWS1052NDU', 'Тип: узкая. / Количество белья при стирке: 5 кг. / Скорость отжима: 1000 об/мин. / Класс энергопотребления: А++.
					Дисплей: нет. / Количество программ: 14. / Габариты (ВхШхГ) : 85х59,5х37,7. / Цвет:белый.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','LG F80C3LD', 'Тип: узкая. / Количество белья при стирке: 5 кг. / Скорость отжима: 800 об/мин./ Класс энергопотребления: А++. 
					Дисплей: нет. / Количество программ: 9. / Габариты (ВхШхГ) : 85x60x44 см. / Вес: 59 кг. / Цвет:белый.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','GORENJE W 7202/S ', 'Тип: узкая. / Количество белья при стирке: 7 кг. / Скорость отжима: 1000 об/мин. / Класс энергопотребления: А++. 
					Дисплей: нет. / Количество программ: 18. / Габариты (ВхШхГ) : 85х60х44 см. / Вес: 61,5 кг. / Цвет:белый.' from [dbo].[Products]




INSERT INTO [dbo].[Categories]([TopId])
values (NULL)
INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),'Ru','Спортивные товары',NULL from [dbo].[Categories]

INSERT INTO [dbo].[Categories]([TopId])
values (1)
INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),'Ru','Беговые дорожки',NULL from [dbo].[Categories]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','EnergyFIT EF-6606B ', 'Назначение: Домашние / конструкция: складные / особенности: транспортировочные ролики, подставка для аксессуаров
					максимальная скорость: 14 км/ч / максимальный вес пользователя: 125 кг / регулировка угла наклона: механическая' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU',' EnergyFIT EF-5501В ', 'Назначение: Домашние / Конструкция: Складные / Особенности: Транспортировочные ролики, Подставка для аксессуаров
					Максимальная скорость: 13 км/ч / Максимальный вес пользователя: 120 кг / Регулировка угла наклона: Механическая' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','EnergyFIT EF-7705A ', 'Назначение: Домашние / Конструкция: Складные / Особенности: Транспортировочные ролики, Подставка для аксессуаров
					Максимальная скорость: 16 км/ч / Максимальный вес пользователя: 140 кг / Регулировка угла наклона: Механическая' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','InterAtletika Jessie KL-803','Назначение: Домашние / Конструкция: Складные / Особенности: Транспортировочные ролик, / Максимальный вес пользователя: 100 кг
					Регулировка угла наклона: Механическая' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','ProForm Endurance S9 (PETL99714) ', 'Назначение: Домашние / Конструкция: Складные / Особенности: Вентилятор / Максимальная скорость: 20 км/ч
					Максимальный вес пользователя: 135 кг / Регулировка угла наклона: Электрическая' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','NordicTrack T15 (NETL14711)', 'Назначение: Домашние / Конструкция: Складные / Особенности: Вентилятор / Максимальная скорость: 22 км/ч
					Максимальный вес пользователя: 159 кг / Регулировка угла наклона: Электрическая' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Spirit Esprit XT-485 ', 'Назначение: Домашние / Конструкция: Складные / Особенности: Транспортировочные ролики, Подставка для аксессуаров, Держатель для бутылки, Вентилятор
					Максимальная скорость: 18 км/ч / Максимальный вес пользователя: 195 кг / Регулировка угла наклона: Электрическая' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','NordicTrack C200 (NETL10814)', 'Назначение: Домашние / Конструкция: Складные / Особенности: Вентилятор / Максимальная скорость: 20 км/ч
					Максимальный вес пользователя: 150 кг / Регулировка угла наклона: Электрическая' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','HouseFit HT 9138HP (HT 9138HP)', 'Назначение: Домашние / Конструкция: Складные /  Максимальная скорость: 12 км/ч
					Максимальный вес пользователя: 100 кг / Регулировка угла наклона: Механическая' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Circle Fitness M7', 'Назначение: Профессиональные / Конструкция: Нескладные / Особенности: Транспортировочные ролики, Подставка для аксессуаров, Держатель для бутылки, Вентилятор
					Максимальная скорость: 20 км/ч / Максимальный вес пользователя: 182 кг/ Регулировка угла наклона: Электрическая' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 2900,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Discovery F-16', 'Назначение: Домашние / Конструкция: Складные /  Максимальная скорость: 16 км/ч
					Максимальный вес пользователя: 120 кг / Регулировка угла наклона: Электрическая' from [dbo].[Products]




INSERT INTO [dbo].[Categories]([TopId])
values (2)
INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),'Ru','Велотренажеры',NULL from [dbo].[Categories]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Reebok One Series GB50 (RVON-10401BK)', 'Тип: Электромагнитные / Уровни нагрузки: 32 / Количество программ: 23 / Максимальный вес пользователя: 120 кг' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Reebok One Series GB40 (RVON-10101BK)', 'Тип: Электромагнитные / Уровни нагрузки: 8 / Максимальный вес пользователя: 110 кг / Количество программ: 4' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Sportop B800P+ ', 'Тип: Электромагнитные / Уровни нагрузки: 16 / Максимальный вес пользователя: 130 кг / Количество программ: 16
					Цена: 10 441 грн ' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Sportop B600', 'Тип: Магнитные / Уровни нагрузки: 8 / Максимальный вес пользователя: 105 кг / Количество программ: Нет' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','InterFit Bike Drive (K.07)', 'Тип: Магнитные / Уровни нагрузки: 8 / Максимальный вес пользователя: 120 кг / Количество программ: 8' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','HouseFit Kinetic B1.0 (KINETIC B1.0)', 'Тип: Магнитные / Уровни нагрузки: 8 / Максимальный вес пользователя: 120 к, / Количество программ: Нет' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','EnergyFIT BC1200 ', 'Тип: Магнитные / Уровни нагрузки: 8 / Максимальный вес пользователя: 110 кг / Количество программ: Нет' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','EnergyFIT GB1206', 'Тип: Магнитные / Уровни нагрузки: 8 / Максимальный вес пользователя: 100 кг / Количество программ: Нет' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','EnergyFIT GBBT1503', 'Тип: Магнитные / Максимальный вес пользователя: 100 кг' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','NordicTrack GX 5.0 (NTEVEX71014) ', 'Тип: Электромагнитные / Уровни нагрузки: 20 / Максимальный вес пользователя: 125 кг / Количество программ: 20' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Vision R60', 'Тип: Электромагнитные / Уровни нагрузки: 25 / Максимальный вес пользователя: 182 кг / Количество программ: 12' from [dbo].[Products]



INSERT INTO [dbo].[Categories]([TopId])
values (3)
INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),'Ru','Гантели, диски',NULL from [dbo].[Categories]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 1700,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Гантель чугунная наборная Body Max 25 кг (ВМ-018)', 'Тип: Гантели / Вид замка: Винтовой / Форма грифа: Прямая / Длина: 38 см' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU',' Гантель наборная Newt 17.5 кг (TI-968-745-17)', 'Тип: Гантели / Вид замка: Винтовой / Форма грифа: Прямая / Длина: 33 см' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Гантель наборная Newt 15.5 кг (TI-968-745-1-1)', 'Тип: Гантели / Вид замка: Винтовой / Форма грифа: Прямая / Длина: 33 см' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU',' Гантель наборная Newt 10 кг (TI-968-747)', 'Тип: Гантели / Вид замка: Винтовой / Форма грифа: Прямая / Длина: 33 см' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Гантель наборная Newt 25.5 кг (TI-968-745-25-1) ', 'Тип: Гантели / Вид замка: Винтовой / Форма грифа: Прямая / Длина: 40 см' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU',' Гантель чугунная наборная Body Max 20 кг (ВМ-016) ', 'Тип: Гантели / Вид замка: Винтовой / Форма грифа: Прямая / Длина: 38 см' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Диск Newt стальной 5 кг (TI-0006)', 'Тип: Диски / Материал: Сталь / Покрытие: Покраска / Диаметр отвертсия: 27 - 30 мм' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Диск Newt стальной 1 кг (TI-0011)', 'Тип: Диски / Материал: Сталь / Покрытие: Покраска / Диаметр отвертсия: 27 - 30 мм' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Диск Newt стальной 3 кг (TI-0014)', 'Тип: Диски / Материал: Сталь / Покрытие: Покраска / Диаметр отвертсия: 27 - 30 мм' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','', '' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Наборная штанга Newt Home 50 кг (TI-0201-180-50)', 'Тип: Штанги / Вид замка: Винтовой / Форма грифа: Прямая / Длина: 180 см' from [dbo].[Products]




INSERT INTO [dbo].[Categories]([TopId])
values (NULL)
INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),'Ru','Активный отдых и туризм',NULL from [dbo].[Categories]

INSERT INTO [dbo].[Categories]([TopId])
values (1)
INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),'Ru','Лодки',NULL from [dbo].[Categories]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Storm mk240','Тип: Гребные / Тип днища: Без днища в комплекте / Пассажировместимость: 2 чел. / Поворотные уключины и алюминиевые весла' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Ладья ЛТ-190', 'Тип: Гребные / Тип днища: Без днища в комплекте / Пассажировместимость: 1 чел. ' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Ладья ЛТ-190У', 'Тип: Гребные / Тип днища: Без днища в комплекте / Пассажировместимость: 1 чел.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Ладья ЛТ-330М', 'Тип: Гребные / Тип днища: Без днища в комплекте / Пассажировместимость: 4 чел.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Storm stk-380', 'Тип: Моторные со стационарным транцем / Тип днища: Жесткое разборное / Пассажировместимость: 4 чел.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Ладья ЛО-250-С ', 'Тип: Гребные / Тип днища: Слань / Пассажировместимость: 2 чел.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Ладья ЛТ-220-ДС', 'Тип: Гребные / Тип днища: Слань / Пассажировместимость: 1 чел.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Storm stm-280-40 ', 'Тип: Моторные со стационарным транцем / Тип днища: Слань / Пассажировместимость: 2 чел.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Storm stm-330 ', 'Тип: Моторные со стационарным транцем / Тип днища: Слань / Пассажировместимость: 2 чел.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU',' Storm mk260', 'Тип: Гребные / Тип днища: Без днища в комплекте / Пассажировместимость: 2 чел.' from [dbo].[Products]





INSERT INTO [dbo].[Categories]([TopId])
values (2)
INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),'Ru','Бинокли',NULL from [dbo].[Categories]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Arsenal 20x50 (10-2050) ', 'Тип: Бинокль / Кратность приближения: 20x / Диаметр объектива: 50 мм / Вес: 0.74 кг' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU',' Arsenal 7x50 Морской Чёрный (NB61-0750C1 Black)', 'Тип: Бинокль / Кратность приближения: 7x / Диаметр объектива: 50 мм / Вес: 0.89 кг' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Arsenal 12x25 NB25-1225', 'Тип: Бинокль / Диаметр объектива: 25 мм / Вес: 0.25 кг' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Alpen Sport II 10x25 Green (920296)', 'Тип: Бинокль / Кратность приближения: 10х / Диаметр объектива: 25 мм / Вес: 0.2 кг' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Arsenal 10-30х60 Porro (BF1-103060)', 'Тип: Бинокль / Кратность приближения: 10x - 30x / Диаметр объектива: 60 мм / Вес: 0.85 кг' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Arsenal 12x25 NB27-1225 ', 'Тип: Монокль / Кратность приближения: 12x / Диаметр объектива: 25 мм / Вес: 0.07 кг' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Arsenal 10x50 (10-1050)', 'Тип: Бинокль / Кратность приближения: 10х / Диаметр объектива: 50 мм / Вес: 0.7 кг' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Praktica 12x25 (920721)', 'Бинокль Zeiss Victory HT 10х42 524529 (7120216)' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Бинокль Zeiss Victory HT 10х42 524529 (7120216)', 'Тип: Бинокль / Кратность приближения: 10x / Диаметр объектива: 42 мм / Вес: 0.8 кг' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Kowa SV 10x42 WP (914770)', 'Тип: Бинокль / Кратность приближения: 10х / Диаметр объектива: 42 мм / Вес: 0.67 кг' from [dbo].[Products]


INSERT INTO [dbo].[Categories]([TopId])
values (3)
INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),'Ru','Рации',NULL from [dbo].[Categories]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 500,1,2015-10-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Motorola TLKR T80 Extreme', 'Стандарт: PMR446 / Назначение: Переносные безлицензионные / Мощность: 0.5 Вт 
					Дальность связи: до 10 км / Вес: 140 г' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 500,1,2015-10-07    from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Voxtel MR160 ', 'Стандарт: PMR446 / Назначение: Переносные безлицензионные / Мощность: 0.5 Вт
					Дальность связи: до 3 км / Вес: 76 г' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 500,1,2015-10-07    from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Motorola TLKR T80 Extreme ', 'Стандарт: PMR446 / Назначение: Переносные безлицензионные / Мощность: 0.5 Вт
					Дальность связи: до 10 км / Вес: 140 г' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 500,1,2015-10-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Motorola TLKR T41 Pink (P14MAA03A1BN)', 'Стандарт: PMR446 / Назначение: Переносные безлицензионные / Мощность: 0.5 Вт
					Дальность связи: до 4 км / Вес: 74 г' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 500,1,2015-10-07    from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Yaesu VX-6E', 'Стандарт: VHF/UHF / Назначение: Портативные радиолюбительские / Мощность: 5 Вт / Вес: 270 г
					Цена: 9 410 грн' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 500,1,2015-10-07    from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Baofeng UV-3R ', 'Стандарт: VHF/UHF / Назначение: Портативные радиолюбительские / Мощность: 2 Вт
					Дальность связи: до 5 км / Вес: 150 г' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 500,1,2015-10-07    from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','President Truman ASC (TXMU092) ', 'Стандарт: AM/FM / Назначение: Автомобильные / Мощность: 4 Вт / Вес: 700 г' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 500,1,2015-10-07    from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Motorola TLKR T60', 'Стандарт: PMR446 / Назначение: Переносные безлицензионные / Мощность: 0.5 Вт
					Дальность связи: до 8 км / Вес: 103 г' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 500,1,2015-10-07    from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Voxtel MR950', 'Стандарт: PMR446 / Назначение: Переносные безлицензионные / Мощность: 0.5 Вт
					Дальность связи: до 10 км / Вес: 350 г' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 500,1,2015-10-07    from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','President Jimmy II ASC (TXMU045) ', 'Стандарт: AM / Назначение: Автомобильные / Мощность: 4 Вт / Вес: 600 г' from [dbo].[Products]











			
			
				
		
		
			
			
			