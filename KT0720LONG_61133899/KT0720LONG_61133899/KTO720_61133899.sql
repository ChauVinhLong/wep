USE [KT0720_61133899]
GO
/****** Object:  Table [dbo].[Lop]    Script Date: 11/15/2021 7:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lop](
	[MaLop] [nvarchar](10) NOT NULL,
	[TenLop] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 11/15/2021 7:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[MaSV] [char](8) NOT NULL,
	[HoSV] [nvarchar](50) NULL,
	[TenSV] [nvarchar](15) NULL,
	[GioiTinh] [bit] NULL,
	[NgaySinh] [smalldatetime] NULL,
	[AnhSV] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](60) NULL,
	[MaLop] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Lop] ([MaLop], [TenLop]) VALUES (N'61.CNTT-2', N'Lớp 2 ngành CNTT Khóa 61')
INSERT [dbo].[Lop] ([MaLop], [TenLop]) VALUES (N'61.CNTT-3', N'Lớp 3 ngành CNTT Khóa 61')
GO
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [GioiTinh], [NgaySinh], [AnhSV], [DiaChi], [MaLop]) VALUES (N'11111111', N'Nguyễn Văn', N'An', 1, CAST(N'1999-01-01T00:00:00' AS SmallDateTime), N'61133899.PNG', N'Phú Yên', N'61.CNTT-2')
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [GioiTinh], [NgaySinh], [AnhSV], [DiaChi], [MaLop]) VALUES (N'11111112', N'Nguyễn Thị', N'Anh', 0, CAST(N'1999-01-01T00:00:00' AS SmallDateTime), N'hinh.jpg', N'Phú Yên', N'61.CNTT-3')
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [GioiTinh], [NgaySinh], [AnhSV], [DiaChi], [MaLop]) VALUES (N'61123456', N'Nguyễn Văn', N'Nam', 1, CAST(N'1999-01-01T00:00:00' AS SmallDateTime), N'61123456.gif', N'02 - Nguyễn Đình Chiểu ...', N'61.CNTT-3')
GO
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD FOREIGN KEY([MaLop])
REFERENCES [dbo].[Lop] ([MaLop])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
