USE [master]
GO
CREATE DATABASE [QLPhongTro]
ALTER DATABASE [QLPhongTro] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLPhongTro].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [QLPhongTro] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [QLPhongTro] SET ANSI_NULLS OFF
GO
ALTER DATABASE [QLPhongTro] SET ANSI_PADDING OFF
GO
ALTER DATABASE [QLPhongTro] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [QLPhongTro] SET ARITHABORT OFF
GO
ALTER DATABASE [QLPhongTro] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [QLPhongTro] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [QLPhongTro] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [QLPhongTro] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [QLPhongTro] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [QLPhongTro] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [QLPhongTro] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [QLPhongTro] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [QLPhongTro] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [QLPhongTro] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [QLPhongTro] SET  DISABLE_BROKER
GO
ALTER DATABASE [QLPhongTro] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [QLPhongTro] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [QLPhongTro] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [QLPhongTro] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [QLPhongTro] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [QLPhongTro] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [QLPhongTro] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [QLPhongTro] SET  READ_WRITE
GO
ALTER DATABASE [QLPhongTro] SET RECOVERY SIMPLE
GO
ALTER DATABASE [QLPhongTro] SET  MULTI_USER
GO
ALTER DATABASE [QLPhongTro] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [QLPhongTro] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLPhongTro', N'ON'
GO
USE [QLPhongTro]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[LoaiPhong](
	[MaLoaiPhong] [nchar](10) NOT NULL,
	[TenLoaiPhong] [nvarchar](50) NULL,
	[DienTichPhong] [float] NULL,
	[DonGia] [float] NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiPhong] PRIMARY KEY CLUSTERED 
(
	[MaLoaiPhong] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[LoaiPhong] ([MaLoaiPhong], [TenLoaiPhong], [DienTichPhong], [DonGia], [GhiChu]) VALUES (N'1         ', N'Nhỏ', 10, 1000000, NULL)
INSERT [dbo].[LoaiPhong] ([MaLoaiPhong], [TenLoaiPhong], [DienTichPhong], [DonGia], [GhiChu]) VALUES (N'2         ', N'Vừa', 20, 1500000, NULL)
INSERT [dbo].[LoaiPhong] ([MaLoaiPhong], [TenLoaiPhong], [DienTichPhong], [DonGia], [GhiChu]) VALUES (N'3         ', N'Lớn', 30, 2000000, NULL)
INSERT [dbo].[LoaiPhong] ([MaLoaiPhong], [TenLoaiPhong], [DienTichPhong], [DonGia], [GhiChu]) VALUES (N'4         ', N'đơn', 20, 1200000, NULL)
INSERT [dbo].[LoaiPhong] ([MaLoaiPhong], [TenLoaiPhong], [DienTichPhong], [DonGia], [GhiChu]) VALUES (N'5         ', N'đôi', 25, 1750000, NULL)
INSERT [dbo].[LoaiPhong] ([MaLoaiPhong], [TenLoaiPhong], [DienTichPhong], [DonGia], [GhiChu]) VALUES (N'6         ', N'tập thể', 30, 700000, NULL)
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuVuc](
	[MaKhuVuc] [nchar](10) NOT NULL,
	[TenKhuVuc] [nvarchar](50) NULL,
 CONSTRAINT [PK_KhuVuc] PRIMARY KEY CLUSTERED 
(
	[MaKhuVuc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[KhuVuc] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'KV01      ', N'Q.Bình Tân')
INSERT [dbo].[KhuVuc] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'KV02      ', N'Q.12')
INSERT [dbo].[KhuVuc] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'KV06      ', N'Q.8')
INSERT [dbo].[KhuVuc] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'KV03      ', N'Q.Thủ Đức')
INSERT [dbo].[KhuVuc] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'KV04      ', N'Q.Trần Duy Hưng')
INSERT [dbo].[KhuVuc] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'KV05      ', N'Q.Hai Bà Trưng')
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GhiNho](
	[ID] [nchar](10) NULL,
	[Pass] [nchar](10) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[GhiNho] ([ID], [Pass]) VALUES (N'KDC       ', N'1996      ')
INSERT [dbo].[GhiNho] ([ID], [Pass]) VALUES (N'KFC       ', N'1997      ')
INSERT [dbo].[GhiNho] ([ID], [Pass]) VALUES (N'KIF       ', N'1998      ')
INSERT [dbo].[GhiNho] ([ID], [Pass]) VALUES (N'NQD       ', N'2005      ')
INSERT [dbo].[GhiNho] ([ID], [Pass]) VALUES (N'VND       ', N'0961      ')
INSERT [dbo].[GhiNho] ([ID], [Pass]) VALUES (N'USD       ', N'1872      ')
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DichVu](
	[Id] [int] NOT NULL,
	[TenDichVu] [nvarchar](50) NULL,
	[Gia] [bigint] NULL,
 CONSTRAINT [PK_DichVu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DichVu] ([Id], [TenDichVu], [Gia]) VALUES (1, N'Điện', 2500)
INSERT [dbo].[DichVu] ([Id], [TenDichVu], [Gia]) VALUES (2, N'Nước', 15000)
INSERT [dbo].[DichVu] ([Id], [TenDichVu], [Gia]) VALUES (3, N'Wifi', 200000)
INSERT [dbo].[DichVu] ([Id], [TenDichVu], [Gia]) VALUES (4, N'Nước_2', 20000)
INSERT [dbo].[DichVu] ([Id], [TenDichVu], [Gia]) VALUES (5, N'Điện_2', 3000)
INSERT [dbo].[DichVu] ([Id], [TenDichVu], [Gia]) VALUES (6, N'Gửi xe(xe máy)', 50000)
INSERT [dbo].[DichVu] ([Id], [TenDichVu], [Gia]) VALUES (7, N'Gửi xe(ô tô)', 100000)
INSERT [dbo].[DichVu] ([Id], [TenDichVu], [Gia]) VALUES (8, N'Dịch vụ vệ simh', 75000)
INSERT [dbo].[DichVu] ([Id], [TenDichVu], [Gia]) VALUES (9, N'PCCC', 15000)
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DangNhap](
	[ID] [nvarchar](50) NULL,
	[PassWord] [nchar](10) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[DangNhap] ([ID], [PassWord]) VALUES (N'KDC', N'1996      ')
INSERT [dbo].[DangNhap] ([ID], [PassWord]) VALUES (N'JR', N'123123    ')
INSERT [dbo].[DangNhap] ([ID], [PassWord]) VALUES (N'QLT', N'047264      ')
INSERT [dbo].[DangNhap] ([ID], [PassWord]) VALUES (N'EK', N'476896    ')
INSERT [dbo].[DangNhap] ([ID], [PassWord]) VALUES (N'TL', N'970865    ')
INSERT [dbo].[DangNhap] ([ID], [PassWord]) VALUES (N'QL', N'332548    ')
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinKhach](
	[MaKhachTro] [nchar](10) NOT NULL,
	[Ho] [nvarchar](50) NULL,
	[Ten] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[AnhNhanDien] [image] NULL,
	[NgaySinh] [date] NULL,
	[CMND] [nchar](10) NULL,
	[QueQuan] [nvarchar](50) NULL,
	[NgheNghiep] [nvarchar](50) NULL,
	[MaPhong] [nchar](10) NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_ThongTinKhach] PRIMARY KEY CLUSTERED 
(
	[MaKhachTro] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[ThongTinKhach] ([MaKhachTro], [Ho], [Ten], [GioiTinh], [AnhNhanDien], [NgaySinh], [CMND], [QueQuan], [NgheNghiep], [MaPhong], [GhiChu]) VALUES (N'KT001     ', N'Hà Tuấn', N'An', N'Nam', NULL, CAST(0xE51C0B00 AS Date), N'123456789 ', N'Hà Nội', N'Công Nhân', N'QBTA01    ', N'1')
INSERT [dbo].[ThongTinKhach] ([MaKhachTro], [Ho], [Ten], [GioiTinh], [AnhNhanDien], [NgaySinh], [CMND], [QueQuan], [NgheNghiep], [MaPhong], [GhiChu]) VALUES (N'KT002     ', N'Trần Quốc', N'Bảo', N'Nam', NULL, CAST(0xE61C0B00 AS Date), N'123456788 ', N'Hải Phòng', N'Công Nhân', N'QBTA02    ', N'1')
INSERT [dbo].[ThongTinKhach] ([MaKhachTro], [Ho], [Ten], [GioiTinh], [AnhNhanDien], [NgaySinh], [CMND], [QueQuan], [NgheNghiep], [MaPhong], [GhiChu]) VALUES (N'KT003     ', N'Trần Quốc', N'Bảo', N'Nam', NULL, CAST(0x521E0B00 AS Date), N'123456788 ', N'Hải Phòng', N'Công Nhân', N'QBTA03    ', N'1')
INSERT [dbo].[ThongTinKhach] ([MaKhachTro], [Ho], [Ten], [GioiTinh], [AnhNhanDien], [NgaySinh], [CMND], [QueQuan], [NgheNghiep], [MaPhong], [GhiChu]) VALUES (N'KT004     ', N'Đinh Văn', N'Hưng', N'Nam', NULL, CAST(0x9F070B00 AS Date), N'123456786 ', N'Huế', N'Giáo Viên', N'QBTB05    ', N'1')
INSERT [dbo].[ThongTinKhach] ([MaKhachTro], [Ho], [Ten], [GioiTinh], [AnhNhanDien], [NgaySinh], [CMND], [QueQuan], [NgheNghiep], [MaPhong], [GhiChu]) VALUES (N'KT005     ', N'Bùi Quang', N'Minh', N'Nam', NULL, CAST(0xF0150B00 AS Date), N'123456785 ', N'Đà Nẵng', N'Giáo Viên', N'QBTB05    ', N'1')
INSERT [dbo].[ThongTinKhach] ([MaKhachTro], [Ho], [Ten], [GioiTinh], [AnhNhanDien], [NgaySinh], [CMND], [QueQuan], [NgheNghiep], [MaPhong], [GhiChu]) VALUES (N'KT006     ', N'Nguyễn Phương', N'Ngọc', N'Nữ', NULL, CAST(0x12180B00 AS Date), N'123456784 ', N'TP.HCM', N'Giáo Viên', N'Q12A01    ', N'1')
INSERT [dbo].[ThongTinKhach] ([MaKhachTro], [Ho], [Ten], [GioiTinh], [AnhNhanDien], [NgaySinh], [CMND], [QueQuan], [NgheNghiep], [MaPhong], [GhiChu]) VALUES (N'KT007     ', N'Lê Ngọc', N'Tuyết', N'Nữ', NULL, CAST(0x5F1B0B00 AS Date), N'123456783 ', N'TP.HCM', N'Nhân Viên Bán Hàng', N'Q12A03    ', N'1')
INSERT [dbo].[ThongTinKhach] ([MaKhachTro], [Ho], [Ten], [GioiTinh], [AnhNhanDien], [NgaySinh], [CMND], [QueQuan], [NgheNghiep], [MaPhong], [GhiChu]) VALUES (N'KT008     ', N'Nguyễn Minh', N'Nhật', N'Nam', NULL, CAST(0x7D200B00 AS Date), N'123456782 ', N'TP.HCM', N'Sinh Viên', N'Q12A03    ', N'1')
INSERT [dbo].[ThongTinKhach] ([MaKhachTro], [Ho], [Ten], [GioiTinh], [AnhNhanDien], [NgaySinh], [CMND], [QueQuan], [NgheNghiep], [MaPhong], [GhiChu]) VALUES (N'KT009     ', N'Trần Ngọc', N'Thủy', N'Nữ', NULL, CAST(0xE61F0B00 AS Date), N'123456781 ', N'Hà Tĩnh', N'Sinh Viên', N'Q12A02    ', N'1')
INSERT [dbo].[ThongTinKhach] ([MaKhachTro], [Ho], [Ten], [GioiTinh], [AnhNhanDien], [NgaySinh], [CMND], [QueQuan], [NgheNghiep], [MaPhong], [GhiChu]) VALUES (N'KT010     ', N'Nguyễn Huỳnh', N'Trang', N'Nữ', NULL, CAST(0x87220B00 AS Date), N'123456780 ', N'Vĩnh Long', N'Sinh Viên', N'Q12A02    ', N'1')
INSERT [dbo].[ThongTinKhach] ([MaKhachTro], [Ho], [Ten], [GioiTinh], [AnhNhanDien], [NgaySinh], [CMND], [QueQuan], [NgheNghiep], [MaPhong], [GhiChu]) VALUES (N'KT011     ', N'Trần Đức', N'Huy', N'Nam', NULL, CAST(0x051D0B00 AS Date), N'123456787 ', N'Hà Nội', N'Công Nhân', N'QBTA01    ', N'1')
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinDangKyPhong](
	[Id] [int] NOT NULL,
	[Ho] [nvarchar](50) NULL,
	[Ten] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[CMND] [nvarchar](50) NULL,
	[QueQuan] [nvarchar](max) NULL,
	[NgheNghiep] [nvarchar](50) NULL,
	[MaKhuVuc] [nchar](10) NULL,
	[MaLoaiPhong] [nchar](10) NULL,
 CONSTRAINT [PK_DangKyPhong] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SaveP](@ID nchar (10), @Pass nchar (10))
as
		DELETE FROM GhiNho
		INSERT INTO GhiNho (ID, Pass) Values (@ID, @Pass)
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[MaPhong] [nchar](10) NOT NULL,
	[MaLoaiPhong] [nchar](10) NOT NULL,
	[MaKhuVuc] [nchar](10) NOT NULL,
	[TenPhong] [nvarchar](50) NOT NULL,
	[Day] [nchar](10) NOT NULL,
	[TrangThai] [nvarchar](10) NOT NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_Phong] PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Phong] ([MaPhong], [MaLoaiPhong], [MaKhuVuc], [TenPhong], [Day], [TrangThai], [GhiChu]) VALUES (N'Q12A01    ', N'1         ', N'KV02      ', N'Phòng 001', N'A         ', N'Đã thuê', NULL)
INSERT [dbo].[Phong] ([MaPhong], [MaLoaiPhong], [MaKhuVuc], [TenPhong], [Day], [TrangThai], [GhiChu]) VALUES (N'Q12A02    ', N'1         ', N'KV02      ', N'Phòng 002', N'A         ', N'Đã thuê', NULL)
INSERT [dbo].[Phong] ([MaPhong], [MaLoaiPhong], [MaKhuVuc], [TenPhong], [Day], [TrangThai], [GhiChu]) VALUES (N'Q12A03    ', N'2         ', N'KV02      ', N'Phòng 003', N'A         ', N'Đã thuê', NULL)
INSERT [dbo].[Phong] ([MaPhong], [MaLoaiPhong], [MaKhuVuc], [TenPhong], [Day], [TrangThai], [GhiChu]) VALUES (N'Q12B04    ', N'2         ', N'KV02      ', N'Phòng 004', N'B         ', N'Trống', NULL)
INSERT [dbo].[Phong] ([MaPhong], [MaLoaiPhong], [MaKhuVuc], [TenPhong], [Day], [TrangThai], [GhiChu]) VALUES (N'Q12B05    ', N'3         ', N'KV02      ', N'Phòng 005', N'B         ', N'Trống', NULL)
INSERT [dbo].[Phong] ([MaPhong], [MaLoaiPhong], [MaKhuVuc], [TenPhong], [Day], [TrangThai], [GhiChu]) VALUES (N'QBTA01    ', N'1         ', N'KV01      ', N'Phòng 001', N'A         ', N'Đã thuê', NULL)
INSERT [dbo].[Phong] ([MaPhong], [MaLoaiPhong], [MaKhuVuc], [TenPhong], [Day], [TrangThai], [GhiChu]) VALUES (N'QBTA02    ', N'1         ', N'KV01      ', N'Phòng 002', N'A         ', N'Đã thuê', NULL)
INSERT [dbo].[Phong] ([MaPhong], [MaLoaiPhong], [MaKhuVuc], [TenPhong], [Day], [TrangThai], [GhiChu]) VALUES (N'QBTA03    ', N'2         ', N'KV01      ', N'Phòng 003', N'A         ', N'Đã thuê', NULL)
INSERT [dbo].[Phong] ([MaPhong], [MaLoaiPhong], [MaKhuVuc], [TenPhong], [Day], [TrangThai], [GhiChu]) VALUES (N'QBTB04    ', N'2         ', N'KV01      ', N'Phòng 004', N'B         ', N'Trống', NULL)
INSERT [dbo].[Phong] ([MaPhong], [MaLoaiPhong], [MaKhuVuc], [TenPhong], [Day], [TrangThai], [GhiChu]) VALUES (N'QBTB05    ', N'3         ', N'KV01      ', N'Phòng 005', N'B         ', N'Đã thuê', NULL)
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ChangePass] (@ID nvarchar(50), @Pass nchar (10))
as
begin
	Update DangNhap
	Set PassWord = @Pass
	Where ID = @ID
end
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Xoa]
as
	DELETE from GhiNho
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TraPhong](
	[Id] [int] NOT NULL,
	[MaPhong] [nchar](10) NULL,
	[MaKhachTro] [nchar](10) NULL,
	[NgayThue] [date] NULL,
	[NgayTraPhong] [date] NULL,
 CONSTRAINT [PK_TraPhong] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinThuePhong](
	[MaHD] [nchar](10) NOT NULL,
	[MaKhachTro] [nchar](10) NOT NULL,
	[MaPhong] [nchar](10) NOT NULL,
	[NgayThue] [date] NOT NULL,
	[TienDatCoc] [bigint] NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_ThongTinThuePhong_1] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaKhachTro] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ThongTinThuePhong] ([MaHD], [MaKhachTro], [MaPhong], [NgayThue], [TienDatCoc], [GhiChu]) VALUES (N'0         ', N'KT002     ', N'QBTA02    ', CAST(0xDB3C0B00 AS Date), 1000000, NULL)
INSERT [dbo].[ThongTinThuePhong] ([MaHD], [MaKhachTro], [MaPhong], [NgayThue], [TienDatCoc], [GhiChu]) VALUES (N'1         ', N'KT001     ', N'QBTA01    ', CAST(0xDB3C0B00 AS Date), 1000000, NULL)
INSERT [dbo].[ThongTinThuePhong] ([MaHD], [MaKhachTro], [MaPhong], [NgayThue], [TienDatCoc], [GhiChu]) VALUES (N'11        ', N'KT011     ', N'QBTA01    ', CAST(0xDB3C0B00 AS Date), 1000000, NULL)
INSERT [dbo].[ThongTinThuePhong] ([MaHD], [MaKhachTro], [MaPhong], [NgayThue], [TienDatCoc], [GhiChu]) VALUES (N'2         ', N'KT004     ', N'QBTB05    ', CAST(0xDB3C0B00 AS Date), 1000000, NULL)
INSERT [dbo].[ThongTinThuePhong] ([MaHD], [MaKhachTro], [MaPhong], [NgayThue], [TienDatCoc], [GhiChu]) VALUES (N'3         ', N'KT003     ', N'QBTA03    ', CAST(0xDB3C0B00 AS Date), 1000000, NULL)
INSERT [dbo].[ThongTinThuePhong] ([MaHD], [MaKhachTro], [MaPhong], [NgayThue], [TienDatCoc], [GhiChu]) VALUES (N'4         ', N'KT006     ', N'Q12A01    ', CAST(0xDB3C0B00 AS Date), 1000000, NULL)
INSERT [dbo].[ThongTinThuePhong] ([MaHD], [MaKhachTro], [MaPhong], [NgayThue], [TienDatCoc], [GhiChu]) VALUES (N'5         ', N'KT005     ', N'QBTB05    ', CAST(0xDB3C0B00 AS Date), 1000000, NULL)
INSERT [dbo].[ThongTinThuePhong] ([MaHD], [MaKhachTro], [MaPhong], [NgayThue], [TienDatCoc], [GhiChu]) VALUES (N'6         ', N'KT008     ', N'Q12A03    ', CAST(0xDB3C0B00 AS Date), 1000000, NULL)
INSERT [dbo].[ThongTinThuePhong] ([MaHD], [MaKhachTro], [MaPhong], [NgayThue], [TienDatCoc], [GhiChu]) VALUES (N'7         ', N'KT007     ', N'Q12A03    ', CAST(0xDB3C0B00 AS Date), 1000000, NULL)
INSERT [dbo].[ThongTinThuePhong] ([MaHD], [MaKhachTro], [MaPhong], [NgayThue], [TienDatCoc], [GhiChu]) VALUES (N'8         ', N'KT010     ', N'Q12A02    ', CAST(0xDB3C0B00 AS Date), 1000000, NULL)
INSERT [dbo].[ThongTinThuePhong] ([MaHD], [MaKhachTro], [MaPhong], [NgayThue], [TienDatCoc], [GhiChu]) VALUES (N'9         ', N'KT009     ', N'Q12A02    ', CAST(0xDB3C0B00 AS Date), 1000000, NULL)
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuThu](
	[MaPT] [nchar](10) NOT NULL,
	[MaPhong] [nchar](10) NULL,
	[NgayLap] [date] NOT NULL,
	[NgayThu] [date] NULL,
	[TienNha] [bigint] NULL,
	[SkDien] [int] NULL,
	[TienDien] [bigint] NULL,
	[SkNuoc] [int] NULL,
	[TienNuoc] [bigint] NULL,
	[TongTien] [bigint] NULL,
	[TrangThai] [nvarchar](50) NULL,
 CONSTRAINT [PK_PhieuThu] PRIMARY KEY CLUSTERED 
(
	[MaPT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
UPDATE PhieuThu
SET NgayThu = DATEADD(YEAR, 5, NgayThu) 
WHERE YEAR(NgayThu) = 2020;  

INSERT [dbo].[PhieuThu] ([MaPT], [MaPhong], [NgayLap], [NgayThu], [TienNha], [SkDien], [TienDien], [SkNuoc], [TienNuoc], [TongTien], [TrangThai]) VALUES (N'1         ', N'QBTA01    ', CAST(0xDC3C0B00 AS Date), CAST(0xDC3C0B00 AS Date), 1000000, 5, 12500, 2, 30000, 1042500, N'Đã thu')
INSERT [dbo].[PhieuThu] ([MaPT], [MaPhong], [NgayLap], [NgayThu], [TienNha], [SkDien], [TienDien], [SkNuoc], [TienNuoc], [TongTien], [TrangThai]) VALUES (N'2         ', N'QBTA02    ', CAST(0xDC3C0B00 AS Date), CAST(0xDC3C0B00 AS Date), 1000000, 5, 12500, 5, 75000, 1087500, N'Đã thu')
INSERT [dbo].[PhieuThu] ([MaPT], [MaPhong], [NgayLap], [NgayThu], [TienNha], [SkDien], [TienDien], [SkNuoc], [TienNuoc], [TongTien], [TrangThai]) VALUES (N'3         ', N'QBTB05    ', CAST(0xDC3C0B00 AS Date), CAST(0xDC3C0B00 AS Date), 2000000, 5, 12500, 0, 40000, 2052500, N'Đã thu')
INSERT [dbo].[PhieuThu] ([MaPT], [MaPhong], [NgayLap], [NgayThu], [TienNha], [SkDien], [TienDien], [SkNuoc], [TienNuoc], [TongTien], [TrangThai]) VALUES (N'4         ', N'QBTA03    ', CAST(0xDC3C0B00 AS Date), CAST(0xDC3C0B00 AS Date), 1500000, 5, 12500, 5, 75000, 1587500, N'Đã thu')
INSERT [dbo].[PhieuThu] ([MaPT], [MaPhong], [NgayLap], [NgayThu], [TienNha], [SkDien], [TienDien], [SkNuoc], [TienNuoc], [TongTien], [TrangThai]) VALUES (N'5         ', N'Q12A01    ', CAST(0xDC3C0B00 AS Date), CAST(0xDC3C0B00 AS Date), 1000000, 5, 12500, 5, 75000, 1087500, N'Đã thu')
INSERT [dbo].[PhieuThu] ([MaPT], [MaPhong], [NgayLap], [NgayThu], [TienNha], [SkDien], [TienDien], [SkNuoc], [TienNuoc], [TongTien], [TrangThai]) 
VALUES 
(N'6         ', N'QBTA01    ', CAST(0xE03C0B00 AS Date), CAST(0xE03C0B00 AS Date), 1200000, 10, 25000, 3, 45000, 1265000, N'Đã thu'),
(N'7         ', N'QBTA02    ', CAST(0xF23C0B00 AS Date), CAST(0xF23C0B00 AS Date), 1300000, 8, 20000, 4, 60000, 1380000, N'Đã thu'),
(N'8         ', N'QBTB05    ', CAST(0x063D0B00 AS Date), CAST(0x063D0B00 AS Date), 1400000, 7, 17500, 2, 30000, 1432500, N'Đã thu'),
(N'9         ', N'QBTA03    ', CAST(0x183D0B00 AS Date), CAST(0x183D0B00 AS Date), 1500000, 9, 22500, 6, 90000, 1612500, N'Đã thu'),
(N'10        ', N'Q12A01    ', CAST(0x2A3D0B00 AS Date), CAST(0x2A3D0B00 AS Date), 1600000, 12, 30000, 5, 75000, 1705000, N'Đã thu'),
(N'11        ', N'QBTA01    ', CAST(0x3C3D0B00 AS Date), CAST(0x3C3D0B00 AS Date), 1700000, 15, 37500, 7, 105000, 1837500, N'Đã thu');
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[ThongTinDangKyPhong]  WITH CHECK ADD  CONSTRAINT [FK_DangKyPhong_KhuVuc] FOREIGN KEY([MaKhuVuc])
REFERENCES [dbo].[KhuVuc] ([MaKhuVuc])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ThongTinDangKyPhong] CHECK CONSTRAINT [FK_DangKyPhong_KhuVuc]
GO
ALTER TABLE [dbo].[ThongTinDangKyPhong]  WITH CHECK ADD  CONSTRAINT [FK_DangKyPhong_LoaiPhong] FOREIGN KEY([MaLoaiPhong])
REFERENCES [dbo].[LoaiPhong] ([MaLoaiPhong])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ThongTinDangKyPhong] CHECK CONSTRAINT [FK_DangKyPhong_LoaiPhong]
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [FK_Phong_KhuVuc] FOREIGN KEY([MaKhuVuc])
REFERENCES [dbo].[KhuVuc] ([MaKhuVuc])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [FK_Phong_KhuVuc]
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [FK_Phong_LoaiPhong] FOREIGN KEY([MaLoaiPhong])
REFERENCES [dbo].[LoaiPhong] ([MaLoaiPhong])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [FK_Phong_LoaiPhong]
GO
ALTER TABLE [dbo].[TraPhong]  WITH CHECK ADD  CONSTRAINT [FK_TraPhong_Phong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[Phong] ([MaPhong])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TraPhong] CHECK CONSTRAINT [FK_TraPhong_Phong]
GO
ALTER TABLE [dbo].[TraPhong]  WITH CHECK ADD  CONSTRAINT [FK_TraPhong_ThongTinKhach] FOREIGN KEY([MaKhachTro])
REFERENCES [dbo].[ThongTinKhach] ([MaKhachTro])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TraPhong] CHECK CONSTRAINT [FK_TraPhong_ThongTinKhach]
GO
ALTER TABLE [dbo].[ThongTinThuePhong]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinThuePhong_Phong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[Phong] ([MaPhong])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ThongTinThuePhong] CHECK CONSTRAINT [FK_ThongTinThuePhong_Phong]
GO
ALTER TABLE [dbo].[ThongTinThuePhong]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinThuePhong_ThongTinKhach] FOREIGN KEY([MaKhachTro])
REFERENCES [dbo].[ThongTinKhach] ([MaKhachTro])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ThongTinThuePhong] CHECK CONSTRAINT [FK_ThongTinThuePhong_ThongTinKhach]
GO
ALTER TABLE [dbo].[PhieuThu]  WITH CHECK ADD  CONSTRAINT [FK_PhieuThu_Phong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[Phong] ([MaPhong])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhieuThu] CHECK CONSTRAINT [FK_PhieuThu_Phong]
GO
-- TRIGGER kiểm tra trước khi xóa dữ liệu trong bảng PhieuThu
CREATE TRIGGER trg_PreventDelete_PhieuThu
ON PhieuThu
INSTEAD OF DELETE
AS
BEGIN
    PRINT 'Không thể xóa dữ liệu trong bảng PhieuThu!';
END;
GO

-- TRIGGER tự động cập nhật số tiền khi thêm vào bảng PhieuThu
CREATE TRIGGER trg_AfterInsert_PhieuThu
ON PhieuThu
AFTER INSERT
AS
BEGIN
    UPDATE PhieuThu
    SET SoTien = SoTien + 1000  -- Ví dụ: tự động cộng thêm 1000 vào mỗi giao dịch
    FROM PhieuThu p
    INNER JOIN inserted i ON p.MaPhieu = i.MaPhieu;
END;
GO

-- Trigger cho bảng Phong
CREATE TRIGGER trg_AfterInsert_Phong
ON dbo.Phong
FOR INSERT
AS
BEGIN
    DECLARE @MaPhong nchar(10), @TrangThai nvarchar(10)
    DECLARE cursor_phong CURSOR FOR SELECT MaPhong, TrangThai FROM inserted
    OPEN cursor_phong
    FETCH NEXT FROM cursor_phong INTO @MaPhong, @TrangThai
    WHILE @@FETCH_STATUS = 0
    BEGIN
        PRINT 'Phòng mới: ' + @MaPhong + CASE WHEN @TrangThai = N'Đã thuê' THEN ' - Đã thuê' ELSE ' - Phòng trống' END
        FETCH NEXT FROM cursor_phong INTO @MaPhong, @TrangThai
    END
    CLOSE cursor_phong
    DEALLOCATE cursor_phong
END
GO

-- Trigger cho bảng ThongTinThuePhong
CREATE TRIGGER trg_AfterUpdate_ThongTinThuePhong
ON dbo.ThongTinThuePhong
FOR UPDATE
AS
BEGIN
    DECLARE @MaHD nchar(10), @MaKhachTro nchar(10), @NgayThue date
    DECLARE cursor_thue CURSOR FOR SELECT MaHD, MaKhachTro, NgayThue FROM inserted
    OPEN cursor_thue
    FETCH NEXT FROM cursor_thue INTO @MaHD, @MaKhachTro, @NgayThue
    WHILE @@FETCH_STATUS = 0
    BEGIN
        PRINT '🔄 Hợp đồng: ' + @MaHD + ' cập nhật. Khách: ' + @MaKhachTro + ', Ngày thuê: ' + CONVERT(nvarchar(10), @NgayThue, 103)
        FETCH NEXT FROM cursor_thue INTO @MaHD, @MaKhachTro, @NgayThue
    END
    CLOSE cursor_thue
    DEALLOCATE cursor_thue
END
GO
-- Trigger cho bảng ThongTinKhach
CREATE TRIGGER trg_AfterInsert_ThongTinKhach
ON dbo.ThongTinKhach
FOR INSERT
AS
BEGIN
    DECLARE @MaKhachTro nchar(10), @MaPhong nchar(10)
    DECLARE cursor_khach CURSOR FOR SELECT MaKhachTro, MaPhong FROM inserted
    OPEN cursor_khach
    FETCH NEXT FROM cursor_khach INTO @MaKhachTro, @MaPhong
    WHILE @@FETCH_STATUS = 0
    BEGIN
        PRINT '🆕 Khách mới: ' + @MaKhachTro + ' thuê phòng: ' + @MaPhong
        FETCH NEXT FROM cursor_khach INTO @MaKhachTro, @MaPhong
    END
    CLOSE cursor_khach
    DEALLOCATE cursor_khach
END
GO

-- Kiểm tra và sửa lỗi cú pháp trong PROCEDURE

-- Đảm bảo bảng có đầy đủ các cột cần thiết
ALTER TABLE DangNhap ADD Username NVARCHAR(50);
ALTER TABLE GhiNho ADD NoiDung NVARCHAR(255);
ALTER TABLE DangNhap ADD Username NVARCHAR(50), Password NVARCHAR(50);
ALTER TABLE PhieuThu ADD MaPhieu INT, SoTien MONEY;
GO

-- PROCEDURE thêm dữ liệu vào bảng GhiNho
CREATE PROCEDURE Insert_GhiNho 
    @ID INT,
    @NoiDung NVARCHAR(255)
AS
BEGIN
    INSERT INTO GhiNho (ID, NoiDung) VALUES (@ID, @NoiDung);
END;
GO

-- PROCEDURE cập nhật dữ liệu trong bảng GhiNho
CREATE PROCEDURE Update_GhiNho 
    @ID INT,
    @NoiDung NVARCHAR(255)
AS
BEGIN
    UPDATE GhiNho SET NoiDung = @NoiDung WHERE ID = @ID;
END;
GO

-- PROCEDURE xóa dữ liệu trong bảng GhiNho
CREATE PROCEDURE Delete_GhiNho 
    @ID INT
AS
BEGIN
    DELETE FROM GhiNho WHERE ID = @ID;
END;
GO

-- PROCEDURE thêm dữ liệu vào bảng DangNhap
CREATE PROCEDURE Insert_DangNhap 
    @Username NVARCHAR(50),
    @Password NVARCHAR(50)
AS
BEGIN
    INSERT INTO DangNhap (Username, Password) VALUES (@Username, @Password);
END;
GO

-- PROCEDURE kiểm tra đăng nhập
CREATE PROCEDURE Check_DangNhap 
    @Username NVARCHAR(50),
    @Password NVARCHAR(50)
AS
BEGIN
    SELECT * FROM DangNhap WHERE Username = @Username AND Password = @Password;
END;
GO

-- PROCEDURE thêm dữ liệu vào bảng PhieuThu
CREATE PROCEDURE Insert_PhieuThu 
    @MaPhieu INT,
    @SoTien MONEY
AS
BEGIN
    INSERT INTO PhieuThu (MaPhieu, SoTien) VALUES (@MaPhieu, @SoTien);
END;
GO

-- PROCEDURE cập nhật số tiền trong bảng PhieuThu
CREATE PROCEDURE Update_PhieuThu 
    @MaPhieu INT,
    @SoTien MONEY
AS
BEGIN
    UPDATE PhieuThu SET SoTien = @SoTien WHERE MaPhieu = @MaPhieu;
END;
GO

-- PROCEDURE xóa dữ liệu trong bảng PhieuThu
CREATE PROCEDURE Delete_PhieuThu 
    @MaPhieu INT
AS
BEGIN
    DELETE FROM PhieuThu WHERE MaPhieu = @MaPhieu;
END;
GO

-- PROCEDURE lấy tất cả dữ liệu từ bảng GhiNho
CREATE PROCEDURE GetAll_GhiNho
AS
BEGIN
    SELECT * FROM GhiNho;
END;
GO

-- PROCEDURE lấy tất cả dữ liệu từ bảng DangNhap
CREATE PROCEDURE GetAll_DangNhap
AS
BEGIN
    SELECT * FROM DangNhap;
END;
GO

-- PROCEDURE lấy tất cả dữ liệu từ bảng PhieuThu
CREATE PROCEDURE GetAll_PhieuThu
AS
BEGIN
    SELECT * FROM PhieuThu;
END;
GO

-- PROCEDURE lấy thông tin GhiNho theo ID
CREATE PROCEDURE Get_GhiNho_ByID 
    @ID INT
AS
BEGIN
    SELECT * FROM GhiNho WHERE ID = @ID;
END;
GO

-- PROCEDURE lấy thông tin PhieuThu theo MaPhieu
CREATE PROCEDURE Get_PhieuThu_ByMaPhieu 
    @MaPhieu INT
AS
BEGIN
    SELECT * FROM PhieuThu WHERE MaPhieu = @MaPhieu;
END;
GO

-- PROCEDURE lấy thông tin DangNhap theo Username
CREATE PROCEDURE Get_DangNhap_ByUsername 
    @Username NVARCHAR(50)
AS
BEGIN
    SELECT * FROM DangNhap WHERE Username = @Username;
END;
GO

CREATE LOGIN TenLogin WITH PASSWORD = 'MatKhauAnToan'
GO
USE [QLPhongTro]
GO
CREATE USER TenNguoiDung FOR LOGIN TenLogin
GO
GRANT SELECT ON dbo.Phong TO TenNguoiDung
GO
GRANT INSERT ON dbo.ThongTinKhach TO TenNguoiDung
GO
GRANT EXECUTE ON dbo.SaveP TO TenNguoiDung
GO
GRANT EXECUTE ON dbo.ChangePass TO TenNguoiDung
GO

ALTER LOGIN TenLogin WITH CHECK_POLICY = ON
GO
BACKUP DATABASE [QLPhongTro] TO DISK = 'C:\Backup\QLPhongTro.bak'
GO
-- PHÂN QUYỀN CẤP ĐỐI TƯỢNG

-- Tạo tài khoản người dùng
CREATE LOGIN UserQuanLy WITH PASSWORD = 'QuanLy@123';
CREATE LOGIN UserNhanVien WITH PASSWORD = 'NhanVien@123';
CREATE LOGIN UserKeToan WITH PASSWORD = 'KeToan@123';
GO

-- Tạo người dùng trong cơ sở dữ liệu
CREATE USER QuanLy FOR LOGIN UserQuanLy;
CREATE USER NhanVien FOR LOGIN UserNhanVien;
CREATE USER KeToan FOR LOGIN UserKeToan;
GO

-- Cấp quyền cho UserQuanLy (Quản lý có toàn quyền trên các bảng)
GRANT CONTROL ON DATABASE::YourDatabase TO QuanLy;
GRANT CONTROL ON SCHEMA::dbo TO QuanLy;
GO

-- Cấp quyền cho UserNhanVien (Nhân viên chỉ có quyền thao tác dữ liệu nhưng không thể xóa)
GRANT SELECT, INSERT, UPDATE ON dbo.Phong TO NhanVien;
GRANT SELECT, INSERT, UPDATE ON dbo.ThongTinThuePhong TO NhanVien;
GRANT SELECT, INSERT, UPDATE ON dbo.ThongTinKhach TO NhanVien;
GO

-- Cấp quyền cho UserKeToan (Kế toán chỉ có quyền đọc dữ liệu và thêm dữ liệu)
GRANT SELECT, INSERT ON dbo.PhieuThu TO KeToan;
GRANT SELECT, INSERT ON dbo.HoaDon TO KeToan;
GO

-- Ngăn UserNhanVien xóa dữ liệu trong bảng PhieuThu
DENY DELETE ON dbo.PhieuThu TO NhanVien;
GO

-- Ngăn UserKeToan xóa hoặc sửa dữ liệu trong bảng HoaDon
DENY DELETE, UPDATE ON dbo.HoaDon TO KeToan;
GO

-- Tạo view tổng quan thông tin thuê phòng
CREATE VIEW [dbo].[RoomOccupancySummary]
AS
SELECT 
    p.TenPhong,
    k.Ho,
    k.Ten,
    t.NgayThue,
    t.TienDatCoc
FROM 
    dbo.ThongTinThuePhong t
JOIN 
    dbo.ThongTinKhach k ON t.MaKhachTro = k.MaKhachTro
JOIN 
    dbo.Phong p ON t.MaPhong = p.MaPhong
WHERE 
    t.NgayThue <= GETDATE() -- Chỉ lấy các hợp đồng thuê hiện tại hoặc đã qua
GO
-- View Danh sách các phòng đang có khách thuê
CREATE VIEW ViewPhongDangChoThue AS
SELECT p.MaPhong, p.TenPhong, lp.TenLoaiPhong, ttp.NgayThue AS NgayBatDau, kh.Ho + ' ' + kh.Ten AS TenKhachHang
FROM Phong p
JOIN LoaiPhong lp ON p.MaLoaiPhong = lp.MaLoaiPhong
JOIN ThongTinThuePhong ttp ON p.MaPhong = ttp.MaPhong
JOIN ThongTinKhach kh ON ttp.MaKhachTro = kh.MaKhachTro;

-- View Chi tiết hợp đồng thuê của khách
CREATE VIEW ViewChiTietHopDong AS
SELECT kh.MaKhachTro, kh.Ho + ' ' + kh.Ten AS TenKhachHang, kh.CMND, p.TenPhong, lp.TenLoaiPhong, ttp.NgayThue, ttp.TienDatCoc
FROM ThongTinThuePhong ttp
JOIN ThongTinKhach kh ON ttp.MaKhachTro = kh.MaKhachTro
JOIN Phong p ON ttp.MaPhong = p.MaPhong
JOIN LoaiPhong lp ON p.MaLoaiPhong = lp.MaLoaiPhong;

-- View Tổng doanh thu theo tháng
CREATE VIEW ViewDoanhThuTheoThang AS
SELECT YEAR(pt.NgayThu) AS Nam, MONTH(pt.NgayThu) AS Thang, SUM(pt.TongTien) AS TongDoanhThu
FROM PhieuThu pt
GROUP BY YEAR(pt.NgayThu), MONTH(pt.NgayThu)
ORDER BY Nam DESC, Thang DESC;
--View 4 danh sách phòng còn trống--
CREATE VIEW ViewPhongTrong AS
SELECT p.MaPhong, p.TenPhong, lp.TenLoaiPhong, p.TrangThai
FROM Phong p
JOIN LoaiPhong lp ON p.MaLoaiPhong = lp.MaLoaiPhong
WHERE p.MaPhong NOT IN (SELECT MaPhong FROM ThongTinThuePhong);

--view phòng sắp hết hạn hơp đồng--
CREATE VIEW ViewHopDongSapHetHan AS
SELECT ttp.MaHD, kh.Ho + ' ' + kh.Ten AS TenKhachHang, p.TenPhong, ttp.NgayThue, DATEADD(YEAR, 1, ttp.NgayThue) AS NgayHetHan
FROM ThongTinThuePhong ttp
JOIN ThongTinKhach kh ON ttp.MaKhachTro = kh.MaKhachTro
JOIN Phong p ON ttp.MaPhong = p.MaPhong
WHERE DATEADD(YEAR, 1, ttp.NgayThue) <= GETDATE() + 30; -- Sắp hết hạn trong 30 ngày tới

--view số tiền thu của các phòng--
CREATE VIEW ViewDoanhThuTheoPhong AS
SELECT p.MaPhong, p.TenPhong, SUM(pt.TongTien) AS TongDoanhThu
FROM PhieuThu pt
JOIN Phong p ON pt.MaPhong = p.MaPhong
GROUP BY p.MaPhong, p.TenPhong
ORDER BY TongDoanhThu DESC;
--hoạt động cụ thể--
SELECT * 
FROM dbo.ThongTinKhach;

SELECT * 
FROM dbo.Phong;

SELECT * 
FROM dbo.DichVu;

SELECT * 
FROM dbo.LoaiPhong;

SELECT t.MaHD, k.Ho, k.Ten, p.TenPhong, p.MaLoaiPhong, p.MaKhuVuc
FROM dbo.ThongTinThuePhong t
JOIN dbo.ThongTinKhach k ON t.MaKhachTro = k.MaKhachTro
JOIN dbo.Phong p ON t.MaPhong = p.MaPhong;

SELECT k.TenKhuVuc, t.Ho, t.Ten
FROM dbo.ThongTinKhach t
JOIN dbo.Phong p ON t.MaPhong = p.MaPhong
JOIN dbo.KhuVuc k ON p.MaKhuVuc = k.MaKhuVuc;
