CREATE DATABASE CoffeHighland
GO

USE CoffeHighland
GO

CREATE TABLE City(
   City_Name nvarchar(100)PRIMARY KEY,
   City_ID int,
   Find_Store int
)
GO

CREATE TABLE District(
   District_Name nvarchar(150) PRIMARY KEY,
   City_Name nvarchar(100) FOREIGN KEY REFERENCES City(City_Name), 
   District_ID int
)
GO

CREATE TABLE Utilities( 
   Utilities_Name nvarchar(100) PRIMARY KEY,
   Utilities_ID int
)
GO

CREATE TABLE CoffeStore(
   Store_Name nvarchar(200) PRIMARY KEY,
   City_Name nvarchar(100) FOREIGN KEY REFERENCES City(City_Name),
   District_Name nvarchar(150) FOREIGN KEY REFERENCES District(District_Name),
   Address nvarchar(200),
   Tel bigint,
   Utilities_Name nvarchar(100) FOREIGN KEY REFERENCES Utilities(Utilities_Name),
)
GO

--Thêm dữ liệu vào bảng

INSERT INTO City(City_ID, City_Name, Find_Store) VALUES
   (3,N'TP Hồ Chí Minh',3),
   (5,N'Hà Nội',3),
   (9,N'Đà Nẵng',2)
GO
SELECT * FROM City

INSERT INTO District(City_Name, District_ID, District_Name) VALUES
   (N'Hà Nội',828,N'Quận Hoàng Mai'),
   (N'Hà Nội',840,N'Quận Hà Đông'),
   (N'Hà Nội',825,N'Quận Cầu Giấy'),
   (N'TP Hồ Chí Minh',804,N'Quận 7'),
   (N'TP Hồ Chí Minh',810,N'Quận Thủ Đức'),
   (N'TP Hồ Chí Minh',815,N'Quận Tân Phú'),
   (N'Đà Nẵng',890,N'Quận Hải Châu'),
   (N'Đà Nẵng',893,N'Quận Liên Chiểu')
GO
SELECT * FROM District

INSERT INTO Utilities(Utilities_ID, Utilities_Name) VALUES
   (1,N'Wifi Miễn Phí'),
   (2,N'Thanh Toán Bằng Thẻ')
GO
SELECT * FROM Utilities

INSERT INTO CoffeStore(City_Name, District_Name,Store_Name, Address, Tel, Utilities_Name) VALUES
   (N'TP Hồ Chí Minh',N'Quận 7',N'HIGHLANDS COFFEE PHẠM VĂN NGHỊ',N'R1-25 Phạm Văn Nghị, phường Tân Phong, Quận 7, Tp.HCM, Việt Nam',02871095449,N'Thanh Toán Bằng Thẻ'),
   (N'TP Hồ Chí Minh',N'Quận Thủ Đức',N'HIGHLANDS COFFEE 981 KHA VẠN CÂN',N'891 Kha Vạn Cân, Phường Linh Tây, Tp. Thủ Đức',02871092449,N'Wifi Miễn Phí'),
   (N'TP Hồ Chí Minh',N'Quận Tân Phú',N'HIGHLANDS COFFEE LÊ TRỌNG TẤN',N'49-57 Lê Trọng Tấn, phường Sơn Kỳ, quận Tân Phú, Tp.HCM, Việt Nam',02871054949,N'Wifi Miễn Phí'),
   (N'Hà Nội',N'Quận Hoàng Mai',N'HIGHLANDS COFFEE ECO LAKE VIEW',N'32 Đại Từ, Phường Đại Kim, Quận Hoàng Mai, Hà Nội',02456780059,N'Thanh Toán Bằng Thẻ'),
   (N'Hà Nội',N'Quận Hà Đông',N'HIGHLANDS COFFEE HYUNDAI HILLSMALL HÀ NỘI',N'Hyundai Hillsmall, 281 Khu Hà Trì, phường Hà Cầu, quận Hà Đông, Hà Nội',02456780012,N'Wifi Miễn Phí'),
   (N'Hà Nội',N'Quận Cầu Giấy',N'HIGHLANDS COFFEE 17T4 HOANG DAO THUY',N'17T4 Hoàng Đạo Thúy, phường Trung Hòa, quận Cầu Giấy, Hà Nội',02456780018,N'Wifi Miễn Phí'),
   (N'Đà Nẵng',N'Quận Hải Châu',N'HIGHLANDS COFFEE DNG AIRPORT ARRIVALS',N'62 Trần Quốc Toản, Quận Hải Châu, Tp. Đà Nẵng',02363832003,N'Thanh Toán Bằng Thẻ'),
   (N'Đà Nẵng',N'Quận Liên Chiểu',N'HIGHLANDS COFFEE 277 TON DUC THANG DNG',N'277 Tôn Đức Thắng, Phường Hòa Minh, Quận Liên Chiểu, Đà Nẵng',02367109778,N'Wifi Miễn Phí')
GO
SELECT * FROM CoffeStore
   


