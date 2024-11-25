USE [master]
GO
/****** Object:  Database [QLWebNgheNhac]    Script Date: 2/19/2024 4:29:40 PM ******/
CREATE DATABASE [QLWebNgheNhac]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLWebNgheNhac', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLWebNgheNhac.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLWebNgheNhac_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLWebNgheNhac_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QLWebNgheNhac] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLWebNgheNhac].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLWebNgheNhac] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLWebNgheNhac] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLWebNgheNhac] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLWebNgheNhac] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLWebNgheNhac] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLWebNgheNhac] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QLWebNgheNhac] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLWebNgheNhac] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLWebNgheNhac] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLWebNgheNhac] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLWebNgheNhac] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLWebNgheNhac] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLWebNgheNhac] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLWebNgheNhac] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLWebNgheNhac] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLWebNgheNhac] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLWebNgheNhac] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLWebNgheNhac] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLWebNgheNhac] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLWebNgheNhac] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLWebNgheNhac] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLWebNgheNhac] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLWebNgheNhac] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLWebNgheNhac] SET  MULTI_USER 
GO
ALTER DATABASE [QLWebNgheNhac] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLWebNgheNhac] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLWebNgheNhac] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLWebNgheNhac] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLWebNgheNhac] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLWebNgheNhac] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QLWebNgheNhac] SET QUERY_STORE = OFF
GO
USE [QLWebNgheNhac]
GO
/****** Object:  Table [dbo].[Album]    Script Date: 2/19/2024 4:29:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Album](
	[IdAlbum] [int] IDENTITY(1,1) NOT NULL,
	[TenAlbum] [nvarchar](255) NOT NULL,
	[HinhAlbum] [varchar](255) NULL,
	[IdCaSi] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdAlbum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BaiHat]    Script Date: 2/19/2024 4:29:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaiHat](
	[IdBaiHat] [int] IDENTITY(1,1) NOT NULL,
	[TenBaiHat] [nvarchar](255) NOT NULL,
	[LinkBaiHat] [varchar](255) NOT NULL,
	[HinhBaiHat] [varchar](255) NULL,
	[SoLanNghe] [int] NULL,
	[IdCaSi] [int] NULL,
	[IdTheLoai] [int] NULL,
	[IdAlbum] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdBaiHat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CaSi]    Script Date: 2/19/2024 4:29:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaSi](
	[IdCaSi] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](255) NOT NULL,
	[NgaySinh] [datetime] NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[GioiThieu] [nvarchar](255) NULL,
	[HinhCaSi] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCaSi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MyPlayList]    Script Date: 2/19/2024 4:29:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MyPlayList](
	[IdBaiHat] [int] NOT NULL,
	[IdPlayList] [int] NOT NULL,
	[hihi] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdBaiHat] ASC,
	[IdPlayList] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlayList]    Script Date: 2/19/2024 4:29:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlayList](
	[IdPlayList] [int] IDENTITY(1,1) NOT NULL,
	[TenPlayList] [nvarchar](255) NOT NULL,
	[HinhPlayList] [varchar](255) NULL,
	[MoTa] [nvarchar](255) NULL,
	[IdTaiKhoan] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPlayList] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 2/19/2024 4:29:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[IdTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](30) NOT NULL,
	[Email] [varchar](50) NULL,
	[HoTen] [nvarchar](255) NOT NULL,
	[MatKhau] [varchar](50) NOT NULL,
	[NgaySinh] [datetime] NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[SoDienThoai] [varchar](11) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[NgayDangKy] [datetime] NULL,
	[CheckTk] [bit] NULL,
	[HinhTaiKhoan] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 2/19/2024 4:29:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoai](
	[IdTheLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenTheLoai] [nvarchar](255) NOT NULL,
	[HinhTheLoai] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTheLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Album] ON 

INSERT [dbo].[Album] ([IdAlbum], [TenAlbum], [HinhAlbum], [IdCaSi]) VALUES (3, N'Chơi (Remix)', N'choi-hieuthuhai.jpg', 27)
INSERT [dbo].[Album] ([IdAlbum], [TenAlbum], [HinhAlbum], [IdCaSi]) VALUES (4, N'Tuyển tập nhũng bài rap hay của Karik', N'karik.jpg', 22)
SET IDENTITY_INSERT [dbo].[Album] OFF
GO
SET IDENTITY_INSERT [dbo].[BaiHat] ON 

INSERT [dbo].[BaiHat] ([IdBaiHat], [TenBaiHat], [LinkBaiHat], [HinhBaiHat], [SoLanNghe], [IdCaSi], [IdTheLoai], [IdAlbum]) VALUES (2, N'Glimpse Of Us', N'song1.mp3', N'Picture1.jpg', NULL, 8, 4, NULL)
INSERT [dbo].[BaiHat] ([IdBaiHat], [TenBaiHat], [LinkBaiHat], [HinhBaiHat], [SoLanNghe], [IdCaSi], [IdTheLoai], [IdAlbum]) VALUES (3, N'Taki taki', N'Taki Taki - DJ Snake_ Selena Gomez_ Ozun.mp3', N'Picture2.jpg', NULL, 9, 4, 3)
INSERT [dbo].[BaiHat] ([IdBaiHat], [TenBaiHat], [LinkBaiHat], [HinhBaiHat], [SoLanNghe], [IdCaSi], [IdTheLoai], [IdAlbum]) VALUES (4, N'Let Me Down Slowly ', N'LetMeDownSlowly-AlecBenjamin-6360069.mp3', N'Picture3.jpg', NULL, 10, 4, 3)
INSERT [dbo].[BaiHat] ([IdBaiHat], [TenBaiHat], [LinkBaiHat], [HinhBaiHat], [SoLanNghe], [IdCaSi], [IdTheLoai], [IdAlbum]) VALUES (5, N'See You Again', N'SeeYouAgainFeatCharliePuth-WizKhalifa-6426109.mp3', N'Picture4.png', NULL, 11, 4, 3)
INSERT [dbo].[BaiHat] ([IdBaiHat], [TenBaiHat], [LinkBaiHat], [HinhBaiHat], [SoLanNghe], [IdCaSi], [IdTheLoai], [IdAlbum]) VALUES (6, N'Dance Monkey', N'song3.mp3', N'Picture5.jpg', NULL, 12, 4, NULL)
INSERT [dbo].[BaiHat] ([IdBaiHat], [TenBaiHat], [LinkBaiHat], [HinhBaiHat], [SoLanNghe], [IdCaSi], [IdTheLoai], [IdAlbum]) VALUES (7, N'Symphony', N'Symphony-CleanBanditZaraLarsson-4822950.mp3', N'Picture6.jpg', NULL, 13, 4, 3)
INSERT [dbo].[BaiHat] ([IdBaiHat], [TenBaiHat], [LinkBaiHat], [HinhBaiHat], [SoLanNghe], [IdCaSi], [IdTheLoai], [IdAlbum]) VALUES (8, N'Way Back Home', N'song7.mp3', N'Picture7.jpg', NULL, 14, 4, NULL)
INSERT [dbo].[BaiHat] ([IdBaiHat], [TenBaiHat], [LinkBaiHat], [HinhBaiHat], [SoLanNghe], [IdCaSi], [IdTheLoai], [IdAlbum]) VALUES (9, N'Counting Stars', N'song1.mp3', N'Picture8.jpg', NULL, 15, 4, NULL)
INSERT [dbo].[BaiHat] ([IdBaiHat], [TenBaiHat], [LinkBaiHat], [HinhBaiHat], [SoLanNghe], [IdCaSi], [IdTheLoai], [IdAlbum]) VALUES (10, N'Waitting For Love ', N'WaittingForLoveDJAntonioRemix-AviciiMartinGarrix-3845187.mp3', N'Picture9.png', NULL, 16, 4, 3)
INSERT [dbo].[BaiHat] ([IdBaiHat], [TenBaiHat], [LinkBaiHat], [HinhBaiHat], [SoLanNghe], [IdCaSi], [IdTheLoai], [IdAlbum]) VALUES (12, N'Can We Kiss Forever', N'song6.mp3', N'Picture12.jpg', NULL, 19, 4, NULL)
INSERT [dbo].[BaiHat] ([IdBaiHat], [TenBaiHat], [LinkBaiHat], [HinhBaiHat], [SoLanNghe], [IdCaSi], [IdTheLoai], [IdAlbum]) VALUES (13, N'So far away', N'song10.mp3', N'Picture13.jpg', NULL, 20, 4, NULL)
INSERT [dbo].[BaiHat] ([IdBaiHat], [TenBaiHat], [LinkBaiHat], [HinhBaiHat], [SoLanNghe], [IdCaSi], [IdTheLoai], [IdAlbum]) VALUES (14, N'Chưa Bao Giờ', N'song6.mp3', N'Picture14.jpg', NULL, 21, 6, NULL)
INSERT [dbo].[BaiHat] ([IdBaiHat], [TenBaiHat], [LinkBaiHat], [HinhBaiHat], [SoLanNghe], [IdCaSi], [IdTheLoai], [IdAlbum]) VALUES (15, N'Vì mẹ anh bắt chia tay ', N'ViMeAnhBatChiaTayHieuSanRemix-MiuLeKarik-7532345.mp3', N'Picture15.jpg', NULL, 22, 6, 4)
INSERT [dbo].[BaiHat] ([IdBaiHat], [TenBaiHat], [LinkBaiHat], [HinhBaiHat], [SoLanNghe], [IdCaSi], [IdTheLoai], [IdAlbum]) VALUES (16, N'Có Chơi Có Chịu ', N'song4.mp3', N'Picture16.jpg', NULL, 22, 6, 4)
INSERT [dbo].[BaiHat] ([IdBaiHat], [TenBaiHat], [LinkBaiHat], [HinhBaiHat], [SoLanNghe], [IdCaSi], [IdTheLoai], [IdAlbum]) VALUES (17, N'1 phút ', N'song6.mp3', N'Picture17.jpg', NULL, 23, 6, NULL)
INSERT [dbo].[BaiHat] ([IdBaiHat], [TenBaiHat], [LinkBaiHat], [HinhBaiHat], [SoLanNghe], [IdCaSi], [IdTheLoai], [IdAlbum]) VALUES (18, N'90 60 90', N'song10.mp3', N'Picture18.jpg', NULL, 24, 6, NULL)
INSERT [dbo].[BaiHat] ([IdBaiHat], [TenBaiHat], [LinkBaiHat], [HinhBaiHat], [SoLanNghe], [IdCaSi], [IdTheLoai], [IdAlbum]) VALUES (19, N'Tháng Tư Là Lời Nói Dối Của Em', N'song4.mp3', N'Picture19.jpg', NULL, 25, 6, NULL)
INSERT [dbo].[BaiHat] ([IdBaiHat], [TenBaiHat], [LinkBaiHat], [HinhBaiHat], [SoLanNghe], [IdCaSi], [IdTheLoai], [IdAlbum]) VALUES (20, N'Trên Tình Bạn Dưới Tình Yêu', N'song7.mp3', N'Picture20.jpg', NULL, 26, 6, NULL)
INSERT [dbo].[BaiHat] ([IdBaiHat], [TenBaiHat], [LinkBaiHat], [HinhBaiHat], [SoLanNghe], [IdCaSi], [IdTheLoai], [IdAlbum]) VALUES (21, N'Ngủ một mình', N'NguMotMinh-HIEUTHUHAINegavKewtiie-8267763.mp3', N'Picture21.jpg', NULL, 27, 3, 3)
INSERT [dbo].[BaiHat] ([IdBaiHat], [TenBaiHat], [LinkBaiHat], [HinhBaiHat], [SoLanNghe], [IdCaSi], [IdTheLoai], [IdAlbum]) VALUES (22, N'Vệ tinh', N'VeTinh-HIEUTHUHAIHoangTonKewtiie-7730914.mp3', N'Picture22.jpg', NULL, 27, 3, 3)
INSERT [dbo].[BaiHat] ([IdBaiHat], [TenBaiHat], [LinkBaiHat], [HinhBaiHat], [SoLanNghe], [IdCaSi], [IdTheLoai], [IdAlbum]) VALUES (23, N'Cua', N'song6.mp3', N'Picture23.jpg', NULL, 27, 3, 3)
INSERT [dbo].[BaiHat] ([IdBaiHat], [TenBaiHat], [LinkBaiHat], [HinhBaiHat], [SoLanNghe], [IdCaSi], [IdTheLoai], [IdAlbum]) VALUES (24, N'Như Anh Đã Mong Chờ ', N'NhuAnhDaMongCho-HariWon-8246821.mp3', N'Picture24.jpg', NULL, 28, 3, 3)
INSERT [dbo].[BaiHat] ([IdBaiHat], [TenBaiHat], [LinkBaiHat], [HinhBaiHat], [SoLanNghe], [IdCaSi], [IdTheLoai], [IdAlbum]) VALUES (25, N'Sáng Mắt Chưa', N'SangMatChua-TrucNhan-6042213.mp3', N'Picture25.jpg', NULL, 29, 3, 3)
INSERT [dbo].[BaiHat] ([IdBaiHat], [TenBaiHat], [LinkBaiHat], [HinhBaiHat], [SoLanNghe], [IdCaSi], [IdTheLoai], [IdAlbum]) VALUES (26, N'Waiting for you', N'song2.mp3', N'Picture26.jpg', NULL, 30, 3, NULL)
INSERT [dbo].[BaiHat] ([IdBaiHat], [TenBaiHat], [LinkBaiHat], [HinhBaiHat], [SoLanNghe], [IdCaSi], [IdTheLoai], [IdAlbum]) VALUES (27, N'Buông', N'Buong-MONO-7736062.mp3', N'Picture27.jpg', NULL, 30, 3, 3)
INSERT [dbo].[BaiHat] ([IdBaiHat], [TenBaiHat], [LinkBaiHat], [HinhBaiHat], [SoLanNghe], [IdCaSi], [IdTheLoai], [IdAlbum]) VALUES (28, N'Bài Này Không Để Đi Diễn', N'BaiNayKhongDeDiDien-AnhTuAtus-8076045.mp3', N'Picture28.jpg', NULL, 31, 3, 3)
INSERT [dbo].[BaiHat] ([IdBaiHat], [TenBaiHat], [LinkBaiHat], [HinhBaiHat], [SoLanNghe], [IdCaSi], [IdTheLoai], [IdAlbum]) VALUES (29, N'Đế Vương ', N'song9.mp3', N'Picture29.jpg', NULL, 32, 3, NULL)
INSERT [dbo].[BaiHat] ([IdBaiHat], [TenBaiHat], [LinkBaiHat], [HinhBaiHat], [SoLanNghe], [IdCaSi], [IdTheLoai], [IdAlbum]) VALUES (30, N'Thanh Xuân ', N'ThanhXuan-DaLAB-5773854.mp3', N'Picture30.jpg', NULL, 33, 3, 3)
INSERT [dbo].[BaiHat] ([IdBaiHat], [TenBaiHat], [LinkBaiHat], [HinhBaiHat], [SoLanNghe], [IdCaSi], [IdTheLoai], [IdAlbum]) VALUES (31, N'Anh Tệ ', N'AnhTe-DatKaa-8195753.mp3', N'Picture31.jpg', NULL, 34, 3, 3)
INSERT [dbo].[BaiHat] ([IdBaiHat], [TenBaiHat], [LinkBaiHat], [HinhBaiHat], [SoLanNghe], [IdCaSi], [IdTheLoai], [IdAlbum]) VALUES (32, N'Bước Qua Nhau', N'song8.mp3', N'Picture32.jpg', NULL, 35, 3, NULL)
INSERT [dbo].[BaiHat] ([IdBaiHat], [TenBaiHat], [LinkBaiHat], [HinhBaiHat], [SoLanNghe], [IdCaSi], [IdTheLoai], [IdAlbum]) VALUES (33, N'Lời Có Cánh', N'LoiCoCanh-Osad-8082482.mp3', N'Picture33.jpg', NULL, 36, 3, 3)
INSERT [dbo].[BaiHat] ([IdBaiHat], [TenBaiHat], [LinkBaiHat], [HinhBaiHat], [SoLanNghe], [IdCaSi], [IdTheLoai], [IdAlbum]) VALUES (34, N'Đáp Án Cuối Cùng ', N'song6.mp3', N'Picture34.jpg', NULL, 37, 3, NULL)
INSERT [dbo].[BaiHat] ([IdBaiHat], [TenBaiHat], [LinkBaiHat], [HinhBaiHat], [SoLanNghe], [IdCaSi], [IdTheLoai], [IdAlbum]) VALUES (35, N'Sao Cũng Được', N'song10.mp3', N'Picture35.jpg', NULL, 38, 3, NULL)
INSERT [dbo].[BaiHat] ([IdBaiHat], [TenBaiHat], [LinkBaiHat], [HinhBaiHat], [SoLanNghe], [IdCaSi], [IdTheLoai], [IdAlbum]) VALUES (36, N'CONG', N'CONG-TocTien-8178821.mp3', N'Picture36.jpg', NULL, 24, 3, 3)
INSERT [dbo].[BaiHat] ([IdBaiHat], [TenBaiHat], [LinkBaiHat], [HinhBaiHat], [SoLanNghe], [IdCaSi], [IdTheLoai], [IdAlbum]) VALUES (37, N'Đừng Bắt Anh Mạnh Mẽ ', N'DungBatAnhManhMeRemake-HoQuangHieu-8082449.mp3', N'Picture37.jpg', NULL, 39, 3, 3)
INSERT [dbo].[BaiHat] ([IdBaiHat], [TenBaiHat], [LinkBaiHat], [HinhBaiHat], [SoLanNghe], [IdCaSi], [IdTheLoai], [IdAlbum]) VALUES (38, N'Ừ! Em Xin Lỗi', N'UEmXinLoi-HoangYenChibi-8083102.mp3', N'Picture38.jpg', NULL, 40, 3, 3)
INSERT [dbo].[BaiHat] ([IdBaiHat], [TenBaiHat], [LinkBaiHat], [HinhBaiHat], [SoLanNghe], [IdCaSi], [IdTheLoai], [IdAlbum]) VALUES (39, N'Cô Đơn Trên Sofa', N'song4.mp3', N'Picture39.jpg', NULL, 41, 3, NULL)
INSERT [dbo].[BaiHat] ([IdBaiHat], [TenBaiHat], [LinkBaiHat], [HinhBaiHat], [SoLanNghe], [IdCaSi], [IdTheLoai], [IdAlbum]) VALUES (40, N'Cơn mưa xa dần', N'ConMuaXaDan-SonTungMTP-8033250.mp3', N'Picture40.jpg', NULL, 42, 3, 3)
INSERT [dbo].[BaiHat] ([IdBaiHat], [TenBaiHat], [LinkBaiHat], [HinhBaiHat], [SoLanNghe], [IdCaSi], [IdTheLoai], [IdAlbum]) VALUES (43, N'Thứ anh cần là nụ cười của em', N'song10.mp3', N'Picture33.jpg', NULL, 8, 3, 3)
INSERT [dbo].[BaiHat] ([IdBaiHat], [TenBaiHat], [LinkBaiHat], [HinhBaiHat], [SoLanNghe], [IdCaSi], [IdTheLoai], [IdAlbum]) VALUES (44, N'132 ', N'song1.mp3', N'Picture33.jpg', NULL, 51, 4, 3)
SET IDENTITY_INSERT [dbo].[BaiHat] OFF
GO
SET IDENTITY_INSERT [dbo].[CaSi] ON 

INSERT [dbo].[CaSi] ([IdCaSi], [HoTen], [NgaySinh], [GioiTinh], [GioiThieu], [HinhCaSi]) VALUES (8, N'Joji', NULL, N'Nam', NULL, N'Picture1.jpg')
INSERT [dbo].[CaSi] ([IdCaSi], [HoTen], [NgaySinh], [GioiTinh], [GioiThieu], [HinhCaSi]) VALUES (9, N'Dj Snake', NULL, N'Nam', NULL, NULL)
INSERT [dbo].[CaSi] ([IdCaSi], [HoTen], [NgaySinh], [GioiTinh], [GioiThieu], [HinhCaSi]) VALUES (10, N'Alec Benjamin', NULL, N'Nam', NULL, NULL)
INSERT [dbo].[CaSi] ([IdCaSi], [HoTen], [NgaySinh], [GioiTinh], [GioiThieu], [HinhCaSi]) VALUES (11, N'Wiz Khalifa', NULL, N'Nam', NULL, NULL)
INSERT [dbo].[CaSi] ([IdCaSi], [HoTen], [NgaySinh], [GioiTinh], [GioiThieu], [HinhCaSi]) VALUES (12, N'Tones', NULL, N'Nam', NULL, NULL)
INSERT [dbo].[CaSi] ([IdCaSi], [HoTen], [NgaySinh], [GioiTinh], [GioiThieu], [HinhCaSi]) VALUES (13, N'Clean Bandit', NULL, N'Nam', NULL, NULL)
INSERT [dbo].[CaSi] ([IdCaSi], [HoTen], [NgaySinh], [GioiTinh], [GioiThieu], [HinhCaSi]) VALUES (14, N'Shaun', NULL, N'Nam', NULL, NULL)
INSERT [dbo].[CaSi] ([IdCaSi], [HoTen], [NgaySinh], [GioiTinh], [GioiThieu], [HinhCaSi]) VALUES (15, N'One Republic', NULL, N'Nam', NULL, NULL)
INSERT [dbo].[CaSi] ([IdCaSi], [HoTen], [NgaySinh], [GioiTinh], [GioiThieu], [HinhCaSi]) VALUES (16, N'Avicii', NULL, N'Nam', NULL, NULL)
INSERT [dbo].[CaSi] ([IdCaSi], [HoTen], [NgaySinh], [GioiTinh], [GioiThieu], [HinhCaSi]) VALUES (17, N'Sia', NULL, N'Nam', NULL, NULL)
INSERT [dbo].[CaSi] ([IdCaSi], [HoTen], [NgaySinh], [GioiTinh], [GioiThieu], [HinhCaSi]) VALUES (18, N'Slander, Dylan Matthew', NULL, N'Nam', NULL, NULL)
INSERT [dbo].[CaSi] ([IdCaSi], [HoTen], [NgaySinh], [GioiTinh], [GioiThieu], [HinhCaSi]) VALUES (19, N'Kina', NULL, N'Nam', NULL, NULL)
INSERT [dbo].[CaSi] ([IdCaSi], [HoTen], [NgaySinh], [GioiTinh], [GioiThieu], [HinhCaSi]) VALUES (20, N'Martin Garrix', NULL, N'Nam', NULL, NULL)
INSERT [dbo].[CaSi] ([IdCaSi], [HoTen], [NgaySinh], [GioiTinh], [GioiThieu], [HinhCaSi]) VALUES (21, N'Trung Quân', NULL, N'Nam', NULL, NULL)
INSERT [dbo].[CaSi] ([IdCaSi], [HoTen], [NgaySinh], [GioiTinh], [GioiThieu], [HinhCaSi]) VALUES (22, N'Karik', NULL, N'Nam', NULL, NULL)
INSERT [dbo].[CaSi] ([IdCaSi], [HoTen], [NgaySinh], [GioiTinh], [GioiThieu], [HinhCaSi]) VALUES (23, N'Andiez', NULL, N'Nam', NULL, NULL)
INSERT [dbo].[CaSi] ([IdCaSi], [HoTen], [NgaySinh], [GioiTinh], [GioiThieu], [HinhCaSi]) VALUES (24, N'Tóc Tiên', NULL, N'Nam', NULL, NULL)
INSERT [dbo].[CaSi] ([IdCaSi], [HoTen], [NgaySinh], [GioiTinh], [GioiThieu], [HinhCaSi]) VALUES (25, N'Hà Anh Tuấn ', NULL, N'Nam', NULL, NULL)
INSERT [dbo].[CaSi] ([IdCaSi], [HoTen], [NgaySinh], [GioiTinh], [GioiThieu], [HinhCaSi]) VALUES (26, N'Min', NULL, N'Nam', NULL, NULL)
INSERT [dbo].[CaSi] ([IdCaSi], [HoTen], [NgaySinh], [GioiTinh], [GioiThieu], [HinhCaSi]) VALUES (27, N'HIEUTHUHAI', NULL, N'Nam', N'HIEUTHUHAI (Hiếu Thứ Hai) tên thật là Trần Minh Hiếu, là nam rapper trẻ người Việt Nam.', N'hieuthuhai.jpg')
INSERT [dbo].[CaSi] ([IdCaSi], [HoTen], [NgaySinh], [GioiTinh], [GioiThieu], [HinhCaSi]) VALUES (28, N'Hari Won ', NULL, N'Nam', NULL, NULL)
INSERT [dbo].[CaSi] ([IdCaSi], [HoTen], [NgaySinh], [GioiTinh], [GioiThieu], [HinhCaSi]) VALUES (29, N'Trúc Nhân', NULL, N'Nam', NULL, NULL)
INSERT [dbo].[CaSi] ([IdCaSi], [HoTen], [NgaySinh], [GioiTinh], [GioiThieu], [HinhCaSi]) VALUES (30, N'MONO', NULL, N'Nam', NULL, NULL)
INSERT [dbo].[CaSi] ([IdCaSi], [HoTen], [NgaySinh], [GioiTinh], [GioiThieu], [HinhCaSi]) VALUES (31, N'Anh Tú Atus', NULL, N'Nam', NULL, NULL)
INSERT [dbo].[CaSi] ([IdCaSi], [HoTen], [NgaySinh], [GioiTinh], [GioiThieu], [HinhCaSi]) VALUES (32, N'Đình Dũng', NULL, N'Nam', NULL, NULL)
INSERT [dbo].[CaSi] ([IdCaSi], [HoTen], [NgaySinh], [GioiTinh], [GioiThieu], [HinhCaSi]) VALUES (33, N'Da LAB ', NULL, N'Nam', NULL, NULL)
INSERT [dbo].[CaSi] ([IdCaSi], [HoTen], [NgaySinh], [GioiTinh], [GioiThieu], [HinhCaSi]) VALUES (34, N'DatKaa', NULL, N'Nam', NULL, NULL)
INSERT [dbo].[CaSi] ([IdCaSi], [HoTen], [NgaySinh], [GioiTinh], [GioiThieu], [HinhCaSi]) VALUES (35, N'Vũ', NULL, N'Nam', NULL, NULL)
INSERT [dbo].[CaSi] ([IdCaSi], [HoTen], [NgaySinh], [GioiTinh], [GioiThieu], [HinhCaSi]) VALUES (36, N'Osad', NULL, N'Nam', NULL, NULL)
INSERT [dbo].[CaSi] ([IdCaSi], [HoTen], [NgaySinh], [GioiTinh], [GioiThieu], [HinhCaSi]) VALUES (37, N'Quân A.P', NULL, N'Nam', NULL, NULL)
INSERT [dbo].[CaSi] ([IdCaSi], [HoTen], [NgaySinh], [GioiTinh], [GioiThieu], [HinhCaSi]) VALUES (38, N'Thành Đạt ', NULL, N'Nam', NULL, NULL)
INSERT [dbo].[CaSi] ([IdCaSi], [HoTen], [NgaySinh], [GioiTinh], [GioiThieu], [HinhCaSi]) VALUES (39, N'Hồ Quang Hiếu ', NULL, N'Nam', NULL, NULL)
INSERT [dbo].[CaSi] ([IdCaSi], [HoTen], [NgaySinh], [GioiTinh], [GioiThieu], [HinhCaSi]) VALUES (40, N'Hoàng Yến Chibi', NULL, N'Nam', NULL, NULL)
INSERT [dbo].[CaSi] ([IdCaSi], [HoTen], [NgaySinh], [GioiTinh], [GioiThieu], [HinhCaSi]) VALUES (41, N'Hồ Ngọc Hà', NULL, N'Nam', NULL, NULL)
INSERT [dbo].[CaSi] ([IdCaSi], [HoTen], [NgaySinh], [GioiTinh], [GioiThieu], [HinhCaSi]) VALUES (42, N'Sơn Tùng M-TP', NULL, N'Nam', NULL, NULL)
INSERT [dbo].[CaSi] ([IdCaSi], [HoTen], [NgaySinh], [GioiTinh], [GioiThieu], [HinhCaSi]) VALUES (43, N'GREY D', NULL, N'Nam', NULL, NULL)
INSERT [dbo].[CaSi] ([IdCaSi], [HoTen], [NgaySinh], [GioiTinh], [GioiThieu], [HinhCaSi]) VALUES (44, N'Bích Phương', NULL, N'Nam', NULL, NULL)
INSERT [dbo].[CaSi] ([IdCaSi], [HoTen], [NgaySinh], [GioiTinh], [GioiThieu], [HinhCaSi]) VALUES (45, N'Quách Thành Danh', NULL, N'Nam', NULL, NULL)
INSERT [dbo].[CaSi] ([IdCaSi], [HoTen], [NgaySinh], [GioiTinh], [GioiThieu], [HinhCaSi]) VALUES (46, N'Đinh Hương', NULL, N'Nam', NULL, NULL)
INSERT [dbo].[CaSi] ([IdCaSi], [HoTen], [NgaySinh], [GioiTinh], [GioiThieu], [HinhCaSi]) VALUES (47, N'Hakoota Dũng Hà', NULL, N'Nam', NULL, NULL)
INSERT [dbo].[CaSi] ([IdCaSi], [HoTen], [NgaySinh], [GioiTinh], [GioiThieu], [HinhCaSi]) VALUES (48, N'Duy Khiêm Ngố', NULL, N'Nam', NULL, NULL)
INSERT [dbo].[CaSi] ([IdCaSi], [HoTen], [NgaySinh], [GioiTinh], [GioiThieu], [HinhCaSi]) VALUES (49, N'Chi Pu', NULL, N'Nam', NULL, NULL)
INSERT [dbo].[CaSi] ([IdCaSi], [HoTen], [NgaySinh], [GioiTinh], [GioiThieu], [HinhCaSi]) VALUES (50, N'Hương Tràm', NULL, N'Nam', NULL, NULL)
INSERT [dbo].[CaSi] ([IdCaSi], [HoTen], [NgaySinh], [GioiTinh], [GioiThieu], [HinhCaSi]) VALUES (51, N'Đức Phúc', NULL, N'Nam', NULL, NULL)
INSERT [dbo].[CaSi] ([IdCaSi], [HoTen], [NgaySinh], [GioiTinh], [GioiThieu], [HinhCaSi]) VALUES (52, N'Sĩ Thanh', NULL, N'Nam', NULL, NULL)
INSERT [dbo].[CaSi] ([IdCaSi], [HoTen], [NgaySinh], [GioiTinh], [GioiThieu], [HinhCaSi]) VALUES (53, N'Noo Phước Thịnh', NULL, N'Nam', NULL, NULL)
INSERT [dbo].[CaSi] ([IdCaSi], [HoTen], [NgaySinh], [GioiTinh], [GioiThieu], [HinhCaSi]) VALUES (54, N'Phùng Khánh Linh', NULL, N'Nữ', NULL, NULL)
SET IDENTITY_INSERT [dbo].[CaSi] OFF
GO
INSERT [dbo].[MyPlayList] ([IdBaiHat], [IdPlayList], [hihi]) VALUES (5, 163, N'null')
INSERT [dbo].[MyPlayList] ([IdBaiHat], [IdPlayList], [hihi]) VALUES (8, 157, N'null')
INSERT [dbo].[MyPlayList] ([IdBaiHat], [IdPlayList], [hihi]) VALUES (16, 158, N'null')
INSERT [dbo].[MyPlayList] ([IdBaiHat], [IdPlayList], [hihi]) VALUES (19, 157, N'null')
INSERT [dbo].[MyPlayList] ([IdBaiHat], [IdPlayList], [hihi]) VALUES (23, 157, N'null')
INSERT [dbo].[MyPlayList] ([IdBaiHat], [IdPlayList], [hihi]) VALUES (24, 164, N'null')
INSERT [dbo].[MyPlayList] ([IdBaiHat], [IdPlayList], [hihi]) VALUES (25, 163, N'null')
INSERT [dbo].[MyPlayList] ([IdBaiHat], [IdPlayList], [hihi]) VALUES (27, 157, N'null')
INSERT [dbo].[MyPlayList] ([IdBaiHat], [IdPlayList], [hihi]) VALUES (28, 158, N'null')
INSERT [dbo].[MyPlayList] ([IdBaiHat], [IdPlayList], [hihi]) VALUES (29, 164, N'null')
INSERT [dbo].[MyPlayList] ([IdBaiHat], [IdPlayList], [hihi]) VALUES (34, 158, N'null')
INSERT [dbo].[MyPlayList] ([IdBaiHat], [IdPlayList], [hihi]) VALUES (34, 163, N'null')
INSERT [dbo].[MyPlayList] ([IdBaiHat], [IdPlayList], [hihi]) VALUES (35, 157, N'null')
INSERT [dbo].[MyPlayList] ([IdBaiHat], [IdPlayList], [hihi]) VALUES (37, 157, N'null')
INSERT [dbo].[MyPlayList] ([IdBaiHat], [IdPlayList], [hihi]) VALUES (37, 161, N'null')
INSERT [dbo].[MyPlayList] ([IdBaiHat], [IdPlayList], [hihi]) VALUES (38, 164, N'null')
INSERT [dbo].[MyPlayList] ([IdBaiHat], [IdPlayList], [hihi]) VALUES (44, 164, N'null')
GO
SET IDENTITY_INSERT [dbo].[PlayList] ON 

INSERT [dbo].[PlayList] ([IdPlayList], [TenPlayList], [HinhPlayList], [MoTa], [IdTaiKhoan]) VALUES (135, N'Danh sách nhạc của tui #0', N'user_primary.png', NULL, 7)
INSERT [dbo].[PlayList] ([IdPlayList], [TenPlayList], [HinhPlayList], [MoTa], [IdTaiKhoan]) VALUES (157, N'Nhạc của Tuấn Đào', N'hinh-nen-may-tinh-dep-3.jpg', N'Nhạc quá hay', 2)
INSERT [dbo].[PlayList] ([IdPlayList], [TenPlayList], [HinhPlayList], [MoTa], [IdTaiKhoan]) VALUES (158, N'Danh sách nhạc của tôi #1', N'ds.jpg', NULL, 2)
INSERT [dbo].[PlayList] ([IdPlayList], [TenPlayList], [HinhPlayList], [MoTa], [IdTaiKhoan]) VALUES (159, N'Danh sách nhạc của tôi #2', N'user_primary.png', NULL, 2)
INSERT [dbo].[PlayList] ([IdPlayList], [TenPlayList], [HinhPlayList], [MoTa], [IdTaiKhoan]) VALUES (160, N'Danh sách nhạc của tôi #3', N'user_primary.png', NULL, 2)
INSERT [dbo].[PlayList] ([IdPlayList], [TenPlayList], [HinhPlayList], [MoTa], [IdTaiKhoan]) VALUES (161, N'Danh sách nhạc của tôi #0', N'user_primary.png', NULL, 12)
INSERT [dbo].[PlayList] ([IdPlayList], [TenPlayList], [HinhPlayList], [MoTa], [IdTaiKhoan]) VALUES (163, N'Danh sách nhạc của tôi #1', N'ds.jpg', NULL, 13)
INSERT [dbo].[PlayList] ([IdPlayList], [TenPlayList], [HinhPlayList], [MoTa], [IdTaiKhoan]) VALUES (164, N'ạkfhsd', N'ds.jpg', NULL, 14)
INSERT [dbo].[PlayList] ([IdPlayList], [TenPlayList], [HinhPlayList], [MoTa], [IdTaiKhoan]) VALUES (165, N'Danh sách nhạc của tôi #1', N'user_primary.png', NULL, 14)
INSERT [dbo].[PlayList] ([IdPlayList], [TenPlayList], [HinhPlayList], [MoTa], [IdTaiKhoan]) VALUES (166, N'Danh sách nhạc của tôi #2', N'user_primary.png', NULL, 14)
INSERT [dbo].[PlayList] ([IdPlayList], [TenPlayList], [HinhPlayList], [MoTa], [IdTaiKhoan]) VALUES (167, N'Danh sách nhạc của tôi #3', N'user_primary.png', NULL, 14)
INSERT [dbo].[PlayList] ([IdPlayList], [TenPlayList], [HinhPlayList], [MoTa], [IdTaiKhoan]) VALUES (168, N'Danh sách nhạc của tôi #4', N'user_primary.png', NULL, 14)
INSERT [dbo].[PlayList] ([IdPlayList], [TenPlayList], [HinhPlayList], [MoTa], [IdTaiKhoan]) VALUES (169, N'Danh sách nhạc của tôi #5', N'user_primary.png', NULL, 14)
INSERT [dbo].[PlayList] ([IdPlayList], [TenPlayList], [HinhPlayList], [MoTa], [IdTaiKhoan]) VALUES (170, N'Danh sách nhạc của tôi #6', N'user_primary.png', NULL, 14)
SET IDENTITY_INSERT [dbo].[PlayList] OFF
GO
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([IdTaiKhoan], [Username], [Email], [HoTen], [MatKhau], [NgaySinh], [GioiTinh], [SoDienThoai], [DiaChi], [NgayDangKy], [CheckTk], [HinhTaiKhoan]) VALUES (2, N'admin123', N'buinguyennhatphi@gmail.com', N'Bùi Nguyễn Nhật Phi', N'88268826', CAST(N'2023-01-18T00:00:00.000' AS DateTime), N'Nam', N'0909900008', N'Hồ Chí Minh', NULL, 1, N'Picture38.jpg')
INSERT [dbo].[TaiKhoan] ([IdTaiKhoan], [Username], [Email], [HoTen], [MatKhau], [NgaySinh], [GioiTinh], [SoDienThoai], [DiaChi], [NgayDangKy], [CheckTk], [HinhTaiKhoan]) VALUES (7, N'chuongluong', N'chuongluong8826848@gmail.com', N'Lương Sĩ Cương', N'321321', NULL, N'Nam', N'0909900008', N'Hà Nội', CAST(N'2022-11-27T10:16:12.000' AS DateTime), NULL, N'Picture33.jpg')
INSERT [dbo].[TaiKhoan] ([IdTaiKhoan], [Username], [Email], [HoTen], [MatKhau], [NgaySinh], [GioiTinh], [SoDienThoai], [DiaChi], [NgayDangKy], [CheckTk], [HinhTaiKhoan]) VALUES (8, N'nhathao123', N'nhathao@gmail.com', N'Nguyễn Nhật Hào', N'123123', NULL, NULL, NULL, NULL, CAST(N'2022-12-01T15:06:00.393' AS DateTime), NULL, NULL)
INSERT [dbo].[TaiKhoan] ([IdTaiKhoan], [Username], [Email], [HoTen], [MatKhau], [NgaySinh], [GioiTinh], [SoDienThoai], [DiaChi], [NgayDangKy], [CheckTk], [HinhTaiKhoan]) VALUES (9, N'gamcoc', N'gamcoc123@gmail.com', N'Châu Chí Vinh', N'123123', NULL, NULL, NULL, NULL, CAST(N'2022-12-01T15:06:16.030' AS DateTime), NULL, NULL)
INSERT [dbo].[TaiKhoan] ([IdTaiKhoan], [Username], [Email], [HoTen], [MatKhau], [NgaySinh], [GioiTinh], [SoDienThoai], [DiaChi], [NgayDangKy], [CheckTk], [HinhTaiKhoan]) VALUES (10, N'chaugiabao123', N'giabao123@gmail.com', N'Châu Gia Bảo', N'88268826', NULL, NULL, NULL, NULL, CAST(N'2022-12-01T15:06:25.263' AS DateTime), NULL, NULL)
INSERT [dbo].[TaiKhoan] ([IdTaiKhoan], [Username], [Email], [HoTen], [MatKhau], [NgaySinh], [GioiTinh], [SoDienThoai], [DiaChi], [NgayDangKy], [CheckTk], [HinhTaiKhoan]) VALUES (11, N'nguyenquoc', N'chauphannguyenquoc123@gmail.com', N'Châu Phan Nguyên Quốc', N'123123', NULL, N'Nam', NULL, N'Hà Nội', CAST(N'2023-01-31T18:52:16.000' AS DateTime), NULL, N'Picture34.jpg')
INSERT [dbo].[TaiKhoan] ([IdTaiKhoan], [Username], [Email], [HoTen], [MatKhau], [NgaySinh], [GioiTinh], [SoDienThoai], [DiaChi], [NgayDangKy], [CheckTk], [HinhTaiKhoan]) VALUES (12, N'anhkiet123', N'anhkiet123@gmail.com', N'Nguyễn Đình Anh Kiệt', N'123123', CAST(N'2023-05-31T00:00:00.000' AS DateTime), N'Nam', N'0909900004', N'Hồ Chí Minh', CAST(N'2023-06-19T21:12:57.000' AS DateTime), NULL, N'Screenshot 2023-03-20 201726.png')
INSERT [dbo].[TaiKhoan] ([IdTaiKhoan], [Username], [Email], [HoTen], [MatKhau], [NgaySinh], [GioiTinh], [SoDienThoai], [DiaChi], [NgayDangKy], [CheckTk], [HinhTaiKhoan]) VALUES (13, N'admin1234', N'zingmp8826@gmail.com', N'admin1234', N'123', NULL, NULL, NULL, NULL, CAST(N'2023-08-03T00:23:12.037' AS DateTime), NULL, NULL)
INSERT [dbo].[TaiKhoan] ([IdTaiKhoan], [Username], [Email], [HoTen], [MatKhau], [NgaySinh], [GioiTinh], [SoDienThoai], [DiaChi], [NgayDangKy], [CheckTk], [HinhTaiKhoan]) VALUES (14, N'abc', N'zingmp8826@gmail.com', N'abc', N'123', NULL, NULL, NULL, NULL, CAST(N'2023-08-05T15:42:12.650' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
GO
SET IDENTITY_INSERT [dbo].[TheLoai] ON 

INSERT [dbo].[TheLoai] ([IdTheLoai], [TenTheLoai], [HinhTheLoai]) VALUES (3, N'Nhạc Trẻ', NULL)
INSERT [dbo].[TheLoai] ([IdTheLoai], [TenTheLoai], [HinhTheLoai]) VALUES (4, N'US, UK', NULL)
INSERT [dbo].[TheLoai] ([IdTheLoai], [TenTheLoai], [HinhTheLoai]) VALUES (6, N'Nhạc Việt', NULL)
SET IDENTITY_INSERT [dbo].[TheLoai] OFF
GO
ALTER TABLE [dbo].[Album]  WITH CHECK ADD FOREIGN KEY([IdCaSi])
REFERENCES [dbo].[CaSi] ([IdCaSi])
GO
ALTER TABLE [dbo].[BaiHat]  WITH CHECK ADD FOREIGN KEY([IdAlbum])
REFERENCES [dbo].[Album] ([IdAlbum])
GO
ALTER TABLE [dbo].[BaiHat]  WITH CHECK ADD FOREIGN KEY([IdCaSi])
REFERENCES [dbo].[CaSi] ([IdCaSi])
GO
ALTER TABLE [dbo].[BaiHat]  WITH CHECK ADD FOREIGN KEY([IdTheLoai])
REFERENCES [dbo].[TheLoai] ([IdTheLoai])
GO
ALTER TABLE [dbo].[MyPlayList]  WITH CHECK ADD FOREIGN KEY([IdBaiHat])
REFERENCES [dbo].[BaiHat] ([IdBaiHat])
GO
ALTER TABLE [dbo].[MyPlayList]  WITH CHECK ADD FOREIGN KEY([IdPlayList])
REFERENCES [dbo].[PlayList] ([IdPlayList])
GO
ALTER TABLE [dbo].[PlayList]  WITH CHECK ADD FOREIGN KEY([IdTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([IdTaiKhoan])
GO
USE [master]
GO
ALTER DATABASE [QLWebNgheNhac] SET  READ_WRITE 
GO
