USE [THITRACNGHIEM]
GO
/****** Object:  Table [dbo].[tblCAUHOI]    Script Date: 25/11/2020 11:27:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAUHOI](
	[idCauHoi] [nvarchar](128) NOT NULL,
	[idChuong] [nvarchar](128) NULL,
	[noiDung] [nvarchar](max) NULL,
	[soDapAn] [int] NOT NULL,
	[SoCauDung] [int] NOT NULL,
	[doPhanBiet] [real] NOT NULL,
	[doKho] [real] NOT NULL,
	[a2] [real] NOT NULL,
	[b2] [real] NOT NULL,
	[tgTraLoi] [int] NOT NULL,
	[c] [real] NOT NULL,
	[account] [nvarchar](10) NULL,
	[idNhomCauHoi] [int] NOT NULL,
 CONSTRAINT [PK_dbo.tblCAUHOI] PRIMARY KEY CLUSTERED 
(
	[idCauHoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCAUHOICUADINH]    Script Date: 25/11/2020 11:27:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCAUHOICUADINH](
	[idCauHoiCuaDinh] [int] IDENTITY(1,1) NOT NULL,
	[idDinhKienThuc] [int] NOT NULL,
	[idCauHoi] [nvarchar](128) NULL,
 CONSTRAINT [PK_dbo.tblCAUHOICUADINH] PRIMARY KEY CLUSTERED 
(
	[idCauHoiCuaDinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCHITIETLICHSU]    Script Date: 25/11/2020 11:27:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCHITIETLICHSU](
	[idChiTiet] [int] IDENTITY(1,1) NOT NULL,
	[idLichSuLamBai] [nvarchar](128) NULL,
	[idCauHoi] [nvarchar](128) NULL,
	[idDapAn] [nvarchar](128) NULL,
 CONSTRAINT [PK_dbo.tblCHITIETLICHSU] PRIMARY KEY CLUSTERED 
(
	[idChiTiet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCHUONG]    Script Date: 25/11/2020 11:27:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCHUONG](
	[idChuong] [nvarchar](128) NOT NULL,
	[idMonHoc] [nvarchar](128) NULL,
	[tenChuong] [nvarchar](max) NULL,
	[trongSo] [decimal](3, 2) NOT NULL,
 CONSTRAINT [PK_dbo.tblCHUONG] PRIMARY KEY CLUSTERED 
(
	[idChuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDAPAN]    Script Date: 25/11/2020 11:27:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDAPAN](
	[idDapAn] [nvarchar](128) NOT NULL,
	[idCauHoi] [nvarchar](128) NULL,
	[noiDung] [nvarchar](max) NULL,
	[isDapAnDung] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.tblDAPAN] PRIMARY KEY CLUSTERED 
(
	[idDapAn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDETHI]    Script Date: 25/11/2020 11:27:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDETHI](
	[idDeThi] [nvarchar](128) NOT NULL,
	[idChuong] [nvarchar](128) NULL,
	[tenDeThi] [nvarchar](max) NULL,
	[thoiGianLamBai] [int] NOT NULL,
 CONSTRAINT [PK_dbo.tblDETHI] PRIMARY KEY CLUSTERED 
(
	[idDeThi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDINHKIENTHUC]    Script Date: 25/11/2020 11:27:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDINHKIENTHUC](
	[idDinhKienThuc] [int] IDENTITY(1,1) NOT NULL,
	[idMonHoc] [nvarchar](128) NULL,
	[tenDinhKienThuc] [nvarchar](max) NULL,
	[LoaiDinh] [int] NOT NULL,
 CONSTRAINT [PK_dbo.tblDINHKIENTHUC] PRIMARY KEY CLUSTERED 
(
	[idDinhKienThuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLICHSULAMBAI]    Script Date: 25/11/2020 11:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLICHSULAMBAI](
	[idLichSuLamBai] [nvarchar](128) NOT NULL,
	[maThiSinh] [nvarchar](128) NULL,
	[maDeThi] [nvarchar](max) NULL,
	[thoiGian] [datetime] NOT NULL,
	[noiDung] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.tblLICHSULAMBAI] PRIMARY KEY CLUSTERED 
(
	[idLichSuLamBai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLICHSUNHOMCAUHOI]    Script Date: 25/11/2020 11:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLICHSUNHOMCAUHOI](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nam] [int] NOT NULL,
	[idNhom] [int] NOT NULL,
	[soThiSinhThuocNhom] [int] NOT NULL,
	[tongSoThiSinh] [int] NOT NULL,
 CONSTRAINT [PK_tblLICHSUNHOMCAUHOI] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMATRANTRONGSO]    Script Date: 25/11/2020 11:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMATRANTRONGSO](
	[idTrongSo] [int] IDENTITY(1,1) NOT NULL,
	[tuDinh] [int] NOT NULL,
	[denDinh] [int] NOT NULL,
	[trongSo] [real] NOT NULL,
	[coTheDen] [bit] NOT NULL,
	[trongSoMax] [real] NOT NULL,
 CONSTRAINT [PK_dbo.tblMATRANTRONGSO] PRIMARY KEY CLUSTERED 
(
	[idTrongSo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMONHOC]    Script Date: 25/11/2020 11:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMONHOC](
	[idMonHoc] [nvarchar](128) NOT NULL,
	[tenMonHoc] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.tblMONHOC] PRIMARY KEY CLUSTERED 
(
	[idMonHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblNHOMCAUHOI]    Script Date: 25/11/2020 11:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNHOMCAUHOI](
	[idNhomCauHoi] [int] IDENTITY(1,1) NOT NULL,
	[idChuong] [nvarchar](128) NOT NULL,
	[tenNhomCauHoi] [nvarchar](128) NOT NULL,
	[order] [int] NOT NULL,
 CONSTRAINT [PK_tblNHOMCAUHOI] PRIMARY KEY CLUSTERED 
(
	[idNhomCauHoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblNOIDUNGDETHI]    Script Date: 25/11/2020 11:28:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNOIDUNGDETHI](
	[idNoiDung] [int] IDENTITY(1,1) NOT NULL,
	[idDeThi] [nvarchar](128) NULL,
	[idCauHoi] [nvarchar](128) NULL,
 CONSTRAINT [PK_dbo.tblNOIDUNGDETHI] PRIMARY KEY CLUSTERED 
(
	[idNoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTAIKHOANADMIN]    Script Date: 25/11/2020 11:28:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTAIKHOANADMIN](
	[tenDagNhap] [nvarchar](128) NOT NULL,
	[matKhau] [nvarchar](max) NULL,
	[hoTen] [nvarchar](max) NULL,
	[isAdmin] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.tblTAIKHOANADMIN] PRIMARY KEY CLUSTERED 
(
	[tenDagNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTHISINH]    Script Date: 25/11/2020 11:28:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTHISINH](
	[idThiSinh] [nvarchar](128) NOT NULL,
	[hoTen] [nvarchar](max) NULL,
	[ngaySinh] [datetime] NOT NULL,
	[gioiTinh] [nvarchar](max) NULL,
	[email] [nvarchar](max) NULL,
	[tenDangNhap] [nvarchar](max) NULL,
	[matKhau] [nvarchar](max) NULL,
	[soBaiLam] [int] NOT NULL,
	[tongSoDiem] [real] NOT NULL,
	[DTB] [real] NOT NULL,
	[xepLoai] [nvarchar](max) NULL,
	[nangLuc] [real] NOT NULL,
 CONSTRAINT [PK_dbo.tblTHISINH] PRIMARY KEY CLUSTERED 
(
	[idThiSinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000001', N'C0001', N'<p><strong><a href="http://hoc247.net/cau-hoi-con-nguoi-tiep-nhan-thong-tin-bang-cach-nao-qid6073.html"><strong>Con ngư</strong><strong>ờ</strong><strong>i ti</strong><strong>ế</strong><strong>p nh</strong><strong>ậ</strong><strong>n th&ocirc;ng tin b</strong><strong>ằ</strong><strong>ng c&aacute;ch n&agrave;o?</strong></a></strong></p>', 4, 1, 0.34, 0.32, 0.72, 0.9, 75, 0.25, N'hoang', 3)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000002', N'C0001', N'<p><strong><a href="http://hoc247.net/cau-hoi-truoc-khi-sang-duong-theo-em-con-nguoi-can-phai-xu-li-nhung-thong-tin-gi-qid6074.html"><strong>Trư</strong><strong>ớ</strong><strong>c khi sang đư</strong><strong>ờ</strong><strong>ng, theo em, con ngư</strong><strong>ờ</strong><strong>i c</strong><strong>ầ</strong><strong>n ph</strong><strong>ả</strong><strong>i x</strong><strong>ử</strong><strong> l&iacute; nh</strong><strong>ữ</strong><strong>ng th&ocirc;ng tin g&igrave;?</strong></a></strong></p>', 4, 1, 0.67, 0.06, 0.6, 0.16, 75, 0.25, N'hoang', 3)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000003', N'C0001', N'<p><strong><a href="http://hoc247.net/cau-hoi-viec-thay-co-giao-giang-bai-cho-hoc-sinh-duoc-goi-la-buoc-nao-trong-qua-trinh-xu-li-thong-tin-qid6075.html"><strong>Việc thầy c&ocirc; gi&aacute;o giảng b&agrave;i cho học sinh được gọi l&agrave; bước n&agrave;o trong qu&aacute; tr&igrave;nh xử l&iacute; th&ocirc;ng tin?</strong></a></strong></p>', 4, 1, 0.48, 0.91, 0.27, 0.63, 75, 0.25, N'hoang', 3)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000004', N'C0001', N'<p><strong><a href="http://hoc247.net/cau-hoi-hoat-dong-thong-tin-la--qid6076.html">Hoạt động th&ocirc;ng tin l&agrave;:</a></strong></p>', 4, 1, 0.91, 0.49, 0.01, 0.79, 75, 0.25, N'hoang', 3)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000005', N'C0001', N'<p><strong>&nbsp;</strong><strong><a href="http://hoc247.net/cau-hoi-thong-tin-co-the-giup-cho-con-nguoi--qid6077.html">Th&ocirc;ng tin c&oacute; thể gi&uacute;p cho con người:</a></strong></p><p>&nbsp;</p>', 4, 1, 0.08, 0.99, 0.67, 0.74, 75, 0.25, N'hoang', 3)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000006', N'C0001', N'<p><strong><a href="http://hoc247.net/cau-hoi-du-lieu-hoac-lenh-duoc-nhap-vao-bo-nho-cua-may-tinh-la--qid6078.html">Dữ liệu hoặc lệnh được nhập v&agrave;o bộ nhớ của m&aacute;y t&iacute;nh l&agrave;:</a></strong></p><p>&nbsp;</p>', 4, 1, 0.62, 0.12, 0.59, 0.32, 75, 0.25, N'hoang', 3)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000007', N'C0002', N'<p><strong>Chức năng ch&iacute;nh của Microsoft Word l&agrave; g&igrave;?</strong></p>', 4, 1, 0.03, 0.48, 0.15, 0.74, 75, 0.25, N'an', 20)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000008', N'C0001', N'<p><strong><a href="http://hoc247.net/cau-hoi-nghe-ban-tin-du-bao-thoi-tiet-qid6079.html"><strong>Nghe bản tin dự b&aacute;o thời tiết &quot;Ng&agrave;y mai trời c&oacute; mưa&quot;, em sẽ xử l&yacute; th&ocirc;ng tin v&agrave; quyết định như thế n&agrave;o (th&ocirc;ng tin ra)?</strong></a></strong></p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>', 4, 1, 0.73, 0.03, 0.06, 0.07, 75, 0.25, N'hoang', 5)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000009', N'C0002', N'<p><strong>Muốn đặt lề phải của trang th&igrave; trong hộp thoại Page Setup chọn &ocirc;:</strong></p>', 4, 1, 0.78, 0.81, 0.03, 0.72, 75, 0.25, N'an', 22)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000010', N'C0001', N'<p><strong><a href="http://hoc247.net/cau-hoi-cong-cu-nao-duoi-day-duoc-lam-ra-khong-phai-de-ho-tro-con-nguoi-trong-hoat-dong-thong-tin--qid6080.html"><strong>C&ocirc;ng cụ n&agrave;o dưới đ&acirc;y được l&agrave;m ra kh&ocirc;ng phải để hỗ trợ con người trong hoạt động th&ocirc;ng tin:</strong></a></strong></p><p>&nbsp;</p><p>&nbsp;</p>', 4, 1, 0.94, 0.25, 0.58, 0.09, 75, 0.25, N'hoang', 5)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000011', N'C0002', N'<p><strong>Để ch&egrave;n h&igrave;nh ảnh minh hoạ v&agrave;o văn bản, ta thực hiện:</strong></p>', 4, 1, 0.69, 0.3, 0.36, 0.83, 75, 0.25, N'an', 21)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000012', N'C0001', N'<p><strong><a href="http://hoc247.net/cau-hoi-em-la-sao-do-cua-lop--qid6081.html">Em l&agrave; sao đỏ của lớp. Theo em, th&ocirc;ng tin n&agrave;o kh&ocirc;ng phải l&agrave; th&ocirc;ng tin cần xử l&iacute; (th&ocirc;ng tin v&agrave;o) để xếp loại c&aacute;c lớp cuối tuần?</a></strong></p>', 4, 1, 0.36, 0.46, 0.85, 0.93, 75, 0.25, N'hoang', 3)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000013', N'C0002', N'<p><strong>Để xo&aacute; h&agrave;ng trong bảng, em sử dụng lệnh sau:</strong></p>', 4, 1, 0.02, 0.65, 0.71, 0.22, 75, 0.25, N'an', 22)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000014', N'C0002', N'<p><strong>Sau khi g&otilde; một k&iacute; tự con trỏ soạn thảo nằm ở vị tr&iacute;:</strong></p>', 4, 1, 0.74, 0.26, 0.54, 0.2, 75, 0.25, N'an', 22)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000015', N'C0001', N'<p><strong><a href="http://hoc247.net/cau-hoi-mot-trong-nhung-nhiem-vu-chinh-cua-tin-hoc-la--qid6082.html">Một trong những nhiệm vụ ch&iacute;nh của tin học l&agrave;:</a></strong></p>', 4, 1, 0.17, 0.18, 0.07, 0.3, 75, 0.25, N'hoang', 3)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000016', N'C0002', N'<p><strong>Khi g&otilde; xong đoạn văn bản, muốn xuống d&ograve;ng mới em phải:</strong></p>', 4, 1, 0.39, 0.3, 0.75, 0.23, 75, 0.25, N'an', 23)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000017', N'C0001', N'<p><strong><a href="http://hoc247.net/cau-hoi-van-ban-so-hinh-anh-am-thanh-phim-anh-trong-may-tinh-duoc-goi-chung-la--qid6201.html">Văn bản, số, h&igrave;nh ảnh, &acirc;m thanh, phim ảnh trong m&aacute;y t&iacute;nh được gọi chung l&agrave;:</a></strong></p>', 4, 1, 0.8, 0.23, 0.86, 0.57, 75, 0.25, N'hoang', 5)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000018', N'C0003', N'<p>Bảng t&iacute;nh thường được d&ugrave;ng để:</p>', 4, 1, 0.3, 0.18, 0.35, 0.69, 75, 0.25, N'tram', 17)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000019', N'C0001', N'<p><strong><a href="http://hoc247.net/cau-hoi-may-anh-la-cong-cu-dung-de--qid6202.html">M&aacute;y ảnh l&agrave; c&ocirc;ng cụ d&ugrave;ng để:</a></strong></p>', 4, 1, 0.15, 0.52, 0.1, 0.77, 75, 0.25, N'hoang', 3)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000020', N'C0002', N'<p><strong>Th&ocirc;ng thường sau khi soạn thảo văn bản th&igrave; văn bản bắt đầu từ vị tr&iacute;:</strong></p>', 4, 1, 0.5, 0.7, 0.04, 0.62, 75, 0.25, N'an', 20)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000021', N'C0003', N'<p>Chương tr&igrave;nh bảng t&iacute;nh cho ph&eacute;p:</p>', 4, 1, 0.87, 0.46, 0.52, 0.66, 75, 0.25, N'tram', 19)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000022', N'C0002', N'<p><strong>Văn bản c&oacute; nhiều trang, để di chuyển nhanh con trỏ về cuối văn bản:</strong></p>', 4, 1, 0.38, 0.17, 0.37, 0.27, 75, 0.25, N'an', 20)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000023', N'C0001', N'<p><strong><a href="http://hoc247.net/cau-hoi-nguoi-xua-dung-lua-de--qid6203.html"><strong>Ngư</strong><strong>ờ</strong><strong>i xưa d&ugrave;ng l</strong><strong>ử</strong><strong>a đ</strong><strong>ể</strong><strong>:</strong></a></strong></p>', 4, 1, 0.66, 0.12, 0.32, 0.73, 75, 0.25, N'hoang', 3)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000024', N'C0002', N'<p><strong>Khi con trỏ ở cuối d&ograve;ng, để di chuyển nhanh con trỏ về đầu d&ograve;ng th&igrave;:</strong></p>', 4, 1, 0.64, 0.85, 0.72, 0.28, 75, 0.25, N'an', 22)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000025', N'C0003', N'<p>Trong bảng t&iacute;nh excel, th&ocirc;ng tin được lưu trữ dưới dạng bảng c&oacute; ưu điểm g&igrave;?</p>', 4, 1, 0.02, 0.66, 0.55, 0.67, 75, 0.25, N'tram', 18)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000026', N'C0001', N'<p><strong>:&nbsp;</strong><strong><a href="http://hoc247.net/cau-hoi-may-tinh-khong-the-dung-de--qid6204.html">M&aacute;y t&iacute;nh kh&ocirc;ng thể d&ugrave;ng để:</a></strong></p>', 4, 1, 0.19, 0.9, 0.9, 0.87, 75, 0.25, N'hoang', 5)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000027', N'C0002', N'<p><strong>Để g&otilde; văn bản hiển thị được chữ tiếng Việt ta cần:</strong></p>', 4, 1, 0.98, 0.42, 0.71, 0.99, 75, 0.25, N'an', 21)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000028', N'C0003', N'<p>Khi nhập dữ liệu v&agrave;o bảng t&iacute;nh th&igrave;:</p>', 4, 1, 0.28, 0.65, 0.36, 0.44, 75, 0.25, N'tram', 17)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000029', N'C0002', N'<p><strong>Khi g&otilde; văn bản, em c&oacute; thể:</strong></p>', 4, 1, 0.88, 0.86, 0.88, 0.5, 75, 0.25, N'an', 21)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000030', N'C0001', N'<p><strong><a href="http://hoc247.net/cau-hoi-theo-em-mui-vi-cua-mon-an-ngon-me-nau-cho-em-la-thong-tin-dang-nao-qid6205.html">Theo em, m&ugrave;i vị của m&oacute;n ăn ngon mẹ nấu cho em l&agrave; th&ocirc;ng tin dạng n&agrave;o?</a></strong></p>', 4, 1, 0.51, 0.52, 0.1, 0.26, 75, 0.25, N'hoang', 4)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000031', N'C0003', N'<p>&Ocirc; t&iacute;nh c&oacute; viền đậm xung quanh để ph&acirc;n biệt với c&aacute;c &ocirc; t&iacute;nh kh&aacute;c gọi l&agrave;:</p>', 4, 1, 0.42, 0.78, 0.3, 0.6, 75, 0.25, N'tram', 17)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000032', N'C0002', N'<p><strong>Để sao ch&eacute;p hoặc di chuyển một đoạn văn bản em cần phải:</strong></p>', 4, 1, 0.98, 0.49, 0.8, 0.3, 75, 0.25, N'an', 21)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000033', N'C0001', N'<p><strong><a href="http://hoc247.net/cau-hoi-cac-ba-da-trong-van-mieu-quoc-tu-giam-cho-em-biet-thong-tin-gi-qid6206.html">C&aacute;c bia đ&aacute; trong Văn Miếu - Quốc Tự Gi&aacute;m cho em biết th&ocirc;ng tin g&igrave;?</a></strong></p>', 4, 1, 0.61, 0.53, 0.57, 0.68, 75, 0.25, N'hoang', 2)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000034', N'C0001', N'<p><strong><a href="http://hoc247.net/cau-hoi-nhung-dang-thong-co-ban-trong-tin-hoc-qid6207.html">Những dạng th&ocirc;ng cơ bản trong tin học?</a></strong></p>', 4, 1, 0.33, 0.8, 0.46, 0.09, 75, 0.25, N'hoang', 4)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000035', N'C0002', N'<p><strong>Muốn chọn văn bản từ vị tr&iacute; con trỏ đến đầu d&ograve;ng th&igrave;:</strong></p>', 4, 1, 0.76, 0.33, 0.36, 0.44, 75, 0.25, N'an', 22)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000036', N'C0003', N'<p>Thao t&aacute;c nh&aacute;y chuột chọn một &ocirc; gọi l&agrave;:</p>', 4, 1, 0.28, 0.2, 0.16, 0.07, 75, 0.25, N'tram', 18)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000037', N'C0001', N'<p><strong><a href="http://hoc247.net/cau-hoi-the-nao-la-bieu-dien-thong-tin-qid6208.html">Thế n&agrave;o l&agrave; biểu diễn th&ocirc;ng tin?</a></strong></p>', 4, 1, 0.19, 0.32, 0.11, 0.87, 75, 0.25, N'hoang', 5)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000038', N'C0002', N'<p><strong>Muốn x&oacute;a một phần văn bản em thực hiện:</strong></p>', 4, 1, 0.53, 0.22, 0.8, 0.29, 75, 0.25, N'an', 24)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000039', N'C0001', N'<p><strong><a href="http://hoc247.net/cau-hoi-trong-may-tin-thong-tin-duoc-bieu-dien-nhu-the-nao-qid6209.html">Trong m&aacute;y tin th&ocirc;ng tin được biểu diễn như thế n&agrave;o?</a></strong></p>', 4, 1, 0.67, 0.49, 0.69, 0.67, 75, 0.25, N'hoang', 4)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000040', N'C0002', N'<p><strong>Sau khi soạn thảo văn bản em c&oacute; thể định dạng k&iacute; tự chuyển th&agrave;nh:</strong></p>', 4, 1, 0.65, 0.56, 0.57, 0.19, 75, 0.25, N'an', 21)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000041', N'C0003', N'<p>Một bảng t&iacute;nh c&oacute; thể bao gồm:</p>', 4, 1, 0.51, 0.97, 0.19, 0.36, 75, 0.25, N'tram', 17)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000042', N'C0001', N'<p><strong><a href="http://hoc247.net/cau-hoi-theo-em-tai-sao-thong-tin-trong-may-tinh-bieu-dien-thanh-day-bit-qid6210.html">Theo em, tại sao th&ocirc;ng tin trong m&aacute;y t&iacute;nh biểu diễn th&agrave;nh d&atilde;y b&iacute;t?</a></strong></p>', 4, 1, 0.68, 0.44, 0.78, 0.61, 75, 0.25, N'hoang', 4)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000043', N'C0002', N'<p><strong>Muốn l&agrave;m nổi bật những điểm cần nhấn trong đoạn văn em c&oacute; thể:</strong></p>', 4, 1, 0.38, 0.88, 0.44, 0.27, 75, 0.25, N'an', 23)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000044', N'C0001', N'<p><strong><a href="http://hoc247.net/cau-hoi-han-che-lon-nhat-cua-may-tinh-hien-nay-la--qid6651.html">Hạn chế lớn nhất của m&aacute;y t&iacute;nh hiện nay l&agrave;:</a></strong></p>', 4, 1, 0.74, 0.94, 0.83, 0.79, 75, 0.25, N'hoang', 3)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000045', N'C0003', N'<p>Khi mở một bảng t&iacute;nh mới em thường thấy c&oacute;:</p>', 4, 1, 0.87, 0.95, 0.94, 0.25, 75, 0.25, N'tram', 18)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000046', N'C0002', N'<p><strong>Định dạng đoạn văn bản:</strong></p>', 4, 1, 0.59, 0.58, 0.33, 0.59, 75, 0.25, N'an', 21)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000047', N'C0003', N'<p>H&atilde;y chọn c&acirc;u đ&uacute;ng:</p>', 4, 1, 0.87, 0.37, 0.66, 0.25, 75, 0.25, N'tram', 18)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000048', N'C0001', N'<p><strong><a href="http://hoc247.net/cau-hoi-may-tinh-chua-xu-li-duoc--qid6652.html">M&aacute;y t&iacute;nh chưa xử l&iacute; được:</a></strong></p>', 4, 1, 0.98, 0.09, 0.64, 0.83, 75, 0.25, N'hoang', 1)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000049', N'C0002', N'<p><strong>Để định dạng đoạn văn bản ta c&oacute; thể chọn đoạn văn bản theo c&aacute;ch:</strong></p>', 4, 1, 0.31, 0.3, 0.92, 0.96, 75, 0.25, N'an', 23)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000050', N'C0001', N'<p><strong><a href="http://hoc247.net/cau-hoi-nhung-kha-nang-to-lon-nao-da-lam-cho-may-tinh-tro-thanh-mot-cong-cu-xu-thong-tin-du-lieu-qid6653.html">Những khả năng to lớn n&agrave;o đ&atilde; l&agrave;m cho m&aacute;y t&iacute;nh trở th&agrave;nh một c&ocirc;ng cụ xử th&ocirc;ng tin dữ liệu?</a></strong></p>', 4, 1, 0.46, 0.7, 0.29, 0.51, 75, 0.25, N'hoang', 2)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000051', N'C0003', N'<p>C&acirc;u n&agrave;o sau đ&acirc;y đ&uacute;ng?</p>', 4, 1, 0.2, 0.72, 0.88, 0.97, 75, 0.25, N'tram', 18)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000052', N'C0001', N'<p><strong><a href="http://hoc247.net/cau-hoi-em-co-the-dung-may-tinh-vao-viec-gi-qid6654.html">Em c&oacute; thể d&ugrave;ng m&aacute;y t&iacute;nh v&agrave;o việc g&igrave;?</a></strong></p>', 4, 1, 0.67, 0.93, 0.87, 0.31, 75, 0.25, N'hoang', 4)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000053', N'C0003', N'<p>C&aacute;c th&agrave;nh phần ch&iacute;nh tr&ecirc;n trang t&iacute;nh bao gồm?</p>', 4, 1, 0.63, 0.76, 0.29, 0.62, 75, 0.25, N'tram', 19)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000054', N'C0002', N'<p><strong>Khi văn bản đ&atilde; được tr&igrave;nh b&agrave;y theo hướng ngang th&igrave;:</strong></p>', 4, 1, 0.51, 0.82, 0.65, 0.9, 75, 0.25, N'an', 20)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000055', N'C0001', N'<p><strong><a href="http://hoc247.net/cau-hoi-may-tinh-co-the-dung-de-dieu-khien-qid6655.html">M&aacute;y t&iacute;nh c&oacute; thể d&ugrave;ng để điều khiển?</a></strong></p>', 4, 1, 0.3, 0.89, 0.6, 0.71, 75, 0.25, N'hoang', 3)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000056', N'C0003', N'<p>H&agrave;ng l&agrave; tập hợp c&aacute;c &ocirc; trong bảng t&iacute;nh theo chiều ngang, k&iacute; hiệu n&oacute;i về h&agrave;ng n&agrave;o sau đ&acirc;y l&agrave; đ&uacute;ng?</p>', 4, 1, 0.61, 0.79, 0.4, 0.51, 75, 0.25, N'tram', 17)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000057', N'C0001', N'<p><strong><a href="http://hoc247.net/cau-hoi-suc-manh-cua-may-tinh-tuy-thuoc-vao-qid6656.html">Sức mạnh của m&aacute;y t&iacute;nh tuỳ thuộc v&agrave;o?</a></strong></p>', 4, 1, 0.09, 0.89, 0.94, 0.15, 75, 0.25, N'hoang', 1)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000058', N'C0002', N'<p><strong>Khi soạn thảo văn bản c&oacute; nhiều trang, em:</strong></p>', 4, 1, 0.66, 0.58, 0.18, 0.04, 75, 0.25, N'an', 23)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000059', N'C0003', N'<p>Giao của h&agrave;ng v&agrave; cột gọi l&agrave;:</p>', 4, 1, 0.83, 0.99, 0.56, 0.12, 75, 0.25, N'tram', 17)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000060', N'C0001', N'<p><strong><a href="http://hoc247.net/cau-hoi-may-tinh-khong-the-lam-cong-viec-nao--qid6657.html">M&aacute;y t&iacute;nh kh&ocirc;ng thể l&agrave;m c&ocirc;ng việc n&agrave;o:</a></strong></p>', 4, 1, 0.78, 0.76, 0.85, 0.26, 75, 0.25, N'hoang', 1)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000061', N'C0002', N'<p><strong>Để đặt lề tr&ecirc;n v&agrave; lề dưới cho trang, chọn lệnh File -&gt; Page Setup, trong hộp thoại Page Setup chọn &ocirc;:</strong></p>', 4, 1, 0.49, 0.55, 0.22, 0.25, 75, 0.25, N'an', 21)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000062', N'C0003', N'<p>Khối l&agrave;:</p>', 4, 1, 0.3, 0.1, 0.92, 0.68, 75, 0.25, N'tram', 16)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000063', N'C0001', N'<p><strong><a href="http://hoc247.net/cau-hoi-thiet-bi-nao-duoi-day-duoc-dung-de-in-van-ban-hay-hinh-anh-tren-giay-qid7960.html">Thiết bị n&agrave;o dưới đ&acirc;y được d&ugrave;ng để in văn bản hay h&igrave;nh ảnh tr&ecirc;n giấy?</a></strong></p>', 4, 1, 0.51, 0.46, 0.92, 0.79, 75, 0.25, N'hoang', 1)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000064', N'C0002', N'<p><strong>Để đặt lề tr&aacute;i v&agrave; lề phải cho trang, chọn lệnh File -&gt; Page Setup, trong hộp thoại Page Setup chọn &ocirc;:</strong></p>', 4, 1, 0.94, 0.25, 0.85, 0.3, 75, 0.25, N'an', 24)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000065', N'C0003', N'<p>Khối &ocirc; l&agrave; tập hợp nhiều &ocirc; kế cận tạo th&agrave;nh h&igrave;nh chữ nhật. Địa chỉ khối &ocirc; được thể hiện như c&acirc;u n&agrave;o sau đ&acirc;y l&agrave; đ&uacute;ng?</p>', 4, 1, 0.3, 0.94, 0.31, 0.61, 75, 0.25, N'tram', 17)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000066', N'C0001', N'<p><strong><a href="http://hoc247.net/cau-hoi-thiet-bi-nao-sau-day-la-thiet-bi-ra--qid7961.html">Thiết bị n&agrave;o sau đ&acirc;y l&agrave; thiết bị xuất:</a></strong></p>', 4, 1, 0.99, 0.26, 0.55, 0.43, 75, 0.25, N'hoang', 1)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000067', N'C0002', N'<p><strong>Để đặt lề tr&aacute;i v&agrave; lề dưới cho trang, chọn lệnh File -&gt; Page Setup, trong hộp thoại Page Setup chọn &ocirc;</strong>:</p>', 4, 1, 0.64, 0.89, 0.2, 0.14, 75, 0.25, N'an', 24)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000068', N'C0003', N'<p>C&oacute; thể quan s&aacute;t ở đ&acirc;u tr&ecirc;n trang t&iacute;nh để biết được một &ocirc; chứa c&ocirc;ng thức hay chứa dữ liệu?</p>', 4, 1, 0.94, 0.47, 0.37, 0.17, 75, 0.25, N'tram', 17)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000069', N'C0001', N'<p><strong><a href="http://hoc247.net/cau-hoi-trong-may-tinh-nguoi-ta-chia-bo-nho-thanh-may-loai--qid7962.html">Trong m&aacute;y t&iacute;nh người ta chia bộ nhớ th&agrave;nh mấy loại:</a></strong></p>', 4, 1, 0.79, 0.1, 0.08, 0.89, 75, 0.25, N'hoang', 1)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000070', N'C0002', N'<p><strong>Để đặt lề tr&ecirc;n v&agrave; lề phải cho trang, chọn lệnh File -&gt; Page Setup, trong hộp thoại Page Setup chọn &ocirc;:</strong></p>', 4, 1, 0.7, 0.49, 0.55, 0.2, 75, 0.25, N'an', 22)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000071', N'C0002', N'<p><strong>Trước khi in văn bản em c&oacute; thể:</strong></p>', 4, 1, 0.72, 0.3, 0.89, 0.72, 75, 0.25, N'an', 21)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000072', N'C0001', N'<p><strong><a href="http://hoc247.net/cau-hoi-mo-hinh-cua-qua-trinh-ba-buoc-la--qid7964.html">M&ocirc; h&igrave;nh của qu&aacute; tr&igrave;nh ba bước l&agrave;:</a></strong></p>', 4, 1, 0.88, 0.59, 0.79, 0.13, 75, 0.25, N'hoang', 2)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000073', N'C0001', N'<p><strong><a href="http://hoc247.net/cau-hoi-ram-con-duoc-goi-la-qid7965.html">RAM c&ograve;n được gọi l&agrave;?</a></strong></p>', 4, 1, 0.04, 0.33, 0.99, 0.4, 75, 0.25, N'hoang', 4)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000074', N'C0002', N'<p><strong>Muốn in văn bản em c&oacute; thể:</strong></p>', 4, 1, 0.74, 0.81, 0.43, 0.71, 75, 0.25, N'an', 21)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000075', N'C0003', N'<p>Cụm từ G5 trong hộp t&ecirc;n&nbsp; &nbsp; &nbsp;&nbsp;c&oacute; nghĩa l&agrave;:</p>', 4, 1, 0.31, 0.15, 0.34, 0.3, 75, 0.25, N'tram', 19)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000076', N'C0001', N'<p><strong><a href="http://hoc247.net/cau-hoi-thong-tin-trong-thiet-bi-nao-se-bi-mat-di-khi-tat-may--qid7966.html">Th&ocirc;ng tin trong thiết bị n&agrave;o sẽ bị mất đi khi tắt m&aacute;y:</a></strong></p>', 4, 1, 0.24, 0.37, 0.51, 0.28, 75, 0.25, N'hoang', 5)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000077', N'C0002', N'<p><strong>Khi in văn bản c&oacute; thể chọn:</strong></p>', 4, 1, 0.69, 0.01, 0.07, 0.91, 75, 0.25, N'an', 21)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000078', N'C0003', N'<p>Để k&iacute;ch hoạt &ocirc; D150 nằm ngo&agrave;i phạm vi m&agrave;n h&igrave;nh, ngo&agrave;i c&aacute;ch d&ugrave;ng chuột v&agrave; c&aacute;c thanh cuốn em c&oacute; thể:</p>', 4, 1, 0.43, 0.06, 0.59, 0.96, 75, 0.25, N'tram', 19)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000079', N'C0002', N'<p><strong>Khi soạn thảo văn bản ta c&oacute; thể t&igrave;m kiếm:</strong></p>', 4, 1, 0.99, 0.14, 0.15, 0.28, 75, 0.25, N'an', 24)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000080', N'C0003', N'<p>Khi kh&ocirc;ng nh&igrave;n thấy &ocirc; n&agrave;o được k&iacute;ch hoạt tr&ecirc;n m&agrave;n h&igrave;nh ta c&oacute; thể dựa v&agrave;o th&ocirc;ng tin n&agrave;o sau đ&acirc;y để n&oacute;i ngay &ocirc; đang được k&iacute;ch hoạt:</p>', 4, 1, 0.3, 0.2, 0.99, 0.39, 75, 0.25, N'tram', 15)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000081', N'C0002', N'<p><strong>Để t&igrave;m kiếm nhanh một từ em thực hiện:</strong></p>', 4, 1, 0.18, 0.08, 0.65, 0.88, 75, 0.25, N'an', 20)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000082', N'C0003', N'<p>Hộp t&ecirc;n cho biết:</p>', 4, 1, 0.74, 0.41, 0.79, 0.33, 75, 0.25, N'tram', 19)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000083', N'C0002', N'<p><strong>Để t&igrave;m kiếm v&agrave; thay thế nhanh một cụm từ em thực hiện:</strong></p>', 4, 1, 0.66, 0.66, 0.81, 0.94, 75, 0.25, N'an', 20)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000084', N'C0003', N'<p>Thanh c&ocirc;ng thức cho ta biết nội dung của &ocirc; đang được chọn.</p>', 2, 1, 0.7, 0.07, 0.8, 0.44, 75, 0.25, N'tram', 19)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000085', N'C0002', N'<p><strong>Khi t&igrave;m kiếm một từ, em nhập từ cần t&igrave;m trong hộp Find what v&agrave; phải nhập:</strong></p>', 4, 1, 0.55, 0.91, 0.76, 0.01, 75, 0.25, N'an', 22)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000086', N'C0001', N'<p><strong><a href="http://hoc247.net/cau-hoi-theo-nguyen-ly-von-neuman-cau-truc-chung-cua-may-tinh-dien-tu-gom--qid7968.html">Theo nguy&ecirc;n l&yacute; Von Neuman cấu tr&uacute;c chung của m&aacute;y t&iacute;nh điện tử gồm:</a></strong></p>', 4, 1, 0.92, 0.46, 0.3, 0.74, 75, 0.25, N'hoang', 2)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000087', N'C0003', N'<p>Nếu chọn đồng thời nhiều khối &ocirc; kh&aacute;c nhau, ta chọn khối đầu ti&ecirc;n &nbsp;v&agrave; nhấn chọn ph&iacute;m n&agrave;o để lần lượt chọn c&aacute;c khối &ocirc; tiếp theo</p>', 4, 1, 0.02, 0.3, 0.81, 0.66, 75, 0.25, N'tram', 15)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000088', N'C0001', N'<p><strong><a href="http://hoc247.net/cau-hoi-cac-thiet-bi-de-luu-tru-thong-tin-la--qid7969.html">C&aacute;c thiết bị để lưu trữ th&ocirc;ng tin l&agrave;:</a></strong></p>', 4, 1, 0.9, 0.95, 0.76, 0.27, 75, 0.25, N'hoang', 5)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000089', N'C0002', N'<p><strong>Khi t&igrave;m được từ cần t&igrave;m em c&oacute; thể:</strong></p>', 4, 1, 0.16, 0.08, 0.34, 0.9, 75, 0.25, N'an', 23)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000090', N'C0003', N'<p>Để lưu lại kết quả l&agrave;m việc em c&oacute; thể sử dụng một trong những c&aacute;ch sau:</p>', 4, 1, 0.81, 0.43, 0.36, 0.78, 75, 0.25, N'tram', 18)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000091', N'C0001', N'<p><strong><a href="http://hoc247.net/cau-hoi-theo-em-windows-xp-la-phan-mem--qid7970.html">Theo em, Windows XP l&agrave; phần mềm:</a></strong></p>', 4, 1, 0.32, 0.78, 0.79, 0.88, 75, 0.25, N'hoang', 1)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000092', N'C0002', N'<p><strong>Mục đ&iacute;ch của việc ch&egrave;n th&ecirc;m h&igrave;nh ảnh v&agrave;o văn bản l&agrave;:</strong></p>', 4, 1, 0.74, 0.17, 0.9, 0.4, 75, 0.25, N'an', 23)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000093', N'C0003', N'<p>Địa chỉ của khối gồm c&aacute;c &ocirc; nằm tr&ecirc;n c&aacute;c cột C, D, E v&agrave; nằm tr&ecirc;n c&aacute;c h&agrave;ng 2, 3, 4, 5 l&agrave;:</p>', 4, 1, 0.41, 0.67, 0.61, 0.02, 75, 0.25, N'tram', 19)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000094', N'C0001', N'<p><strong><a href="http://hoc247.net/cau-hoi-cac-thong-tin-trong-bo-nho-ngoai-se--qid7971.html">C&aacute;c th&ocirc;ng tin trong bộ nhớ ngo&agrave;i sẽ:</a></strong></p>', 4, 1, 0.03, 0.48, 0.75, 0.1, 75, 0.25, N'hoang', 4)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000095', N'C0002', N'<p><strong>Khi ch&egrave;n h&igrave;nh ảnh v&agrave;o trong văn bản em c&oacute; thể:</strong></p>', 4, 1, 0.6, 0.73, 0.69, 0.26, 75, 0.25, N'an', 23)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000096', N'C0001', N'<p><strong><a href="http://hoc247.net/cau-hoi-phan-mem-duoc-chia-ra-lam-hai-loai-do-la--qid7972.html">Phần mềm được chia ra l&agrave;m hai loại đ&oacute; l&agrave;:</a></strong></p>', 4, 1, 0.14, 0.16, 0.61, 0.79, 75, 0.25, N'hoang', 1)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000097', N'C0003', N'<p>Khi nhập xong một c&ocirc;ng thức ở &ocirc; t&iacute;nh em phải l&agrave;m g&igrave; để kết th&uacute;c:</p>', 4, 1, 0.82, 0.55, 0.18, 0.01, 75, 0.25, N'tram', 15)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000098', N'C0002', N'<p><strong>Khi ch&egrave;n h&igrave;nh ảnh, vị tr&iacute; h&igrave;nh được ch&egrave;n nằm ở:</strong></p>', 4, 1, 0.95, 0.21, 0.38, 0.22, 75, 0.25, N'an', 21)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000099', N'C0001', N'<p><strong><a href="http://hoc247.net/cau-hoi-thao-tac-nhay-nut-phai-chuot-la--qid11592.html">Thao t&aacute;c &quot;Nh&aacute;y n&uacute;t phải chuột&quot; &nbsp;l&agrave;:</a></strong></p>', 4, 1, 0.84, 0.5, 0.25, 0.53, 75, 0.25, N'hoang', 1)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000100', N'C0003', N'<p>C&aacute;c k&iacute; hiệu d&ugrave;ng để k&iacute; hiệu c&aacute;c ph&eacute;p to&aacute;n</p>', 4, 1, 0.27, 0.51, 0.7, 0.26, 75, 0.25, N'tram', 19)
GO
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000101', N'C0001', N'<p><strong><a href="http://hoc247.net/cau-hoi-nut-start-nam-o-dau-tren-man-hinh-qid11594.html">N&uacute;t Start nằm ở đ&acirc;u tr&ecirc;n m&agrave;n h&igrave;nh?</a></strong></p>', 4, 1, 0.07, 0.62, 0.33, 0.42, 75, 0.25, N'hoang', 3)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000102', N'C0003', N'<p>Giả sử cần t&iacute;nh tổng gi&aacute; trị của c&aacute;c &ocirc; B2 v&agrave; E4, sau đ&oacute; nh&acirc;n với gi&aacute; trị trong &ocirc; C2. C&ocirc;ng thức n&agrave;o trong số c&aacute;c c&ocirc;ng thức sau đ&acirc;y l&agrave; đ&uacute;ng:</p>', 4, 1, 0.74, 0.33, 0.84, 0.24, 75, 0.25, N'tram', 17)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000103', N'C0001', N'<p><strong><a href="http://hoc247.net/cau-hoi-phim-dieu-khien-la-phim-nao-trong-cac-phim-sau-qid11600.html">Ph&iacute;m&nbsp;n&agrave;o l&agrave; ph&iacute;m đặc biệt trong c&aacute;c ph&iacute;m sau?</a></strong></p>', 4, 1, 0.31, 0.36, 0.82, 0.51, 75, 0.25, N'hoang', 5)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000104', N'C0002', N'<p><strong>Để ch&egrave;n được h&igrave;nh ảnh v&agrave;o văn bản em thực hiện</strong></p>', 4, 1, 0.68, 0.82, 0.03, 0.55, 75, 0.25, N'an', 23)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000105', N'C0003', N'<p>Nếu trong 1 &ocirc; t&iacute;nh c&oacute; c&aacute;c k&yacute; hiệu ########, điều đ&oacute; c&oacute; nghĩa l&agrave;?</p>', 4, 1, 0.68, 0.95, 0.68, 0.72, 75, 0.25, N'tram', 17)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000106', N'C0001', N'<p><strong><a href="http://hoc247.net/cau-hoi-thao-tac-di-chuyen-chuot-la--qid11601.html">Thao t&aacute;c &quot;Di chuyển chuột&quot; l&agrave;:</a></strong></p>', 4, 1, 0.43, 0.96, 0.37, 0.91, 75, 0.25, N'hoang', 2)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000107', N'C0003', N'<p>H&agrave;m AVERAGE l&agrave; h&agrave;m d&ugrave;ng để:</p>', 4, 1, 0.32, 0.24, 0.17, 0.7, 75, 0.25, N'tram', 15)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000108', N'C0002', N'<p><strong>H&igrave;nh ảnh sau khi ch&egrave;n v&agrave;o văn bản th&igrave;:</strong></p>', 4, 1, 0.55, 0.48, 0.48, 0.33, 75, 0.25, N'an', 23)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000109', N'C0001', N'<p><strong><a href="http://hoc247.net/cau-hoi-de-thoat-khoi-chuong-trinh-ta-thuc-hien--qid11602.html">Để tho&aacute;t khỏi chương tr&igrave;nh, ta thực hiện:</a></strong></p>', 4, 1, 0.59, 0.71, 0.7, 0.1, 75, 0.25, N'hoang', 1)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000110', N'C0002', N'<p><strong>Tr&ecirc;n một d&ograve;ng văn bản th&igrave; h&igrave;nh ảnh:</strong></p>', 4, 1, 0.61, 0.85, 0.32, 0.86, 75, 0.25, N'an', 22)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000111', N'C0001', N'<p><strong><a href="http://hoc247.net/cau-hoi-co-may-thao-tac-chinh-voi-chuot--qid12020.html">C&oacute; mấy thao t&aacute;c ch&iacute;nh với chuột:</a></strong></p>', 4, 1, 0.9, 0.98, 0.1, 0.3, 75, 0.25, N'hoang', 4)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000112', N'C0001', N'<p><strong><a href="http://hoc247.net/cau-hoi-khi-tay-ban-cam-chuot-thi-qid12021.html">Khi tay bạn cầm chuột th&igrave;?</a></strong></p>', 4, 1, 0.22, 0.83, 0.29, 0.96, 75, 0.25, N'hoang', 1)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000113', N'C0003', N'<p>Kết quả của h&agrave;m sau: =SUM(A1:A3), trong đ&oacute;: A1= 5; A2=39; A3=52</p>', 4, 1, 0.89, 0.47, 0.66, 0.51, 75, 0.25, N'tram', 18)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000114', N'C0002', N'<p><strong>&nbsp;H&igrave;nh ảnh được ch&egrave;n v&agrave;o văn bản:</strong></p>', 4, 1, 0.76, 0.69, 0.42, 0.24, 75, 0.25, N'an', 23)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000115', N'C0003', N'<p>Kết quả của h&agrave;m sau : =MAX(A1,A5), trong đ&oacute;: A1=5, A2=8; A3=9; A4=10; A5=2</p>', 4, 1, 0.97, 0.44, 0.12, 0.15, 75, 0.25, N'tram', 19)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000116', N'C0001', N'<p><strong><a href="http://hoc247.net/cau-hoi-keo-tha-chuot-la--qid12023.html">K&eacute;o thả chuột l&agrave;:</a></strong></p>', 4, 1, 0.31, 0.8, 0.03, 0.86, 75, 0.25, N'hoang', 3)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000117', N'C0002', N'<p><strong>Trong một văn bản:</strong></p>', 4, 1, 0.41, 0.21, 0.92, 0.72, 75, 0.25, N'an', 21)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000118', N'C0001', N'<p><strong><a href="http://hoc247.net/cau-hoi-luyen-tap-chuot-voi-phan-mem-mouse-skills-gom-may-muc-qid12024.html">Luyện tập chuột với phần mềm Mouse SKills gồm mấy mức?</a></strong></p>', 4, 1, 0.75, 0.66, 0.83, 0.13, 75, 0.25, N'hoang', 3)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000119', N'C0002', N'<p><strong>Một bảng c&oacute; tối đa:</strong></p>', 4, 1, 0.9, 0.9, 0.92, 0.95, 75, 0.25, N'an', 24)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000120', N'C0003', N'<p>Nếu khối A1:B5 lần lượt chứa c&aacute;c số 10, 7, 9, 27, 2 kết quả ph&eacute;p t&iacute;nh n&agrave;o sau đ&acirc;y đ&uacute;ng:</p>', 4, 1, 0.64, 0.55, 0.26, 0.76, 75, 0.25, N'tram', 15)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000121', N'C0001', N'<p><strong><a href="http://hoc247.net/cau-hoi-trong-khi-dang-luyen-tap-de-chuyen-sang-muc-tiep-theo-ta-nhan-phim--qid12025.html">Trong khi đang&nbsp; luyện tập phần mềm Mouse SKills, để chuyển sang&nbsp; mức tiếp theo ta nhấn ph&iacute;m:</a></strong></p>', 4, 1, 0.24, 0.69, 0.28, 0.03, 75, 0.25, N'hoang', 4)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000122', N'C0003', N'<p>Kết quả của h&agrave;m =Average(3,8,10) l&agrave;:&nbsp;</p>', 4, 1, 0.31, 0.53, 0.54, 0.4, 75, 0.25, N'tram', 19)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000123', N'C0002', N'<p><strong>Dữ liệu trong &ocirc; c&oacute; thể l&agrave;:</strong></p>', 4, 1, 0.65, 0.26, 0.34, 0.32, 75, 0.25, N'an', 23)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000124', N'C0003', N'<p>Để t&iacute;nh gi&aacute; trị trung b&igrave;nh của &ocirc; A1 , B1, C1, c&aacute;c c&aacute;ch t&iacute;nh n&agrave;o sau đ&acirc;u l&agrave; đ&uacute;ng:</p>', 4, 1, 0.71, 0.63, 0.87, 0.12, 75, 0.25, N'tram', 16)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000125', N'C0001', N'<p>C&aacute;c khởi động phần mềm Luyện tập chuột:</p>', 4, 1, 0.91, 0.3, 0.38, 0.3, 75, 0.25, N'hoang', 5)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000126', N'C0003', N'<p>Để t&iacute;nh trung b&igrave;nh cộng A1,A2,A3,A4 em d&ugrave;ng c&ocirc;ng thức:</p>', 4, 1, 0.25, 0.82, 0.38, 0.58, 75, 0.25, N'tram', 18)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000127', N'C0001', N'<p>Để tho&aacute;t kho&aacute;t khỏi phần mềm Mouse skills, ta nhấn ph&iacute;m:</p>', 4, 1, 0.77, 0.37, 0.9, 0.32, 75, 0.25, N'hoang', 1)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000128', N'C0003', N'<p>Cho h&agrave;m =Sum(A5:A10) để thực hiện?</p>', 4, 1, 0.58, 0.74, 0.9, 0.3, 75, 0.25, N'tram', 19)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000129', N'C0001', N'<p>Sau khi ho&agrave;n th&agrave;nh xong c&aacute;c mức luyện tập với chuột, nếu muốn luyện tập lại ta nh&aacute;y v&agrave;o n&uacute;t:</p>', 4, 1, 0.64, 0.76, 0.12, 0.46, 75, 0.25, N'hoang', 4)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000130', N'C0003', N'<p>Khi nhập dữ liệu v&agrave;o bảng t&iacute;nh em c&oacute; thể:</p>', 4, 1, 0.11, 0.31, 0.9, 0.08, 75, 0.25, N'tram', 15)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000131', N'C0002', N'<p><strong>Trong một bảng th&igrave; độ rộng:</strong></p>', 4, 1, 0.77, 0.07, 0.31, 0.38, 75, 0.25, N'an', 24)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000132', N'C0003', N'<p>Để cột hoặc h&agrave;ng tự điều chỉnh đ&uacute;ng với dữ liệu c&oacute; trong đ&oacute; em thực hiện:</p>', 4, 1, 0.66, 0.54, 0.68, 0.12, 75, 0.25, N'tram', 17)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000133', N'C0001', N'<p>Trong phần mềm Mouse skills, mức 5 ta thực hiện luyện tập chuột với thao t&aacute;c n&agrave;o?</p>', 4, 1, 0.03, 0.94, 0.1, 0.33, 75, 0.25, N'hoang', 5)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000134', N'C0002', N'<p><strong>Để di chuyển con trỏ soạn thảo giữa c&aacute;c &ocirc; trong bảng th&igrave;:</strong></p>', 4, 1, 0.79, 0.91, 0.86, 0.06, 75, 0.25, N'an', 21)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000135', N'C0003', N'<p>Muốn xo&aacute; một hoặc nhiều cột em thực hiện:</p>', 4, 1, 0.81, 0.08, 0.87, 0.77, 75, 0.25, N'tram', 19)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000136', N'C0001', N'<p>Khu vực ch&iacute;nh của b&agrave;n ph&iacute;m m&aacute;y t&iacute;nh c&oacute; mấy h&agrave;ng ph&iacute;m?</p>', 4, 1, 0.78, 0.93, 0.15, 0.09, 75, 0.25, N'hoang', 4)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000137', N'C0002', N'<p><strong>Khi con trỏ soạn thảo đang ở trong một &ocirc; của bảng th&igrave; khi định dạng văn bản sẽ ảnh hưởng:</strong></p>', 4, 1, 0.8, 0.38, 0.11, 0.86, 75, 0.25, N'an', 23)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000138', N'C0003', N'<p>Để sao ch&eacute;p nội dung &ocirc; t&iacute;nh, ta chọn &ocirc; t&iacute;nh rồi nhầp n&uacute;t n&agrave;o sau đ&acirc;y tr&ecirc;n thanh c&ocirc;ng cụ:</p>', 4, 1, 0.29, 0.87, 0.65, 0.23, 75, 0.25, N'tram', 19)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000139', N'C0001', N'<p>H&agrave;ng ph&iacute;m cơ sở l&agrave; h&agrave;ng ph&iacute;m:</p>', 4, 1, 0.35, 0.76, 0.7, 0.54, 75, 0.25, N'hoang', 5)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000140', N'C0002', N'<p><strong>Để chọn một h&agrave;ng trong bảng th&igrave; phải:</strong></p>', 4, 1, 0.19, 0.66, 0.44, 0.77, 75, 0.25, N'an', 24)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000141', N'C0003', N'<p>Để di chuyển nội dung &ocirc; t&iacute;nh, ta chọn &ocirc; t&iacute;nh rồi nhầp n&uacute;t n&agrave;o sau đ&acirc;y tr&ecirc;n thanh c&ocirc;ng cụ:</p>', 4, 1, 0.34, 0.27, 0.21, 0.35, 75, 0.25, N'tram', 16)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000142', N'C0001', N'<p>Nh&oacute;m ph&iacute;m soạn thảo l&agrave; những ph&iacute;m m&agrave; khi ta g&otilde; v&agrave;o:</p>', 4, 1, 0.52, 0.75, 0.74, 0.47, 75, 0.25, N'hoang', 5)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000143', N'C0002', N'<p><strong>Để nhập nhiều &ocirc; th&agrave;nh một &ocirc; em lựa chọn khối &ocirc; cần nhập:</strong></p>', 4, 1, 0.27, 0.44, 0.68, 0.45, 75, 0.25, N'an', 21)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000144', N'C0001', N'<p>Vị tr&iacute; c&aacute;c ph&iacute;m điều khiển (c&aacute;c ph&iacute;m đặc biệt) tr&ecirc;n b&agrave;n ph&iacute;m l&agrave;:</p>', 4, 1, 0.8, 0.26, 0.06, 0.4, 75, 0.25, N'hoang', 2)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000145', N'C0002', N'<p><strong>Để t&aacute;ch một &ocirc; th&agrave;nh nhiều &ocirc; em lựa chonh khối &ocirc; cần t&aacute;ch:</strong></p>', 4, 1, 0.47, 0.69, 0.86, 0.41, 75, 0.25, N'an', 24)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000146', N'C0001', N'<p>H&agrave;ng ph&iacute;m c&oacute; chứa ph&iacute;m J v&agrave; K l&agrave;:&nbsp;</p>', 4, 1, 0.77, 0.03, 0.47, 0.57, 75, 0.25, N'hoang', 5)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000147', N'C0002', N'<p><strong>Để th&ecirc;m một cột v&agrave;o ph&iacute;a b&ecirc;n phải cột đang lựa chọn em thực hiện:</strong></p>', 4, 1, 0.13, 0.14, 0.89, 0.98, 75, 0.25, N'an', 22)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000148', N'C0001', N'<p>Lợi &iacute;ch của việc g&otilde; 10 ng&oacute;n:</p>', 4, 1, 0.63, 0.8, 0.73, 0.5, 75, 0.25, N'hoang', 1)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000149', N'C0002', N'<p><strong>Để x&oacute;a cột đang lựa chọn em thực hiện</strong>:</p>', 4, 1, 0.93, 0.37, 0.59, 0.98, 75, 0.25, N'an', 20)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000150', N'C0001', N'<p>H&atilde;y chọn c&acirc;u ph&aacute;t biểu sai qui c&aacute;ch khi luyện g&otilde; ph&iacute;m?</p>', 4, 1, 0.01, 0.72, 0.69, 0.47, 75, 0.25, N'hoang', 1)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000151', N'C0002', N'<p><strong>Để x&oacute;a h&agrave;ng đang lựa chọn em thực hiện:</strong></p>', 4, 1, 0.78, 0.8, 0.47, 0.73, 75, 0.25, N'an', 21)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000152', N'C0001', N'<p>Khi bắt đầu g&otilde; ph&iacute;m ta đặt 2 ng&oacute;n trỏ như thế n&agrave;o?</p>', 4, 1, 0.1, 0.67, 0.69, 0.7, 75, 0.25, N'hoang', 2)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000153', N'C0001', N'<p>M&agrave;n h&igrave;nh ch&iacute;nh của phần mềm Mario sau khi khởi động kh&ocirc;ng c&oacute; lệnh sau:</p>', 4, 1, 0.77, 0.39, 0.2, 0.68, 75, 0.25, N'hoang', 3)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000154', N'C0001', N'<p>Bảng chọn Student trong m&agrave;n h&igrave;nh ch&iacute;nh của phần mềm Mario d&ugrave;ng để:</p>', 4, 1, 0.14, 0.76, 0.35, 0.64, 75, 0.25, N'hoang', 1)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000155', N'C0001', N'<p>C&aacute;ch khỏi động phần mềm Mouse SKills:</p>', 4, 1, 0.64, 0.04, 0.56, 0.45, 75, 0.25, N'hoang', 1)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000156', N'C0001', N'<p>Với việc học g&otilde; mười ng&oacute;n, c&acirc;u ph&aacute;t biểu n&agrave;o dưới đ&acirc;y l&agrave; đ&uacute;ng?</p>', 4, 1, 0.31, 0.01, 0.35, 0.25, 75, 0.25, N'hoang', 1)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000157', N'C0001', N'<p>Phần mềm Mario c&oacute; bao nhi&ecirc;u mức luyện tập ph&iacute;m?</p>', 4, 1, 0.32, 0.74, 0.96, 0.82, 75, 0.25, N'hoang', 5)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000158', N'C0001', N'<p>Phần mềm Mario d&ugrave;ng để l&agrave;m g&igrave;?</p>', 4, 1, 0.2, 0.94, 0.48, 0.84, 75, 0.25, N'hoang', 1)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000159', N'C0001', N'<p>Trong c&aacute;c mức luyện tập sau đ&acirc;y, mức n&agrave;o WPM cần đạt được l&agrave; tr&ecirc;n 30?</p>', 4, 1, 0.13, 0.01, 0.29, 0.44, 75, 0.25, N'hoang', 1)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000160', N'C0001', N'<p>Để &quot;thiết đặt c&aacute;c lựa chọn để luyện tập phần mềm Mario&quot;, ta chọn:</p>', 4, 1, 0.79, 0.41, 0.23, 0.38, 75, 0.25, N'hoang', 4)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000161', N'C0001', N'<p>Phần mềm quan s&aacute;t Hệ mặt trời l&agrave;:</p>', 4, 1, 0.92, 0.22, 0.23, 0.12, 75, 0.25, N'hoang', 2)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000162', N'C0001', N'<p>C&aacute;ch khỏi động phần mềm Quan s&aacute;t Hệ Mặt Trời:</p>', 4, 1, 0.35, 0.13, 0.25, 0.41, 75, 0.25, N'hoang', 2)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000163', N'C0001', N'<p>Để l&agrave;m ẩn (hiện) quỹ đạo chuyển động c&aacute;c h&agrave;nh tinh. Ta nh&aacute;y v&agrave;o n&uacute;t lệnh điều khiển sau:</p>', 4, 1, 0.89, 0.6, 0.04, 0.77, 75, 0.25, N'hoang', 3)
INSERT [dbo].[tblCAUHOI] ([idCauHoi], [idChuong], [noiDung], [soDapAn], [SoCauDung], [doPhanBiet], [doKho], [a2], [b2], [tgTraLoi], [c], [account], [idNhomCauHoi]) VALUES (N'CH000164', N'C0001', N'<p>Khi k&eacute;o thanh cuộn ngang của n&uacute;t lệnh điều khiển SPEED th&igrave;:&nbsp;</p>', 4, 1, 0.99, 0.83, 0.41, 0.76, 75, 0.25, N'hoang', 1)
SET IDENTITY_INSERT [dbo].[tblCHITIETLICHSU] ON 

INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1, N'LS0000001', N'CH000030', N'DA0000120')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (2, N'LS0000001', N'CH000044', N'DA0000175')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (3, N'LS0000001', N'CH000050', N'DA0000197')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (4, N'LS0000001', N'CH000055', N'DA0000219')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (5, N'LS0000001', N'CH000060', N'DA0000239')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (6, N'LS0000001', N'CH000063', N'DA0000250')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (7, N'LS0000001', N'CH000066', N'DA0000262')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (8, N'LS0000001', N'CH000073', N'DA0000289')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (9, N'LS0000001', N'CH000088', N'DA0000350')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (10, N'LS0000001', N'CH000096', N'DA0000382')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (11, N'LS0000001', N'CH000103', N'DA0000408')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (12, N'LS0000001', N'CH000106', N'DA0000420')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (13, N'LS0000001', N'CH000112', N'DA0000445')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (14, N'LS0000001', N'CH000118', N'DA0000468')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (15, N'LS0000001', N'CH000125', N'DA0000496')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (16, N'LS0000001', N'CH000136', N'DA0000540')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (17, N'LS0000001', N'CH000139', N'DA0000551')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (18, N'LS0000001', N'CH000150', N'DA0000598')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (19, N'LS0000001', N'CH000152', N'DA0000603')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (20, N'LS0000001', N'CH000153', N'DA0000610')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (21, N'LS0000001', N'CH000158', N'DA0000628')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (22, N'LS0000001', N'CH000160', N'DA0000635')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (23, N'LS0000001', N'CH000161', N'DA0000642')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (24, N'LS0000001', N'CH000163', N'DA0000649')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (25, N'LS0000001', N'CH000164', N'DA0000654')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1002, N'LS0000002', N'CH000010', N'DA0000040')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1003, N'LS0000002', N'CH000072', N'DA0000285')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1004, N'LS0000002', N'CH000033', N'DA0000132')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1005, N'LS0000002', N'CH000106', N'DA0000420')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1006, N'LS0000002', N'CH000086', N'DA0000339')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1007, N'LS0000003', N'CH000088', N'DA0000350')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1008, N'LS0000003', N'CH000072', N'DA0000286')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1009, N'LS0000003', N'CH000161', N'DA0000642')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1010, N'LS0000003', N'CH000086', N'DA0000340')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1011, N'LS0000003', N'CH000144', N'DA0000572')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1012, N'LS0000004', N'CH000010', N'DA0000040')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1013, N'LS0000004', N'CH000072', N'DA0000285')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1014, N'LS0000004', N'CH000033', N'DA0000132')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1015, N'LS0000004', N'CH000106', N'DA0000419')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1016, N'LS0000004', N'CH000050', N'DA0000200')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1017, N'LS0000005', N'CH000157', N'DA0000623')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1018, N'LS0000005', N'CH000133', N'DA0000527')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1019, N'LS0000005', N'CH000037', N'DA0000147')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1020, N'LS0000006', N'CH000010', N'DA0000040')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1021, N'LS0000006', N'CH000072', N'DA0000285')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1022, N'LS0000006', N'CH000033', N'DA0000132')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1023, N'LS0000006', N'CH000106', N'DA0000419')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1024, N'LS0000006', N'CH000050', N'DA0000200')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1025, N'LS0000007', N'CH000010', N'DA0000040')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1026, N'LS0000007', N'CH000072', N'DA0000285')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1027, N'LS0000007', N'CH000033', N'DA0000132')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1028, N'LS0000007', N'CH000106', N'DA0000419')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1029, N'LS0000007', N'CH000050', N'DA0000200')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1030, N'LS0000007', N'CH000162', N'DA0000644')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1031, N'LS0000007', N'CH000152', N'DA0000603')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1032, N'LS0000007', N'CH000033', N'DA0000132')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1033, N'LS0000007', N'CH000005', N'DA0000020')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1034, N'LS0000007', N'CH000101', N'DA0000402')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1035, N'LS0000009', N'CH000010', N'DA0000040')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1036, N'LS0000009', N'CH000072', N'DA0000286')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1037, N'LS0000009', N'CH000161', N'DA0000640')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1038, N'LS0000009', N'CH000086', N'DA0000340')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1039, N'LS0000009', N'CH000144', N'DA0000572')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1040, N'LS0000009', N'CH000033', N'DA0000129')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1041, N'LS0000009', N'CH000050', N'DA0000197')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1042, N'LS0000009', N'CH000072', N'DA0000285')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1043, N'LS0000009', N'CH000033', N'DA0000130')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1044, N'LS0000009', N'CH000050', N'DA0000198')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1045, N'LS0000010', N'CH000010', N'DA0000039')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1046, N'LS0000010', N'CH000146', N'DA0000581')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1047, N'LS0000010', N'CH000008', N'DA0000030')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1048, N'LS0000010', N'CH000072', N'DA0000287')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1049, N'LS0000010', N'CH000144', N'DA0000573')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1050, N'LS0000010', N'CH000161', N'DA0000641')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1051, N'LS0000010', N'CH000086', N'DA0000340')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1052, N'LS0000010', N'CH000033', N'DA0000131')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1053, N'LS0000010', N'CH000050', N'DA0000200')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1054, N'LS0000010', N'CH000106', N'DA0000422')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1055, N'LS0000010', N'CH000162', N'DA0000646')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1056, N'LS0000010', N'CH000152', N'DA0000605')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1057, N'LS0000013', N'CH000066', N'DA0000262')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1058, N'LS0000013', N'CH000164', N'DA0000654')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1059, N'LS0000013', N'CH000048', N'DA0000190')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1060, N'LS0000013', N'CH000010', N'DA0000038')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1061, N'LS0000013', N'CH000161', N'DA0000642')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1062, N'LS0000013', N'CH000125', N'DA0000497')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1063, N'LS0000013', N'CH000069', N'DA0000274')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1064, N'LS0000013', N'CH000086', N'DA0000341')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1065, N'LS0000013', N'CH000004', N'DA0000016')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1066, N'LS0000013', N'CH000163', N'DA0000650')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1067, N'LS0000014', N'CH000066', N'DA0000262')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1068, N'LS0000014', N'CH000164', N'DA0000654')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1069, N'LS0000014', N'CH000048', N'DA0000189')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1070, N'LS0000014', N'CH000111', N'DA0000439')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1071, N'LS0000014', N'CH000010', N'DA0000040')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1072, N'LS0000014', N'CH000088', N'DA0000350')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1073, N'LS0000014', N'CH000086', N'DA0000339')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1074, N'LS0000014', N'CH000004', N'DA0000016')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1075, N'LS0000014', N'CH000163', N'DA0000647')
GO
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1076, N'LS0000014', N'CH000161', N'DA0000642')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1077, N'LS0000014', N'CH000125', N'DA0000497')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1078, N'LS0000014', N'CH000072', N'DA0000285')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1079, N'LS0000014', N'CH000099', N'DA0000392')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1080, N'LS0000014', N'CH000144', N'DA0000574')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1081, N'LS0000014', N'CH000160', N'DA0000635')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1082, N'LS0000014', N'CH000017', N'DA0000067')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1083, N'LS0000014', N'CH000069', N'DA0000274')
INSERT [dbo].[tblCHITIETLICHSU] ([idChiTiet], [idLichSuLamBai], [idCauHoi], [idDapAn]) VALUES (1084, N'LS0000014', N'CH000060', N'DA0000239')
SET IDENTITY_INSERT [dbo].[tblCHITIETLICHSU] OFF
INSERT [dbo].[tblCHUONG] ([idChuong], [idMonHoc], [tenChuong], [trongSo]) VALUES (N'C0001', N'MH001', N'Học kỳ 1', CAST(0.50 AS Decimal(3, 2)))
INSERT [dbo].[tblCHUONG] ([idChuong], [idMonHoc], [tenChuong], [trongSo]) VALUES (N'C0002', N'MH001', N'Học kỳ 2', CAST(0.50 AS Decimal(3, 2)))
INSERT [dbo].[tblCHUONG] ([idChuong], [idMonHoc], [tenChuong], [trongSo]) VALUES (N'C0003', N'MH002', N'Học kỳ 1', CAST(0.50 AS Decimal(3, 2)))
INSERT [dbo].[tblCHUONG] ([idChuong], [idMonHoc], [tenChuong], [trongSo]) VALUES (N'C0004', N'MH002', N'Học kỳ 2', CAST(0.50 AS Decimal(3, 2)))
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000001', N'CH000001', N'<p>Nh&igrave;n thấy bằng mắt, nghe bằng tai</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000002', N'CH000001', N'<p>Ngửi bằng mũi, nếm được vị bằng lưỡi</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000003', N'CH000001', N'<p>Cảm gi&aacute;c n&oacute;ng lạnh bằng da</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000004', N'CH000001', N'<p>Tất cả đều đ&uacute;ng</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000005', N'CH000002', N'<p>Quan s&aacute;t xem c&oacute; phương tiện giao th&ocirc;ng đang đến gần kh&ocirc;ng</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000006', N'CH000002', N'<p>Nghĩ về b&agrave;i to&aacute;n h&ocirc;m qua tr&ecirc;n lớp chưa l&agrave;m được</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000007', N'CH000002', N'<p>Quan s&aacute;t xem đ&egrave;n t&iacute;n hiệu giao th&ocirc;ng đang bật c&oacute; m&agrave;u g&igrave;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000008', N'CH000002', N'<p>Cả A v&agrave; C đều đ&uacute;ng</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000009', N'CH000003', N'<p>Tiếp nhận th&ocirc;ng tin</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000010', N'CH000003', N'<p>Truyền (trao đổi) th&ocirc;ng tin</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000011', N'CH000003', N'<p>Xử l&iacute; th&ocirc;ng tin</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000012', N'CH000003', N'<p>Lưu trữ th&ocirc;ng tin</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000013', N'CH000004', N'<p>Tiếp nhận, xử l&iacute; th&ocirc;ng tin</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000014', N'CH000004', N'<p>Lưu trữ th&ocirc;ng tin</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000015', N'CH000004', N'<p>Truyền (trao đổi) th&ocirc;ng tin</p><p>&nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000016', N'CH000004', N'<p>Tất cả c&aacute;c &yacute; tr&ecirc;n</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000017', N'CH000005', N'<p>Nắm được quy luật của tự nhi&ecirc;n v&agrave; do vậy trở n&ecirc;n mạnh mẽ hơn</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000018', N'CH000005', N'<p>Hiểu biết về cuộc sống v&agrave; x&atilde; hội xung quanh</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000019', N'CH000005', N'<p>Biết được c&aacute;c tin tức v&agrave; sự kiện xảy ra tr&ecirc;n thế giới</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000020', N'CH000005', N'<p>Tất cả c&aacute;c khẳng định tr&ecirc;n đều đ&uacute;ng</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000021', N'CH000006', N'<p>Dữ liệu được lưu trữ</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000022', N'CH000006', N'<p>Th&ocirc;ng tin v&agrave;o</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000023', N'CH000006', N'<p>Th&ocirc;ng tin ra</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000024', N'CH000006', N'<p>Th&ocirc;ng tin m&aacute;y t&iacute;nh</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000025', N'CH000007', N'<p>T&iacute;nh to&aacute;n v&agrave; lập bảng biểu</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000026', N'CH000007', N'<p>Soạn thảo văn bản</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000027', N'CH000007', N'<p>Tạo c&aacute;c tệp tin đồ họa</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000028', N'CH000007', N'<p>Tạo c&aacute;c tập tin thực thi</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000029', N'CH000008', N'<p>Ăn s&aacute;ng trước khi đến trường</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000030', N'CH000008', N'<p>&nbsp;Đi học mang theo &aacute;o mưa</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000031', N'CH000008', N'<p>Mặc đồng phục</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000032', N'CH000008', N'<p>Hẹn bạn Trang c&ugrave;ng đi học</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000033', N'CH000009', N'<p>Top</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000034', N'CH000009', N'<p>Bottom</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000035', N'CH000009', N'<p>Left</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000036', N'CH000009', N'<p>Right</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000037', N'CH000010', N'<p>Ống nh&ograve;m</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000038', N'CH000010', N'<p>M&aacute;y đo huyết &aacute;p</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000039', N'CH000010', N'<p>K&iacute;nh l&uacute;p</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000040', N'CH000010', N'<p>Chiếc nơ buộc t&oacute;c</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000041', N'CH000011', N'<p>File&nbsp;&nbsp; -&gt; Picture</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000042', N'CH000011', N'<p>Edit&nbsp;&nbsp; -&gt; Picture</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000043', N'CH000011', N'<p>View -&gt; Picture</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000044', N'CH000011', N'<p>Insert -&gt; Picture</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000045', N'CH000012', N'<p>Số lượng điểm 10</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000046', N'CH000012', N'<p>Số c&aacute;c bạn bị ghi t&ecirc;n v&igrave; đi học muộn</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000047', N'CH000012', N'<p>.&nbsp;Số c&aacute;c bạn sao đỏ</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000048', N'CH000012', N'<p>Số c&aacute;c bạn bị c&ocirc; gi&aacute;o nhắc nhở</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000049', N'CH000013', N'<p>Table -&gt; Delete -&gt; Table</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000050', N'CH000013', N'<p>Table -&gt; Delete -&gt; Columns</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000051', N'CH000013', N'<p>Table -&gt; Delete -&gt; Rows</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000052', N'CH000013', N'<p>Table -&gt; Delete -&gt; Borders</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000053', N'CH000014', N'<p>Trước k&iacute; tự vừa g&otilde;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000054', N'CH000014', N'<p>Sau k&iacute; tự vừa g&otilde;</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000055', N'CH000014', N'<p>Đầu d&ograve;ng</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000056', N'CH000014', N'<p>Cuối d&ograve;ng</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000057', N'CH000015', N'<p>Nghi&ecirc;n cứu giải c&aacute;c b&agrave;i to&aacute;n tr&ecirc;n m&aacute;y t&iacute;nh</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000058', N'CH000015', N'<p>Nghi&ecirc;n cứu chế tạo c&aacute;c m&aacute;y t&iacute;nh với nhiều chức năng ng&agrave;y c&agrave;ng ưu việt hơn</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000059', N'CH000015', N'<p>Nghi&ecirc;n cứu việc thực hiện c&aacute;c hoạt động th&ocirc;ng tin một c&aacute;ch tự động nhờ sự trợ gi&uacute;p của m&aacute;y t&iacute;nh điện tử</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000060', N'CH000015', N'<p>.&nbsp;Biểu diễn c&aacute;c th&ocirc;ng tin đa dạng tr&ecirc;n m&aacute;y t&iacute;nh</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000061', N'CH000016', N'<p>Nhấn ph&iacute;m Enter</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000062', N'CH000016', N'<p>Nhấn ph&iacute;m Space Bar</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000063', N'CH000016', N'<p>Nhấn tổ hợp ph&iacute;m Ctr +Enter</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000064', N'CH000016', N'<p>Nhấn ph&iacute;m Tab</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000065', N'CH000017', N'<p>Lệnh</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000066', N'CH000017', N'<p>Chỉ dẫn</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000067', N'CH000017', N'<p>Th&ocirc;ng tin</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000068', N'CH000017', N'<p>Dữ liệu</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000069', N'CH000018', N'<p>Tạo bảng điểm của lớp em&nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000070', N'CH000018', N'<p>Bảng theo d&otilde;i kết quả học tập ri&ecirc;ng của em</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000071', N'CH000018', N'<p>Vẽ biểu đồ từ bảng số liệu cho trước</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000072', N'CH000018', N'<p>Tất cả đều đ&uacute;ng</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000073', N'CH000019', N'<p>Chụp ảnh bạn b&egrave; v&agrave; người th&acirc;n</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000074', N'CH000019', N'<p>Ghi nhận những th&ocirc;ng tin bằng h&igrave;nh ảnh</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000075', N'CH000019', N'<p>Chụp ảnh đ&aacute;m cưới</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000076', N'CH000019', N'<p>Chụp những cảnh đẹp</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000077', N'CH000020', N'<p>Con trỏ soạn thảo</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000078', N'CH000020', N'<p>Con trỏ chuột</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000079', N'CH000020', N'<p>Lề b&ecirc;n tr&aacute;i</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000080', N'CH000020', N'<p>Lề b&ecirc;n phải</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000081', N'CH000021', N'<p>Sắp xếp dữ liệu theo những ti&ecirc;u chuẩn kh&aacute;c nhau</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000082', N'CH000021', N'<p>Vẽ h&igrave;nh minh hoạ</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000083', N'CH000021', N'<p>Soạn thảo văn bản</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000084', N'CH000021', N'<p>Tất cả đều sai</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000085', N'CH000022', N'<p>Nhấn ph&iacute;m Home</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000086', N'CH000022', N'<p>Nhấn ph&iacute;m Page Up</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000087', N'CH000022', N'<p>Nhấn tổ hợp ph&iacute;m Ctrl + Home</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000088', N'CH000022', N'<p>Nhấn tổ hợp ph&iacute;m Ctrl + End</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000089', N'CH000023', N'<p>Sưởi ấm,&nbsp;nướng thịt th&uacute; rừng săn được</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000090', N'CH000023', N'<p>Soi s&aacute;ng trong c&aacute;c hang động</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000091', N'CH000023', N'<p>Truyền th&ocirc;ng tin</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000092', N'CH000023', N'<p>Tất cả việc tr&ecirc;n</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000093', N'CH000024', N'<p>Nhấn ph&iacute;m Enter</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000094', N'CH000024', N'<p>Nhấn ph&iacute;m Home</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000095', N'CH000024', N'<p>Nhấn tổ hợp ph&iacute;m Ctrl + Home</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000096', N'CH000024', N'<p>Nhấn tổ hợp ph&iacute;m Ctrl + End</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000097', N'CH000025', N'<p>Dễ theo d&otilde;i</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000098', N'CH000025', N'<p>Dễ sắp xếp</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000099', N'CH000025', N'<p>T&iacute;nh to&aacute;n nhanh ch&oacute;ng &nbsp; &nbsp; &nbsp; &nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000100', N'CH000025', N'<p>Tất cả đều đ&uacute;ng</p>', 1)
GO
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000101', N'CH000026', N'<p>Lưu trữ c&aacute;c sưu tập phim, ảnh</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000102', N'CH000026', N'<p>Ghi lại c&aacute;c b&agrave;i văn hay</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000103', N'CH000026', N'<p>Lưu lại m&ugrave;i vị thức ăn</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000104', N'CH000026', N'<p>Nhớ c&aacute;c giọng chim h&oacute;t</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000105', N'CH000027', N'<p>C&oacute; chương tr&igrave;nh hỗ trợ g&otilde; tiếng Việt c&oacute; c&aacute;c kiểu g&otilde; như TELEX hoặc VNI</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000106', N'CH000027', N'<p>D&ugrave;ng b&agrave;n ph&iacute;m c&oacute; chữ tiếng Việt</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000107', N'CH000027', N'<p>C&agrave;i đặt v&agrave;o m&aacute;y t&iacute;nh ph&ocirc;ng chữ tương th&iacute;ch</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000108', N'CH000027', N'<p>Cả A v&agrave; C</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000109', N'CH000028', N'<p>Dữ liệu kiểu số sẽ mặc nhi&ecirc;n canh tr&aacute;i trong &ocirc; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000110', N'CH000028', N'<p>Dữ liệu kiểu số sẽ mặc nhi&ecirc;n canh phải trong &ocirc; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000111', N'CH000028', N'<p>Dữ liệu kiểu k&yacute; tự sẽ mặc nhi&ecirc;n canh tr&aacute;i trong &ocirc;&nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000112', N'CH000028', N'<p>C&acirc;u b v&agrave; c &nbsp;đ&uacute;ng</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000113', N'CH000029', N'<p>Sao ch&eacute;p, ch&egrave;n, x&oacute;a</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000114', N'CH000029', N'<p>Chọn, x&oacute;a, th&ecirc;m</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000115', N'CH000029', N'<p>Gộp v&agrave;o, ch&egrave;n, x&oacute;a</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000116', N'CH000029', N'<p>Cả A, B, C đều đ&uacute;ng</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000117', N'CH000030', N'<p>Văn bản</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000118', N'CH000030', N'<p>&Acirc;m thanh</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000119', N'CH000030', N'<p>H&igrave;nh ảnh</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000120', N'CH000030', N'<p>Kh&ocirc;ng phải l&agrave; một trong c&aacute;c dạng th&ocirc;ng tin cơ bản hiện nay của tin học</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000121', N'CH000031', N'<p>Khối &ocirc;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000122', N'CH000031', N'<p>&Ocirc; t&iacute;nh đang được k&iacute;ch hoạt</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000123', N'CH000031', N'<p>&Ocirc; t&iacute;nh được hiển thị&nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000124', N'CH000031', N'<p>Tất cả đều sai</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000125', N'CH000032', N'<p>Mở một tệp tin</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000126', N'CH000032', N'<p>Chọn đoạn văn bản đ&oacute; bằng c&aacute;ch đặt con trỏ soạn thảo v&agrave;o đoạn văn bản đ&oacute;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000127', N'CH000032', N'<p>Lưu sang một tệp kh&aacute;c</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000128', N'CH000032', N'<p>Chọn đoạn văn bản bằng c&aacute;ch b&ocirc;i đen</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000129', N'CH000033', N'<p>Khả năng chạm khắc đ&aacute; của tổ ti&ecirc;n</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000130', N'CH000033', N'<p>T&ecirc;n tuổi của c&aacute;c vị đỗ Tiến sĩ một số đời vua,&nbsp;th&ocirc;ng tin về việc tuyển chọn v&agrave; sử dụng người t&agrave;i ở một số đời vua</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000131', N'CH000033', N'<p>Chữ viết được d&ugrave;ng ng&agrave;y trước đ&oacute;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000132', N'CH000033', N'<p>Tất cả c&aacute;c th&ocirc;ng tin tr&ecirc;n</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000133', N'CH000034', N'<p>Văn bản</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000134', N'CH000034', N'<p>H&igrave;nh ảnh</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000135', N'CH000034', N'<p>&Acirc;m thanh</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000136', N'CH000034', N'<p>Tất cả đều đ&uacute;ng</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000137', N'CH000035', N'<p>Nhấn tổ hợp ph&iacute;m Shift + Home</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000138', N'CH000035', N'<p>Nhấn tổ hợp ph&iacute;m Ctrl + Home</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000139', N'CH000035', N'<p>Nhấn tổ hợp ph&iacute;m Shift + End</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000140', N'CH000035', N'<p>Nhấn tổ hợp ph&iacute;m Ctrl + Page Up</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000141', N'CH000036', N'<p>K&iacute;ch hoạt &ocirc; t&iacute;nh &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000142', N'CH000036', N'<p>Chọn &ocirc; t&iacute;nh &nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000143', N'CH000036', N'<p>Di chuyển &ocirc; t&iacute;nh</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000144', N'CH000036', N'<p>Nhập&nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000145', N'CH000037', N'<p>.&nbsp;L&agrave; lưu trữ v&agrave; chuyển giao th&ocirc;ng tin</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000146', N'CH000037', N'<p>C&oacute; vai tr&ograve; quyết định đối với hoạt động tin học</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000147', N'CH000037', N'<p>L&agrave; c&aacute;ch thể hiện th&ocirc;ng tin dưới dạng cụ thể n&agrave;o đ&oacute;</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000148', N'CH000037', N'<p>Tất cả &yacute; tr&ecirc;n</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000149', N'CH000038', N'<p>Chọn phần văn bản cần x&oacute;a, nhấn ph&iacute;m Shift</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000150', N'CH000038', N'<p>Chọn phần văn bản cần x&oacute;a, nhấn ph&iacute;m Delete hoặc ph&iacute;m Backspace</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000151', N'CH000038', N'<p>Chọn phần văn bản cần x&oacute;a, nhấn ph&iacute;m Tab</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000152', N'CH000038', N'<p>Chọn phần văn bản cần x&oacute;a, nhấn tổ hợp ph&iacute;m Ctrl + C</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000153', N'CH000039', N'<p>Th&ocirc;ng tin được biểu diễn văn bản</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000154', N'CH000039', N'<p>Th&ocirc;ng tin được biểu diễn h&igrave;nh ảnh</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000155', N'CH000039', N'<p>Th&ocirc;ng tin được biểu diễn &acirc;m thanh</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000156', N'CH000039', N'<p>Th&ocirc;ng tin được biểu diễn dưới dạng d&atilde;y bit&nbsp;</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000157', N'CH000040', N'<p>Ph&ocirc;ng chữ kh&aacute;c</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000158', N'CH000040', N'<p>Đậm, nghi&ecirc;ng v&agrave; gạch ch&acirc;n</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000159', N'CH000040', N'<p>Cỡ chữ to hơn hoặc nhỏ hơn</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000160', N'CH000040', N'<p>Cả A, B, C đều đ&uacute;ng</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000161', N'CH000041', N'<p>1 trang t&iacute;nh</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000162', N'CH000041', N'<p>2 trang t&iacute;nh&nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000163', N'CH000041', N'<p>3 trang t&iacute;nh&nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000164', N'CH000041', N'<p>Nhiều trang t&iacute;nh</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000165', N'CH000042', N'<p>V&igrave;&nbsp;m&aacute;y t&iacute;nh gồm c&aacute;c mạch điện tử chỉ c&oacute; hai trạng th&aacute;i đ&oacute;ng mạch v&agrave; ngắt mạch</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000166', N'CH000042', N'<p>Vi chỉ cần d&ugrave;ng hai k&iacute; hiệu 0 v&agrave; 1, người ta c&oacute; thể biểu diễn được mọi th&ocirc;ng tin trong m&aacute;y t&iacute;nh</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000167', N'CH000042', N'<p>Vi m&aacute;y t&iacute;nh kh&ocirc;ng hiểu được ng&ocirc;n ngữ tự nhi&ecirc;n</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000168', N'CH000042', N'<p>Tất cả c&aacute;c l&yacute; do tr&ecirc;n đều đ&uacute;ng</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000169', N'CH000043', N'<p>Chọn m&agrave;u sắc, ph&ocirc;ng chữ</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000170', N'CH000043', N'<p>Chọn c&aacute;c kiểu chữ đậm, nghi&ecirc;ng v&agrave; gạch ch&acirc;n</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000171', N'CH000043', N'<p>Chọn ph&ocirc;ng chữ v&agrave; cỡ chữ kh&aacute;c</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000172', N'CH000043', N'<p>Cả A, B, C đều đ&uacute;ng</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000173', N'CH000044', N'<p>Khả năng lưu trữ c&ograve;n hạn chế</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000174', N'CH000044', N'<p>Kết nối Internet c&ograve;n chậm</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000175', N'CH000044', N'<p>Kh&ocirc;ng c&oacute; khả năng tư duy như con người</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000176', N'CH000044', N'<p>Kh&ocirc;ng thể lưu trữ những trang nhật k&iacute; của em</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000177', N'CH000045', N'<p>Một trang t&iacute;nh &nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000178', N'CH000045', N'<p>Hai trang t&iacute;nh &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000179', N'CH000045', N'<p>Ba trang t&iacute;nh &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000180', N'CH000045', N'<p>Bốn trang t&iacute;nh&nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000181', N'CH000046', N'<p>L&agrave;m thay đổi t&iacute;nh chất của to&agrave;n đoạn văn bản</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000182', N'CH000046', N'<p>L&agrave; thay đổi về d&aacute;ng của một hay nh&oacute;m k&iacute; tự đơn lẻ</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000183', N'CH000046', N'<p>L&agrave; thay đổi ph&ocirc;ng chữ, cỡ chữ</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000184', N'CH000046', N'<p>L&agrave; ch&egrave;n th&ecirc;m c&aacute;c đối tượng kh&aacute;c v&agrave;o văn bản</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000185', N'CH000047', N'<p>Khi chọn một d&ograve;ng th&igrave; nhấp chuột ngay số thứ tự d&ograve;ng đ&oacute;.</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000186', N'CH000047', N'<p>Nếu cần chọn một số d&ograve;ng c&aacute;ch nhau th&igrave; nhấp chuột chọn d&ograve;ng đầu rồi lần lượt giữ ph&iacute;m Ctrl v&agrave; nhấp chuột tr&ecirc;n c&aacute;c d&ograve;ng kh&aacute;c.</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000187', N'CH000047', N'<p>Nếu cần chọn nhiều d&ograve;ng li&ecirc;n tiếp th&igrave; k&eacute;o chuột từ số thứ tự d&ograve;ng đầu đến số thứ tự d&ograve;ng cuối.</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000188', N'CH000047', N'<p>Tất cả c&aacute;c c&acirc;u tr&ecirc;n đều đ&uacute;ng.</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000189', N'CH000048', N'<p>M&ugrave;i vị, cảm x&uacute;c</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000190', N'CH000048', N'<p>Văn bản, h&igrave;nh vẽ, &acirc;m thanh</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000191', N'CH000048', N'<p>C&aacute;c con số, &acirc;m thanh, c&aacute;c đoạn phim</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000192', N'CH000048', N'<p>Văn bản, &acirc;m thanh</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000193', N'CH000049', N'<p>Đặt con trỏ soạn thảo đến đoạn văn bản đ&oacute;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000194', N'CH000049', N'<p>B&ocirc;i đen từ đầu đoạn văn bản đến cuối đoạn văn bản</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000195', N'CH000049', N'<p>Chỉ b&ocirc;i đen một phần đoạn văn bản</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000196', N'CH000049', N'<p>Cả A, B, C đều đ&uacute;ng</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000197', N'CH000050', N'<p>Khả năng t&iacute;nh to&aacute;n nhanh</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000198', N'CH000050', N'<p>Khả năng lưu trữ lớn</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000199', N'CH000050', N'<p>.&nbsp;L&agrave;m việc kh&ocirc;ng mệt mỏi</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000200', N'CH000050', N'<p>Tất cả khả năng tr&ecirc;n</p>', 1)
GO
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000201', N'CH000051', N'<p>Trang t&iacute;nh gồm c&aacute;c cột v&agrave; c&aacute;c d&ograve;ng</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000202', N'CH000051', N'<p>V&ugrave;ng giao nhau giữa c&aacute;c cột v&agrave; h&agrave;ng l&agrave; cửa sổ bảng t&iacute;nh</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000203', N'CH000051', N'<p>C&aacute;c cột của trang t&iacute;nh được đ&aacute;nh thứ tự từ phải sang tr&aacute;i với c&aacute;c k&iacute; tự A, B, C&hellip;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000204', N'CH000051', N'<p>C&aacute;c h&agrave;ng của trang t&iacute;nh được đ&aacute;nh thứ tự từ tr&ecirc;n xuống dưới c&aacute;c k&iacute; tự A, B, C&hellip;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000205', N'CH000052', N'<p>L&agrave;m tất cả c&aacute;c c&ocirc;ng việc nh&agrave;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000206', N'CH000052', N'<p>L&agrave;m tất cả c&aacute;c b&agrave;i tập l&agrave;m văn</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000207', N'CH000052', N'<p>.&nbsp;Học tiếng Anh, t&iacute;nh to&aacute;n, giải tr&iacute;</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000208', N'CH000052', N'<p>Tất cả đều sai</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000209', N'CH000053', N'<p>C&aacute;c h&agrave;ng, c&aacute;c cột, c&aacute;c &ocirc; t&iacute;nh &nbsp; &nbsp;&nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000210', N'CH000053', N'<p>Hộp t&ecirc;n, khối. &nbsp; &nbsp; &nbsp; &nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000211', N'CH000053', N'<p>Thanh c&ocirc;ng thức. &nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000212', N'CH000053', N'<p>Cả a, b, c đều đ&uacute;ng</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000213', N'CH000054', N'<p>C&oacute; thể tr&igrave;nh b&agrave;y theo hướng đứng</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000214', N'CH000054', N'<p>Kh&ocirc;ng thể tr&igrave;nh b&agrave;y theo hướng đứng</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000215', N'CH000054', N'<p>Văn bản lu&ocirc;n nằm theo hướng đứng</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000216', N'CH000054', N'<p>Cả A, B, C đều sai</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000217', N'CH000055', N'<p>Đường bay của c&aacute;c con vật</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000218', N'CH000055', N'<p>Đường đi đ&agrave;n c&aacute; ngo&agrave;i biển</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000219', N'CH000055', N'<p>.&nbsp;T&agrave;u vũ trụ bay trong kh&ocirc;ng gian</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000220', N'CH000055', N'<p>Mặt rơi của đồng xu khi em tung l&ecirc;n</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000221', N'CH000056', N'<p>C2</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000222', N'CH000056', N'<p>A</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000223', N'CH000056', N'<p>16384&nbsp;</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000224', N'CH000056', N'<p>A1</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000225', N'CH000057', N'<p>Khả năng lưu trữ lớn</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000226', N'CH000057', N'<p>Khả năng hiểu biết con người</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000227', N'CH000057', N'<p>Gi&aacute; th&agrave;nh ng&agrave;y c&agrave;ng rẻ</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000228', N'CH000057', N'<p>Khả năng t&iacute;nh to&aacute;n nhanh</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000229', N'CH000058', N'<p>Chỉ c&oacute; thể tr&igrave;nh b&agrave;y theo hướng đứng</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000230', N'CH000058', N'<p>Chỉ c&oacute; thể tr&igrave;nh b&agrave;y theo hướng ngang</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000231', N'CH000058', N'<p>C&oacute; thể tr&igrave;nh b&agrave;y cả hướng đứng v&agrave; hướng ngang</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000232', N'CH000058', N'<p>C&oacute; thể tr&igrave;nh b&agrave;y l&uacute;c hướng đứng, l&uacute;c theo hướng ngang phụ thuộc v&agrave;o m&aacute;y t&iacute;nh</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000233', N'CH000059', N'<p>Một cột</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000234', N'CH000059', N'<p>Một khối&nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000235', N'CH000059', N'<p>Một &ocirc;</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000236', N'CH000059', N'<p>Một h&agrave;ng</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000237', N'CH000060', N'<p>Thực hiện t&iacute;nh to&aacute;n</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000238', N'CH000060', N'<p>Học tập, giải tr&iacute;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000239', N'CH000060', N'<p>Suy nghĩ</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000240', N'CH000060', N'<p>.&nbsp;In thiệp mời</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000241', N'CH000061', N'<p>Top v&agrave; Bottom</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000242', N'CH000061', N'<p>Top v&agrave; Left</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000243', N'CH000061', N'<p>Bottom v&agrave; Left</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000244', N'CH000061', N'<p>Right v&agrave; Left</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000245', N'CH000062', N'<p>C&aacute;c trang t&iacute;nh tạo th&agrave;nh &nbsp;&nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000246', N'CH000062', N'<p>C&aacute;c &ocirc; c&aacute;ch nhau&nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000247', N'CH000062', N'<p>Một nh&oacute;m c&aacute;c &ocirc; liền kề nhau &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000248', N'CH000062', N'<p>Tất cả đều đ&uacute;ng</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000249', N'CH000063', N'<p>M&agrave;n h&igrave;nh</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000250', N'CH000063', N'<p>M&aacute;y in</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000251', N'CH000063', N'<p>Đĩa CD</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000252', N'CH000063', N'<p>M&aacute;y qu&eacute;t</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000253', N'CH000064', N'<p>Top v&agrave; Bottom</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000254', N'CH000064', N'<p>Top v&agrave; Left</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000255', N'CH000064', N'<p>Bottom v&agrave; Left</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000256', N'CH000064', N'<p>Right v&agrave; Left</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000257', N'CH000065', N'<p>B1;H15</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000258', N'CH000065', N'<p>B1&hellip;H15</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000259', N'CH000065', N'<p>B1:H15 &nbsp; &nbsp; &nbsp; &nbsp;</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000260', N'CH000065', N'<p>C&acirc;u b v&agrave; c đ&uacute;ng.</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000261', N'CH000066', N'<p>.&nbsp;Chuột</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000262', N'CH000066', N'<p>M&agrave;n h&igrave;nh</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000263', N'CH000066', N'<p>B&agrave;n ph&iacute;m</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000264', N'CH000066', N'<p>M&aacute;y qu&eacute;t</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000265', N'CH000067', N'<p>Top v&agrave; Bottom</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000266', N'CH000067', N'<p>Top v&agrave; Left</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000267', N'CH000067', N'<p>Left v&agrave; Bottom</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000268', N'CH000067', N'<p>Right v&agrave; Left</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000269', N'CH000068', N'<p>Thanh c&ocirc;ng cụ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000270', N'CH000068', N'<p>Thanh c&ocirc;ng thức &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000271', N'CH000068', N'<p>Thanh bảng&nbsp;chọn&nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000272', N'CH000068', N'<p>Hộp t&ecirc;n.</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000273', N'CH000069', N'<p>1 loại</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000274', N'CH000069', N'<p>.&nbsp;2 loại</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000275', N'CH000069', N'<p>3 loại</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000276', N'CH000069', N'<p>4 loại</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000277', N'CH000070', N'<p>Top v&agrave; Bottom</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000278', N'CH000070', N'<p>Top v&agrave; Right</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000279', N'CH000070', N'<p>Bottom v&agrave; Left</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000280', N'CH000070', N'<p>Right v&agrave; Left</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000281', N'CH000071', N'<p>Chỉ xem được một trang</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000282', N'CH000071', N'<p>Chi xem được hai trang</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000283', N'CH000071', N'<p>Kh&ocirc;ng thể xem trước khi in</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000284', N'CH000071', N'<p>C&oacute; thể xem một hay nhiều trang</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000285', N'CH000072', N'<p>Nhập &ndash; xử l&iacute; &ndash; xuất</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000286', N'CH000072', N'<p>Nhập &ndash; xuất &ndash; xử l&iacute;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000287', N'CH000072', N'<p>Xuất &ndash; xử l&iacute; &ndash; nhập</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000288', N'CH000072', N'<p>Xử l&iacute; &ndash; nhập &ndash; xuất</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000289', N'CH000073', N'<p>Bộ nhớ RAM</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000290', N'CH000073', N'<p>Bộ nhớ flash</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000291', N'CH000073', N'<p>Bộ nhớ trong</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000292', N'CH000073', N'<p>Bộ nhớ cứng</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000293', N'CH000074', N'<p>Chọn lệnh File -&gt; Print</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000294', N'CH000074', N'<p>Nhấn tổ hợp ph&iacute;m Ctrl + I</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000295', N'CH000074', N'<p>Chọn lệnh Edit -&gt; Print</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000296', N'CH000074', N'<p>Nhấn n&uacute;t lệnh Print Preview</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000297', N'CH000075', N'<p>Ph&iacute;m chức năng G5 &nbsp;&nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000298', N'CH000075', N'<p>Ph&ocirc;ng chữ hiện thời l&agrave; G5</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000299', N'CH000075', N'<p>&Ocirc; ở cột G h&agrave;ng 5</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000300', N'CH000075', N'<p>&Ocirc; ở h&agrave;ng G cột 5</p>', 0)
GO
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000301', N'CH000076', N'<p>RAM</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000302', N'CH000076', N'<p>Ổ đĩa cứng</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000303', N'CH000076', N'<p>Đĩa mềm</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000304', N'CH000076', N'<p>Cả A, B, C</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000305', N'CH000077', N'<p>In trang chẵn</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000306', N'CH000077', N'<p>In trang lẻ</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000307', N'CH000077', N'<p>In một trang</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000308', N'CH000077', N'<p>Cả A, B, C đều đ&uacute;ng</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000309', N'CH000078', N'<p>G&otilde; địa chỉ v&agrave;o thanh c&ocirc;ng thức &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000310', N'CH000078', N'<p>G&otilde; địa chỉ D150 v&agrave;o hộp t&ecirc;n</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000311', N'CH000078', N'<p>Nh&aacute;y chuột tại n&uacute;t t&ecirc;n cột D &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000312', N'CH000078', N'<p>Nh&aacute;y chuột tại n&uacute;t t&ecirc;n h&agrave;ng 150</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000313', N'CH000079', N'<p>Một từ hoặc một cụm từ</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000314', N'CH000079', N'<p>Chỉ t&igrave;m được một cụm từ</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000315', N'CH000079', N'<p>Chỉ t&igrave;m được một từ</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000316', N'CH000079', N'<p>Chỉ t&igrave;m được chữ in</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000317', N'CH000080', N'<p>Thanh c&ocirc;ng thức &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000318', N'CH000080', N'<p>Địa chỉ hiển thị ở hộp t&ecirc;n</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000319', N'CH000080', N'<p>Thanh trạng th&aacute;i &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000320', N'CH000080', N'<p>Cả a v&agrave; b</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000321', N'CH000081', N'<p>Nhấn tổ hợp ph&iacute;m Ctrl + F</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000322', N'CH000081', N'<p>Chọn lệnh Edit -&gt; Find</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000323', N'CH000081', N'<p>Cả A, B đều đ&uacute;ng</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000324', N'CH000081', N'<p>Cả A, B đều sai</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000325', N'CH000082', N'<p>Nội dung của &ocirc; đang được chọn &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000326', N'CH000082', N'<p>Địa chỉ của &ocirc; đang được chọn</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000327', N'CH000082', N'<p>C&ocirc;ng thức của &ocirc; đang được chọn &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000328', N'CH000082', N'<p>Dữ liệu của &ocirc; đang được chọn</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000329', N'CH000083', N'<p>Chọn lệnh Edit -&gt; Replace</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000330', N'CH000083', N'<p>Chọn lệnh File -&gt; Replace</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000331', N'CH000083', N'<p>Nhấn tổ hợp ph&iacute;m Ctrl + T</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000332', N'CH000083', N'<p>Chọn lệnh File -&gt; Find</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000333', N'CH000084', N'<p>Đ&uacute;ng&nbsp;</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000334', N'CH000084', N'<p>Sai</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000335', N'CH000085', N'<p>Ch&iacute;nh x&aacute;c</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000336', N'CH000085', N'<p>Kh&ocirc;ng cần ch&iacute;nh x&aacute;c</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000337', N'CH000085', N'<p>Kh&ocirc;ng dấu</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000338', N'CH000085', N'<p>Chữ hoa</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000339', N'CH000086', N'<p>CPU, ROM,RAM,I/O</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000340', N'CH000086', N'<p>CPU, bộ nhớ, thiết bị v&agrave;o/ra</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000341', N'CH000086', N'<p>Bộ xử l&iacute; trung t&acirc;m, thiết bị v&agrave;o/ra</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000342', N'CH000086', N'<p>Bộ nhớ trong, bộ nhớ ngo&agrave;i</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000343', N'CH000087', N'<p>Alt</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000344', N'CH000087', N'<p>Ctrl &nbsp;&nbsp;</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000345', N'CH000087', N'<p>Shift&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000346', N'CH000087', N'<p>Ph&iacute;m n&agrave;o cũng được</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000347', N'CH000088', N'<p>Đĩa mềm, thiết bị nhớ USB</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000348', N'CH000088', N'<p>Đĩa cứng</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000349', N'CH000088', N'<p>Đĩa CD/ DVD</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000350', N'CH000088', N'<p>Tất cả c&aacute;c thiết bị tr&ecirc;n</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000351', N'CH000089', N'<p>Thay thế bằng từ kh&aacute;c</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000352', N'CH000089', N'<p>Thay thế bằng c&acirc;u kh&aacute;c</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000353', N'CH000089', N'<p>X&oacute;a từ đ&oacute; đi</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000354', N'CH000089', N'<p>Cả A, B, C đều đ&uacute;ng</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000355', N'CH000090', N'<p>Chọn File, Save v&agrave; đặt t&ecirc;n cho bảng t&iacute;nh.</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000356', N'CH000090', N'<p>Nh&aacute;y v&agrave;o n&uacute;t biểu tượng để thực hiện lệnh Save v&agrave; g&otilde; t&ecirc;n cho bảng t&iacute;nh.</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000357', N'CH000090', N'<p>Giữ ph&iacute;m Ctrl v&agrave; nhấn ph&iacute;m S, g&otilde; t&ecirc;n v&agrave;o bảng t&iacute;nh.</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000358', N'CH000090', N'<p>Tất cả đều đ&uacute;ng.</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000359', N'CH000091', N'<p>Ứng dụng</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000360', N'CH000091', N'<p>Chơi game</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000361', N'CH000091', N'<p>Hệ thống</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000362', N'CH000091', N'<p>G&otilde; văn bản</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000363', N'CH000092', N'<p>L&agrave;m cho nội dung của văn bản trực quan v&agrave; sinh động hơn</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000364', N'CH000092', N'<p>L&agrave;m cho văn bản đẹp mắt v&agrave; dễ nh&igrave;n hơn</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000365', N'CH000092', N'<p>Để minh họa th&ecirc;m cho nội dung của văn bản</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000366', N'CH000092', N'<p>Cả A, B, C</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000367', N'CH000093', N'<p>C2: E4 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000368', N'CH000093', N'<p>C2 : E5 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000369', N'CH000093', N'<p>D2 &nbsp;: E5 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000370', N'CH000093', N'<p>C3 : E5</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000371', N'CH000094', N'<p>Được lưu trữ l&acirc;u d&agrave;i</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000372', N'CH000094', N'<p>Th&ocirc;ng tin sẽ mất đi khi tắt m&aacute;y</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000373', N'CH000094', N'<p>Chỉ lưu trữ trong qu&aacute; tr&igrave;nh m&aacute;y t&iacute;nh l&agrave;m việc</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000374', N'CH000094', N'<p>Lưu trữ trong một ng&agrave;y</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000375', N'CH000095', N'<p>Ch&egrave;n nhiều h&igrave;nh ảnh kh&aacute;c nhau</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000376', N'CH000095', N'<p>Chỉ ch&egrave;n được một h&igrave;nh ảnh nhiều</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000377', N'CH000095', N'<p>Mỗi văn bản chỉ ch&egrave;n được một h&igrave;nh ảnh</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000378', N'CH000095', N'<p>Cả A, B, C đều sai</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000379', N'CH000096', N'<p>Phần mềm học tập v&agrave; phần mềm soạn thảo</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000380', N'CH000096', N'<p>Phần mềm ứng dụng v&agrave; phần mềm soạn thảo</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000381', N'CH000096', N'<p>Phần mền học tập v&agrave; phần mềm hệ thống</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000382', N'CH000096', N'<p>Phần mềm ứng dụng v&agrave; phần mềm hệ thống</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000383', N'CH000097', N'<p>Nhấn Enter &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000384', N'CH000097', N'<p>Nh&aacute;y chuột v&agrave;o n&uacute;t&nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000385', N'CH000097', N'<p>Kh&ocirc;ng thực hiện g&igrave; cả &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000386', N'CH000097', N'<p>Cả a v&agrave; b đều đ&uacute;ng</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000387', N'CH000098', N'<p>Vị tr&iacute; con trỏ soạn thảo trước khi ch&egrave;n</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000388', N'CH000098', N'<p>Ph&iacute;a đầu trang văn bản</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000389', N'CH000098', N'<p>Ph&iacute;a cuối trang văn bản</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000390', N'CH000098', N'<p>Vị tr&iacute; bất k&igrave;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000391', N'CH000099', N'<p>Nhấn nhanh n&uacute;t chuột tr&aacute;i v&agrave; thả tay</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000392', N'CH000099', N'<p>Nhấn nhanh n&uacute;t chuột phải v&agrave; thả tay</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000393', N'CH000099', N'<p>Nhấn nhanh hai lần n&uacute;t chuột tr&aacute;i</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000394', N'CH000099', N'<p>Kh&ocirc;ng nhấn bất kỳ n&uacute;t chuột n&agrave;o</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000395', N'CH000100', N'<p>+ - &nbsp;. &nbsp;: &nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000396', N'CH000100', N'<p>+ - * / &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000397', N'CH000100', N'<p>^ / : x &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000398', N'CH000100', N'<p>+ - &nbsp;^ \</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000399', N'CH000101', N'<p>Nằm trong My Computer</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000400', N'CH000101', N'<p>Nằm tr&ecirc;n thanh c&ocirc;ng việc</p>', 1)
GO
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000401', N'CH000101', N'<p>Nằm g&oacute;c phải &nbsp;m&agrave;n h&igrave;nh</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000402', N'CH000101', N'<p>Nằm ph&iacute;a dưới g&oacute;c b&ecirc;n tr&aacute;i m&agrave;n h&igrave;nh</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000403', N'CH000102', N'<p>=(E4+B2)*C2 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000404', N'CH000102', N'<p>(E4+B2)*C2 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000405', N'CH000102', N'<p>=C2(E4+B2) &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000406', N'CH000102', N'<p>(E4+B2)C2</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000407', N'CH000103', N'<p>Delete</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000408', N'CH000103', N'<p>Enter</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000409', N'CH000103', N'<p>Home</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000410', N'CH000103', N'<p>.&nbsp;End</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000411', N'CH000104', N'<p>Chọn lệnh Format -&gt; Picture -&gt; From File</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000412', N'CH000104', N'<p>Chọn lệnh Insert -&gt; From File -&gt; Picture</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000413', N'CH000104', N'<p>Nhấn tổ hợp ph&iacute;m Ctrl + I, P, F</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000414', N'CH000104', N'<p>Chọn lệnh Insert -&gt; Picture - &gt; From File&hellip;</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000415', N'CH000105', N'<p>C&ocirc;ng thức nhập sai v&agrave; bảng t&iacute;nh th&ocirc;ng b&aacute;o lỗi</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000416', N'CH000105', N'<p>D&ograve;ng chứa &ocirc; đ&oacute; c&oacute; độ cao thấp n&ecirc;n kh&ocirc;ng hiển thị hết chữ số</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000417', N'CH000105', N'<p>&Ocirc; t&iacute;nh đ&oacute; c&oacute; độ rộng hẹp n&ecirc;n kh&ocirc;ng hiển thị hết chữ số</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000418', N'CH000105', N'<p>Nhập sai dữ liệu.</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000419', N'CH000106', N'<p>Thay đổi vị tr&iacute; của chuột tr&ecirc;n mặt phẳng</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000420', N'CH000106', N'<p>Nhấn v&agrave; giữ n&uacute;t tr&aacute;i chuột, di chuyển chuột đến vị tr&iacute; cần thiết th&igrave; thả tay ra</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000421', N'CH000106', N'<p>Nhấn n&uacute;t tr&aacute;i chuột rồi thả ng&oacute;n tay</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000422', N'CH000106', N'<p>Nh&aacute;y chuột 2 lần li&ecirc;n tiếp</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000423', N'CH000107', N'<p>T&iacute;nh tổng &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000424', N'CH000107', N'<p>T&igrave;m số nhỏ nhất &nbsp; &nbsp; &nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000425', N'CH000107', N'<p>T&igrave;m số trung b&igrave;nh cộng &nbsp; &nbsp; &nbsp; &nbsp;</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000426', N'CH000107', N'<p>T&igrave;m số lớn nhất</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000427', N'CH000108', N'<p>C&oacute; thể thay đổi được k&iacute;ch thước</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000428', N'CH000108', N'<p>C&oacute; thể di chuyển đi nơi kh&aacute;c</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000429', N'CH000108', N'<p>C&oacute; thể x&oacute;a</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000430', N'CH000108', N'<p>Cả A, B, C đều đ&uacute;ng</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000431', N'CH000109', N'<p>Nh&aacute;y chuột v&agrave;o biểu tượng&nbsp;X&nbsp;ở g&oacute;c tr&ecirc;n b&ecirc;n phải m&agrave;n h&igrave;nh</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000432', N'CH000109', N'<p>V&agrave;o&nbsp;File/Exit</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000433', N'CH000109', N'<p>.&nbsp;V&agrave;o&nbsp;File/ Close</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000434', N'CH000109', N'<p>Cả A, B đều đ&uacute;ng</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000435', N'CH000110', N'<p>Kh&ocirc;ng thể ch&egrave;n v&agrave;o giữa d&ograve;ng</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000436', N'CH000110', N'<p>C&oacute; thể ch&egrave;n v&agrave;o vị tr&iacute; bất k&igrave;</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000437', N'CH000110', N'<p>Kh&ocirc;ng thể ch&egrave;n v&agrave;o cuối d&ograve;ng</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000438', N'CH000110', N'<p>Kh&ocirc;ng thể ch&egrave;n v&agrave;o đầu d&ograve;ng</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000439', N'CH000111', N'<p>3</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000440', N'CH000111', N'<p>4</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000441', N'CH000111', N'<p>5</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000442', N'CH000111', N'<p>6</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000443', N'CH000112', N'<p>Ng&oacute;n trỏ của tay phải đặt l&ecirc;n n&uacute;t tr&aacute;i chuột</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000444', N'CH000112', N'<p>Ng&oacute;n giữa của tay phải đặt l&ecirc;n n&uacute;t phải chuột</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000445', N'CH000112', N'<p>Cả A v&agrave; B đều đ&uacute;ng</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000446', N'CH000112', N'<p>Cả A v&agrave; B đều sai</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000447', N'CH000113', N'<p>96</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000448', N'CH000113', N'<p>89&nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000449', N'CH000113', N'<p>95 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000450', N'CH000113', N'<p>Kh&ocirc;ng thực hiện được</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000451', N'CH000114', N'<p>C&oacute; thể nằm đ&egrave; l&ecirc;n văn bản</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000452', N'CH000114', N'<p>Văn bản nằm đ&egrave; l&ecirc;n h&igrave;nh ảnh</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000453', N'CH000114', N'<p>Cả A v&agrave; B đều đ&uacute;ng</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000454', N'CH000114', N'<p>Cả A v&agrave; B đều sai</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000455', N'CH000115', N'<p>2 &nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000456', N'CH000115', N'<p>10 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000457', N'CH000115', N'<p>5</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000458', N'CH000115', N'<p>34</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000459', N'CH000116', N'<p>Giữ v&agrave; di chuyển chuột tr&ecirc;n mặt phẳng</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000460', N'CH000116', N'<p>Nh&aacute;y nhanh n&uacute;t tr&aacute;i chuột v&agrave; thả tay</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000461', N'CH000116', N'<p>Nh&aacute;y nhanh n&uacute;t phải chuột v&agrave; thả tay</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000462', N'CH000116', N'<p>Nhấn v&agrave; giữ n&uacute;t tr&aacute;i chuột, di chuyển chuột đến vị tr&iacute; đ&iacute;ch v&agrave; thả tay để kết th&uacute;c thao t&aacute;c</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000463', N'CH000117', N'<p>C&oacute; thể tr&igrave;nh b&agrave;y vừa dạng bảng vừa dạng văn bản b&igrave;nh thường</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000464', N'CH000117', N'<p>Chỉ c&oacute; thể tr&igrave;nh b&agrave;y dưới dạng bảng</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000465', N'CH000117', N'<p>Chỉ c&oacute; thể tr&igrave;nh b&agrave;y dạng văn bản b&igrave;nh thường</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000466', N'CH000117', N'<p>Cả A, B, C đều sai</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000467', N'CH000118', N'<p>4</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000468', N'CH000118', N'<p>5</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000469', N'CH000118', N'<p>6</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000470', N'CH000118', N'<p>7</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000471', N'CH000119', N'<p>2 cột 2 h&agrave;ng</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000472', N'CH000119', N'<p>99 h&agrave;ng</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000473', N'CH000119', N'<p>63 cột</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000474', N'CH000119', N'<p>1024 &ocirc;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000475', N'CH000120', N'<p>=MAX(A1,B5,15) cho kết quả l&agrave; 15</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000476', N'CH000120', N'<p>=MAX(A1:B5, 15) cho kết quả l&agrave; 27</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000477', N'CH000120', N'<p>=MAX(A1:B5) cho kết quả l&agrave; 27 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000478', N'CH000120', N'<p>Tất cả đều đ&uacute;ng.</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000479', N'CH000121', N'<p>N</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000480', N'CH000121', N'<p>M</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000481', N'CH000121', N'<p>L</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000482', N'CH000121', N'<p>Q</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000483', N'CH000122', N'<p>21 &nbsp; &nbsp; &nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000484', N'CH000122', N'<p>7</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000485', N'CH000122', N'<p>10</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000486', N'CH000122', N'<p>3</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000487', N'CH000123', N'<p>K&iacute; tự</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000488', N'CH000123', N'<p>Con số</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000489', N'CH000123', N'<p>H&igrave;nh ảnh</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000490', N'CH000123', N'<p>Cả A, B, C đều đ&uacute;ng</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000491', N'CH000124', N'<p>=Sum ( A1+B1+C1) &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000492', N'CH000124', N'<p>=Average(A1,B1,C1)</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000493', N'CH000124', N'<p>=Average &nbsp;(A1,B1,C1) &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000494', N'CH000124', N'<p>Cả A, B, C đều đ&uacute;ng</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000495', N'CH000125', N'<p>Nh&aacute;y v&agrave;o biểu tượng phần mềm Mouse SKills tr&ecirc;n m&agrave;n h&igrave;nh</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000496', N'CH000125', N'<p>Nh&aacute;y đ&uacute;p v&agrave;o biểu tượng phần mềm Mouse SKills tr&ecirc;n m&agrave;n h&igrave;nh</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000497', N'CH000125', N'<p>Nh&aacute;y đ&uacute;p v&agrave;o biểu tượng phần mềm Mario tr&ecirc;n m&agrave;n h&igrave;nh</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000498', N'CH000125', N'<p>Nh&aacute;y v&agrave;o biểu tượng phần mềm Mario tr&ecirc;n m&agrave;n h&igrave;nh</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000499', N'CH000126', N'<p>=Average(A1:A4) &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000500', N'CH000126', N'<p>=Average(A1:A4)/6</p>', 0)
GO
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000501', N'CH000126', N'<p>Average(A1:A4)/4 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000502', N'CH000126', N'<p>Average(A1,A2,A3,A4)</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000503', N'CH000127', N'<p>N</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000504', N'CH000127', N'<p>Q</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000505', N'CH000127', N'<p>L</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000506', N'CH000127', N'<p>M</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000507', N'CH000128', N'<p>T&iacute;nh tổng của &ocirc; A5 v&agrave; &ocirc; A10 &nbsp; &nbsp; &nbsp; &nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000508', N'CH000128', N'<p>T&igrave;m gi&aacute; trị lớn nhất của &ocirc; A5 v&agrave; &ocirc; A10 &nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000509', N'CH000128', N'<p>T&iacute;nh tổng từ &ocirc; A5 đến &ocirc; A10</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000510', N'CH000128', N'<p>T&igrave;m gi&aacute; trị nhỏ nhất từ &ocirc; A5 đến &nbsp;&ocirc; A10</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000511', N'CH000129', N'<p>Try Again</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000512', N'CH000129', N'<p>Quit</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000513', N'CH000129', N'<p>Start</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000514', N'CH000129', N'<p>Begin</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000515', N'CH000130', N'<p>Thay đổi độ rộng của cột v&agrave; độ cao của h&agrave;ng &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000516', N'CH000130', N'<p>Chỉ thay đổi độ rộng của cột</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000517', N'CH000130', N'<p>Chỉ thay đổi độ cao của h&agrave;ng &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000518', N'CH000130', N'<p>Tất cả đều đ&uacute;ng.</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000519', N'CH000131', N'<p>C&aacute;c cột lu&ocirc;n bằng nhau</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000520', N'CH000131', N'<p>C&aacute;c h&agrave;ng lu&ocirc;n bằng nhau</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000521', N'CH000131', N'<p>C&oacute; thể kh&aacute;c nhau</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000522', N'CH000131', N'<p>C&aacute;c &ocirc; lu&ocirc;n bằng nhau</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000523', N'CH000132', N'<p>Để trỏ chuột tr&ecirc;n vạch ph&acirc;n c&aacute;ch h&agrave;ng hoặc cột rồi nhấn ph&iacute;m phải chuột.</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000524', N'CH000132', N'<p>Để trỏ chuột tr&ecirc;n vạch ph&acirc;n c&aacute;ch h&agrave;ng hoặc cột rồi nhấn đ&uacute;p ph&iacute;m tr&aacute;i chuột.</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000525', N'CH000132', N'<p>Để trỏ chuột tr&ecirc;n vạch ph&acirc;n c&aacute;ch h&agrave;ng hoặc cột rồi nhấn Enter.</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000526', N'CH000132', N'<p>C&acirc;u a v&agrave; c đ&uacute;ng.</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000527', N'CH000133', N'<p>.&nbsp;Di chuyển chuột</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000528', N'CH000133', N'<p>.&nbsp;K&eacute;o thả chuột</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000529', N'CH000133', N'<p>Nh&aacute;y đ&uacute;p chuột</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000530', N'CH000133', N'<p>Nh&aacute;y chuột</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000531', N'CH000134', N'<p>Nhấn ph&iacute;m Tab để dịch chuyển sang &ocirc; b&ecirc;n phải</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000532', N'CH000134', N'<p>Nhấn Tab để dịch chuyển sang &ocirc; b&ecirc;n tr&aacute;i</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000533', N'CH000134', N'<p>Nhấn ph&iacute;m Enter để xuống &ocirc; dưới</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000534', N'CH000134', N'<p>Nhấn ph&iacute;m Backspace để dịch chuyển sang &ocirc; b&ecirc;n tr&aacute;i</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000535', N'CH000135', N'<p>Chọn 1 hoặc nhiều cột, nhấn ph&iacute;m delete &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000536', N'CH000135', N'<p>Chọn 1 hoặc nhiều cột, nhấn ph&iacute;m Enter.</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000537', N'CH000135', N'<p>Chọn 1 hoặc nhiều cột, v&agrave;o edit, chọn delete &nbsp; &nbsp; &nbsp;</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000538', N'CH000135', N'<p>C&acirc;u a v&agrave; b đ&uacute;ng.</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000539', N'CH000136', N'<p>3</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000540', N'CH000136', N'<p>4</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000541', N'CH000136', N'<p>5</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000542', N'CH000136', N'<p>6</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000543', N'CH000137', N'<p>Chỉ ở &ocirc; đ&oacute;</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000544', N'CH000137', N'<p>Cả h&agrave;ng c&oacute; chứa &ocirc; đ&oacute;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000545', N'CH000137', N'<p>Cả cột c&oacute; chứa &ocirc; đ&oacute;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000546', N'CH000137', N'<p>Cả bảng</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000547', N'CH000138', N'<p>Copy</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000548', N'CH000138', N'<p>Cut&nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000549', N'CH000138', N'<p>New</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000550', N'CH000138', N'<p>Save</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000551', N'CH000139', N'<p>Chứa 2 ph&iacute;m c&oacute; gai F v&agrave; J</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000552', N'CH000139', N'<p>Chứa 2 ph&iacute;m c&oacute; gai G v&agrave; H</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000553', N'CH000139', N'<p>Chứa dấu c&aacute;ch</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000554', N'CH000139', N'<p>Chứa c&aacute;c k&iacute; tự A, B, C</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000555', N'CH000140', N'<p>Đưa con trỏ soạn thảo về đầu h&agrave;ng, nhấn giữ ph&iacute;m Shift kết hợp nh&aacute;y chuột v&agrave;o &ocirc; cuối h&agrave;ng</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000556', N'CH000140', N'<p>K&eacute;o thả chuột từ &ocirc; đầu h&agrave;ng đến &ocirc; cuối h&agrave;ng</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000557', N'CH000140', N'<p>Đưa con trỏ chuột đến đầu h&agrave;ng, khi con trỏ chuột chuyển th&agrave;nh mũi t&ecirc;n trỏ v&agrave;o h&agrave;ng cần chọn th&igrave; nh&aacute;y chuột</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000558', N'CH000140', N'<p>Cả A, B, C đều đ&uacute;ng</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000559', N'CH000141', N'<p>Copy&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000560', N'CH000141', N'<p>Cut &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000561', N'CH000141', N'<p>New &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000562', N'CH000141', N'<p>New &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000563', N'CH000142', N'<p>Sẽ hiển thị k&iacute; tự tr&ecirc;n mặt ph&iacute;m l&ecirc;n m&agrave;n h&igrave;nh soạn thảo</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000564', N'CH000142', N'<p>Kh&ocirc;ng hiển thị k&iacute; tự tr&ecirc;n mặt ph&iacute;m l&ecirc;n m&agrave;n h&igrave;nh soạn thảo</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000565', N'CH000142', N'<p>Cả&nbsp;A, B đ&uacute;ng</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000566', N'CH000142', N'<p>Cả&nbsp;A, B sai</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000567', N'CH000143', N'<p>Chọn lệnh Table -&gt; Merge Cells</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000568', N'CH000143', N'<p>Chọn lệnh Table -&gt; Split Cells</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000569', N'CH000143', N'<p>Chọn lệnh Tools -&gt; Split Cells</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000570', N'CH000143', N'<p>Chọn lệnh Format -&gt; Merge Cells</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000571', N'CH000144', N'<p>Nằm tại trung t&acirc;m b&agrave;n ph&iacute;m</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000572', N'CH000144', N'<p>Nằm tr&ecirc;n một h&agrave;ng</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000573', N'CH000144', N'<p>Nằm tr&ecirc;n hai h&agrave;ng gần nhau</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000574', N'CH000144', N'<p>Nằm xung quanh b&agrave;n ph&iacute;m</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000575', N'CH000145', N'<p>Chọn lệnh Table -&gt; Heading Rows Repeat</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000576', N'CH000145', N'<p>Chọn lệnh Table -&gt; Merge Cells</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000577', N'CH000145', N'<p>Chọn lệnh Table -&gt; Split Table</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000578', N'CH000145', N'<p>Chọn lệnh Table -&gt; Split Cells</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000579', N'CH000146', N'<p>H&agrave;ng ph&iacute;m số</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000580', N'CH000146', N'<p>H&agrave;ng ph&iacute;m cơ sở</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000581', N'CH000146', N'<p>H&agrave;ng ph&iacute;m tr&ecirc;n</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000582', N'CH000146', N'<p>H&agrave;ng ph&iacute;m dưới</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000583', N'CH000147', N'<p>Chọn lệnh Table -&gt; Insert -&gt; Columns to the Left</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000584', N'CH000147', N'<p>Chọn lệnh Table -&gt; Insert -&gt; Columns to the Right</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000585', N'CH000147', N'<p>Chọn lệnh Table -&gt; Insert -&gt; Rows Above</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000586', N'CH000147', N'<p>chọn lệnh Format -&gt; Insert -&gt; Columns to the Right</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000587', N'CH000148', N'<p>Tốc độ g&otilde; nhanh hơn, g&otilde; ch&iacute;nh x&aacute;c hơn, luyện t&aacute;c phong l&agrave;m việc chuy&ecirc;n nghiệp với m&aacute;y t&iacute;nh</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000588', N'CH000148', N'<p>G&otilde; nhẹ nh&agrave;ng hơn</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000589', N'CH000148', N'<p>Tiết kiệm c&ocirc;ng sức</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000590', N'CH000148', N'<p>Kh&ocirc;ng c&oacute; lợi g&igrave; so với g&otilde; bằng 2 ng&oacute;n&nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000591', N'CH000149', N'<p>Chọn lệnh Table -&gt; Insert</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000592', N'CH000149', N'<p>Chọn lệnh Table -&gt; Delete -&gt; Columns</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000593', N'CH000149', N'<p>Chọn lệnh Table -&gt; Delete -&gt; Cells</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000594', N'CH000149', N'<p>Chọn lệnh Format -&gt; Delete -&gt; Columns</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000595', N'CH000150', N'<p>.&nbsp;Thẳng lưng, đầu kh&ocirc;ng ngửa ra trước cũng kh&ocirc;ng c&uacute;i về ph&iacute;a sau</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000596', N'CH000150', N'<p>Mắt nh&igrave;n thẳng v&agrave;o m&agrave;n h&igrave;nh, b&agrave;n ph&iacute;m ở vị tr&iacute; trung t&acirc;m</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000597', N'CH000150', N'<p>Hai tay để thả lỏng tr&ecirc;n b&agrave;n ph&iacute;m</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000598', N'CH000150', N'<p>Mắt nh&igrave;n c&uacute;i v&agrave;o b&agrave;n ph&iacute;m để nh&igrave;n thấy c&aacute;c ph&iacute;m</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000599', N'CH000151', N'<p>Chọn lệnh Table -&gt; Delete -&gt; Rows</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000600', N'CH000151', N'<p>Chọn lệnh Table -&gt; Delete -&gt; Columns</p>', 0)
GO
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000601', N'CH000151', N'<p>Chọn lệnh Table -&gt; Delete -&gt; Cells</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000602', N'CH000151', N'<p>Chọn lệnh Format -&gt; Delete -&gt; Rows</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000603', N'CH000152', N'<p>Ng&oacute;n trỏ của b&agrave;n tay tr&aacute;i đặt v&agrave;o ph&iacute;m F, ng&oacute;n trỏ của b&agrave;n tay phải đặt v&agrave;o ph&iacute;m J</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000604', N'CH000152', N'<p>Ng&oacute;n trỏ của b&agrave;n tay tr&aacute;i đặt v&agrave;o ph&iacute;m J, ng&oacute;n trỏ của b&agrave;n tay phải đặt v&agrave;o ph&iacute;m F</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000605', N'CH000152', N'<p>Ng&oacute;n trỏ của b&agrave;n tay tr&aacute;i v&agrave; ng&oacute;n trỏ của b&agrave;n tay phải đặt t&ugrave;y &yacute;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000606', N'CH000152', N'<p>Ng&oacute;n trỏ của b&agrave;n tay tr&aacute;i đặt v&agrave; ng&oacute;n trỏ của b&agrave;n tay phải đặt v&agrave;o ph&iacute;m c&aacute;ch</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000607', N'CH000153', N'<p>File</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000608', N'CH000153', N'<p>Student</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000609', N'CH000153', N'<p>Lessons</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000610', N'CH000153', N'<p>Insert&nbsp;</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000611', N'CH000154', N'<p>Lựa chọn b&agrave;i học để luyện tập</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000612', N'CH000154', N'<p>C&agrave;i đặt th&ocirc;ng tin học sinh</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000613', N'CH000154', N'<p>C&aacute;c lệnh hệ thống</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000614', N'CH000154', N'<p>Tho&aacute;t khỏi phần mềm</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000615', N'CH000155', N'<p>Nh&aacute;y v&agrave;o biểu tượng phần mềm Mouse SKills tr&ecirc;n m&agrave;n h&igrave;nh</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000616', N'CH000155', N'<p>Nh&aacute;y đ&uacute;p v&agrave;o biểu tượng phần mềm Mouse SKills tr&ecirc;n m&agrave;n h&igrave;nh</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000617', N'CH000155', N'<p>Nh&aacute;y đ&uacute;p v&agrave;o biểu tượng phần mềm Mario tr&ecirc;n m&agrave;n h&igrave;nh</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000618', N'CH000155', N'<p>Nh&aacute;y v&agrave;o biểu tượng phần mềm Mario tr&ecirc;n m&agrave;n h&igrave;nh</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000619', N'CH000156', N'<p>Tốc độ g&otilde; nhanh hơn</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000620', N'CH000156', N'<p>Nhanh mỏi tay hơn</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000621', N'CH000156', N'<p>Kh&ocirc;ng c&oacute; t&aacute;c phong l&agrave;m việc chuy&ecirc;n nghiệp</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000622', N'CH000156', N'<p>G&otilde; kh&ocirc;ng ch&iacute;nh x&aacute;c &nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000623', N'CH000157', N'<p>4</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000624', N'CH000157', N'<p>5</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000625', N'CH000157', N'<p>6</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000626', N'CH000157', N'<p>7</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000627', N'CH000158', N'<p>Quan s&aacute;t tr&aacute;i đất v&agrave; c&aacute;c v&igrave; sao</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000628', N'CH000158', N'<p>Luyện g&otilde; ph&iacute;m</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000629', N'CH000158', N'<p>Luyện tập chuột</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000630', N'CH000158', N'<p>Luyện tay</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000631', N'CH000159', N'<p>1</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000632', N'CH000159', N'<p>2</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000633', N'CH000159', N'<p>3</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000634', N'CH000159', N'<p>4</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000635', N'CH000160', N'<p>Student / New</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000636', N'CH000160', N'<p>Student / Load</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000637', N'CH000160', N'<p>Student / Edit</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000638', N'CH000160', N'<p>Student / Lession Times</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000639', N'CH000161', N'<p>Mario</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000640', N'CH000161', N'<p>Solar System</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000641', N'CH000161', N'<p>Mouse Skills</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000642', N'CH000161', N'<p>Kompozer</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000643', N'CH000162', N'<p>Nh&aacute;y v&agrave;o biểu tượng phần mềm Solar System tr&ecirc;n m&agrave;n h&igrave;nh</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000644', N'CH000162', N'<p>Nh&aacute;y đ&uacute;p v&agrave;o biểu tượng phần mềm Solar System tr&ecirc;n m&agrave;n h&igrave;nh</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000645', N'CH000162', N'<p>Nh&aacute;y đ&uacute;p v&agrave;o biểu tượng phần mềm Mario tr&ecirc;n m&agrave;n h&igrave;nh</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000646', N'CH000162', N'<p>Nh&aacute;y v&agrave;o biểu tượng phần mềm Mouse Skills tr&ecirc;n m&agrave;n h&igrave;nh&nbsp;</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000647', N'CH000163', N'<p>VIEW</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000648', N'CH000163', N'<p>ZOOM</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000649', N'CH000163', N'<p>ORBITS</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000650', N'CH000163', N'<p>SPEED</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000651', N'CH000164', N'<p>Ẩn hiện chuyển động c&aacute;c h&agrave;nh tinh</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000652', N'CH000164', N'<p>Ph&oacute;ng to thu nhỏ khung h&igrave;nh</p>', 0)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000653', N'CH000164', N'<p>N&acirc;ng l&ecirc;n hạ xuống vị tr&iacute; quan s&aacute;t</p>', 1)
INSERT [dbo].[tblDAPAN] ([idDapAn], [idCauHoi], [noiDung], [isDapAnDung]) VALUES (N'DA0000654', N'CH000164', N'<p>Thay đổi vận tốc chuyển động của c&aacute;c h&agrave;nh tinh&nbsp;</p>', 0)
INSERT [dbo].[tblDETHI] ([idDeThi], [idChuong], [tenDeThi], [thoiGianLamBai]) VALUES (N'DT00002', N'C0001', N'Đề cuối kì', 45)
SET IDENTITY_INSERT [dbo].[tblDINHKIENTHUC] ON 

INSERT [dbo].[tblDINHKIENTHUC] ([idDinhKienThuc], [idMonHoc], [tenDinhKienThuc], [LoaiDinh]) VALUES (1, N'MH001', N'Xuất sắc', 0)
INSERT [dbo].[tblDINHKIENTHUC] ([idDinhKienThuc], [idMonHoc], [tenDinhKienThuc], [LoaiDinh]) VALUES (2, N'MH001', N'Giỏi', 0)
INSERT [dbo].[tblDINHKIENTHUC] ([idDinhKienThuc], [idMonHoc], [tenDinhKienThuc], [LoaiDinh]) VALUES (3, N'MH001', N'Khá', 0)
INSERT [dbo].[tblDINHKIENTHUC] ([idDinhKienThuc], [idMonHoc], [tenDinhKienThuc], [LoaiDinh]) VALUES (4, N'MH001', N'Trung BÌnh', 0)
INSERT [dbo].[tblDINHKIENTHUC] ([idDinhKienThuc], [idMonHoc], [tenDinhKienThuc], [LoaiDinh]) VALUES (5, N'MH001', N'Yếu', 0)
INSERT [dbo].[tblDINHKIENTHUC] ([idDinhKienThuc], [idMonHoc], [tenDinhKienThuc], [LoaiDinh]) VALUES (6, N'MH002', N'Xuất sắc', 0)
INSERT [dbo].[tblDINHKIENTHUC] ([idDinhKienThuc], [idMonHoc], [tenDinhKienThuc], [LoaiDinh]) VALUES (7, N'MH002', N'Giỏi', 0)
INSERT [dbo].[tblDINHKIENTHUC] ([idDinhKienThuc], [idMonHoc], [tenDinhKienThuc], [LoaiDinh]) VALUES (8, N'MH002', N'Khá', 0)
INSERT [dbo].[tblDINHKIENTHUC] ([idDinhKienThuc], [idMonHoc], [tenDinhKienThuc], [LoaiDinh]) VALUES (9, N'MH002', N'Trung BÌnh', 0)
INSERT [dbo].[tblDINHKIENTHUC] ([idDinhKienThuc], [idMonHoc], [tenDinhKienThuc], [LoaiDinh]) VALUES (10, N'MH002', N'Yếu', 0)
SET IDENTITY_INSERT [dbo].[tblDINHKIENTHUC] OFF
INSERT [dbo].[tblLICHSULAMBAI] ([idLichSuLamBai], [maThiSinh], [maDeThi], [thoiGian], [noiDung]) VALUES (N'LS0000001', N'TS001', N'DT00002', CAST(N'2018-06-06T20:30:25.317' AS DateTime), N'Đề cuối kì Học kỳ 1 môn Tin Học 6 <b>(Làm được 19/25 câu, được 7,60 điểm)</b>')
INSERT [dbo].[tblLICHSULAMBAI] ([idLichSuLamBai], [maThiSinh], [maDeThi], [thoiGian], [noiDung]) VALUES (N'LS0000002', N'TS001', N'0', CAST(N'2018-06-10T15:59:04.730' AS DateTime), N'Đề thi với câu hỏi được chọn theo trình độ <b>(Làm được 3/5 câu, được 6,00 điểm)</b>')
INSERT [dbo].[tblLICHSULAMBAI] ([idLichSuLamBai], [maThiSinh], [maDeThi], [thoiGian], [noiDung]) VALUES (N'LS0000003', N'TS001', N'0', CAST(N'2018-06-10T16:03:17.660' AS DateTime), N'Đề thi với câu hỏi được chọn theo trình độ <b>(Làm được 2/5 câu, được 4,00 điểm)</b>')
INSERT [dbo].[tblLICHSULAMBAI] ([idLichSuLamBai], [maThiSinh], [maDeThi], [thoiGian], [noiDung]) VALUES (N'LS0000004', N'TS001', N'0', CAST(N'2018-06-10T16:11:32.073' AS DateTime), N'Đề thi với câu hỏi được chọn theo trình độ <b>(Làm được 5/5 câu, được 10,00 điểm)</b>')
INSERT [dbo].[tblLICHSULAMBAI] ([idLichSuLamBai], [maThiSinh], [maDeThi], [thoiGian], [noiDung]) VALUES (N'LS0000005', N'TS001', N'0', CAST(N'2018-06-10T16:15:13.477' AS DateTime), N'Đề thi với câu hỏi được chọn theo trình độ <b>(Làm được 1/3 câu, được 3,33 điểm)</b>')
INSERT [dbo].[tblLICHSULAMBAI] ([idLichSuLamBai], [maThiSinh], [maDeThi], [thoiGian], [noiDung]) VALUES (N'LS0000006', N'TS001', N'0', CAST(N'2018-06-10T16:27:41.297' AS DateTime), N'Đề thi với câu hỏi được chọn theo trình độ <b>(Làm được 5/5 câu, được 10,00 điểm)</b>')
INSERT [dbo].[tblLICHSULAMBAI] ([idLichSuLamBai], [maThiSinh], [maDeThi], [thoiGian], [noiDung]) VALUES (N'LS0000007', N'TS001', N'0', CAST(N'2018-06-12T18:47:15.027' AS DateTime), N'Đề thi với câu hỏi được chọn theo trình độ <b>(Làm được 9/72 câu, được 1.25 điểm)</b>')
INSERT [dbo].[tblLICHSULAMBAI] ([idLichSuLamBai], [maThiSinh], [maDeThi], [thoiGian], [noiDung]) VALUES (N'LS0000008', N'TS001', N'DT00002', CAST(N'2018-06-12T18:59:24.653' AS DateTime), N'Đề cuối kì Học kỳ 1 môn Tin Học 6 <b>(Làm được 0/25 câu, được .00 điểm)</b>')
INSERT [dbo].[tblLICHSULAMBAI] ([idLichSuLamBai], [maThiSinh], [maDeThi], [thoiGian], [noiDung]) VALUES (N'LS0000009', N'TS001', N'0', CAST(N'2018-06-12T19:01:33.873' AS DateTime), N'Đề thi với câu hỏi được chọn theo trình độ <b>(Làm được 4/10 câu, được 4.00 điểm)</b>')
INSERT [dbo].[tblLICHSULAMBAI] ([idLichSuLamBai], [maThiSinh], [maDeThi], [thoiGian], [noiDung]) VALUES (N'LS0000010', N'TS001', N'0', CAST(N'2018-10-23T22:25:50.743' AS DateTime), N'Đề thi với câu hỏi được chọn theo trình độ <b>(Làm được 3/20 câu, được 1.50 điểm)</b>')
INSERT [dbo].[tblLICHSULAMBAI] ([idLichSuLamBai], [maThiSinh], [maDeThi], [thoiGian], [noiDung]) VALUES (N'LS0000011', N'TS001', N'0', CAST(N'2018-10-23T22:56:40.910' AS DateTime), N'Đề thi với câu hỏi được chọn ngẫu nhiên <b>(Làm được 0/10 câu, được .00 điểm)</b>')
INSERT [dbo].[tblLICHSULAMBAI] ([idLichSuLamBai], [maThiSinh], [maDeThi], [thoiGian], [noiDung]) VALUES (N'LS0000012', N'TS0000002', N'0', CAST(N'2019-07-28T20:35:08.987' AS DateTime), N'Đề thi với câu hỏi được chọn theo trình độ')
INSERT [dbo].[tblLICHSULAMBAI] ([idLichSuLamBai], [maThiSinh], [maDeThi], [thoiGian], [noiDung]) VALUES (N'LS0000013', N'TS0000002', N'0', CAST(N'2019-08-22T19:50:24.877' AS DateTime), N'Đề thi với câu hỏi được chọn theo trình độ')
INSERT [dbo].[tblLICHSULAMBAI] ([idLichSuLamBai], [maThiSinh], [maDeThi], [thoiGian], [noiDung]) VALUES (N'LS0000014', N'TS0000002', N'0', CAST(N'2019-08-22T19:55:38.510' AS DateTime), N'Đề thi với câu hỏi được chọn theo trình độ <b>(Làm được 10/18 câu, được 5,56 điểm)</b>')
SET IDENTITY_INSERT [dbo].[tblLICHSUNHOMCAUHOI] ON 

INSERT [dbo].[tblLICHSUNHOMCAUHOI] ([id], [nam], [idNhom], [soThiSinhThuocNhom], [tongSoThiSinh]) VALUES (1, 2015, 1, 5, 50)
INSERT [dbo].[tblLICHSUNHOMCAUHOI] ([id], [nam], [idNhom], [soThiSinhThuocNhom], [tongSoThiSinh]) VALUES (2, 2016, 1, 7, 60)
INSERT [dbo].[tblLICHSUNHOMCAUHOI] ([id], [nam], [idNhom], [soThiSinhThuocNhom], [tongSoThiSinh]) VALUES (3, 2017, 1, 3, 70)
INSERT [dbo].[tblLICHSUNHOMCAUHOI] ([id], [nam], [idNhom], [soThiSinhThuocNhom], [tongSoThiSinh]) VALUES (4, 2015, 2, 10, 50)
INSERT [dbo].[tblLICHSUNHOMCAUHOI] ([id], [nam], [idNhom], [soThiSinhThuocNhom], [tongSoThiSinh]) VALUES (5, 2016, 2, 15, 60)
INSERT [dbo].[tblLICHSUNHOMCAUHOI] ([id], [nam], [idNhom], [soThiSinhThuocNhom], [tongSoThiSinh]) VALUES (6, 2017, 2, 20, 70)
INSERT [dbo].[tblLICHSUNHOMCAUHOI] ([id], [nam], [idNhom], [soThiSinhThuocNhom], [tongSoThiSinh]) VALUES (7, 2015, 3, 22, 50)
INSERT [dbo].[tblLICHSUNHOMCAUHOI] ([id], [nam], [idNhom], [soThiSinhThuocNhom], [tongSoThiSinh]) VALUES (8, 2016, 3, 25, 60)
INSERT [dbo].[tblLICHSUNHOMCAUHOI] ([id], [nam], [idNhom], [soThiSinhThuocNhom], [tongSoThiSinh]) VALUES (9, 2017, 3, 29, 70)
INSERT [dbo].[tblLICHSUNHOMCAUHOI] ([id], [nam], [idNhom], [soThiSinhThuocNhom], [tongSoThiSinh]) VALUES (10, 2015, 4, 10, 50)
INSERT [dbo].[tblLICHSUNHOMCAUHOI] ([id], [nam], [idNhom], [soThiSinhThuocNhom], [tongSoThiSinh]) VALUES (11, 2016, 4, 10, 60)
INSERT [dbo].[tblLICHSUNHOMCAUHOI] ([id], [nam], [idNhom], [soThiSinhThuocNhom], [tongSoThiSinh]) VALUES (12, 2017, 4, 15, 70)
INSERT [dbo].[tblLICHSUNHOMCAUHOI] ([id], [nam], [idNhom], [soThiSinhThuocNhom], [tongSoThiSinh]) VALUES (13, 2015, 5, 3, 50)
INSERT [dbo].[tblLICHSUNHOMCAUHOI] ([id], [nam], [idNhom], [soThiSinhThuocNhom], [tongSoThiSinh]) VALUES (14, 2016, 5, 3, 60)
INSERT [dbo].[tblLICHSUNHOMCAUHOI] ([id], [nam], [idNhom], [soThiSinhThuocNhom], [tongSoThiSinh]) VALUES (15, 2017, 5, 3, 70)
INSERT [dbo].[tblLICHSUNHOMCAUHOI] ([id], [nam], [idNhom], [soThiSinhThuocNhom], [tongSoThiSinh]) VALUES (16, 2015, 20, 5, 50)
INSERT [dbo].[tblLICHSUNHOMCAUHOI] ([id], [nam], [idNhom], [soThiSinhThuocNhom], [tongSoThiSinh]) VALUES (17, 2016, 20, 7, 60)
INSERT [dbo].[tblLICHSUNHOMCAUHOI] ([id], [nam], [idNhom], [soThiSinhThuocNhom], [tongSoThiSinh]) VALUES (18, 2017, 20, 3, 70)
INSERT [dbo].[tblLICHSUNHOMCAUHOI] ([id], [nam], [idNhom], [soThiSinhThuocNhom], [tongSoThiSinh]) VALUES (19, 2015, 21, 10, 50)
INSERT [dbo].[tblLICHSUNHOMCAUHOI] ([id], [nam], [idNhom], [soThiSinhThuocNhom], [tongSoThiSinh]) VALUES (20, 2016, 21, 15, 60)
INSERT [dbo].[tblLICHSUNHOMCAUHOI] ([id], [nam], [idNhom], [soThiSinhThuocNhom], [tongSoThiSinh]) VALUES (21, 2017, 21, 20, 70)
INSERT [dbo].[tblLICHSUNHOMCAUHOI] ([id], [nam], [idNhom], [soThiSinhThuocNhom], [tongSoThiSinh]) VALUES (22, 2015, 22, 22, 50)
INSERT [dbo].[tblLICHSUNHOMCAUHOI] ([id], [nam], [idNhom], [soThiSinhThuocNhom], [tongSoThiSinh]) VALUES (23, 2016, 22, 25, 60)
INSERT [dbo].[tblLICHSUNHOMCAUHOI] ([id], [nam], [idNhom], [soThiSinhThuocNhom], [tongSoThiSinh]) VALUES (24, 2017, 22, 29, 70)
INSERT [dbo].[tblLICHSUNHOMCAUHOI] ([id], [nam], [idNhom], [soThiSinhThuocNhom], [tongSoThiSinh]) VALUES (25, 2015, 23, 10, 50)
INSERT [dbo].[tblLICHSUNHOMCAUHOI] ([id], [nam], [idNhom], [soThiSinhThuocNhom], [tongSoThiSinh]) VALUES (26, 2016, 23, 10, 60)
INSERT [dbo].[tblLICHSUNHOMCAUHOI] ([id], [nam], [idNhom], [soThiSinhThuocNhom], [tongSoThiSinh]) VALUES (27, 2017, 23, 15, 70)
INSERT [dbo].[tblLICHSUNHOMCAUHOI] ([id], [nam], [idNhom], [soThiSinhThuocNhom], [tongSoThiSinh]) VALUES (28, 2015, 24, 3, 50)
INSERT [dbo].[tblLICHSUNHOMCAUHOI] ([id], [nam], [idNhom], [soThiSinhThuocNhom], [tongSoThiSinh]) VALUES (29, 2016, 24, 3, 60)
INSERT [dbo].[tblLICHSUNHOMCAUHOI] ([id], [nam], [idNhom], [soThiSinhThuocNhom], [tongSoThiSinh]) VALUES (30, 2017, 24, 3, 70)
INSERT [dbo].[tblLICHSUNHOMCAUHOI] ([id], [nam], [idNhom], [soThiSinhThuocNhom], [tongSoThiSinh]) VALUES (31, 2015, 10, 5, 50)
INSERT [dbo].[tblLICHSUNHOMCAUHOI] ([id], [nam], [idNhom], [soThiSinhThuocNhom], [tongSoThiSinh]) VALUES (32, 2016, 10, 7, 60)
INSERT [dbo].[tblLICHSUNHOMCAUHOI] ([id], [nam], [idNhom], [soThiSinhThuocNhom], [tongSoThiSinh]) VALUES (33, 2017, 10, 3, 70)
INSERT [dbo].[tblLICHSUNHOMCAUHOI] ([id], [nam], [idNhom], [soThiSinhThuocNhom], [tongSoThiSinh]) VALUES (34, 2015, 11, 10, 50)
INSERT [dbo].[tblLICHSUNHOMCAUHOI] ([id], [nam], [idNhom], [soThiSinhThuocNhom], [tongSoThiSinh]) VALUES (35, 2016, 11, 15, 60)
INSERT [dbo].[tblLICHSUNHOMCAUHOI] ([id], [nam], [idNhom], [soThiSinhThuocNhom], [tongSoThiSinh]) VALUES (36, 2017, 11, 20, 70)
INSERT [dbo].[tblLICHSUNHOMCAUHOI] ([id], [nam], [idNhom], [soThiSinhThuocNhom], [tongSoThiSinh]) VALUES (37, 2015, 12, 22, 50)
INSERT [dbo].[tblLICHSUNHOMCAUHOI] ([id], [nam], [idNhom], [soThiSinhThuocNhom], [tongSoThiSinh]) VALUES (38, 2016, 12, 25, 60)
INSERT [dbo].[tblLICHSUNHOMCAUHOI] ([id], [nam], [idNhom], [soThiSinhThuocNhom], [tongSoThiSinh]) VALUES (39, 2017, 12, 29, 70)
INSERT [dbo].[tblLICHSUNHOMCAUHOI] ([id], [nam], [idNhom], [soThiSinhThuocNhom], [tongSoThiSinh]) VALUES (40, 2015, 13, 10, 50)
INSERT [dbo].[tblLICHSUNHOMCAUHOI] ([id], [nam], [idNhom], [soThiSinhThuocNhom], [tongSoThiSinh]) VALUES (41, 2016, 13, 10, 60)
INSERT [dbo].[tblLICHSUNHOMCAUHOI] ([id], [nam], [idNhom], [soThiSinhThuocNhom], [tongSoThiSinh]) VALUES (42, 2017, 13, 15, 70)
INSERT [dbo].[tblLICHSUNHOMCAUHOI] ([id], [nam], [idNhom], [soThiSinhThuocNhom], [tongSoThiSinh]) VALUES (43, 2015, 14, 3, 50)
INSERT [dbo].[tblLICHSUNHOMCAUHOI] ([id], [nam], [idNhom], [soThiSinhThuocNhom], [tongSoThiSinh]) VALUES (44, 2016, 14, 3, 60)
INSERT [dbo].[tblLICHSUNHOMCAUHOI] ([id], [nam], [idNhom], [soThiSinhThuocNhom], [tongSoThiSinh]) VALUES (45, 2017, 14, 3, 70)
INSERT [dbo].[tblLICHSUNHOMCAUHOI] ([id], [nam], [idNhom], [soThiSinhThuocNhom], [tongSoThiSinh]) VALUES (46, 2018, 1, 1, 9)
INSERT [dbo].[tblLICHSUNHOMCAUHOI] ([id], [nam], [idNhom], [soThiSinhThuocNhom], [tongSoThiSinh]) VALUES (47, 2018, 2, 4, 9)
INSERT [dbo].[tblLICHSUNHOMCAUHOI] ([id], [nam], [idNhom], [soThiSinhThuocNhom], [tongSoThiSinh]) VALUES (48, 2018, 3, 1, 9)
INSERT [dbo].[tblLICHSUNHOMCAUHOI] ([id], [nam], [idNhom], [soThiSinhThuocNhom], [tongSoThiSinh]) VALUES (49, 2018, 4, 1, 9)
INSERT [dbo].[tblLICHSUNHOMCAUHOI] ([id], [nam], [idNhom], [soThiSinhThuocNhom], [tongSoThiSinh]) VALUES (50, 2018, 5, 2, 9)
SET IDENTITY_INSERT [dbo].[tblLICHSUNHOMCAUHOI] OFF
SET IDENTITY_INSERT [dbo].[tblMATRANTRONGSO] ON 

INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (1, 1, 1, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (2, 1, 1, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (3, 1, 1, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (4, 1, 2, 0, 1, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (5, 2, 1, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (6, 2, 2, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (7, 2, 2, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (8, 2, 2, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (9, 1, 3, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (10, 3, 1, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (11, 2, 3, 0, 1, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (12, 3, 2, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (13, 3, 3, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (14, 3, 3, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (15, 3, 3, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (16, 1, 4, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (17, 4, 1, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (18, 2, 4, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (19, 4, 2, 0, 1, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (20, 3, 4, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (21, 4, 3, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (22, 4, 4, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (23, 4, 4, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (24, 4, 4, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (25, 1, 5, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (26, 5, 1, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (27, 2, 5, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (28, 5, 2, 0, 1, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (29, 3, 5, 0, 1, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (30, 5, 3, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (31, 4, 5, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (32, 5, 4, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (33, 5, 5, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (34, 5, 5, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (35, 5, 5, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (36, 6, 6, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (37, 6, 6, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (38, 6, 6, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (39, 6, 7, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (40, 7, 6, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (41, 7, 7, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (42, 7, 7, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (43, 7, 7, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (44, 6, 8, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (45, 8, 6, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (46, 7, 8, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (47, 8, 7, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (48, 8, 8, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (49, 8, 8, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (50, 8, 8, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (51, 6, 9, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (52, 9, 6, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (53, 7, 9, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (54, 9, 7, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (55, 8, 9, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (56, 9, 8, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (57, 9, 9, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (58, 9, 9, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (59, 9, 9, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (60, 6, 10, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (61, 10, 6, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (62, 7, 10, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (63, 10, 7, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (64, 8, 10, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (65, 10, 8, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (66, 9, 10, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (67, 10, 9, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (68, 10, 10, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (69, 10, 10, 0, 0, 0)
INSERT [dbo].[tblMATRANTRONGSO] ([idTrongSo], [tuDinh], [denDinh], [trongSo], [coTheDen], [trongSoMax]) VALUES (70, 10, 10, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[tblMATRANTRONGSO] OFF
INSERT [dbo].[tblMONHOC] ([idMonHoc], [tenMonHoc]) VALUES (N'MH001', N'Tin Học 6')
INSERT [dbo].[tblMONHOC] ([idMonHoc], [tenMonHoc]) VALUES (N'MH002', N'Tin học 7')
SET IDENTITY_INSERT [dbo].[tblNHOMCAUHOI] ON 

INSERT [dbo].[tblNHOMCAUHOI] ([idNhomCauHoi], [idChuong], [tenNhomCauHoi], [order]) VALUES (1, N'C0001', N'Xuất sắc', 1)
INSERT [dbo].[tblNHOMCAUHOI] ([idNhomCauHoi], [idChuong], [tenNhomCauHoi], [order]) VALUES (2, N'C0001', N'Giỏi', 1)
INSERT [dbo].[tblNHOMCAUHOI] ([idNhomCauHoi], [idChuong], [tenNhomCauHoi], [order]) VALUES (3, N'C0001', N'Khá', 1)
INSERT [dbo].[tblNHOMCAUHOI] ([idNhomCauHoi], [idChuong], [tenNhomCauHoi], [order]) VALUES (4, N'C0001', N'Trung bình', 1)
INSERT [dbo].[tblNHOMCAUHOI] ([idNhomCauHoi], [idChuong], [tenNhomCauHoi], [order]) VALUES (5, N'C0001', N'Yếu', 1)
INSERT [dbo].[tblNHOMCAUHOI] ([idNhomCauHoi], [idChuong], [tenNhomCauHoi], [order]) VALUES (10, N'C0004', N'Xuất sắc', 1)
INSERT [dbo].[tblNHOMCAUHOI] ([idNhomCauHoi], [idChuong], [tenNhomCauHoi], [order]) VALUES (11, N'C0004', N'Giỏi', 1)
INSERT [dbo].[tblNHOMCAUHOI] ([idNhomCauHoi], [idChuong], [tenNhomCauHoi], [order]) VALUES (12, N'C0004', N'Khá', 1)
INSERT [dbo].[tblNHOMCAUHOI] ([idNhomCauHoi], [idChuong], [tenNhomCauHoi], [order]) VALUES (13, N'C0004', N'Trung Bình', 1)
INSERT [dbo].[tblNHOMCAUHOI] ([idNhomCauHoi], [idChuong], [tenNhomCauHoi], [order]) VALUES (14, N'C0004', N'Yếu', 1)
INSERT [dbo].[tblNHOMCAUHOI] ([idNhomCauHoi], [idChuong], [tenNhomCauHoi], [order]) VALUES (15, N'C0003', N'Xuất sắc', 1)
INSERT [dbo].[tblNHOMCAUHOI] ([idNhomCauHoi], [idChuong], [tenNhomCauHoi], [order]) VALUES (16, N'C0003', N'Giỏi', 1)
INSERT [dbo].[tblNHOMCAUHOI] ([idNhomCauHoi], [idChuong], [tenNhomCauHoi], [order]) VALUES (17, N'C0003', N'Khá', 1)
INSERT [dbo].[tblNHOMCAUHOI] ([idNhomCauHoi], [idChuong], [tenNhomCauHoi], [order]) VALUES (18, N'C0003', N'Trung Bình', 1)
INSERT [dbo].[tblNHOMCAUHOI] ([idNhomCauHoi], [idChuong], [tenNhomCauHoi], [order]) VALUES (19, N'C0003', N'Yếu', 1)
INSERT [dbo].[tblNHOMCAUHOI] ([idNhomCauHoi], [idChuong], [tenNhomCauHoi], [order]) VALUES (20, N'C0002', N'Xuất sắc', 1)
INSERT [dbo].[tblNHOMCAUHOI] ([idNhomCauHoi], [idChuong], [tenNhomCauHoi], [order]) VALUES (21, N'C0002', N'Giỏi', 1)
INSERT [dbo].[tblNHOMCAUHOI] ([idNhomCauHoi], [idChuong], [tenNhomCauHoi], [order]) VALUES (22, N'C0002', N'Khá', 1)
INSERT [dbo].[tblNHOMCAUHOI] ([idNhomCauHoi], [idChuong], [tenNhomCauHoi], [order]) VALUES (23, N'C0002', N'Trung Bình', 1)
INSERT [dbo].[tblNHOMCAUHOI] ([idNhomCauHoi], [idChuong], [tenNhomCauHoi], [order]) VALUES (24, N'C0002', N'Yếu', 1)
SET IDENTITY_INSERT [dbo].[tblNHOMCAUHOI] OFF
SET IDENTITY_INSERT [dbo].[tblNOIDUNGDETHI] ON 

INSERT [dbo].[tblNOIDUNGDETHI] ([idNoiDung], [idDeThi], [idCauHoi]) VALUES (33, N'DT00002', N'CH000030')
INSERT [dbo].[tblNOIDUNGDETHI] ([idNoiDung], [idDeThi], [idCauHoi]) VALUES (34, N'DT00002', N'CH000044')
INSERT [dbo].[tblNOIDUNGDETHI] ([idNoiDung], [idDeThi], [idCauHoi]) VALUES (35, N'DT00002', N'CH000050')
INSERT [dbo].[tblNOIDUNGDETHI] ([idNoiDung], [idDeThi], [idCauHoi]) VALUES (36, N'DT00002', N'CH000055')
INSERT [dbo].[tblNOIDUNGDETHI] ([idNoiDung], [idDeThi], [idCauHoi]) VALUES (37, N'DT00002', N'CH000060')
INSERT [dbo].[tblNOIDUNGDETHI] ([idNoiDung], [idDeThi], [idCauHoi]) VALUES (38, N'DT00002', N'CH000063')
INSERT [dbo].[tblNOIDUNGDETHI] ([idNoiDung], [idDeThi], [idCauHoi]) VALUES (39, N'DT00002', N'CH000066')
INSERT [dbo].[tblNOIDUNGDETHI] ([idNoiDung], [idDeThi], [idCauHoi]) VALUES (40, N'DT00002', N'CH000073')
INSERT [dbo].[tblNOIDUNGDETHI] ([idNoiDung], [idDeThi], [idCauHoi]) VALUES (41, N'DT00002', N'CH000088')
INSERT [dbo].[tblNOIDUNGDETHI] ([idNoiDung], [idDeThi], [idCauHoi]) VALUES (42, N'DT00002', N'CH000096')
INSERT [dbo].[tblNOIDUNGDETHI] ([idNoiDung], [idDeThi], [idCauHoi]) VALUES (43, N'DT00002', N'CH000103')
INSERT [dbo].[tblNOIDUNGDETHI] ([idNoiDung], [idDeThi], [idCauHoi]) VALUES (44, N'DT00002', N'CH000106')
INSERT [dbo].[tblNOIDUNGDETHI] ([idNoiDung], [idDeThi], [idCauHoi]) VALUES (45, N'DT00002', N'CH000112')
INSERT [dbo].[tblNOIDUNGDETHI] ([idNoiDung], [idDeThi], [idCauHoi]) VALUES (46, N'DT00002', N'CH000118')
INSERT [dbo].[tblNOIDUNGDETHI] ([idNoiDung], [idDeThi], [idCauHoi]) VALUES (47, N'DT00002', N'CH000125')
INSERT [dbo].[tblNOIDUNGDETHI] ([idNoiDung], [idDeThi], [idCauHoi]) VALUES (48, N'DT00002', N'CH000136')
INSERT [dbo].[tblNOIDUNGDETHI] ([idNoiDung], [idDeThi], [idCauHoi]) VALUES (49, N'DT00002', N'CH000139')
INSERT [dbo].[tblNOIDUNGDETHI] ([idNoiDung], [idDeThi], [idCauHoi]) VALUES (50, N'DT00002', N'CH000150')
INSERT [dbo].[tblNOIDUNGDETHI] ([idNoiDung], [idDeThi], [idCauHoi]) VALUES (51, N'DT00002', N'CH000152')
INSERT [dbo].[tblNOIDUNGDETHI] ([idNoiDung], [idDeThi], [idCauHoi]) VALUES (52, N'DT00002', N'CH000153')
INSERT [dbo].[tblNOIDUNGDETHI] ([idNoiDung], [idDeThi], [idCauHoi]) VALUES (53, N'DT00002', N'CH000158')
INSERT [dbo].[tblNOIDUNGDETHI] ([idNoiDung], [idDeThi], [idCauHoi]) VALUES (54, N'DT00002', N'CH000160')
INSERT [dbo].[tblNOIDUNGDETHI] ([idNoiDung], [idDeThi], [idCauHoi]) VALUES (55, N'DT00002', N'CH000161')
INSERT [dbo].[tblNOIDUNGDETHI] ([idNoiDung], [idDeThi], [idCauHoi]) VALUES (56, N'DT00002', N'CH000163')
INSERT [dbo].[tblNOIDUNGDETHI] ([idNoiDung], [idDeThi], [idCauHoi]) VALUES (57, N'DT00002', N'CH000164')
SET IDENTITY_INSERT [dbo].[tblNOIDUNGDETHI] OFF
INSERT [dbo].[tblTAIKHOANADMIN] ([tenDagNhap], [matKhau], [hoTen], [isAdmin]) VALUES (N'admin', N'admin', N'Admin', 1)
INSERT [dbo].[tblTAIKHOANADMIN] ([tenDagNhap], [matKhau], [hoTen], [isAdmin]) VALUES (N'an', N'an', N'an', 1)
INSERT [dbo].[tblTAIKHOANADMIN] ([tenDagNhap], [matKhau], [hoTen], [isAdmin]) VALUES (N'hang', N'hang', N'hang', 1)
INSERT [dbo].[tblTAIKHOANADMIN] ([tenDagNhap], [matKhau], [hoTen], [isAdmin]) VALUES (N'hoang', N'hoang', N'hoang', 1)
INSERT [dbo].[tblTAIKHOANADMIN] ([tenDagNhap], [matKhau], [hoTen], [isAdmin]) VALUES (N'tram', N'tram', N'tram', 1)
INSERT [dbo].[tblTHISINH] ([idThiSinh], [hoTen], [ngaySinh], [gioiTinh], [email], [tenDangNhap], [matKhau], [soBaiLam], [tongSoDiem], [DTB], [xepLoai], [nangLuc]) VALUES (N'TS0000002', N'Test', CAST(N'2007-01-29T00:00:00.000' AS DateTime), N'Nam', N'ngocquy220993@gmail.com', N'testtk', N'12345', 1, 5.555556, 5.555556, N'Trung Bình', 0.7034268)
INSERT [dbo].[tblTHISINH] ([idThiSinh], [hoTen], [ngaySinh], [gioiTinh], [email], [tenDangNhap], [matKhau], [soBaiLam], [tongSoDiem], [DTB], [xepLoai], [nangLuc]) VALUES (N'TS001', N'Vân Thu', CAST(N'1993-09-22T00:00:00.000' AS DateTime), N'Nữ', N'thuntv@gmail.com', N'thuntv', N'12345', 5, 6.75, 1.35, N'Yếu', -1.019597)
ALTER TABLE [dbo].[tblCAUHOI] ADD  CONSTRAINT [DF__tblCAUHOI__tgTra__3A81B327]  DEFAULT ((0)) FOR [tgTraLoi]
GO
ALTER TABLE [dbo].[tblCAUHOI] ADD  CONSTRAINT [DF__tblCAUHOI__c__3B75D760]  DEFAULT ((0)) FOR [c]
GO
ALTER TABLE [dbo].[tblDINHKIENTHUC] ADD  DEFAULT ((0)) FOR [LoaiDinh]
GO
ALTER TABLE [dbo].[tblMATRANTRONGSO] ADD  DEFAULT ((0)) FOR [coTheDen]
GO
ALTER TABLE [dbo].[tblMATRANTRONGSO] ADD  DEFAULT ((0)) FOR [trongSoMax]
GO
ALTER TABLE [dbo].[tblTAIKHOANADMIN] ADD  DEFAULT ((0)) FOR [isAdmin]
GO
ALTER TABLE [dbo].[tblTHISINH] ADD  DEFAULT ((0)) FOR [nangLuc]
GO
ALTER TABLE [dbo].[tblCAUHOI]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tblCAUHOI_dbo.tblCHUONG_idChuong] FOREIGN KEY([idChuong])
REFERENCES [dbo].[tblCHUONG] ([idChuong])
GO
ALTER TABLE [dbo].[tblCAUHOI] CHECK CONSTRAINT [FK_dbo.tblCAUHOI_dbo.tblCHUONG_idChuong]
GO
ALTER TABLE [dbo].[tblCAUHOI]  WITH CHECK ADD  CONSTRAINT [FK_tblCAUHOI_tblNHOMCAUHOI] FOREIGN KEY([idNhomCauHoi])
REFERENCES [dbo].[tblNHOMCAUHOI] ([idNhomCauHoi])
GO
ALTER TABLE [dbo].[tblCAUHOI] CHECK CONSTRAINT [FK_tblCAUHOI_tblNHOMCAUHOI]
GO
ALTER TABLE [dbo].[tblCAUHOICUADINH]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tblCAUHOICUADINH_dbo.tblCAUHOI_idCauHoi] FOREIGN KEY([idCauHoi])
REFERENCES [dbo].[tblCAUHOI] ([idCauHoi])
GO
ALTER TABLE [dbo].[tblCAUHOICUADINH] CHECK CONSTRAINT [FK_dbo.tblCAUHOICUADINH_dbo.tblCAUHOI_idCauHoi]
GO
ALTER TABLE [dbo].[tblCAUHOICUADINH]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tblCAUHOICUADINH_dbo.tblDINHKIENTHUC_idDinhKienThuc] FOREIGN KEY([idDinhKienThuc])
REFERENCES [dbo].[tblDINHKIENTHUC] ([idDinhKienThuc])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblCAUHOICUADINH] CHECK CONSTRAINT [FK_dbo.tblCAUHOICUADINH_dbo.tblDINHKIENTHUC_idDinhKienThuc]
GO
ALTER TABLE [dbo].[tblCHITIETLICHSU]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tblCHITIETLICHSU_dbo.tblCAUHOI_idCauHoi] FOREIGN KEY([idCauHoi])
REFERENCES [dbo].[tblCAUHOI] ([idCauHoi])
GO
ALTER TABLE [dbo].[tblCHITIETLICHSU] CHECK CONSTRAINT [FK_dbo.tblCHITIETLICHSU_dbo.tblCAUHOI_idCauHoi]
GO
ALTER TABLE [dbo].[tblCHITIETLICHSU]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tblCHITIETLICHSU_dbo.tblDAPAN_idDapAn] FOREIGN KEY([idDapAn])
REFERENCES [dbo].[tblDAPAN] ([idDapAn])
GO
ALTER TABLE [dbo].[tblCHITIETLICHSU] CHECK CONSTRAINT [FK_dbo.tblCHITIETLICHSU_dbo.tblDAPAN_idDapAn]
GO
ALTER TABLE [dbo].[tblCHITIETLICHSU]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tblCHITIETLICHSU_dbo.tblLICHSULAMBAI_idLichSuLamBai] FOREIGN KEY([idLichSuLamBai])
REFERENCES [dbo].[tblLICHSULAMBAI] ([idLichSuLamBai])
GO
ALTER TABLE [dbo].[tblCHITIETLICHSU] CHECK CONSTRAINT [FK_dbo.tblCHITIETLICHSU_dbo.tblLICHSULAMBAI_idLichSuLamBai]
GO
ALTER TABLE [dbo].[tblCHUONG]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tblCHUONG_dbo.tblMONHOC_idMonHoc] FOREIGN KEY([idMonHoc])
REFERENCES [dbo].[tblMONHOC] ([idMonHoc])
GO
ALTER TABLE [dbo].[tblCHUONG] CHECK CONSTRAINT [FK_dbo.tblCHUONG_dbo.tblMONHOC_idMonHoc]
GO
ALTER TABLE [dbo].[tblDAPAN]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tblDAPAN_dbo.tblCAUHOI_idCauHoi] FOREIGN KEY([idCauHoi])
REFERENCES [dbo].[tblCAUHOI] ([idCauHoi])
GO
ALTER TABLE [dbo].[tblDAPAN] CHECK CONSTRAINT [FK_dbo.tblDAPAN_dbo.tblCAUHOI_idCauHoi]
GO
ALTER TABLE [dbo].[tblDETHI]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tblDETHI_dbo.tblCHUONG_idChuong] FOREIGN KEY([idChuong])
REFERENCES [dbo].[tblCHUONG] ([idChuong])
GO
ALTER TABLE [dbo].[tblDETHI] CHECK CONSTRAINT [FK_dbo.tblDETHI_dbo.tblCHUONG_idChuong]
GO
ALTER TABLE [dbo].[tblDINHKIENTHUC]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tblDINHKIENTHUC_dbo.tblMONHOC_idMonHoc] FOREIGN KEY([idMonHoc])
REFERENCES [dbo].[tblMONHOC] ([idMonHoc])
GO
ALTER TABLE [dbo].[tblDINHKIENTHUC] CHECK CONSTRAINT [FK_dbo.tblDINHKIENTHUC_dbo.tblMONHOC_idMonHoc]
GO
ALTER TABLE [dbo].[tblLICHSULAMBAI]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tblLICHSULAMBAI_dbo.tblTHISINH_maThiSinh] FOREIGN KEY([maThiSinh])
REFERENCES [dbo].[tblTHISINH] ([idThiSinh])
GO
ALTER TABLE [dbo].[tblLICHSULAMBAI] CHECK CONSTRAINT [FK_dbo.tblLICHSULAMBAI_dbo.tblTHISINH_maThiSinh]
GO
ALTER TABLE [dbo].[tblLICHSUNHOMCAUHOI]  WITH CHECK ADD  CONSTRAINT [FK_tblLICHSUNHOMCAUHOI_tblNHOMCAUHOI] FOREIGN KEY([idNhom])
REFERENCES [dbo].[tblNHOMCAUHOI] ([idNhomCauHoi])
GO
ALTER TABLE [dbo].[tblLICHSUNHOMCAUHOI] CHECK CONSTRAINT [FK_tblLICHSUNHOMCAUHOI_tblNHOMCAUHOI]
GO
ALTER TABLE [dbo].[tblNHOMCAUHOI]  WITH CHECK ADD  CONSTRAINT [FK_tblNHOMCAUHOI_tblCHUONG] FOREIGN KEY([idChuong])
REFERENCES [dbo].[tblCHUONG] ([idChuong])
GO
ALTER TABLE [dbo].[tblNHOMCAUHOI] CHECK CONSTRAINT [FK_tblNHOMCAUHOI_tblCHUONG]
GO
ALTER TABLE [dbo].[tblNOIDUNGDETHI]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tblNOIDUNGDETHI_dbo.tblCAUHOI_idCauHoi] FOREIGN KEY([idCauHoi])
REFERENCES [dbo].[tblCAUHOI] ([idCauHoi])
GO
ALTER TABLE [dbo].[tblNOIDUNGDETHI] CHECK CONSTRAINT [FK_dbo.tblNOIDUNGDETHI_dbo.tblCAUHOI_idCauHoi]
GO
ALTER TABLE [dbo].[tblNOIDUNGDETHI]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tblNOIDUNGDETHI_dbo.tblDETHI_idDeThi] FOREIGN KEY([idDeThi])
REFERENCES [dbo].[tblDETHI] ([idDeThi])
GO
ALTER TABLE [dbo].[tblNOIDUNGDETHI] CHECK CONSTRAINT [FK_dbo.tblNOIDUNGDETHI_dbo.tblDETHI_idDeThi]
GO
/****** Object:  StoredProcedure [dbo].[setDoKhoVaDoPhanBiet]    Script Date: 25/11/2020 11:28:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[setDoKhoVaDoPhanBiet]
as
	declare @idChauHoi varchar(128)
	declare @doKho real
	declare @doPhanBiet real
	declare var_cursor_ cursor for select distinct idCauHoi from tblCAUHOI
	open var_cursor_
	fetch next from var_cursor_ into @idChauHoi
	while(@@fetch_status = 0)
		begin
			set @doKho = ROUND(RAND(), 2)
			set @doPhanBiet = ROUND(RAND(), 2)
			if @doKho = 1
				set @doKho = 0.9
			if @doKho = 0
				set @doKho = 0.1
			if @doPhanBiet = 1
				set @doPhanBiet = 0.9
			if @doPhanBiet = 0
				set @doPhanBiet = 0.1
			update tblCAUHOI
			set
				@doKho = 0.25
			,	@doPhanBiet = @doPhanBiet
			where idCauHoi = @idChauHoi
			fetch next from var_cursor_ into @idChauHoi
		end
	close var_cursor_
	Deallocate var_cursor_
GO
/****** Object:  StoredProcedure [dbo].[setNHomCauHoi]    Script Date: 25/11/2020 11:28:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[setNHomCauHoi]
@idChuong      nvarchar(128)  =   'C0001',
@from          float          =   1.0,
@to            int            =   5
as
	declare @idCauHoi varchar(128)
	declare @number   int
	declare var_cursor_ cursor for select distinct idCauHoi from tblCAUHOI where idChuong = @idChuong
	open var_cursor_
	fetch next from var_cursor_ into @idCauHoi
	while(@@fetch_status = 0)
		begin
		set @number = @from + FLOOR(@to*RAND(convert(varbinary, newid())))
		while @number < @from or @number > @to
		begin
			set @number = @from + FLOOR(@to*RAND(convert(varbinary, newid())))
		end
			update tblCAUHOI
			set
				idNhomCauHoi = @number
			where idCauHoi = @idCauHoi
			fetch next from var_cursor_ into @idCauHoi
		end
	close var_cursor_
	Deallocate var_cursor_
GO
