USE [master]
GO
/****** Object:  Database [QLPH]    Script Date: 1/20/2017 3:33:45 PM ******/
CREATE DATABASE [QLPH] ON  PRIMARY 
( NAME = N'QLPH', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\QLPH.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLPH_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\QLPH_log.ldf' , SIZE = 5696KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLPH] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLPH].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLPH] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLPH] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLPH] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLPH] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLPH] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLPH] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLPH] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLPH] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLPH] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLPH] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLPH] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLPH] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLPH] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLPH] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLPH] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLPH] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLPH] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLPH] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLPH] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLPH] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLPH] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLPH] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLPH] SET RECOVERY FULL 
GO
ALTER DATABASE [QLPH] SET  MULTI_USER 
GO
ALTER DATABASE [QLPH] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLPH] SET DB_CHAINING OFF 
GO
USE [QLPH]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [QLPH]
GO
/****** Object:  Table [dbo].[GiangVien]    Script Date: 1/20/2017 3:33:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiangVien](
	[MaGV] [int] IDENTITY(1,1) NOT NULL,
	[TenGV] [nvarchar](50) NOT NULL,
	[Note] [nvarchar](50) NULL,
 CONSTRAINT [PK_GiangVien] PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LopHoc]    Script Date: 1/20/2017 3:33:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LopHoc](
	[MaLH] [int] IDENTITY(1,1) NOT NULL,
	[MaMon] [int] NOT NULL,
	[TenLop] [nvarchar](50) NOT NULL,
	[MaGV] [int] NOT NULL,
	[NgayBD] [date] NULL,
	[NgayKT] [date] NULL,
 CONSTRAINT [PK_LopHoc] PRIMARY KEY CLUSTERED 
(
	[MaLH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Mon]    Script Date: 1/20/2017 3:33:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mon](
	[MaMon] [int] IDENTITY(1,1) NOT NULL,
	[TenMon] [nvarchar](50) NOT NULL,
	[Note] [nvarchar](50) NULL,
 CONSTRAINT [PK_Mon] PRIMARY KEY CLUSTERED 
(
	[MaMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MuonPhong]    Script Date: 1/20/2017 3:33:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MuonPhong](
	[MaMP] [int] IDENTITY(1,1) NOT NULL,
	[TenNgMuon] [nvarchar](50) NOT NULL,
	[MSSV/GV] [nvarchar](50) NOT NULL,
	[Note] [nvarchar](50) NULL,
 CONSTRAINT [PK_MuonPhong] PRIMARY KEY CLUSTERED 
(
	[MaMP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Phong]    Script Date: 1/20/2017 3:33:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[MaPhong] [int] IDENTITY(1,1) NOT NULL,
	[TenPhong] [nvarchar](50) NOT NULL,
	[MayChieu] [bit] NOT NULL,
	[AmThanh] [bit] NOT NULL,
	[AnhSang] [bit] NOT NULL,
	[MayLanh] [bit] NOT NULL,
	[Ro] [bit] NOT NULL,
	[SucChua] [int] NOT NULL,
 CONSTRAINT [PK_Phong] PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tiet]    Script Date: 1/20/2017 3:33:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tiet](
	[MaTiet] [int] IDENTITY(1,1) NOT NULL,
	[TenTiet] [nvarchar](50) NOT NULL,
	[Ca] [int] NOT NULL,
 CONSTRAINT [PK_Tiet] PRIMARY KEY CLUSTERED 
(
	[MaTiet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TKBieu]    Script Date: 1/20/2017 3:33:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TKBieu](
	[MaPhong] [int] NOT NULL,
	[MaLH] [int] NOT NULL,
	[TietBD] [int] NOT NULL,
	[TietKT] [int] NOT NULL,
	[Ngay] [date] NOT NULL,
	[MaMP] [int] NULL,
	[MaTP] [int] NULL,
 CONSTRAINT [PK_TKBieu] PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC,
	[MaLH] ASC,
	[TietBD] ASC,
	[TietKT] ASC,
	[Ngay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TraPhong]    Script Date: 1/20/2017 3:33:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TraPhong](
	[MaTP] [int] IDENTITY(1,1) NOT NULL,
	[TenNgTra] [nvarchar](50) NULL,
	[MSSV/GV] [nvarchar](50) NULL,
 CONSTRAINT [PK_TraPhong] PRIMARY KEY CLUSTERED 
(
	[MaTP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[GiangVien] ON 

INSERT [dbo].[GiangVien] ([MaGV], [TenGV], [Note]) VALUES (1, N'Trống', NULL)
INSERT [dbo].[GiangVien] ([MaGV], [TenGV], [Note]) VALUES (2, N'Lê Thị B', NULL)
INSERT [dbo].[GiangVien] ([MaGV], [TenGV], [Note]) VALUES (3, N'Vũ Tuyết A', NULL)
INSERT [dbo].[GiangVien] ([MaGV], [TenGV], [Note]) VALUES (4, N'Trần Mạnh H', NULL)
INSERT [dbo].[GiangVien] ([MaGV], [TenGV], [Note]) VALUES (5, N'Nguyễn Trọng T', NULL)
INSERT [dbo].[GiangVien] ([MaGV], [TenGV], [Note]) VALUES (6, N'Trịnh Minh Ho', NULL)
INSERT [dbo].[GiangVien] ([MaGV], [TenGV], [Note]) VALUES (7, N'Lý Nguyễn Thanh H', NULL)
INSERT [dbo].[GiangVien] ([MaGV], [TenGV], [Note]) VALUES (8, N'Triệu Thảo V', NULL)
INSERT [dbo].[GiangVien] ([MaGV], [TenGV], [Note]) VALUES (9, N'Vũ Tuyết Hư', NULL)
INSERT [dbo].[GiangVien] ([MaGV], [TenGV], [Note]) VALUES (10, N'Võ Thanh Ha', NULL)
SET IDENTITY_INSERT [dbo].[GiangVien] OFF
SET IDENTITY_INSERT [dbo].[LopHoc] ON 

INSERT [dbo].[LopHoc] ([MaLH], [MaMon], [TenLop], [MaGV], [NgayBD], [NgayKT]) VALUES (1, 1, N'Trống', 1, CAST(N'2016-10-20' AS Date), CAST(N'2017-01-10' AS Date))
INSERT [dbo].[LopHoc] ([MaLH], [MaMon], [TenLop], [MaGV], [NgayBD], [NgayKT]) VALUES (2, 2, N'ITEC0002', 9, CAST(N'2016-10-21' AS Date), CAST(N'2017-01-15' AS Date))
INSERT [dbo].[LopHoc] ([MaLH], [MaMon], [TenLop], [MaGV], [NgayBD], [NgayKT]) VALUES (3, 9, N'ITEC0009', 7, CAST(N'2016-10-08' AS Date), CAST(N'2017-01-15' AS Date))
INSERT [dbo].[LopHoc] ([MaLH], [MaMon], [TenLop], [MaGV], [NgayBD], [NgayKT]) VALUES (4, 10, N'ITEC0010', 2, CAST(N'2016-10-07' AS Date), CAST(N'2017-01-13' AS Date))
INSERT [dbo].[LopHoc] ([MaLH], [MaMon], [TenLop], [MaGV], [NgayBD], [NgayKT]) VALUES (5, 6, N'ITEC0006', 4, CAST(N'2016-10-15' AS Date), CAST(N'2017-01-07' AS Date))
INSERT [dbo].[LopHoc] ([MaLH], [MaMon], [TenLop], [MaGV], [NgayBD], [NgayKT]) VALUES (6, 4, N'ITEC0004', 6, CAST(N'2016-10-11' AS Date), CAST(N'2017-01-08' AS Date))
INSERT [dbo].[LopHoc] ([MaLH], [MaMon], [TenLop], [MaGV], [NgayBD], [NgayKT]) VALUES (7, 5, N'ITEC0005', 7, CAST(N'2016-10-04' AS Date), CAST(N'2017-01-06' AS Date))
INSERT [dbo].[LopHoc] ([MaLH], [MaMon], [TenLop], [MaGV], [NgayBD], [NgayKT]) VALUES (8, 3, N'ITEC0003', 5, CAST(N'2016-10-19' AS Date), CAST(N'2017-01-19' AS Date))
INSERT [dbo].[LopHoc] ([MaLH], [MaMon], [TenLop], [MaGV], [NgayBD], [NgayKT]) VALUES (9, 7, N'ITEC0007', 3, CAST(N'2016-10-17' AS Date), CAST(N'2017-01-17' AS Date))
INSERT [dbo].[LopHoc] ([MaLH], [MaMon], [TenLop], [MaGV], [NgayBD], [NgayKT]) VALUES (10, 8, N'ITEC0008', 8, CAST(N'2016-10-21' AS Date), CAST(N'2017-01-18' AS Date))
SET IDENTITY_INSERT [dbo].[LopHoc] OFF
SET IDENTITY_INSERT [dbo].[Mon] ON 

INSERT [dbo].[Mon] ([MaMon], [TenMon], [Note]) VALUES (1, N'Trống', NULL)
INSERT [dbo].[Mon] ([MaMon], [TenMon], [Note]) VALUES (2, N'Kỹ Thuật Lập Trình', NULL)
INSERT [dbo].[Mon] ([MaMon], [TenMon], [Note]) VALUES (3, N'Cấu Trúc Dữ Liệu', NULL)
INSERT [dbo].[Mon] ([MaMon], [TenMon], [Note]) VALUES (4, N'Thuật Giải', NULL)
INSERT [dbo].[Mon] ([MaMon], [TenMon], [Note]) VALUES (5, N'Lập Trình Hướng Đối Tượng', NULL)
INSERT [dbo].[Mon] ([MaMon], [TenMon], [Note]) VALUES (6, N'Cơ Sở Dữ Liệu', NULL)
INSERT [dbo].[Mon] ([MaMon], [TenMon], [Note]) VALUES (7, N'Lập Trình Cơ Sở Dữ Liệu', NULL)
INSERT [dbo].[Mon] ([MaMon], [TenMon], [Note]) VALUES (8, N'Cơ Sở Dữ Liệu Nâng Cao', NULL)
INSERT [dbo].[Mon] ([MaMon], [TenMon], [Note]) VALUES (9, N'Lập Trình Giao Diện', NULL)
INSERT [dbo].[Mon] ([MaMon], [TenMon], [Note]) VALUES (10, N'Tin Học Ứng Dụng', NULL)
SET IDENTITY_INSERT [dbo].[Mon] OFF
SET IDENTITY_INSERT [dbo].[MuonPhong] ON 

INSERT [dbo].[MuonPhong] ([MaMP], [TenNgMuon], [MSSV/GV], [Note]) VALUES (1, N'Học Chính Quy', N'0000000000', N'')
INSERT [dbo].[MuonPhong] ([MaMP], [TenNgMuon], [MSSV/GV], [Note]) VALUES (2, N'Nguyễn Trọng Đại', N'1451010196', N'Họp')
INSERT [dbo].[MuonPhong] ([MaMP], [TenNgMuon], [MSSV/GV], [Note]) VALUES (3, N'Nguyễn Trọng Tài', N'1451010916', N'Sinh Hoạt CLB')
INSERT [dbo].[MuonPhong] ([MaMP], [TenNgMuon], [MSSV/GV], [Note]) VALUES (4, N'Nguyễn Trọng Yếu', N'1451010691', N'Đại Hội Đoàn')
INSERT [dbo].[MuonPhong] ([MaMP], [TenNgMuon], [MSSV/GV], [Note]) VALUES (5, N'Nguyễn Trọng Thương', N'1451010691', N'Chuyên Đề Sức Khỏe')
INSERT [dbo].[MuonPhong] ([MaMP], [TenNgMuon], [MSSV/GV], [Note]) VALUES (6, N'Nguyễn Trọng Lực', N'1451010169', N'Học Thuật')
SET IDENTITY_INSERT [dbo].[MuonPhong] OFF
SET IDENTITY_INSERT [dbo].[Phong] ON 

INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [MayChieu], [AmThanh], [AnhSang], [MayLanh], [Ro], [SucChua]) VALUES (1, N'P001', 1, 0, 1, 1, 1, 44)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [MayChieu], [AmThanh], [AnhSang], [MayLanh], [Ro], [SucChua]) VALUES (2, N'P002', 1, 1, 1, 1, 1, 40)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [MayChieu], [AmThanh], [AnhSang], [MayLanh], [Ro], [SucChua]) VALUES (3, N'P003', 0, 1, 1, 1, 1, 45)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [MayChieu], [AmThanh], [AnhSang], [MayLanh], [Ro], [SucChua]) VALUES (4, N'P004', 1, 0, 1, 1, 1, 48)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [MayChieu], [AmThanh], [AnhSang], [MayLanh], [Ro], [SucChua]) VALUES (5, N'P005', 1, 1, 0, 1, 1, 50)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [MayChieu], [AmThanh], [AnhSang], [MayLanh], [Ro], [SucChua]) VALUES (6, N'P006', 1, 1, 1, 1, 1, 40)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [MayChieu], [AmThanh], [AnhSang], [MayLanh], [Ro], [SucChua]) VALUES (7, N'P007', 1, 1, 1, 1, 1, 41)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [MayChieu], [AmThanh], [AnhSang], [MayLanh], [Ro], [SucChua]) VALUES (8, N'P008', 1, 1, 1, 1, 1, 42)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [MayChieu], [AmThanh], [AnhSang], [MayLanh], [Ro], [SucChua]) VALUES (9, N'P009', 1, 1, 1, 1, 1, 41)
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [MayChieu], [AmThanh], [AnhSang], [MayLanh], [Ro], [SucChua]) VALUES (10, N'Hội Trường', 1, 1, 1, 1, 1, 110)
SET IDENTITY_INSERT [dbo].[Phong] OFF
SET IDENTITY_INSERT [dbo].[Tiet] ON 

INSERT [dbo].[Tiet] ([MaTiet], [TenTiet], [Ca]) VALUES (1, N'Tiết 1', 1)
INSERT [dbo].[Tiet] ([MaTiet], [TenTiet], [Ca]) VALUES (2, N'Tiết 2', 1)
INSERT [dbo].[Tiet] ([MaTiet], [TenTiet], [Ca]) VALUES (3, N'Tiết 3', 1)
INSERT [dbo].[Tiet] ([MaTiet], [TenTiet], [Ca]) VALUES (4, N'Tiết 4', 2)
INSERT [dbo].[Tiet] ([MaTiet], [TenTiet], [Ca]) VALUES (5, N'Tiết 5', 2)
INSERT [dbo].[Tiet] ([MaTiet], [TenTiet], [Ca]) VALUES (6, N'Tiết 6', 2)
INSERT [dbo].[Tiet] ([MaTiet], [TenTiet], [Ca]) VALUES (7, N'Tiết 7', 3)
INSERT [dbo].[Tiet] ([MaTiet], [TenTiet], [Ca]) VALUES (8, N'Tiết 8', 3)
INSERT [dbo].[Tiet] ([MaTiet], [TenTiet], [Ca]) VALUES (9, N'Tiết 9', 3)
INSERT [dbo].[Tiet] ([MaTiet], [TenTiet], [Ca]) VALUES (10, N'Tiết 10', 4)
INSERT [dbo].[Tiet] ([MaTiet], [TenTiet], [Ca]) VALUES (11, N'Tiết 11', 4)
INSERT [dbo].[Tiet] ([MaTiet], [TenTiet], [Ca]) VALUES (12, N'Tiết 12', 4)
INSERT [dbo].[Tiet] ([MaTiet], [TenTiet], [Ca]) VALUES (13, N'Tiết 13', 5)
SET IDENTITY_INSERT [dbo].[Tiet] OFF
INSERT [dbo].[TKBieu] ([MaPhong], [MaLH], [TietBD], [TietKT], [Ngay], [MaMP], [MaTP]) VALUES (1, 1, 1, 6, CAST(N'2016-12-28' AS Date), 1, 4)
INSERT [dbo].[TKBieu] ([MaPhong], [MaLH], [TietBD], [TietKT], [Ngay], [MaMP], [MaTP]) VALUES (1, 2, 7, 12, CAST(N'2016-12-28' AS Date), 1, 3)
INSERT [dbo].[TKBieu] ([MaPhong], [MaLH], [TietBD], [TietKT], [Ngay], [MaMP], [MaTP]) VALUES (2, 3, 1, 6, CAST(N'2016-12-29' AS Date), 1, 1)
INSERT [dbo].[TKBieu] ([MaPhong], [MaLH], [TietBD], [TietKT], [Ngay], [MaMP], [MaTP]) VALUES (3, 4, 7, 12, CAST(N'2016-12-27' AS Date), 2, 5)
INSERT [dbo].[TKBieu] ([MaPhong], [MaLH], [TietBD], [TietKT], [Ngay], [MaMP], [MaTP]) VALUES (10, 1, 1, 12, CAST(N'2016-12-28' AS Date), 5, 1)
SET IDENTITY_INSERT [dbo].[TraPhong] ON 

INSERT [dbo].[TraPhong] ([MaTP], [TenNgTra], [MSSV/GV]) VALUES (1, N'Chưa Trả', N'0000000000')
INSERT [dbo].[TraPhong] ([MaTP], [TenNgTra], [MSSV/GV]) VALUES (2, N'Trịnh Minh Bạch', N'1451010061')
INSERT [dbo].[TraPhong] ([MaTP], [TenNgTra], [MSSV/GV]) VALUES (3, N'Trịnh Minh Giáo', N'1451010063')
INSERT [dbo].[TraPhong] ([MaTP], [TenNgTra], [MSSV/GV]) VALUES (4, N'Trịnh Minh Mẫn', N'1451010602')
INSERT [dbo].[TraPhong] ([MaTP], [TenNgTra], [MSSV/GV]) VALUES (5, N'Trịnh Minh Tinh', N'1451010062')
SET IDENTITY_INSERT [dbo].[TraPhong] OFF
ALTER TABLE [dbo].[LopHoc]  WITH CHECK ADD  CONSTRAINT [FK_LopHoc_GiangVien] FOREIGN KEY([MaGV])
REFERENCES [dbo].[GiangVien] ([MaGV])
GO
ALTER TABLE [dbo].[LopHoc] CHECK CONSTRAINT [FK_LopHoc_GiangVien]
GO
ALTER TABLE [dbo].[LopHoc]  WITH CHECK ADD  CONSTRAINT [FK_LopHoc_Mon] FOREIGN KEY([MaMon])
REFERENCES [dbo].[Mon] ([MaMon])
GO
ALTER TABLE [dbo].[LopHoc] CHECK CONSTRAINT [FK_LopHoc_Mon]
GO
ALTER TABLE [dbo].[TKBieu]  WITH CHECK ADD  CONSTRAINT [FK_TKBieu_LopHoc] FOREIGN KEY([MaLH])
REFERENCES [dbo].[LopHoc] ([MaLH])
GO
ALTER TABLE [dbo].[TKBieu] CHECK CONSTRAINT [FK_TKBieu_LopHoc]
GO
ALTER TABLE [dbo].[TKBieu]  WITH CHECK ADD  CONSTRAINT [FK_TKBieu_MuonPhong] FOREIGN KEY([MaMP])
REFERENCES [dbo].[MuonPhong] ([MaMP])
GO
ALTER TABLE [dbo].[TKBieu] CHECK CONSTRAINT [FK_TKBieu_MuonPhong]
GO
ALTER TABLE [dbo].[TKBieu]  WITH CHECK ADD  CONSTRAINT [FK_TKBieu_Phong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[Phong] ([MaPhong])
GO
ALTER TABLE [dbo].[TKBieu] CHECK CONSTRAINT [FK_TKBieu_Phong]
GO
ALTER TABLE [dbo].[TKBieu]  WITH CHECK ADD  CONSTRAINT [FK_TKBieu_Tiet] FOREIGN KEY([TietBD])
REFERENCES [dbo].[Tiet] ([MaTiet])
GO
ALTER TABLE [dbo].[TKBieu] CHECK CONSTRAINT [FK_TKBieu_Tiet]
GO
ALTER TABLE [dbo].[TKBieu]  WITH CHECK ADD  CONSTRAINT [FK_TKBieu_Tiet1] FOREIGN KEY([TietKT])
REFERENCES [dbo].[Tiet] ([MaTiet])
GO
ALTER TABLE [dbo].[TKBieu] CHECK CONSTRAINT [FK_TKBieu_Tiet1]
GO
ALTER TABLE [dbo].[TKBieu]  WITH CHECK ADD  CONSTRAINT [FK_TKBieu_TraPhong] FOREIGN KEY([MaTP])
REFERENCES [dbo].[TraPhong] ([MaTP])
GO
ALTER TABLE [dbo].[TKBieu] CHECK CONSTRAINT [FK_TKBieu_TraPhong]
GO
/****** Object:  StoredProcedure [dbo].[INS_MUON]    Script Date: 1/20/2017 3:33:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[INS_MUON] @ten nvarchar(50), @ms nvarchar(50), @not nvarchar(50)
AS
BEGIN
	INSERT INTO MuonPhong (TenNgMuon, [MSSV/GV], Note) VALUES (@ten, @ms, @not)
END

GO
/****** Object:  StoredProcedure [dbo].[INS_TKB]    Script Date: 1/20/2017 3:33:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[INS_TKB] @maphong int=0, @bd int=0, @kt int=0, @date nvarchar(20) , @lap int=0
AS
BEGIN
	DECLARE @i int = 0, @Ph int = 0
	SELECT @Ph = MAX(MaMP) FROM MuonPhong 
	while (@lap > @i)
	BEGIN
		INSERT INTO TKBieu (MaPhong, [MaLH], [TietBD], [TietKT], [Ngay], [MaMP], [MaTP]) VALUES (@maphong, 1, @bd, @kt, @date, @Ph, 1)
		set @date = dateadd(day, 7, @date)
		SET @i = @i + 1
	END
END

GO
/****** Object:  StoredProcedure [dbo].[QLPHRoomUpdate]    Script Date: 1/20/2017 3:33:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[QLPHRoomUpdate] @IDPhong int, @MC bit, @AT bit, @AS bit, @ML bit, @RO bit 
as
begin
	update Phong
	set MayChieu = @MC, AmThanh = @AT, AnhSang = @AS, MayLanh = @ML, RO = @RO
	where MaPhong like @IDPhong
end
GO
/****** Object:  StoredProcedure [dbo].[QLPHTKBUpdate]    Script Date: 1/20/2017 3:33:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[QLPHTKBUpdate] @IDPhong int, @TietBD int, @TietKT int, @Ngay Date, @TenTra nvarchar(50), @MaSo int 
as
begin
	if(not exists(select * from TraPhong where TenNgTra like @TenTra and @MaSo like [MSSV/GV]))
	begin 
		insert into TraPhong values(@TenTra,@MaSo)
		update TKBieu
		set MaTP = (select MAX(MaTP) from TraPhong)
		where MaPhong like @IDPhong and TietBD like @TietBD and TietKT like @TietKT and Ngay like @Ngay
	end
	else
	begin
	update TKBieu
		set MaTP = (select MaTP from TraPhong where TenNgTra like @TenTra and [MSSV/GV] like @MaSo)
		where MaPhong like @IDPhong and TietBD like @TietBD and TietKT like @TietKT and Ngay like @Ngay
	end
end
GO
USE [master]
GO
ALTER DATABASE [QLPH] SET  READ_WRITE 
GO
