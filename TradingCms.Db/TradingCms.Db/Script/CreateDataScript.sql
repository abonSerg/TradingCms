





---Category---

INSERT INTO [dbo].[Categories]([TopId])
values (NULL)

INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),'Ru','������������ �������',NULL from [dbo].[Categories]

INSERT INTO [dbo].[Categories]([TopId])
values (1)

INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),'Ru','��������',NULL from [dbo].[Categories]


---Product---

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) ,  6555,1,25/12/2014   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Lenovo IdeaPad 100-14 (80HH001XUA)', '����� 14" (1366x768) HD LED, ��������� / Intel Celeron N2840 (2.16 ���) / RAM 2 �� 
					HDD 500 �� / Intel HD Graphics / ��� �� / LAN / Wi-Fi / ���-������ / DOS / 1.9 �� / ������' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) ,  6555,1,25/12/2014   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','HP 255G4 (NOY69ES)', '����� 15.6� (1366x768) HD LED, ������� / AMD Dual-Core E1-6015 (1.4 ���) / RAM 2 �� 
					HDD 500 �� / AMD Radeon R2 / ��� �� / LAN / Wi-Fi / Bluetooth / ���-������ / Linux / 2.15 �� / ������' from [dbo].[Products]



INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) ,  6555,1,25/12/2014   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Dell Inspiron 3551 (135C25NIW-22)', '����� 15.6" (1366x768) HD WLED, ��������� / Intel Celeron N2830 (2.16 ���) / RAM 2 �� 
					HDD 500 �� / Intel HD Graphics / ��� �� / Wi-Fi / Bluetooth 4.0 / ���-������ / Windows 8.1 / 2.14 �� / ������' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) ,  6555,1,25/12/2014   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU',' Asus EeeBook E502MA (E502MA-XX0026D) Blue ', '����� 15.6" (1366x768) HD, ��������� / Intel Celeron N2840 (2.16 ���) / RAM 4 �� 
					HDD 500 �� / Intel HD Graphics / ��� �� / LAN / Wi-Fi / Bluetooth / ���-������ / DOS / 1.86 �� / �����' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) ,  6555,1,25/12/2014   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU',' Acer Aspire ES1-520-392H (NX.G2JEU.002)', '����� 15.6'' (1366x768) HD LED, ������� / AMD E1-2500 (1.4 ���) / RAM 4 �� 
					HDD 500 �� / Radeon HD 8240 / ��� �� / LAN / Wi-Fi / Bluetooth / ���-������ / Linpus / 2.4 �� / ������' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) ,  6555,1,25/12/2014   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Lenovo IdeaPad 100S White ', '����� 11.6" TN (1366x768) WXGA HD LED, ��������� / Intel Atom Z3735F (1.33 - 1.83 ���) / RAM 2 �� 
					64 �� eMMC / Intel HD Graphics / ��� �� / Wi-Fi / Bluetooth / ���-������ / Windows 10 Home / 1 �� / �����
					����: 6 799 ���' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) ,  6555,1,25/12/2014   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Acer Aspire E5-573G-312U (NX.MVMEU.025) Black-Iron ', '����� 15.6'' (1366x768) HD LED, ������� / Intel Core i3-5005U (2.0 ���) / RAM 4 �� 
					HDD 500 �� / nVidia GeForce 920M, 2 �� / ��� �� / LAN / Wi-Fi / Bluetooth / ���-������ / Linux / 2.4 �� / ����� � ������' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) ,  6555,1,25/12/2014   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU',' Asus EeeBook E502MA (E502MA-XX0020D) Blue ', '����� 15.6" (1366x768) HD, ��������� / Intel Pentium N3540 (2.16 - 2.66 ���) / RAM 4 �� 
					HDD 1 �� / Intel HD Graphics / ��� �� / LAN / Wi-Fi / Bluetooth / ���-������ / DOS / 1.86 �� / �����
					����: 8 999 ��� ' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) ,  6555,1,25/12/2014   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Lenovo G50-45 (80E301XLUA) ', '����� 15.6" (1366x768) HD LED, ��������� / AMD Quad-Core A4-6210 (1.8 ���) / RAM 2 �� 
					HDD 500 �� / AMD Radeon R3 / ��� �� / LAN / Wi-Fi / Bluetooth / ���-������ / Windows 10 Home / 2.5 �� / ������' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) ,  6555,1,25/12/2014   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','HP 250 G4 (P5R75ES)', '����� 15.6� (1366x768) HD LED, ������� / Intel Core i3-4005U (1.7 ���) / RAM 4 �� 
					HDD 500 �� / Intel HD Graphics / ��� �� / LAN / Wi-Fi / Bluetooth / ���-������ / DOS / 2.15 �� / ������' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) ,  6555,1,25/12/2014   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Lenovo IdeaPad 100-15 (80QQ004NUA)', '����� 15.6" (1366x768) HD LED, ��������� / Intel Pentium 3825U (1.9 ���) / RAM 4 �� 
					HDD 500 �� / nVidia GeForce 920M, 1 �� / ��� �� / LAN / Bluetooth / Wi-Fi / ���-������ / DOS / 2.3 �� / ������' from [dbo].[Products]




INSERT INTO [dbo].[Categories]([TopId])
values (2)

INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),'Ru','��������',NULL from [dbo].[Categories]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3000,1,25/12/2015   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU',' Samsung Galaxy Tab E 9.6" 3G White (SM-T561NZWASEK)', '����� 9.6" (1280x800) ��������� MultiTouch / T-Shark2 (1.3 ���) / RAM 1.5 �� 
					8 �� ���������� ������ + microSD / 3G / Wi-Fi 802.11a/b/g/n / Bluetooth 4.0 / �������� ������ 5 ��, ����������� 2 �� 
					GPS / ������� / Android 4.4 (KitKat) / 490 � / �����' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3000,1,25/12/2015   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Lenovo TAB 2 A7-10 7" 8GB WiFi Black (59434747)', '����� 7" (1024�600) IPS, ��������� MultiTouch / MediaTek MT8127 (1.3 ���) / RAM 1 �� 
					8 �� ���������� ������ + microSD / Wi-Fi / Bluetooth 4.0 
					����������� ������ 0.3 �� / A-GPS / Android 4.4 / 269 � / ������' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3000,1,25/12/2015   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Asus ZenPad 7.0 16GB White (Z370C-1B042A)', '����� 7" IPS (1280x800) ��������� MultiTouch / Intel Atom x3-C3200 / RAM 2 �� / 16 �� ���������� ������ + microSD
					Wi-Fi 802.11 b/g/n / Bluetooth 4.0 / �������� ������ 5 ��, ����������� - 0.3 �� / GPS / ������� / �� Android 5.0 (Lollipop) / 272 � / �����' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3000,1,25/12/2015   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Samsung Galaxy Tab S2 9.7" 32GB Black (SM-T810NZKESEK)', '����� 9.7" Super AMOLED (2048x1536) ��������� MultiTouch / Samsung Exynos 5433 (1.9 ��� + 1.3 ���) / RAM 3 �� 
					32 �� ���������� ������ + microSD / 802.11 a/b/g/n/ac / Bluetooth 4.1 
					�������� ������ 8 ��, ����������� 2.1 �� / GPS / ������� / Android 5.0 (Lollipop) / 375 � / ������' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3000,1,25/12/2015   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Lenovo Tab 2 A7-30DC 7" 3G 8GB Black (59444592)', '����� 7" (1024�600) IPS, ��������� MultiTouch / MediaTek MT8382M (1.3 ���) / RAM 1 �� 
					8 �� ���������� ������ + microSD / 3G / Wi-Fi / Bluetooth 4.0 
					�������� ������ 2 �� + ����������� 0.3 �� / GPS / Android 4.4 (KitKat) / 269 � / ������' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3000,1,25/12/2015   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Prestigio MultiPad 10.1 3G Black (PMT3341_3G)', '����� 10.1" IPS (1280x800) ��������� Multi-Touch / Intel Atom X3 C3230 (1.2 ���) / RAM 1 �� 
					8 �� ���������� ������ + ��������� ���� ������ microSD / 3G / Wi-Fi / Bluetooth 
					�������� ������ 2 ��, ����������� - 0.3 �� / Android 5.1 (Lollipop) / 552 � / ������' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3000,1,25/12/2015   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Jeka JK-103 16GB 3G IPS', '����� 10.1" IPS (1024�600), ���������, MultiTouch / ARM Cortex A7 (1.3 ���) / RAM 1 �� 
					16 �� ���������� ������ + microSD / 3G / Wi-Fi / Bluetooth 4.0 / �������� ������ 2 ��, ����������� - 0.3 �� 
					GPS / A-GPS / �� Android 5.1 (Lollipop) / ��� 568 � / ������' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3000,1,25/12/2015   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Prestigio MultiPad Color 2 3G Black (PMT3777_3G_C)', '����� 7" IPS (1280x800) ���������, MultiTouch / Intel Atom x3-C3230RK (1.2 ���) / RAM 1 �� 
					8 �� ���������� ������ + microSD / 3G / Wi-Fi / Bluetooth 4.0 / �������� ������ 2 ��, ����������� - 0.3 �� 
					GPS / Android 5.1 (Lollipop) / 270 � / ������' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3000,1,25/12/2015   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Fly Flylife Connect 10.1 3G 2 Black', '����� 10.1" IPS (1280�800) ��������� MultiTouch / MediaTek MT8382V/W (1.3 ���) / RAM 1 �� 
					8 �� ���������� ������ + microSD / Wi-Fi / Bluetooth / 3G / �������� ������ 5 ��, ����������� 0.3 �� 
					GPS / �� Android 4.2.2 / 624 � / ������' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3000,1,25/12/2015   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU',' Assistant AP-115G White ', '����� 10.1" (1024x600) ��������� MultiTouch / MTK6572 Dual Core (1.2 ���) / RAM 1 �� 
					8 �� ���������� ������ + microSD / Wi-Fi b/g/n / 3G / Bluetooth / ����������� ������ 0.3 ��, ������� ������ 2 �� 
					GPS / OC Android 4.2 / 530 � / �����' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3000,1,25/12/2015   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','', '' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3000,1,25/12/2015   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Lenovo Tab 2 A10-70L 16GB LTE Blue (ZA010015UA)', '����� 10.1" (1920x1200) IPS ���������, MultiTouch / MediaTek MT8732 (1.5 ���) / RAM 2 �� 
					16 �� ���������� ������ + microSD / Wi-Fi b/g/n / Bluetooth 4.0 / 3G / LTE / �������� ������ 8 ��, ����������� - 5 �� 
					GPS / ������� / Beidou / Android 4.4 (KitKat) / 509 � / �����-�����' from [dbo].[Products]



INSERT INTO [dbo].[Categories]([TopId])
values (3)

INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),'Ru','����������� �����',NULL from [dbo].[Categories]



INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 4500,1,2015-04-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','PocketBook 624 Basic Touch Grey (PB624-Y-WW)', '��������� �������: 6" / ����������: 800�600 / ��� �������: E Ink / ���������� �������� ������: 16
					���������� ������: 4 �� / ���: 191 �' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3500,1,2015-04-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','PocketBook 626 Touch Lux2 Black (PB626-E-CIS)', '��������� �������: 6" / ����������: 1024�758 / ��� �������: E Ink Pearl / ���������� �������� ������: 16
					���������� ������: 4 �� / ���: 208 �' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 2500,1,2015-04-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','PocketBook InkPad 840 Brown', '��������� �������: 8" / ����������: 1600x1200 / ��� �������: E Ink Pearl / ���������� �������� ������: 16
					���������� ������: 4 �� / ���: 350 �' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 2500,1,2015-04-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU',' PocketBook 630 Kenzo Grey (PB630-G-CIS-KNZ)', '��������� �������: 6" / ����������: 1024�758 / ��� �������: E Ink Pearl / ���������� �������� ������: 16
					���������� ������: 4 �� / ���: 155 �' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 2500,1,2015-04-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','PocketBook 614 Basic 2 White (PB614-D-CIS)', '��������� �������: 6" / ����������: 800�600	/ ��� �������: E Ink Pearl / ���������� �������� ������: 16
					���������� ������: 4 �� / ���: 188 �' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 2500,1,2015-04-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','EvroMedia �-������� Classic Pro', '��������� �������: 9.7" / ����������: 1200x800	/ ��� �������: E Ink Pearl / ���������� �������� ������: 16
					���������� ������: 4 �� / ���: 350 �' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 2500,1,2015-04-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','PocketBook 630 Sense Brown (PB630-X-CIS)', '��������� �������: 6" / ����������: 1024�758 / ��� �������: E Ink Pearl / ���������� �������� ������: 16
					���������� ������: 4 �� / ���: 155 �' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 2500,1,2015-04-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Evromedia E-������� Classic One', '��������� �������: 6" / ����������: 800�600 / ��� �������: E Ink / ���������� �������� ������: 16
					���������� ������: 4 �� / ���: 191 �' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 2500,1,2015-04-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','EvroMedia �-������� HD Paper', '��������� �������: 6" / ����������: 1024�758 / ��� �������: E Ink Pearl / ���������� �������� ������: 16
					���������� ������: 4 �� / ���: 155 �' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 2500,1,2015-04-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','PocketBook Ultra 650 ����� ', '��������� �������: 6" / ����������: 1024�758 / ��� �������: E Ink Pearl / ���������� �������� ������: 16
					���������� ������: 4 �� / ���: 175 �' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 2500,1,2015-04-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','PocketBook 515 Grey (PB515-Y)', '��������� �������: 5" / ����������: 800�600 / ��� �������: E Ink / ���������� �������� ������: 16
					���������� ������: 4 �� / ���: 131 �' from [dbo].[Products]






INSERT INTO [dbo].[Categories]([TopId])
values (NULL)

INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),'Ru','��������, MP3, GPS',NULL from [dbo].[Categories]

INSERT INTO [dbo].[Categories]([TopId])
values (1)

INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),'Ru','���������',NULL from [dbo].[Categories]



INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Samsung Galaxy J5 J500H/DS Black', '����� (5", Super AMOLED, 1280x720)/ Qualcomm Snapdragon 410 (1.2 ���)/ �������� ������: 13 ��, ����������� ������: 5 ��
					RAM 1.5 ��/ 8 �� ���������� ������ + microSD/SDHC (�� 128 ��)/ 3G / GPS/ ��������� 2� SIM-���� (Micro-SIM)
					Android 5.1 (Lollipop) / 2600 ��*�' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Lenovo A7000 Onyx Black ', '����� (5.5", IPS, 1280x720)/ MediaTek MT6752 (1.5 ���)/ �������� ������: 8 ��, ����������� ������: 5 ��
					RAM 2 ��/ 8 �� ���������� ������ + microSD/SDHC (�� 32 ��)/ 3G/ GPS/ ��������� 2� SIM-���� (Micro-SIM)
					Android 5.0 (Lollipop) / 2900 ��*�' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Samsung Galaxy A3 2016 Duos SM-A310 16Gb Black', '����� (4.7", Super AMOLED, 1280x720)/ ��������������� Qualcomm Snapdragon 410 (1.5 ���)/ �������� ������: 13 ��, ����������� ������: 5 ��
					RAM 1.5 ��/ 16 �� ���������� ������ + microSD/SDHC (�� 128 ��)/ 3G/ LTE/ GPS/ ��������� 2� SIM-���� (Nano-SIM)
					Android 5.1.1 (Lollipop)/ 2300 ��*�' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Samsung Galaxy S6 SS 32GB G920 Gold', '����� (5.1", Super AMOLED, 2560�1440)/ Samsung Exynos 7420 (Quad 2.1 ��� + Quad 1.5 ���)/ �������� ������: 16 ��, ����������� ������: 5 ��
					RAM 3 ��/ 32 �� ���������� ������/ 3G/ LTE/ GPS/ Nano-SIM
					Android 5.0 (Lollipop) / 2550 ��*�' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','LG G4 Leather Brown', '����� (5.5", IPS, 2560�1440)/ Qualcomm Snapdragon 808 (1.8 ���)/ �������� ������: 16 ��, ����������� ������: 8 ��
					RAM 3 ��/ 32 �� ���������� ������ + microSD/SDHC (�� 2 ��)/ 3G/ LTE/ GPS/ ��������� 2� SIM-���� (Micro-SIM)
					Android 5.1 (Lollipop) / 3000 ��*�' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Apple iPhone 5s 16GB Space Gray', '����� (4", IPS, 1136x640)/ Apple A7 (1.3 ���)/ �������� ������: 8 ��, ����������� ������: 1.2 ��
					RAM 1 ��/ 16 �� ���������� ������/ 3G/ LTE/ GPS/ Nano-SIM/ iOS 9/ 1560 ��*�' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Meizu M2 Note 16GB White � ���������� EP-21HD (������������� ������)', '����� (5.5", IGZO, 1920x1080)/ MediaTek MT6753 (1.3 ���)/ �������� ������: 13 ��, ����������� ������: 5 ��
					RAM 2 ��/ 16 �� ���������� ������ + microSD/SDHC (�� 128 ��)/ 3G/ LTE/ GPS/ ��������� 2� SIM-���� (Nano-SIM)
					Android 5.1 (Lollipop) / 3100 ��*�' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Samsung Galaxy S3 Neo Duos I9300i Black', '����� (4.8", Super AMOLED, 1280x720)/ Qualcomm MSM8226 Snapdragon 400 (1.4 ���)/ �������� ������: 8 ��, ����������� ������: 1.9 ��
					RAM 1.5 ��/ 16 �� ���������� ������ + microSD/SDHC (�� 64 ��)/ 3G/ GPS/ ��������� 2� SIM-���� (Micro-SIM)
					Android 4.3 (Jelly Bean) / 2100 ��*�' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Xiaomi Redmi Note 2 16GB Gray', '����� (5.5", IPS, 1920x1080)/ MediaTek Helio X10 MT6795 (2.0 ���)/ �������� ������: 13 ��, ����������� ������: 5 ��
					RAM 2 ��/ 16 �� ���������� ������ + microSD/SDHC (�� 32 ��)/ 3G/ LTE/ GPS/ ��������� 2� SIM-���� (Micro-SIM)
					Android 5.0 (Lollipop) / 3060 ��*�' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Microsoft Lumia 640 XL (Nokia) DS Cyan', '����� (5.7", IPS, 1280x720)/ Qualcomm Snapdragon 400 (1.2 ���)/ �������� ������: 13 ��, ����������� ������: 5 ��
					RAM 1 ��/ 8 �� ���������� ������ + microSD/SDHC (�� 128 ��)/ 3G/ GPS/ ��������� 2� SIM-���� (Micro-SIM)
					Windows Phone 8.1/ 3000 ��*�' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Lenovo A2010 Black ', '����� (4.5", TN, 854x480)/ MediaTek MTK6735M (1.0 ���)/ �������� ������: 5 ��, ����������� ������: 2 ��
					RAM 1 ��/ 8 �� ���������� ������ + microSD/SDHC (�� 32 ��)/ 3G/ GPS/ ��������� 2� SIM-���� (Micro-SIM)
					Android 5.1 (Lollipop) / 2000 ��*�' from [dbo].[Products]





INSERT INTO [dbo].[Categories]([TopId])
values (2)

INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),'Ru','MP3-������',NULL from [dbo].[Categories]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Sony Walkman NWZ-A15 16GB Blue', '16 �� / MP3, WMA, FLAC, L-PCM, AAC, HE-AAC, ALAC, AIFF, WAV, AVCHD, MPEG4, WMV9, JPEG 
					2.2" TFT QVGA (320 x 240) / FM-����� / NFC / Bluetooth / USB / 66 � / �������' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Jeka Neo 8GB Black/Blue ', '8 �� / MP3, WMA, WAV, PEG, BMP, AVI, TXT 
					1.8" TFT (160x128) / FM-�������� / miniUSB / 40 � 80 � 9 ��, 19 � / ������ � �����' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Transcend T-Sonic 350 8GB Blue', '8 �� / MP3, WMA, WAV / OLED / USB 2.0 / FM-�������� / �������� / 22 � / �����' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Apple iPod touch 64GB Blue', '64 �� / AAC, ���������� AAC, HE-AAC, MP3, MP3 VBR, Audible, Apple Lossless, AIFF, WAV, H.264, MPEG-4, M-JPEG 
					��������� 4" Multi-Touch ������� / ������ 8 �� + ����������� ������ 1.2 �� 
					Wi-Fi / Bluetooth 4.1 / iOS 8 / 88 � / �������' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Pixus Six 8GB New White ', '8 �� / MP3, WMA, WAV / OLED �����-����� / FM-�������� 
					�������� / USB 2.0 / 80 x 20 x 11 ��, 18 � / �����' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','NRG Stick Pro ', '8 �� / MP3, WMA, WAV, FLAC / OLED 4�-�������� / FM-�������� / �������� 
					USB / 84 � 27 � 13 ��, 26 � / ������' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Apple iPod nano 7Gen 16GB Space Gray', '16 �� / �AC, ���������� AAC, HE-AAC, MP3, MP3 VBR, Audible, Apple Lossless, AIFF, WAV, H.264, M4V, MP4, MOV, MPEG-4 
					2.5" Multi-Touch ������� / FM-����� / Bluetooth 4.0 / 31 � / �����' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Sony Walkman NWZ-WS613 4GB White ', '4 �� / MP3, WMA, Linear PCM, AAC / USB / Bluetooth / NFC / ����������������� / 37 � / �����' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','FiiO M3 White ', '8 �� / APE / FLAC / WAV / MP3 / AAC / WMA / OGG / 2" TFT-����� / 40 �' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Apple iPod shuffle 2GB Pink', '2 �� / �AC, ���������� AAC, MP3, MP3 VBR, Audible, Apple Lossless, AIFF, WAV / 12.5 � / �������' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Apple iPod touch 16GB Gold', '16 �� / AAC, ���������� AAC, HE-AAC, MP3, MP3 VBR, Audible, Apple Lossless, AIFF, WAV, H.264, MPEG-4, M-JPEG 
					��������� 4" Multi-Touch ������� / ������ 8 �� + ����������� ������ 1.2 �� 
					Wi-Fi / Bluetooth 4.1 / iOS 8 / 88 � / ����������' from [dbo].[Products]




INSERT INTO [dbo].[Categories]([TopId])
values (3)

INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),'Ru','�������� ���������� ',NULL from [dbo].[Categories]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','������� ������� E-Power 1 USB + holder 2.1 A', '���: ������� / �������� ��� �������: ����������� ����, ���������, ��������� ���������
					���������� USB-������ 1 / �������������� ��������������: LED ��������� �������� ������� / ���� Black / ��������: 6 �������' from [dbo].[Products]



INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','������������� �������� ���������� E-Power MicroUSB', '���: ������������� / �������� ��� �������: ����������� ����, ���������, ��������� ���������
					���������� USB-������: 1 / �������������� ��������������: LED ��������� �������� ������� / ����: Black / ��������: 6 �������' from [dbo].[Products]



INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','������� �������� ���������� E-Power ������ Smart', '���: ������� / �������� ��� �������: ����������� ����, ���������, ��������� ���������
					���������� USB-������: 2 / �������������� ��������������: LED ��������� �������� ������� / ����: Black / ��������: 6 �������' from [dbo].[Products]



INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','������� �������� ���������� Pixus Charge One Turquoise', '���: ������� / �������� ��� �������: ����������� ����, ���������, ��������� ��������� / ���������� USB-������: 1
					������: 1.2 � / ����: Turquoise / ��������: 12 �������' from [dbo].[Products]



INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 250,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','������������� �������� �������� E-Power 3 � 1', '���: �������������, ������� \ �������� ��� �������: ����������� ����, ���������, ��������� ���������
					���������� USB-������: 2 / �������������� ��������������: LED ��������� �������� ������� / ����: Black / ��������: 6 �������' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','������� �������� ���������� Logan Quad USB Wall Charger 5V 4A CH-4 Orange', '���: ������� / �������� ��� �������: ����������� ����, ���������, ��������� ���������
					�������������: ��������� ��������, ���������, ������������, mp3-������, �������� � ������������ ������� �� USB �����
					���������� USB-������: 4 / ����: Orange / ��������: 12 �������' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','������������� �������� ���������� E-Power ������ MicroUSB', '' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','������� �������� ����������', '' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','������� �������� ���������� Global MSH-TR-071 c ������� ��� iPhone 5, 6 White', '���: ������� / �������� ��� �������: ���������, ��������� ��������� / �������������: iPhone 5, iPhone 6
					����: White / ��������: 12 �������' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','������� �������� ���������� Drobak Power Dual 220V-USB White/Black', '���: ������� / �������� ��� �������: ����������� ����, ���������, ��������� ��������� / ���������� USB-������: 2
					�������������� ��������������: ������� ������, ������� � ��������� � ������ / ����: White-Black / ��������: 6 �������' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','������� �������� ���������� Logan Quad USB Wall Charger 5V 2.6A CHC-4 White', '���: ������� / �������� ��� �������: ����������� ����, ���������, ��������� ���������
					�������������: ��������� ��������, ���������, ������������, mp3-������, �������� � ������������ ������� �� USB �����
					���������� USB-������: 4 / ����: White / ��������: 12 �������' from [dbo].[Products]





INSERT INTO [dbo].[Categories]([TopId])
values (NULL)
INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),'Ru','������� �������',NULL from [dbo].[Categories]
INSERT INTO [dbo].[Categories]([TopId])
values (1)
INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),'Ru','������������',NULL from [dbo].[Categories]



INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 6500,1,2015-03-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'Ru','SNAIGE FR-240.1101AA','��� ������������: ������������ /  ����� ����� ������������: 220 � /  �������� ����� �����. ������: 166 �  
					�������� ����� �����. ������: 46 � /  �������: ���/  ��� ����������: ������������ /  No Frost (Frost Free) : ��� 
					������� ����: 39 �� /  �������� (�����): 144�56�60 ��. /  ����: �����.' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','SAMSUNG RB31FSRNDEF', '��� ������������: ������������. /  ����� ����� ������������: 331 �. / �������� ����� �����. ������: 212 �.
					�������� ����� �����. ������: 98 �. /  �������: ���. /  ��� ����������: �����������. 
					No Frost (Frost Free) : �����������+����������� ��������� /  ������� ����: 37 ��. /  �������� (�����): 185x59,5x66,8 ��. 
					���: 65 ��. / ����: �������.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','INDESIT NBS 18 AA UA', '��� ������������: ������������. / ����� ����� ������������: 339 �. / �������� ����� �����. ������: 233 �. 
					�������� ����� �����. ������: 85 �. / �������: ���. / ��� ����������: ������������. / No Frost (Frost Free) : ���.
					������� ����: 39 ��. / �������� (�����): 185�60�66 ��. / ����: �����.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','LG GA-B419SQCL ', '��� ������������: ������������. / ����� ����� ������������: 354 �. / �������� ����� �����. ������: 225 �. 
					�������� ����� �����. ������: 87 �. / �������: ���. / ��� ����������: �����������. 
					No Frost (Frost Free) : �����������+����������� ��������� . / ������� ����: 41 ��. / �������� (�����): 190,7x59,5x64,3 ��. 
					���: 75 ��. / ����: �����.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','SNAIGE FR-275.1101AA ', '��� ������������: ������������. / ����� ����� ������������: 260 �. / �������� ����� �����. ������: 201 �. 
					�������� ����� �����. ������: 57 �. / �������: ���. / ��� ����������: ������������. / No Frost (Frost Free) : ���. 
					������� ����: 39 ��. / �������� (�����): 169�56�60 ��. / ����: �����.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','INDESIT NTS 14 AA (UA) ', '��� ������������: ������������. / ����� ����� ������������: 249 �. / �������� ����� �����. ������: 194 �. 
					�������� ����� �����. ������: 51 �. / �������: ���. / ��� ����������: ������������. / No Frost (Frost Free) : ���.
					������� ����: 39 ��. / �������� (�����): 145�60�62 ��. / ����: �����.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','BOSCH KGV39VW31', '��� ������������: ������������. / ����� ����� ������������: 347 �. / �������� ����� �����. ������: 250 �. 
					�������� ����� �����. ������: 94 �. / �������: ���. / ��� ����������: �����������. / No Frost (Frost Free) : ���. 
					������� ����: 39 ��. / �������� (�����): 201x60x65 ��. / ����: �����' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU',' ATLANT XM-6025-100', '��� ������������: ������������. / ����� ����� ������������: 384 �. / �������� ����� �����. ������: 225 �.
					�������� ����� �����. ������: 129 �. / �������: ���. / ��� ����������: ������������. / No Frost (Frost Free) : ���. 
					������� ����: 39-42 ��. / �������� (�����): 205�60�63 ��. / ���: 87 ��. / ����: �����' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','LG GA-B419SEQL', '��� ������������: ������������. / ����� ����� ������������: 354 �. / �������� ����� �����. ������: 225 �.
					�������� ����� �����. ������: 87 �. / �������: ����. / ��� ����������: �����������.
					No Frost (Frost Free) : �����������+����������� ��������� . / ������� ����: 41 ��. / �������� (�����): 190,7�59,5�64,3 ��. 
					���: 75 ��. / ����: �������.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','INDESIT NBS 20 AA (UA) ', '��� ������������: ������������. / ����� ����� ������������: 363 �. / �������� ����� �����. ������: 233 �.
					�������� ����� �����. ������: 108 �. / �������: ���. / ��� ����������: ������������. / No Frost (Frost Free) : ���. 
					������� ����: 39 ��. / �������� (�����): 200�60�66 ��. / ����: �����.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','SAMSUNG RB31FSRNDWW ', '��� ������������: ������������. / ����� ����� ������������: 331 �. / �������� ����� �����. ������: 212 �.
					�������� ����� �����. ������: 98 �. / �������: ���. / ��� ����������: �����������.
					No Frost (Frost Free) : �����������+����������� ��������� / ������� ����: 37 ��. / �������� (�����): 185x59,5x66,8 ��.
					���: 65 ��. / ����: �����.' from [dbo].[Products]



INSERT INTO [dbo].[Categories]([TopId])
values (2)
INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),'Ru','�����',NULL from [dbo].[Categories]



INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','NORD 100-2� ����� ', '���: �������. / ���-��������: ���. / ���� �������: �������. / �������� ������� �����������: �������������. 
					��� �������: �������. / �������� �����: 62 �. / �����: ���. / ���������: ���. / ������: ���. / ���������: ���. 
					�������� (�����): 85�50�60 ��. / ���: 32,5 ��. / ����: �����.' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','GRETA 1470-0012 (WM)', '���: �������. / ���-��������: ���. / ���� �������: �������. / �������� ������� �����������: �������������. 
					��� �������: �������. / �������� �����: 54 �. / �����: ���. / ���������: ���. / ������: ���. / ���������: ���. 
					�������� (�����): 85�50�54 ��. / ���: 31 ��. / ����: �����.' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','ZANUSSI ZCE9550G1W', '���: �������������. / ���� �������: �������������. / �������� ������� �����������: ���. / ��� �������: �������������.
					�������� �����: 56 �. / �����: ����. / ���������: ����. / ������: ���. / ���������: ����. / �������� (�����): 85,5�50�60 ��. / ����: �����.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','KAISER HGG 52511 W ', '���: �������. / ���-��������: �����������+�������. / ���� �������: �������. / �������� ������� �����������: ��������. 
					��� �������: �������. / �������� �����: 58 �. / �����: ����. / ���������: ���. / ������: ����. / ���������: ����. 
					�������� (�����): 85�50�60 ��. / ���: 43,9 ��. / ����: �����/������ ���������� ������.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','HANSA FCEW 53000', '���: �������������. / ���� �������: �������������. / �������� ������� �����������: ���. / ��� �������: �������������. 
					�������� �����: 69 �. / �����: ���. / ���������: ���. / ������: ���. / ���������: ����. 
					�������� (�����): 85�50�60 ��. / ���: 40 ��. / ����: �����.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','HANSA FCMW53050 ', '���: ��������������� (���+�������). / ���-��������: ���. / ���� �������: �������, �������������. 
					�������� ������� �����������: �������������. / ��� �������: �������������. / �������� �����: 69 �. / �����: ����. 
					���������: ���. / ������: ���. / ���������: ����. / �������� (�����): 85�50�60 ��. / ����: �����.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','GEFEST 6100-01 ', '���: �������. / ���-��������: �������. / ���� �������: �������. / �������� ������� �����������: ��������.
					��� �������: �������. / �������� �����: 52 �. / �����: ���. / ���������: ���. / ������: ���. / ���������: ����. 
					�������� (�����): 85�60�60 ��. / ���: 43,5 ��. / ����: �����.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','GRETA 1470-0016 (W)', '���: �������. / ���-��������: ���. / ���� �������: �������. / �������� ������� �����������: �������������. 
					��� �������: �������. / �������� �����: 54 �. / �����: ���. / ���������: ���. / ������: ���. / ���������: ���.
					�������� (�����): 85�50�54 ��. / ���: 32 ��. / ����: �����.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','GRETA 1470-0007 (WM) ', '���: �������. / ���-��������: ���. / ���� �������: �������. / �������� ������� �����������: �������������. 
					��� �������: �������. / �������� �����: 54 �. / �����: ���. / ���������: ���. / ������: ���. / ���������: ����. 
					�������� (�����): 85�50�54 ��. / ���: 37 ��. / ����: �����.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','ELECTROLUX EKK 954507 W ', '���: ��������������� (���+�������). / ���-��������: �����������. / ���� �������: �������. / �������� ������� �����������: ��������. 
					��� �������: �������������. / �������� �����: 56 �. / �����: ����. / ���������: ����. / ������: ����. / ���������: ����.
					�������� (�����): 85,5x50x60 ��. / ����: �����.' from [dbo].[Products]



INSERT INTO [dbo].[Categories]([TopId])
values (3)
INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),'Ru','���������� ������',NULL from [dbo].[Categories]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 4700,1,2015-06-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','INDESIT WISN 821 UA ', '���: �����. / ���������� ����� ��� ������: 5 ��. / �������� ������: 800 ��/���. / ����� �����������������: �+. 
					�������: ���. / ���������� ��������: 16. / �������� (�����) : 85x59,5x42 ��. / ����:�����.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','ZANUSSI ZWSE 680 V', '���: �����. / ���������� ����� ��� ������: 5 ��. / �������� ������: 800 ��/���. / ����� �����������������: �++. 
					�������: ���. / ���������� ��������: 14. / �������� (�����) : 85�59,5�37,7 ��. / ����:�����.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','ZANUSSI ZWSE 7120 V ', '���: �����. / ���������� ����� ��� ������: 5 ��. / �������� ������: 1200 ��/���. / ����� �����������������: �++. 
					�������: ����. / ���������� ��������: 14. / �������� (�����) : 85�59,5�37,7 ��. / ����:�����.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','WHIRLPOOL AWS 63013', '���: �����. / ���������� ����� ��� ������: 6 ��. / �������� ������: 1000 ��/���. / ����� �����������������: �+++. 
					�������: ����. / ���������� ��������: 18. / �������� (�����) : 84,5�59,5�45,3 ��. / ���: 61 ��. / ����:�����.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','ELECTROLUX EWS1266CI ', '���: �����. / ���������� ����� ��� ������: 6 ��. / �������� ������: 1200 ��/���. / ����� �����������������: �+++.
					�������: ����. / ���������� ��������: 14. / �������� (�����) : 85�59,5�37,7 ��. / ����:�����.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','INDESIT IWSD 51051 UA ', '���: �����. / ���������� ����� ��� ������: 5 ��. / �������� ������: 1000 ��/���. / ����� �����������������: �+. 
					�������: ����. / ���������� ��������: 16. / �������� (�����) : 85�59,5�42 ��. / ����:�����.
					����: 4 758 ���' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','ZANUSSI ZWSE 6100 V', '���: �����. / ���������� ����� ��� ������: 5 ��. / �������� ������: 1000 ��/���. / ����� �����������������: �++.
					�������: ���. / ���������� ��������: 14. / �������� (�����) : 85�59,5�37,7 ��. / ����:�����.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','ZANUSSI ZWSE 7100 VS ', '���: �����. / ���������� ����� ��� ������: 5 ��. / �������� ������: 1000 ��/���. / ����� �����������������: �++.
					�������: ����. / �������� (�����) : 85x59,5x37,7 . / ����:�����/�����������.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','ELECTROLUX EWS1052NDU', '���: �����. / ���������� ����� ��� ������: 5 ��. / �������� ������: 1000 ��/���. / ����� �����������������: �++.
					�������: ���. / ���������� ��������: 14. / �������� (�����) : 85�59,5�37,7. / ����:�����.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','LG F80C3LD', '���: �����. / ���������� ����� ��� ������: 5 ��. / �������� ������: 800 ��/���./ ����� �����������������: �++. 
					�������: ���. / ���������� ��������: 9. / �������� (�����) : 85x60x44 ��. / ���: 59 ��. / ����:�����.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','GORENJE W 7202/S ', '���: �����. / ���������� ����� ��� ������: 7 ��. / �������� ������: 1000 ��/���. / ����� �����������������: �++. 
					�������: ���. / ���������� ��������: 18. / �������� (�����) : 85�60�44 ��. / ���: 61,5 ��. / ����:�����.' from [dbo].[Products]




INSERT INTO [dbo].[Categories]([TopId])
values (NULL)
INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),'Ru','���������� ������',NULL from [dbo].[Categories]

INSERT INTO [dbo].[Categories]([TopId])
values (1)
INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),'Ru','������� �������',NULL from [dbo].[Categories]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','EnergyFIT EF-6606B ', '����������: �������� / �����������: �������� / �����������: ������������������ ������, ��������� ��� �����������
					������������ ��������: 14 ��/� / ������������ ��� ������������: 125 �� / ����������� ���� �������: ������������' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU',' EnergyFIT EF-5501� ', '����������: �������� / �����������: �������� / �����������: ������������������ ������, ��������� ��� �����������
					������������ ��������: 13 ��/� / ������������ ��� ������������: 120 �� / ����������� ���� �������: ������������' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','EnergyFIT EF-7705A ', '����������: �������� / �����������: �������� / �����������: ������������������ ������, ��������� ��� �����������
					������������ ��������: 16 ��/� / ������������ ��� ������������: 140 �� / ����������� ���� �������: ������������' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','InterAtletika Jessie KL-803','����������: �������� / �����������: �������� / �����������: ������������������ �����, / ������������ ��� ������������: 100 ��
					����������� ���� �������: ������������' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','ProForm Endurance S9 (PETL99714) ', '����������: �������� / �����������: �������� / �����������: ���������� / ������������ ��������: 20 ��/�
					������������ ��� ������������: 135 �� / ����������� ���� �������: �������������' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','NordicTrack T15 (NETL14711)', '����������: �������� / �����������: �������� / �����������: ���������� / ������������ ��������: 22 ��/�
					������������ ��� ������������: 159 �� / ����������� ���� �������: �������������' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Spirit Esprit XT-485 ', '����������: �������� / �����������: �������� / �����������: ������������������ ������, ��������� ��� �����������, ��������� ��� �������, ����������
					������������ ��������: 18 ��/� / ������������ ��� ������������: 195 �� / ����������� ���� �������: �������������' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','NordicTrack C200 (NETL10814)', '����������: �������� / �����������: �������� / �����������: ���������� / ������������ ��������: 20 ��/�
					������������ ��� ������������: 150 �� / ����������� ���� �������: �������������' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','HouseFit HT 9138HP (HT 9138HP)', '����������: �������� / �����������: �������� /  ������������ ��������: 12 ��/�
					������������ ��� ������������: 100 �� / ����������� ���� �������: ������������' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 3700,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Circle Fitness M7', '����������: ���������������� / �����������: ���������� / �����������: ������������������ ������, ��������� ��� �����������, ��������� ��� �������, ����������
					������������ ��������: 20 ��/� / ������������ ��� ������������: 182 ��/ ����������� ���� �������: �������������' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 2900,1,2015-05-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Discovery F-16', '����������: �������� / �����������: �������� /  ������������ ��������: 16 ��/�
					������������ ��� ������������: 120 �� / ����������� ���� �������: �������������' from [dbo].[Products]




INSERT INTO [dbo].[Categories]([TopId])
values (2)
INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),'Ru','�������������',NULL from [dbo].[Categories]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Reebok One Series GB50 (RVON-10401BK)', '���: ���������������� / ������ ��������: 32 / ���������� ��������: 23 / ������������ ��� ������������: 120 ��' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Reebok One Series GB40 (RVON-10101BK)', '���: ���������������� / ������ ��������: 8 / ������������ ��� ������������: 110 �� / ���������� ��������: 4' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Sportop B800P+ ', '���: ���������������� / ������ ��������: 16 / ������������ ��� ������������: 130 �� / ���������� ��������: 16
					����: 10 441 ��� ' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Sportop B600', '���: ��������� / ������ ��������: 8 / ������������ ��� ������������: 105 �� / ���������� ��������: ���' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','InterFit Bike Drive (K.07)', '���: ��������� / ������ ��������: 8 / ������������ ��� ������������: 120 �� / ���������� ��������: 8' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','HouseFit Kinetic B1.0 (KINETIC B1.0)', '���: ��������� / ������ ��������: 8 / ������������ ��� ������������: 120 �, / ���������� ��������: ���' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','EnergyFIT BC1200 ', '���: ��������� / ������ ��������: 8 / ������������ ��� ������������: 110 �� / ���������� ��������: ���' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','EnergyFIT GB1206', '���: ��������� / ������ ��������: 8 / ������������ ��� ������������: 100 �� / ���������� ��������: ���' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','EnergyFIT GBBT1503', '���: ��������� / ������������ ��� ������������: 100 ��' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','NordicTrack GX 5.0 (NTEVEX71014) ', '���: ���������������� / ������ ��������: 20 / ������������ ��� ������������: 125 �� / ���������� ��������: 20' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Vision R60', '���: ���������������� / ������ ��������: 25 / ������������ ��� ������������: 182 �� / ���������� ��������: 12' from [dbo].[Products]



INSERT INTO [dbo].[Categories]([TopId])
values (3)
INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),'Ru','�������, �����',NULL from [dbo].[Categories]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 1700,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','������� �������� �������� Body Max 25 �� (��-018)', '���: ������� / ��� �����: �������� / ����� �����: ������ / �����: 38 ��' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU',' ������� �������� Newt 17.5 �� (TI-968-745-17)', '���: ������� / ��� �����: �������� / ����� �����: ������ / �����: 33 ��' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','������� �������� Newt 15.5 �� (TI-968-745-1-1)', '���: ������� / ��� �����: �������� / ����� �����: ������ / �����: 33 ��' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU',' ������� �������� Newt 10 �� (TI-968-747)', '���: ������� / ��� �����: �������� / ����� �����: ������ / �����: 33 ��' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','������� �������� Newt 25.5 �� (TI-968-745-25-1) ', '���: ������� / ��� �����: �������� / ����� �����: ������ / �����: 40 ��' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU',' ������� �������� �������� Body Max 20 �� (��-016) ', '���: ������� / ��� �����: �������� / ����� �����: ������ / �����: 38 ��' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','���� Newt �������� 5 �� (TI-0006)', '���: ����� / ��������: ����� / ��������: �������� / ������� ���������: 27 - 30 ��' from [dbo].[Products]


INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','���� Newt �������� 1 �� (TI-0011)', '���: ����� / ��������: ����� / ��������: �������� / ������� ���������: 27 - 30 ��' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','���� Newt �������� 3 �� (TI-0014)', '���: ����� / ��������: ����� / ��������: �������� / ������� ���������: 27 - 30 ��' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','', '' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','�������� ������ Newt Home 50 �� (TI-0201-180-50)', '���: ������ / ��� �����: �������� / ����� �����: ������ / �����: 180 ��' from [dbo].[Products]




INSERT INTO [dbo].[Categories]([TopId])
values (NULL)
INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),'Ru','�������� ����� � ������',NULL from [dbo].[Categories]

INSERT INTO [dbo].[Categories]([TopId])
values (1)
INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),'Ru','�����',NULL from [dbo].[Categories]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Storm mk240','���: ������� / ��� �����: ��� ����� � ��������� / ��������������������: 2 ���. / ���������� �������� � ����������� �����' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','����� ��-190', '���: ������� / ��� �����: ��� ����� � ��������� / ��������������������: 1 ���. ' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','����� ��-190�', '���: ������� / ��� �����: ��� ����� � ��������� / ��������������������: 1 ���.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','����� ��-330�', '���: ������� / ��� �����: ��� ����� � ��������� / ��������������������: 4 ���.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Storm stk-380', '���: �������� �� ������������ ������� / ��� �����: ������� ��������� / ��������������������: 4 ���.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','����� ��-250-� ', '���: ������� / ��� �����: ����� / ��������������������: 2 ���.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','����� ��-220-��', '���: ������� / ��� �����: ����� / ��������������������: 1 ���.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Storm stm-280-40 ', '���: �������� �� ������������ ������� / ��� �����: ����� / ��������������������: 2 ���.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Storm stm-330 ', '���: �������� �� ������������ ������� / ��� �����: ����� / ��������������������: 2 ���.' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU',' Storm mk260', '���: ������� / ��� �����: ��� ����� � ��������� / ��������������������: 2 ���.' from [dbo].[Products]





INSERT INTO [dbo].[Categories]([TopId])
values (2)
INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),'Ru','�������',NULL from [dbo].[Categories]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Arsenal 20x50 (10-2050) ', '���: ������� / ��������� �����������: 20x / ������� ���������: 50 �� / ���: 0.74 ��' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU',' Arsenal 7x50 ������� ׸���� (NB61-0750C1 Black)', '���: ������� / ��������� �����������: 7x / ������� ���������: 50 �� / ���: 0.89 ��' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Arsenal 12x25 NB25-1225', '���: ������� / ������� ���������: 25 �� / ���: 0.25 ��' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Alpen Sport II 10x25 Green (920296)', '���: ������� / ��������� �����������: 10� / ������� ���������: 25 �� / ���: 0.2 ��' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Arsenal 10-30�60 Porro (BF1-103060)', '���: ������� / ��������� �����������: 10x - 30x / ������� ���������: 60 �� / ���: 0.85 ��' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Arsenal 12x25 NB27-1225 ', '���: ������� / ��������� �����������: 12x / ������� ���������: 25 �� / ���: 0.07 ��' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Arsenal 10x50 (10-1050)', '���: ������� / ��������� �����������: 10� / ������� ���������: 50 �� / ���: 0.7 ��' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Praktica 12x25 (920721)', '������� Zeiss Victory HT 10�42 524529 (7120216)' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','������� Zeiss Victory HT 10�42 524529 (7120216)', '���: ������� / ��������� �����������: 10x / ������� ���������: 42 �� / ���: 0.8 ��' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 7000,1,2015-09-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Kowa SV 10x42 WP (914770)', '���: ������� / ��������� �����������: 10� / ������� ���������: 42 �� / ���: 0.67 ��' from [dbo].[Products]


INSERT INTO [dbo].[Categories]([TopId])
values (3)
INSERT INTO [dbo].[Categories_tr] ([Id],[Languagecode],[Name],[Description])
select MAX(Id),'Ru','�����',NULL from [dbo].[Categories]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 500,1,2015-10-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Motorola TLKR T80 Extreme', '��������: PMR446 / ����������: ���������� ��������������� / ��������: 0.5 �� 
					��������� �����: �� 10 �� / ���: 140 �' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 500,1,2015-10-07    from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Voxtel MR160 ', '��������: PMR446 / ����������: ���������� ��������������� / ��������: 0.5 ��
					��������� �����: �� 3 �� / ���: 76 �' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 500,1,2015-10-07    from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Motorola TLKR T80 Extreme ', '��������: PMR446 / ����������: ���������� ��������������� / ��������: 0.5 ��
					��������� �����: �� 10 �� / ���: 140 �' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 500,1,2015-10-07   from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Motorola TLKR T41 Pink (P14MAA03A1BN)', '��������: PMR446 / ����������: ���������� ��������������� / ��������: 0.5 ��
					��������� �����: �� 4 �� / ���: 74 �' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 500,1,2015-10-07    from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Yaesu VX-6E', '��������: VHF/UHF / ����������: ����������� ����������������� / ��������: 5 �� / ���: 270 �
					����: 9 410 ���' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 500,1,2015-10-07    from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Baofeng UV-3R ', '��������: VHF/UHF / ����������: ����������� ����������������� / ��������: 2 ��
					��������� �����: �� 5 �� / ���: 150 �' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 500,1,2015-10-07    from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','President Truman ASC (TXMU092) ', '��������: AM/FM / ����������: ������������� / ��������: 4 �� / ���: 700 �' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 500,1,2015-10-07    from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Motorola TLKR T60', '��������: PMR446 / ����������: ���������� ��������������� / ��������: 0.5 ��
					��������� �����: �� 8 �� / ���: 103 �' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 500,1,2015-10-07    from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','Voxtel MR950', '��������: PMR446 / ����������: ���������� ��������������� / ��������: 0.5 ��
					��������� �����: �� 10 �� / ���: 350 �' from [dbo].[Products]

INSERT INTO [dbo].[Products] ([CategoryId],[Price],[IsAvailable],[CreateDate])
select  MAX(Id) , 500,1,2015-10-07    from [dbo].[Categories]
INSERT INTO [dbo].[Products_tr] ([Id],[Languagecode],[Name],[Description])
Select MAX(Id),'RU','President Jimmy II ASC (TXMU045) ', '��������: AM / ����������: ������������� / ��������: 4 �� / ���: 600 �' from [dbo].[Products]











			
			
				
		
		
			
			
			