





--Category--

INSERT INTO [dbo].[Categories]([TopId])
values (NULL)

INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),N'Ru',N'������������ �������',NULL from [dbo].[Categories]

INSERT INTO [dbo].[Categories]([TopId])
values (1)

INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),N'Ru',N'��������',NULL from [dbo].[Categories]


---Product---

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) ,  6555,1,25/12/2014   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'Lenovo IdeaPad 100-14 (80HH001XUA)', N'����� 14" (1366x768) HD LED, ��������� / Intel Celeron N2840 (2.16 ���) / RAM 2 �� 
					HDD 500 �� / Intel HD Graphics / ��� �� / LAN / Wi-Fi / ���-������ / DOS / 1.9 �� / ������' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) ,  6555,1,25/12/2014   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'HP 255G4 (NOY69ES)', N'����� 15.6� (1366x768) HD LED, ������� / AMD Dual-Core E1-6015 (1.4 ���) / RAM 2 �� 
					HDD 500 �� / AMD Radeon R2 / ��� �� / LAN / Wi-Fi / Bluetooth / ���-������ / Linux / 2.15 �� / ������' from [dbo].[Products]



INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) ,  6555,1,25/12/2014   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'Dell Inspiron 3551 (135C25NIW-22)', N'����� 15.6" (1366x768) HD WLED, ��������� / Intel Celeron N2830 (2.16 ���) / RAM 2 �� 
					HDD 500 �� / Intel HD Graphics / ��� �� / Wi-Fi / Bluetooth 4.0 / ���-������ / Windows 8.1 / 2.14 �� / ������' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) ,  6555,1,25/12/2014   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'Asus EeeBook E502MA (E502MA-XX0026D) Blue ', N'����� 15.6" (1366x768) HD, ��������� / Intel Celeron N2840 (2.16 ���) / RAM 4 �� 
					HDD 500 �� / Intel HD Graphics / ��� �� / LAN / Wi-Fi / Bluetooth / ���-������ / DOS / 1.86 �� / �����' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) ,  6555,1,25/12/2014   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N' Acer Aspire ES1-520-392H (NX.G2JEU.002)', N'����� 15.6'' (1366x768) HD LED, ������� / AMD E1-2500 (1.4 ���) / RAM 4 �� 
					HDD 500 �� / Radeon HD 8240 / ��� �� / LAN / Wi-Fi / Bluetooth / ���-������ / Linpus / 2.4 �� / ������' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) ,  6555,1,25/12/2014   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'Lenovo IdeaPad 100S White ', N'����� 11.6" TN (1366x768) WXGA HD LED, ��������� / Intel Atom Z3735F (1.33 - 1.83 ���) / RAM 2 �� 
					64 �� eMMC / Intel HD Graphics / ��� �� / Wi-Fi / Bluetooth / ���-������ / Windows 10 Home / 1 �� / �����
					����: 6 799 ���' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) ,  6555,1,25/12/2014   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'Acer Aspire E5-573G-312U (NX.MVMEU.025) Black-Iron ', N'����� 15.6'' (1366x768) HD LED, ������� / Intel Core i3-5005U (2.0 ���) / RAM 4 �� 
					HDD 500 �� / nVidia GeForce 920M, 2 �� / ��� �� / LAN / Wi-Fi / Bluetooth / ���-������ / Linux / 2.4 �� / ����� � ������' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) ,  6555,1,25/12/2014   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N' Asus EeeBook E502MA (E502MA-XX0020D) Blue ', N'����� 15.6" (1366x768) HD, ��������� / Intel Pentium N3540 (2.16 - 2.66 ���) / RAM 4 �� 
					HDD 1 �� / Intel HD Graphics / ��� �� / LAN / Wi-Fi / Bluetooth / ���-������ / DOS / 1.86 �� / �����
					����: 8 999 ��� ' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) ,  6555,1,25/12/2014   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'Lenovo G50-45 (80E301XLUA) ', N'����� 15.6" (1366x768) HD LED, ��������� / AMD Quad-Core A4-6210 (1.8 ���) / RAM 2 �� 
					HDD 500 �� / AMD Radeon R3 / ��� �� / LAN / Wi-Fi / Bluetooth / ���-������ / Windows 10 Home / 2.5 �� / ������' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) ,  6555,1,25/12/2014   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'HP 250 G4 (P5R75ES)',N'����� 15.6� (1366x768) HD LED, ������� / Intel Core i3-4005U (1.7 ���) / RAM 4 �� 
					HDD 500 �� / Intel HD Graphics / ��� �� / LAN / Wi-Fi / Bluetooth / ���-������ / DOS / 2.15 �� / ������' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) ,  6555,1,25/12/2014   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'Lenovo IdeaPad 100-15 (80QQ004NUA)', N'����� 15.6" (1366x768) HD LED, ��������� / Intel Pentium 3825U (1.9 ���) / RAM 4 �� 
					HDD 500 �� / nVidia GeForce 920M, 1 �� / ��� �� / LAN / Bluetooth / Wi-Fi / ���-������ / DOS / 2.3 �� / ������' from [dbo].[Products]




INSERT INTO [dbo].[Categories]([TopId])
values (2)

INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),N'Ru',N'��������',NULL from [dbo].[Categories]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3000,1,25/12/2015   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'Samsung Galaxy Tab E 9.6" 3G White (SM-T561NZWASEK)', N'����� 9.6" (1280x800) ��������� MultiTouch / T-Shark2 (1.3 ���) / RAM 1.5 �� 
					8 �� ���������� ������ + microSD / 3G / Wi-Fi 802.11a/b/g/n / Bluetooth 4.0 / �������� ������ 5 ��, ����������� 2 �� 
					GPS / ������� / Android 4.4 (KitKat) / 490 � / �����' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3000,1,25/12/2015   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'Lenovo TAB 2 A7-10 7" 8GB WiFi Black (59434747)', N'����� 7" (1024�600) IPS, ��������� MultiTouch / MediaTek MT8127 (1.3 ���) / RAM 1 �� 
					8 �� ���������� ������ + microSD / Wi-Fi / Bluetooth 4.0 
					����������� ������ 0.3 �� / A-GPS / Android 4.4 / 269 � / ������' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3000,1,25/12/2015   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'Asus ZenPad 7.0 16GB White (Z370C-1B042A)', N'����� 7" IPS (1280x800) ��������� MultiTouch / Intel Atom x3-C3200 / RAM 2 �� / 16 �� ���������� ������ + microSD
					Wi-Fi 802.11 b/g/n / Bluetooth 4.0 / �������� ������ 5 ��, ����������� - 0.3 �� / GPS / ������� / �� Android 5.0 (Lollipop) / 272 � / �����' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3000,1,25/12/2015   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'Samsung Galaxy Tab S2 9.7" 32GB Black (SM-T810NZKESEK)', N'����� 9.7" Super AMOLED (2048x1536) ��������� MultiTouch / Samsung Exynos 5433 (1.9 ��� + 1.3 ���) / RAM 3 �� 
					32 �� ���������� ������ + microSD / 802.11 a/b/g/n/ac / Bluetooth 4.1 
					�������� ������ 8 ��, ����������� 2.1 �� / GPS / ������� / Android 5.0 (Lollipop) / 375 � / ������' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3000,1,25/12/2015   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'Lenovo Tab 2 A7-30DC 7" 3G 8GB Black (59444592)', N'����� 7" (1024�600) IPS, ��������� MultiTouch / MediaTek MT8382M (1.3 ���) / RAM 1 �� 
					8 �� ���������� ������ + microSD / 3G / Wi-Fi / Bluetooth 4.0 
					�������� ������ 2 �� + ����������� 0.3 �� / GPS / Android 4.4 (KitKat) / 269 � / ������' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3000,1,25/12/2015   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'Prestigio MultiPad 10.1 3G Black (PMT3341_3G)', N'����� 10.1" IPS (1280x800) ��������� Multi-Touch / Intel Atom X3 C3230 (1.2 ���) / RAM 1 �� 
					8 �� ���������� ������ + ��������� ���� ������ microSD / 3G / Wi-Fi / Bluetooth 
					�������� ������ 2 ��, ����������� - 0.3 �� / Android 5.1 (Lollipop) / 552 � / ������' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3000,1,25/12/2015   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'Jeka JK-103 16GB 3G IPS', N'����� 10.1" IPS (1024�600), ���������, MultiTouch / ARM Cortex A7 (1.3 ���) / RAM 1 �� 
					16 �� ���������� ������ + microSD / 3G / Wi-Fi / Bluetooth 4.0 / �������� ������ 2 ��, ����������� - 0.3 �� 
					GPS / A-GPS / �� Android 5.1 (Lollipop) / ��� 568 � / ������' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3000,1,25/12/2015   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'Prestigio MultiPad Color 2 3G Black (PMT3777_3G_C)',N'����� 7" IPS (1280x800) ���������, MultiTouch / Intel Atom x3-C3230RK (1.2 ���) / RAM 1 �� 
					8 �� ���������� ������ + microSD / 3G / Wi-Fi / Bluetooth 4.0 / �������� ������ 2 ��, ����������� - 0.3 �� 
					GPS / Android 5.1 (Lollipop) / 270 � / ������' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3000,1,25/12/2015   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'Fly Flylife Connect 10.1 3G 2 Black', N'����� 10.1" IPS (1280�800) ��������� MultiTouch / MediaTek MT8382V/W (1.3 ���) / RAM 1 �� 
					8 �� ���������� ������ + microSD / Wi-Fi / Bluetooth / 3G / �������� ������ 5 ��, ����������� 0.3 �� 
					GPS / �� Android 4.2.2 / 624 � / ������' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3000,1,25/12/2015   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'Assistant AP-115G White ', N'����� 10.1" (1024x600) ��������� MultiTouch / MTK6572 Dual Core (1.2 ���) / RAM 1 �� 
					8 �� ���������� ������ + microSD / Wi-Fi b/g/n / 3G / Bluetooth / ����������� ������ 0.3 ��, ������� ������ 2 �� 
					GPS / OC Android 4.2 / 530 � / �����' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3000,1,25/12/2015   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU','', '' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3000,1,25/12/2015   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'Lenovo Tab 2 A10-70L 16GB LTE Blue (ZA010015UA)', N'����� 10.1" (1920x1200) IPS ���������, MultiTouch / MediaTek MT8732 (1.5 ���) / RAM 2 �� 
					16 �� ���������� ������ + microSD / Wi-Fi b/g/n / Bluetooth 4.0 / 3G / LTE / �������� ������ 8 ��, ����������� - 5 �� 
					GPS / ������� / Beidou / Android 4.4 (KitKat) / 509 � / �����-�����' from [dbo].[Products]



INSERT INTO [dbo].[Categories]([TopId])
values (3)

INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),N'Ru',N'����������� �����',NULL from [dbo].[Categories]



INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 4500,1,2015-04-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'PocketBook 624 Basic Touch Grey (PB624-Y-WW)', N'��������� �������: 6" / ����������: 800�600 / ��� �������: E Ink / ���������� �������� ������: 16
					���������� ������: 4 �� / ���: 191 �' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3500,1,2015-04-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'PocketBook 626 Touch Lux2 Black (PB626-E-CIS)',N'��������� �������: 6" / ����������: 1024�758 / ��� �������: E Ink Pearl / ���������� �������� ������: 16
					���������� ������: 4 �� / ���: 208 �' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 2500,1,2015-04-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'PocketBook InkPad 840 Brown', N'��������� �������: 8" / ����������: 1600x1200 / ��� �������: E Ink Pearl / ���������� �������� ������: 16
					���������� ������: 4 �� / ���: 350 �' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 2500,1,2015-04-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'PocketBook 630 Kenzo Grey (PB630-G-CIS-KNZ)', N'��������� �������: 6" / ����������: 1024�758 / ��� �������: E Ink Pearl / ���������� �������� ������: 16
					���������� ������: 4 �� / ���: 155 �' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 2500,1,2015-04-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'PocketBook 614 Basic 2 White (PB614-D-CIS)', N'��������� �������: 6" / ����������: 800�600	/ ��� �������: E Ink Pearl / ���������� �������� ������: 16
					���������� ������: 4 �� / ���: 188 �' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 2500,1,2015-04-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'EvroMedia �-������� Classic Pro', N'��������� �������: 9.7" / ����������: 1200x800	/ ��� �������: E Ink Pearl / ���������� �������� ������: 16
					���������� ������: 4 �� / ���: 350 �' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 2500,1,2015-04-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'PocketBook 630 Sense Brown (PB630-X-CIS)', N'��������� �������: 6" / ����������: 1024�758 / ��� �������: E Ink Pearl / ���������� �������� ������: 16
					���������� ������: 4 �� / ���: 155 �' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 2500,1,2015-04-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'Evromedia E-������� Classic One', N'��������� �������: 6" / ����������: 800�600 / ��� �������: E Ink / ���������� �������� ������: 16
					���������� ������: 4 �� / ���: 191 �' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 2500,1,2015-04-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'EvroMedia �-������� HD Paper', N'��������� �������: 6" / ����������: 1024�758 / ��� �������: E Ink Pearl / ���������� �������� ������: 16
					���������� ������: 4 �� / ���: 155 �' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 2500,1,2015-04-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'PocketBook Ultra 650 ����� ', N'��������� �������: 6" / ����������: 1024�758 / ��� �������: E Ink Pearl / ���������� �������� ������: 16
					���������� ������: 4 �� / ���: 175 �' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 2500,1,2015-04-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'PocketBook 515 Grey (PB515-Y)', N'��������� �������: 5" / ����������: 800�600 / ��� �������: E Ink / ���������� �������� ������: 16
					���������� ������: 4 �� / ���: 131 �' from [dbo].[Products]






INSERT INTO [dbo].[Categories]([TopId])
values (NULL)

INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),N'Ru',N'��������, MP3, GPS',NULL from [dbo].[Categories]

INSERT INTO [dbo].[Categories]([TopId])
values (1)

INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),N'Ru',N'���������',NULL from [dbo].[Categories]



INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'Samsung Galaxy J5 J500H/DS Black', N'����� (5", Super AMOLED, 1280x720)/ Qualcomm Snapdragon 410 (1.2 ���)/ �������� ������: 13 ��, ����������� ������: 5 ��
					RAM 1.5 ��/ 8 �� ���������� ������ + microSD/SDHC (�� 128 ��)/ 3G / GPS/ ��������� 2� SIM-���� (Micro-SIM)
					Android 5.1 (Lollipop) / 2600 ��*�' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'Lenovo A7000 Onyx Black ', N'����� (5.5", IPS, 1280x720)/ MediaTek MT6752 (1.5 ���)/ �������� ������: 8 ��, ����������� ������: 5 ��
					RAM 2 ��/ 8 �� ���������� ������ + microSD/SDHC (�� 32 ��)/ 3G/ GPS/ ��������� 2� SIM-���� (Micro-SIM)
					Android 5.0 (Lollipop) / 2900 ��*�' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'Samsung Galaxy A3 2016 Duos SM-A310 16Gb Black',N'����� (4.7", Super AMOLED, 1280x720)/ ��������������� Qualcomm Snapdragon 410 (1.5 ���)/ �������� ������: 13 ��, ����������� ������: 5 ��
					RAM 1.5 ��/ 16 �� ���������� ������ + microSD/SDHC (�� 128 ��)/ 3G/ LTE/ GPS/ ��������� 2� SIM-���� (Nano-SIM)
					Android 5.1.1 (Lollipop)/ 2300 ��*�' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'Samsung Galaxy S6 SS 32GB G920 Gold', N'����� (5.1", Super AMOLED, 2560�1440)/ Samsung Exynos 7420 (Quad 2.1 ��� + Quad 1.5 ���)/ �������� ������: 16 ��, ����������� ������: 5 ��
					RAM 3 ��/ 32 �� ���������� ������/ 3G/ LTE/ GPS/ Nano-SIM
					Android 5.0 (Lollipop) / 2550 ��*�' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'LG G4 Leather Brown', N'����� (5.5", IPS, 2560�1440)/ Qualcomm Snapdragon 808 (1.8 ���)/ �������� ������: 16 ��, ����������� ������: 8 ��
					RAM 3 ��/ 32 �� ���������� ������ + microSD/SDHC (�� 2 ��)/ 3G/ LTE/ GPS/ ��������� 2� SIM-���� (Micro-SIM)
					Android 5.1 (Lollipop) / 3000 ��*�' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'Apple iPhone 5s 16GB Space Gray', N'����� (4", IPS, 1136x640)/ Apple A7 (1.3 ���)/ �������� ������: 8 ��, ����������� ������: 1.2 ��
					RAM 1 ��/ 16 �� ���������� ������/ 3G/ LTE/ GPS/ Nano-SIM/ iOS 9/ 1560 ��*�' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'Meizu M2 Note 16GB White � ���������� EP-21HD (������������� ������)', N'����� (5.5", IGZO, 1920x1080)/ MediaTek MT6753 (1.3 ���)/ �������� ������: 13 ��, ����������� ������: 5 ��
					RAM 2 ��/ 16 �� ���������� ������ + microSD/SDHC (�� 128 ��)/ 3G/ LTE/ GPS/ ��������� 2� SIM-���� (Nano-SIM)
					Android 5.1 (Lollipop) / 3100 ��*�' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'Samsung Galaxy S3 Neo Duos I9300i Black', N'����� (4.8", Super AMOLED, 1280x720)/ Qualcomm MSM8226 Snapdragon 400 (1.4 ���)/ �������� ������: 8 ��, ����������� ������: 1.9 ��
					RAM 1.5 ��/ 16 �� ���������� ������ + microSD/SDHC (�� 64 ��)/ 3G/ GPS/ ��������� 2� SIM-���� (Micro-SIM)
					Android 4.3 (Jelly Bean) / 2100 ��*�' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'Xiaomi Redmi Note 2 16GB Gray', N'����� (5.5", IPS, 1920x1080)/ MediaTek Helio X10 MT6795 (2.0 ���)/ �������� ������: 13 ��, ����������� ������: 5 ��
					RAM 2 ��/ 16 �� ���������� ������ + microSD/SDHC (�� 32 ��)/ 3G/ LTE/ GPS/ ��������� 2� SIM-���� (Micro-SIM)
					Android 5.0 (Lollipop) / 3060 ��*�' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'Microsoft Lumia 640 XL (Nokia) DS Cyan', N'����� (5.7", IPS, 1280x720)/ Qualcomm Snapdragon 400 (1.2 ���)/ �������� ������: 13 ��, ����������� ������: 5 ��
					RAM 1 ��/ 8 �� ���������� ������ + microSD/SDHC (�� 128 ��)/ 3G/ GPS/ ��������� 2� SIM-���� (Micro-SIM)
					Windows Phone 8.1/ 3000 ��*�' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'Lenovo A2010 Black ', N'����� (4.5", TN, 854x480)/ MediaTek MTK6735M (1.0 ���)/ �������� ������: 5 ��, ����������� ������: 2 ��
					RAM 1 ��/ 8 �� ���������� ������ + microSD/SDHC (�� 32 ��)/ 3G/ GPS/ ��������� 2� SIM-���� (Micro-SIM)
					Android 5.1 (Lollipop) / 2000 ��*�' from [dbo].[Products]





INSERT INTO [dbo].[Categories]([TopId])
values (2)

INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),N'Ru',N'MP3-������',NULL from [dbo].[Categories]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'Sony Walkman NWZ-A15 16GB Blue',N'16 �� / MP3, WMA, FLAC, L-PCM, AAC, HE-AAC, ALAC, AIFF, WAV, AVCHD, MPEG4, WMV9, JPEG 
					2.2" TFT QVGA (320 x 240) / FM-����� / NFC / Bluetooth / USB / 66 � / �������' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'Jeka Neo 8GB Black/Blue ',N'8 �� / MP3, WMA, WAV, PEG, BMP, AVI, TXT 
					1.8" TFT (160x128) / FM-�������� / miniUSB / 40 � 80 � 9 ��, 19 � / ������ � �����' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'Transcend T-Sonic 350 8GB Blue', N'8 �� / MP3, WMA, WAV / OLED / USB 2.0 / FM-�������� / �������� / 22 � / �����' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'Apple iPod touch 64GB Blue', N'64 �� / AAC, ���������� AAC, HE-AAC, MP3, MP3 VBR, Audible, Apple Lossless, AIFF, WAV, H.264, MPEG-4, M-JPEG 
					��������� 4" Multi-Touch ������� / ������ 8 �� + ����������� ������ 1.2 �� 
					Wi-Fi / Bluetooth 4.1 / iOS 8 / 88 � / �������' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'Pixus Six 8GB New White ', N'8 �� / MP3, WMA, WAV / OLED �����-����� / FM-�������� 
					�������� / USB 2.0 / 80 x 20 x 11 ��, 18 � / �����' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU','NRG Stick Pro ', N'8 �� / MP3, WMA, WAV, FLAC / OLED 4�-�������� / FM-�������� / �������� 
					USB / 84 � 27 � 13 ��, 26 � / ������' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'Apple iPod nano 7Gen 16GB Space Gray',N'16 �� / �AC, ���������� AAC, HE-AAC, MP3, MP3 VBR, Audible, Apple Lossless, AIFF, WAV, H.264, M4V, MP4, MOV, MPEG-4 
					2.5" Multi-Touch ������� / FM-����� / Bluetooth 4.0 / 31 � / �����' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'Sony Walkman NWZ-WS613 4GB White ', N'4 �� / MP3, WMA, Linear PCM, AAC / USB / Bluetooth / NFC / ����������������� / 37 � / �����' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'FiiO M3 White ', N'8 �� / APE / FLAC / WAV / MP3 / AAC / WMA / OGG / 2" TFT-����� / 40 �' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'Apple iPod shuffle 2GB Pink', N'2 �� / �AC, ���������� AAC, MP3, MP3 VBR, Audible, Apple Lossless, AIFF, WAV / 12.5 � / �������' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'Apple iPod touch 16GB Gold', N'16 �� / AAC, ���������� AAC, HE-AAC, MP3, MP3 VBR, Audible, Apple Lossless, AIFF, WAV, H.264, MPEG-4, M-JPEG 
					��������� 4" Multi-Touch ������� / ������ 8 �� + ����������� ������ 1.2 �� 
					Wi-Fi / Bluetooth 4.1 / iOS 8 / 88 � / ����������' from [dbo].[Products]




INSERT INTO [dbo].[Categories]([TopId])
values (3)

INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),N'Ru',N'�������� ���������� ',NULL from [dbo].[Categories]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'������� ������� E-Power 1 USB + holder 2.1 A', N'���: ������� / �������� ��� �������: ����������� ����, ���������, ��������� ���������
					���������� USB-������ 1 / �������������� ��������������: LED ��������� �������� ������� / ���� Black / ��������: 6 �������' from [dbo].[Products]



INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'������������� �������� ���������� E-Power MicroUSB', '���: ������������� / �������� ��� �������: ����������� ����, ���������, ��������� ���������
					���������� USB-������: 1 / �������������� ��������������: LED ��������� �������� ������� / ����: Black / ��������: 6 �������' from [dbo].[Products]



INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'������� �������� ���������� E-Power ������ Smart', N'���: ������� / �������� ��� �������: ����������� ����, ���������, ��������� ���������
					���������� USB-������: 2 / �������������� ��������������: LED ��������� �������� ������� / ����: Black / ��������: 6 �������' from [dbo].[Products]



INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'������� �������� ���������� Pixus Charge One Turquoise', N'���: ������� / �������� ��� �������: ����������� ����, ���������, ��������� ��������� / ���������� USB-������: 1
					������: 1.2 � / ����: Turquoise / ��������: 12 �������' from [dbo].[Products]



INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 250,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'������������� �������� �������� E-Power 3 � 1',N'���: �������������, ������� \ �������� ��� �������: ����������� ����, ���������, ��������� ���������
					���������� USB-������: 2 / �������������� ��������������: LED ��������� �������� ������� / ����: Black / ��������: 6 �������' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'������� �������� ���������� Logan Quad USB Wall Charger 5V 4A CH-4 Orange', N'���: ������� / �������� ��� �������: ����������� ����, ���������, ��������� ���������
					�������������: ��������� ��������, ���������, ������������, mp3-������, �������� � ������������ ������� �� USB �����
					���������� USB-������: 4 / ����: Orange / ��������: 12 �������' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'������������� �������� ���������� E-Power ������ MicroUSB', '' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'������� �������� ����������', '' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'������� �������� ���������� Global MSH-TR-071 c ������� ��� iPhone 5, 6 White', N'���: ������� / �������� ��� �������: ���������, ��������� ��������� / �������������: iPhone 5, iPhone 6
					����: White / ��������: 12 �������' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'������� �������� ���������� Drobak Power Dual 220V-USB White/Black', N'���: ������� / �������� ��� �������: ����������� ����, ���������, ��������� ��������� / ���������� USB-������: 2
					�������������� ��������������: ������� ������, ������� � ��������� � ������ / ����: White-Black / ��������: 6 �������' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'������� �������� ���������� Logan Quad USB Wall Charger 5V 2.6A CHC-4 White',N'���: ������� / �������� ��� �������: ����������� ����, ���������, ��������� ���������
					�������������: ��������� ��������, ���������, ������������, mp3-������, �������� � ������������ ������� �� USB �����
					���������� USB-������: 4 / ����: White / ��������: 12 �������' from [dbo].[Products]





INSERT INTO [dbo].[Categories]([TopId])
values (NULL)
INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),N'Ru',N'������� �������',NULL from [dbo].[Categories]
INSERT INTO [dbo].[Categories]([TopId])
values (1)
INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),N'Ru',N'������������',NULL from [dbo].[Categories]



INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 6500,1,2015-03-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'Ru',N'SNAIGE FR-240.1101AA',N'��� ������������: ������������ /  ����� ����� ������������: 220 � /  �������� ����� �����. ������: 166 �  
					�������� ����� �����. ������: 46 � /  �������: ���/  ��� ����������: ������������ /  No Frost (Frost Free) : ��� 
					������� ����: 39 �� /  �������� (�����): 144�56�60 ��. /  ����: �����.' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'SAMSUNG RB31FSRNDEF', N'��� ������������: ������������. /  ����� ����� ������������: 331 �. / �������� ����� �����. ������: 212 �.
					�������� ����� �����. ������: 98 �. /  �������: ���. /  ��� ����������: �����������. 
					No Frost (Frost Free) : �����������+����������� ��������� /  ������� ����: 37 ��. /  �������� (�����): 185x59,5x66,8 ��. 
					���: 65 ��. / ����: �������.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'INDESIT NBS 18 AA UA', N'��� ������������: ������������. / ����� ����� ������������: 339 �. / �������� ����� �����. ������: 233 �. 
					�������� ����� �����. ������: 85 �. / �������: ���. / ��� ����������: ������������. / No Frost (Frost Free) : ���.
					������� ����: 39 ��. / �������� (�����): 185�60�66 ��. / ����: �����.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'LG GA-B419SQCL ', N'��� ������������: ������������. / ����� ����� ������������: 354 �. / �������� ����� �����. ������: 225 �. 
					�������� ����� �����. ������: 87 �. / �������: ���. / ��� ����������: �����������. 
					No Frost (Frost Free) : �����������+����������� ��������� . / ������� ����: 41 ��. / �������� (�����): 190,7x59,5x64,3 ��. 
					���: 75 ��. / ����: �����.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'SNAIGE FR-275.1101AA ', N'��� ������������: ������������. / ����� ����� ������������: 260 �. / �������� ����� �����. ������: 201 �. 
					�������� ����� �����. ������: 57 �. / �������: ���. / ��� ����������: ������������. / No Frost (Frost Free) : ���. 
					������� ����: 39 ��. / �������� (�����): 169�56�60 ��. / ����: �����.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'INDESIT NTS 14 AA (UA) ', N'��� ������������: ������������. / ����� ����� ������������: 249 �. / �������� ����� �����. ������: 194 �. 
					�������� ����� �����. ������: 51 �. / �������: ���. / ��� ����������: ������������. / No Frost (Frost Free) : ���.
					������� ����: 39 ��. / �������� (�����): 145�60�62 ��. / ����: �����.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'BOSCH KGV39VW31', N'��� ������������: ������������. / ����� ����� ������������: 347 �. / �������� ����� �����. ������: 250 �. 
					�������� ����� �����. ������: 94 �. / �������: ���. / ��� ����������: �����������. / No Frost (Frost Free) : ���. 
					������� ����: 39 ��. / �������� (�����): 201x60x65 ��. / ����: �����' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'ATLANT XM-6025-100', '��� ������������: ������������. / ����� ����� ������������: 384 �. / �������� ����� �����. ������: 225 �.
					�������� ����� �����. ������: 129 �. / �������: ���. / ��� ����������: ������������. / No Frost (Frost Free) : ���. 
					������� ����: 39-42 ��. / �������� (�����): 205�60�63 ��. / ���: 87 ��. / ����: �����' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'LG GA-B419SEQL',N'��� ������������: ������������. / ����� ����� ������������: 354 �. / �������� ����� �����. ������: 225 �.
					�������� ����� �����. ������: 87 �. / �������: ����. / ��� ����������: �����������.
					No Frost (Frost Free) : �����������+����������� ��������� . / ������� ����: 41 ��. / �������� (�����): 190,7�59,5�64,3 ��. 
					���: 75 ��. / ����: �������.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'INDESIT NBS 20 AA (UA) ', N'��� ������������: ������������. / ����� ����� ������������: 363 �. / �������� ����� �����. ������: 233 �.
					�������� ����� �����. ������: 108 �. / �������: ���. / ��� ����������: ������������. / No Frost (Frost Free) : ���. 
					������� ����: 39 ��. / �������� (�����): 200�60�66 ��. / ����: �����.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'SAMSUNG RB31FSRNDWW ', N'��� ������������: ������������. / ����� ����� ������������: 331 �. / �������� ����� �����. ������: 212 �.
					�������� ����� �����. ������: 98 �. / �������: ���. / ��� ����������: �����������.
					No Frost (Frost Free) : �����������+����������� ��������� / ������� ����: 37 ��. / �������� (�����): 185x59,5x66,8 ��.
					���: 65 ��. / ����: �����.' from [dbo].[Products]



INSERT INTO [dbo].[Categories]([TopId])
values (2)
INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),N'Ru',N'�����',NULL from [dbo].[Categories]



INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'NORD 100-2� ����� ', N'���: �������. / ���-��������: ���. / ���� �������: �������. / �������� ������� �����������: �������������. 
					��� �������: �������. / �������� �����: 62 �. / �����: ���. / ���������: ���. / ������: ���. / ���������: ���. 
					�������� (�����): 85�50�60 ��. / ���: 32,5 ��. / ����: �����.' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'GRETA 1470-0012 (WM)',N'���: �������. / ���-��������: ���. / ���� �������: �������. / �������� ������� �����������: �������������. 
					��� �������: �������. / �������� �����: 54 �. / �����: ���. / ���������: ���. / ������: ���. / ���������: ���. 
					�������� (�����): 85�50�54 ��. / ���: 31 ��. / ����: �����.' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'ZANUSSI ZCE9550G1W', N'���: �������������. / ���� �������: �������������. / �������� ������� �����������: ���. / ��� �������: �������������.
					�������� �����: 56 �. / �����: ����. / ���������: ����. / ������: ���. / ���������: ����. / �������� (�����): 85,5�50�60 ��. / ����: �����.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'KAISER HGG 52511 W ', N'���: �������. / ���-��������: �����������+�������. / ���� �������: �������. / �������� ������� �����������: ��������. 
					��� �������: �������. / �������� �����: 58 �. / �����: ����. / ���������: ���. / ������: ����. / ���������: ����. 
					�������� (�����): 85�50�60 ��. / ���: 43,9 ��. / ����: �����/������ ���������� ������.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'HANSA FCEW 53000', N'���: �������������. / ���� �������: �������������. / �������� ������� �����������: ���. / ��� �������: �������������. 
					�������� �����: 69 �. / �����: ���. / ���������: ���. / ������: ���. / ���������: ����. 
					�������� (�����): 85�50�60 ��. / ���: 40 ��. / ����: �����.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'HANSA FCMW53050 ', N'���: ��������������� (���+�������). / ���-��������: ���. / ���� �������: �������, �������������. 
					�������� ������� �����������: �������������. / ��� �������: �������������. / �������� �����: 69 �. / �����: ����. 
					���������: ���. / ������: ���. / ���������: ����. / �������� (�����): 85�50�60 ��. / ����: �����.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'GEFEST 6100-01 ', N'���: �������. / ���-��������: �������. / ���� �������: �������. / �������� ������� �����������: ��������.
					��� �������: �������. / �������� �����: 52 �. / �����: ���. / ���������: ���. / ������: ���. / ���������: ����. 
					�������� (�����): 85�60�60 ��. / ���: 43,5 ��. / ����: �����.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'GRETA 1470-0016 (W)', N'���: �������. / ���-��������: ���. / ���� �������: �������. / �������� ������� �����������: �������������. 
					��� �������: �������. / �������� �����: 54 �. / �����: ���. / ���������: ���. / ������: ���. / ���������: ���.
					�������� (�����): 85�50�54 ��. / ���: 32 ��. / ����: �����.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'GRETA 1470-0007 (WM) ', N'���: �������. / ���-��������: ���. / ���� �������: �������. / �������� ������� �����������: �������������. 
					��� �������: �������. / �������� �����: 54 �. / �����: ���. / ���������: ���. / ������: ���. / ���������: ����. 
					�������� (�����): 85�50�54 ��. / ���: 37 ��. / ����: �����.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'ELECTROLUX EKK 954507 W ', N'���: ��������������� (���+�������). / ���-��������: �����������. / ���� �������: �������. / �������� ������� �����������: ��������. 
					��� �������: �������������. / �������� �����: 56 �. / �����: ����. / ���������: ����. / ������: ����. / ���������: ����.
					�������� (�����): 85,5x50x60 ��. / ����: �����.' from [dbo].[Products]



INSERT INTO [dbo].[Categories]([TopId])
values (3)
INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),N'Ru',N'���������� ������',NULL from [dbo].[Categories]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 4700,1,2015-06-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'INDESIT WISN 821 UA ', N'���: �����. / ���������� ����� ��� ������: 5 ��. / �������� ������: 800 ��/���. / ����� �����������������: �+. 
					�������: ���. / ���������� ��������: 16. / �������� (�����) : 85x59,5x42 ��. / ����:�����.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'ZANUSSI ZWSE 680 V', N'���: �����. / ���������� ����� ��� ������: 5 ��. / �������� ������: 800 ��/���. / ����� �����������������: �++. 
					�������: ���. / ���������� ��������: 14. / �������� (�����) : 85�59,5�37,7 ��. / ����:�����.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'ZANUSSI ZWSE 7120 V ',N'���: �����. / ���������� ����� ��� ������: 5 ��. / �������� ������: 1200 ��/���. / ����� �����������������: �++. 
					�������: ����. / ���������� ��������: 14. / �������� (�����) : 85�59,5�37,7 ��. / ����:�����.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'WHIRLPOOL AWS 63013', N'���: �����. / ���������� ����� ��� ������: 6 ��. / �������� ������: 1000 ��/���. / ����� �����������������: �+++. 
					�������: ����. / ���������� ��������: 18. / �������� (�����) : 84,5�59,5�45,3 ��. / ���: 61 ��. / ����:�����.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'ELECTROLUX EWS1266CI ', N'���: �����. / ���������� ����� ��� ������: 6 ��. / �������� ������: 1200 ��/���. / ����� �����������������: �+++.
					�������: ����. / ���������� ��������: 14. / �������� (�����) : 85�59,5�37,7 ��. / ����:�����.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'INDESIT IWSD 51051 UA ', N'���: �����. / ���������� ����� ��� ������: 5 ��. / �������� ������: 1000 ��/���. / ����� �����������������: �+. 
					�������: ����. / ���������� ��������: 16. / �������� (�����) : 85�59,5�42 ��. / ����:�����.
					����: 4 758 ���' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'ZANUSSI ZWSE 6100 V', N'���: �����. / ���������� ����� ��� ������: 5 ��. / �������� ������: 1000 ��/���. / ����� �����������������: �++.
					�������: ���. / ���������� ��������: 14. / �������� (�����) : 85�59,5�37,7 ��. / ����:�����.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'ZANUSSI ZWSE 7100 VS ',N'���: �����. / ���������� ����� ��� ������: 5 ��. / �������� ������: 1000 ��/���. / ����� �����������������: �++.
					�������: ����. / �������� (�����) : 85x59,5x37,7 . / ����:�����/�����������.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'ELECTROLUX EWS1052NDU', N'���: �����. / ���������� ����� ��� ������: 5 ��. / �������� ������: 1000 ��/���. / ����� �����������������: �++.
					�������: ���. / ���������� ��������: 14. / �������� (�����) : 85�59,5�37,7. / ����:�����.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'LG F80C3LD', N'���: �����. / ���������� ����� ��� ������: 5 ��. / �������� ������: 800 ��/���./ ����� �����������������: �++. 
					�������: ���. / ���������� ��������: 9. / �������� (�����) : 85x60x44 ��. / ���: 59 ��. / ����:�����.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'GORENJE W 7202/S ', N'���: �����. / ���������� ����� ��� ������: 7 ��. / �������� ������: 1000 ��/���. / ����� �����������������: �++. 
					�������: ���. / ���������� ��������: 18. / �������� (�����) : 85�60�44 ��. / ���: 61,5 ��. / ����:�����.' from [dbo].[Products]




INSERT INTO [dbo].[Categories]([TopId])
values (NULL)
INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),N'Ru',N'���������� ������',NULL from [dbo].[Categories]

INSERT INTO [dbo].[Categories]([TopId])
values (1)
INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),N'Ru',N'������� �������',NULL from [dbo].[Categories]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'EnergyFIT EF-6606B ', N'����������: �������� / �����������: �������� / �����������: ������������������ ������, ��������� ��� �����������
					������������ ��������: 14 ��/� / ������������ ��� ������������: 125 �� / ����������� ���� �������: ������������' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N' EnergyFIT EF-5501� ', N'����������: �������� / �����������: �������� / �����������: ������������������ ������, ��������� ��� �����������
					������������ ��������: 13 ��/� / ������������ ��� ������������: 120 �� / ����������� ���� �������: ������������' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'EnergyFIT EF-7705A ', N'����������: �������� / �����������: �������� / �����������: ������������������ ������, ��������� ��� �����������
					������������ ��������: 16 ��/� / ������������ ��� ������������: 140 �� / ����������� ���� �������: ������������' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'InterAtletika Jessie KL-803',N'����������: �������� / �����������: �������� / �����������: ������������������ �����, / ������������ ��� ������������: 100 ��
					����������� ���� �������: ������������' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'ProForm Endurance S9 (PETL99714) ', N'����������: �������� / �����������: �������� / �����������: ���������� / ������������ ��������: 20 ��/�
					������������ ��� ������������: 135 �� / ����������� ���� �������: �������������' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'NordicTrack T15 (NETL14711)',N'����������: �������� / �����������: �������� / �����������: ���������� / ������������ ��������: 22 ��/�
					������������ ��� ������������: 159 �� / ����������� ���� �������: �������������' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),N'RU',N'Spirit Esprit XT-485 ',N'����������: �������� / �����������: �������� / �����������: ������������������ ������, ��������� ��� �����������, ��������� ��� �������, ����������
					������������ ��������: 18 ��/� / ������������ ��� ������������: 195 �� / ����������� ���� �������: �������������' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU',N'NordicTrack C200 (NETL10814)', N'����������: �������� / �����������: �������� / �����������: ���������� / ������������ ��������: 20 ��/�
					������������ ��� ������������: 150 �� / ����������� ���� �������: �������������' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU',N'HouseFit HT 9138HP (HT 9138HP)',N'����������: �������� / �����������: �������� /  ������������ ��������: 12 ��/�
					������������ ��� ������������: 100 �� / ����������� ���� �������: ������������' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Circle Fitness M7', N'����������: ���������������� / �����������: ���������� / �����������: ������������������ ������, ��������� ��� �����������, ��������� ��� �������, ����������
					������������ ��������: 20 ��/� / ������������ ��� ������������: 182 ��/ ����������� ���� �������: �������������' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 2900,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Discovery F-16', N'����������: �������� / �����������: �������� /  ������������ ��������: 16 ��/�
					������������ ��� ������������: 120 �� / ����������� ���� �������: �������������' from [dbo].[Products]




INSERT INTO [dbo].[Categories]([TopId])
values (2)
INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),'Ru',N'�������������',NULL from [dbo].[Categories]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Reebok One Series GB50 (RVON-10401BK)',N'���: ���������������� / ������ ��������: 32 / ���������� ��������: 23 / ������������ ��� ������������: 120 ��' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Reebok One Series GB40 (RVON-10101BK)',N'���: ���������������� / ������ ��������: 8 / ������������ ��� ������������: 110 �� / ���������� ��������: 4' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Sportop B800P+ ', N'���: ���������������� / ������ ��������: 16 / ������������ ��� ������������: 130 �� / ���������� ��������: 16
					����: 10 441 ��� ' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Sportop B600', N'���: ��������� / ������ ��������: 8 / ������������ ��� ������������: 105 �� / ���������� ��������: ���' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','InterFit Bike Drive (K.07)', N'���: ��������� / ������ ��������: 8 / ������������ ��� ������������: 120 �� / ���������� ��������: 8' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','HouseFit Kinetic B1.0 (KINETIC B1.0)', N'���: ��������� / ������ ��������: 8 / ������������ ��� ������������: 120 �, / ���������� ��������: ���' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','EnergyFIT BC1200 ', N'���: ��������� / ������ ��������: 8 / ������������ ��� ������������: 110 �� / ���������� ��������: ���' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','EnergyFIT GB1206',N'���: ��������� / ������ ��������: 8 / ������������ ��� ������������: 100 �� / ���������� ��������: ���' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','EnergyFIT GBBT1503', N'���: ��������� / ������������ ��� ������������: 100 ��' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','NordicTrack GX 5.0 (NTEVEX71014) ', N'���: ���������������� / ������ ��������: 20 / ������������ ��� ������������: 125 �� / ���������� ��������: 20' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Vision R60', N'���: ���������������� / ������ ��������: 25 / ������������ ��� ������������: 182 �� / ���������� ��������: 12' from [dbo].[Products]



INSERT INTO [dbo].[Categories]([TopId])
values (3)
INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),'Ru',N'�������, �����',NULL from [dbo].[Categories]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 1700,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU',N'������� �������� �������� Body Max 25 �� (��-018)', N'���: ������� / ��� �����: �������� / ����� �����: ������ / �����: 38 ��' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU',N'������� �������� Newt 17.5 �� (TI-968-745-17)', '���: ������� / ��� �����: �������� / ����� �����: ������ / �����: 33 ��' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU',N'������� �������� Newt 15.5 �� (TI-968-745-1-1)',N'���: ������� / ��� �����: �������� / ����� �����: ������ / �����: 33 ��' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU',N'������� �������� Newt 10 �� (TI-968-747)', N'���: ������� / ��� �����: �������� / ����� �����: ������ / �����: 33 ��' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU',N'������� �������� Newt 25.5 �� (TI-968-745-25-1) ', N'���: ������� / ��� �����: �������� / ����� �����: ������ / �����: 40 ��' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU',N' ������� �������� �������� Body Max 20 �� (��-016) ', N'���: ������� / ��� �����: �������� / ����� �����: ������ / �����: 38 ��' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU',N'���� Newt �������� 5 �� (TI-0006)', N'���: ����� / ��������: ����� / ��������: �������� / ������� ���������: 27 - 30 ��' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU',N'���� Newt �������� 1 �� (TI-0011)',N'���: ����� / ��������: ����� / ��������: �������� / ������� ���������: 27 - 30 ��' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU',N'���� Newt �������� 3 �� (TI-0014)',N'���: ����� / ��������: ����� / ��������: �������� / ������� ���������: 27 - 30 ��' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','', '' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU',N'�������� ������ Newt Home 50 �� (TI-0201-180-50)', N'���: ������ / ��� �����: �������� / ����� �����: ������ / �����: 180 ��' from [dbo].[Products]




INSERT INTO [dbo].[Categories]([TopId])
values (NULL)
INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),'Ru',N'�������� ����� � ������',NULL from [dbo].[Categories]

INSERT INTO [dbo].[Categories]([TopId])
values (1)
INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),'Ru',N'�����',NULL from [dbo].[Categories]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU',N'Storm mk240',N'���: ������� / ��� �����: ��� ����� � ��������� / ��������������������: 2 ���. / ���������� �������� � ����������� �����' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU',N'����� ��-190', N'���: ������� / ��� �����: ��� ����� � ��������� / ��������������������: 1 ���. ' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU',N'����� ��-190�', N'���: ������� / ��� �����: ��� ����� � ��������� / ��������������������: 1 ���.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU',N'����� ��-330�', N'���: ������� / ��� �����: ��� ����� � ��������� / ��������������������: 4 ���.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Storm stk-380', N'���: �������� �� ������������ ������� / ��� �����: ������� ��������� / ��������������������: 4 ���.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU',N'����� ��-250-� ', N'���: ������� / ��� �����: ����� / ��������������������: 2 ���.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU',N'����� ��-220-��', N'���: ������� / ��� �����: ����� / ��������������������: 1 ���.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Storm stm-280-40 ', N'���: �������� �� ������������ ������� / ��� �����: ����� / ��������������������: 2 ���.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Storm stm-330 ', N'���: �������� �� ������������ ������� / ��� �����: ����� / ��������������������: 2 ���.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU',' Storm mk260', N'���: ������� / ��� �����: ��� ����� � ��������� / ��������������������: 2 ���.' from [dbo].[Products]





INSERT INTO [dbo].[Categories]([TopId])
values (2)
INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),'Ru',N'�������',NULL from [dbo].[Categories]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Arsenal 20x50 (10-2050) ', N'���: ������� / ��������� �����������: 20x / ������� ���������: 50 �� / ���: 0.74 ��' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU',' Arsenal 7x50 ������� ׸���� (NB61-0750C1 Black)',N'���: ������� / ��������� �����������: 7x / ������� ���������: 50 �� / ���: 0.89 ��' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Arsenal 12x25 NB25-1225', N'���: ������� / ������� ���������: 25 �� / ���: 0.25 ��' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Alpen Sport II 10x25 Green (920296)', '���: ������� / ��������� �����������: 10� / ������� ���������: 25 �� / ���: 0.2 ��' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Arsenal 10-30�60 Porro (BF1-103060)', N'���: ������� / ��������� �����������: 10x - 30x / ������� ���������: 60 �� / ���: 0.85 ��' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Arsenal 12x25 NB27-1225 ', N'���: ������� / ��������� �����������: 12x / ������� ���������: 25 �� / ���: 0.07 ��' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Arsenal 10x50 (10-1050)', N'���: ������� / ��������� �����������: 10� / ������� ���������: 50 �� / ���: 0.7 ��' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Praktica 12x25 (920721)',N'������� Zeiss Victory HT 10�42 524529 (7120216)' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','������� Zeiss Victory HT 10�42 524529 (7120216)',N'���: ������� / ��������� �����������: 10x / ������� ���������: 42 �� / ���: 0.8 ��' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Kowa SV 10x42 WP (914770)', N'���: ������� / ��������� �����������: 10� / ������� ���������: 42 �� / ���: 0.67 ��' from [dbo].[Products]


INSERT INTO [dbo].[Categories]([TopId])
values (3)
INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),'Ru',N'�����',NULL from [dbo].[Categories]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 500,1,2015-10-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Motorola TLKR T80 Extreme', N'��������: PMR446 / ����������: ���������� ��������������� / ��������: 0.5 �� 
					��������� �����: �� 10 �� / ���: 140 �' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 500,1,2015-10-07    from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Voxtel MR160 ', N'��������: PMR446 / ����������: ���������� ��������������� / ��������: 0.5 ��
					��������� �����: �� 3 �� / ���: 76 �' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 500,1,2015-10-07    from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Motorola TLKR T80 Extreme ', N'��������: PMR446 / ����������: ���������� ��������������� / ��������: 0.5 ��
					��������� �����: �� 10 �� / ���: 140 �' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 500,1,2015-10-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Motorola TLKR T41 Pink (P14MAA03A1BN)',N'��������: PMR446 / ����������: ���������� ��������������� / ��������: 0.5 ��
					��������� �����: �� 4 �� / ���: 74 �' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 500,1,2015-10-07    from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Yaesu VX-6E', N'��������: VHF/UHF / ����������: ����������� ����������������� / ��������: 5 �� / ���: 270 �
					����: 9 410 ���' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 500,1,2015-10-07    from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Baofeng UV-3R ', N'��������: VHF/UHF / ����������: ����������� ����������������� / ��������: 2 ��
					��������� �����: �� 5 �� / ���: 150 �' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 500,1,2015-10-07    from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','President Truman ASC (TXMU092) ', N'��������: AM/FM / ����������: ������������� / ��������: 4 �� / ���: 700 �' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 500,1,2015-10-07    from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Motorola TLKR T60', N'��������: PMR446 / ����������: ���������� ��������������� / ��������: 0.5 ��
					��������� �����: �� 8 �� / ���: 103 �' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 500,1,2015-10-07    from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Voxtel MR950',N'��������: PMR446 / ����������: ���������� ��������������� / ��������: 0.5 ��
					��������� �����: �� 10 �� / ���: 350 �' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 500,1,2015-10-07    from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','President Jimmy II ASC (TXMU045) ',N'��������: AM / ����������: ������������� / ��������: 4 �� / ���: 600 �' from [dbo].[Products]











			
			
				
		
		
			
			
			