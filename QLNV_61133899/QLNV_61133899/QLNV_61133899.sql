USE [QLNV_61133899]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 11/15/2021 7:28:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nvarchar](10) NOT NULL,
	[HoNV] [nvarchar](50) NOT NULL,
	[TenNV] [nvarchar](10) NOT NULL,
	[GioiTinh] [bit] NULL,
	[NgaySinh] [date] NULL,
	[Luong] [int] NULL,
	[AnhNV] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[MaPB] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhongBan]    Script Date: 11/15/2021 7:28:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhongBan](
	[MaPB] [nvarchar](10) NOT NULL,
	[TenPB] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuanTri]    Script Date: 11/15/2021 7:28:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuanTri](
	[Email] [varchar](50) NOT NULL,
	[Admin] [bit] NULL,
	[HoTen] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [GioiTinh], [NgaySinh], [Luong], [AnhNV], [DiaChi], [MaPB]) VALUES (N'KD001', N'Vũ Tiến', N'Dương', 1, CAST(N'1995-11-23' AS Date), 6100000, N'employee.png', N'Nha Trang, Khánh Hòa', N'KD')
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [GioiTinh], [NgaySinh], [Luong], [AnhNV], [DiaChi], [MaPB]) VALUES (N'KD0012', N'Bùi Chí', N'Thành', 1, CAST(N'1990-01-01' AS Date), 5500000, N'employee.png', N'Nha Trang - Khánh Hòa', N'KD')
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [GioiTinh], [NgaySinh], [Luong], [AnhNV], [DiaChi], [MaPB]) VALUES (N'KD002', N'Phạm Thành', N'Ân', 1, CAST(N'1993-12-08' AS Date), 3000000, N'employee.png', N'Nha Trang, Khánh Hòa', N'KD')
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [GioiTinh], [NgaySinh], [Luong], [AnhNV], [DiaChi], [MaPB]) VALUES (N'KD003', N'Nguyễn Hồng', N'Chương', 1, CAST(N'1990-02-02' AS Date), 3500000, N'employee.png', N'Nha Trang, Khánh Hòa', N'KD')
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [GioiTinh], [NgaySinh], [Luong], [AnhNV], [DiaChi], [MaPB]) VALUES (N'KD004', N'Dương Hồng', N'Đức', 1, CAST(N'1994-04-06' AS Date), 4000000, N'employee.png', N'Nha Trang, Khánh Hòa', N'KD')
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [GioiTinh], [NgaySinh], [Luong], [AnhNV], [DiaChi], [MaPB]) VALUES (N'KD005', N'Nguyễn Minh Phương', N'Thảo', 0, CAST(N'1995-03-16' AS Date), 4500000, N'employee.png', N'Nha Trang, Khánh Hòa', N'KD')
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [GioiTinh], [NgaySinh], [Luong], [AnhNV], [DiaChi], [MaPB]) VALUES (N'KD006', N'Nguyễn Hồng
', N'Liên', 0, CAST(N'1997-08-12' AS Date), 5000000, N'employee.png', N'Nha Trang, Khánh Hòa', N'KD')
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [GioiTinh], [NgaySinh], [Luong], [AnhNV], [DiaChi], [MaPB]) VALUES (N'KT001', N'Lê Thị Thùy', N'Duyên', 0, CAST(N'1970-01-01' AS Date), 6000000, N'employee.png', N'Nha Trang, Khánh Hòa', N'KT')
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [GioiTinh], [NgaySinh], [Luong], [AnhNV], [DiaChi], [MaPB]) VALUES (N'KT002', N'Nguyễn Thị Mỹ
', N'Linh', 0, CAST(N'2000-04-30' AS Date), 5500000, N'employee.png', N'Nha Trang, Khánh Hòa', N'KT')
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [GioiTinh], [NgaySinh], [Luong], [AnhNV], [DiaChi], [MaPB]) VALUES (N'KT003', N'Nguyễn Hữu Vinh
', N'Quang', 1, CAST(N'2000-03-19' AS Date), 6000000, N'employee.png', N'Nha Trang, Khánh Hòa', N'KT')
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [GioiTinh], [NgaySinh], [Luong], [AnhNV], [DiaChi], [MaPB]) VALUES (N'KT004', N'Nguyễn Công', N'Phương', 1, CAST(N'1990-12-19' AS Date), 6000000, N'employee.png', N'Nha Trang, Khánh Hòa', N'KD')
GO
INSERT [dbo].[PhongBan] ([MaPB], [TenPB]) VALUES (N'KD', N'Phòng kinh doanh')
INSERT [dbo].[PhongBan] ([MaPB], [TenPB]) VALUES (N'KT', N'Phòng Kế toán')
GO
INSERT [dbo].[QuanTri] ([Email], [Admin], [HoTen], [Password]) VALUES (N'thanhbc@ntu.edu.vn', 1, N'Bùi Chí Thành', N'123')
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT ((1)) FOR [GioiTinh]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([MaPB])
REFERENCES [dbo].[PhongBan] ([MaPB])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
/****** Object:  StoredProcedure [dbo].[NhanVien_TimKiem]    Script Date: 11/15/2021 7:28:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NhanVien_TimKiem]
    @MaNV varchar(8)=NULL,
	@HoTen nvarchar(40)=NULL,
	@GioiTinh nvarchar(3)= NULL,
	@LuongMin varchar(30)=NULL,
	@LuongMax varchar(30)=NULL,
	@DiaChi nvarchar(70)=NULL,
	@MaPB nvarchar(10)=NULL
AS
BEGIN
DECLARE @SqlStr NVARCHAR(4000),
		@ParamList nvarchar(2000)
SELECT @SqlStr = '
       SELECT * 
       FROM NhanVien
       WHERE  (1=1)
       '
IF @MaNV IS NOT NULL
       SELECT @SqlStr = @SqlStr + '
              AND (MaNV LIKE ''%'+@MaNV+'%'')
              '
IF @HoTen IS NOT NULL
       SELECT @SqlStr = @SqlStr + '
              AND (HoNV+'' ''+TenNV LIKE ''%'+@HoTen+'%'')
              '
IF @GioiTinh IS NOT NULL
       SELECT @SqlStr = @SqlStr + '
             AND (GioiTinh LIKE ''%'+@GioiTinh+'%'')
             '
IF @LuongMin IS NOT NULL and @LuongMax IS NOT NULL
       SELECT @SqlStr = @SqlStr + '
             AND (Luong Between Convert(int,'''+@LuongMin+''') AND Convert(int, '''+@LuongMax+'''))
             '
IF @DiaChi IS NOT NULL
       SELECT @SqlStr = @SqlStr + '
              AND (DiaChi LIKE ''%'+@DiaChi+'%'')
              '
IF @MaPB IS NOT NULL
       SELECT @SqlStr = @SqlStr + '
              AND (MaPB LIKE ''%'+@MaPB+'%'')
              '
	EXEC SP_EXECUTESQL @SqlStr
END
GO
