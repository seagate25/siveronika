USE [db_siveronika]
GO
/****** Object:  Table [dbo].[m_bidang]    Script Date: 07-Aug-23 16:21:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_bidang](
	[bidang_id] [uniqueidentifier] NOT NULL,
	[bidang_code] [varchar](30) NULL,
	[bidang_name] [varchar](200) NULL,
	[bidang_status] [bit] NULL,
	[bidang_deletion] [bit] NULL,
	[update_date] [datetime] NULL,
	[update_by] [varchar](50) NULL,
	[create_date] [datetime] NULL,
	[create_by] [varchar](50) NULL,
 CONSTRAINT [PK_m_bidang] PRIMARY KEY CLUSTERED 
(
	[bidang_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_branch]    Script Date: 07-Aug-23 16:21:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_branch](
	[branch_id] [uniqueidentifier] NOT NULL,
	[branch_code] [varchar](5) NULL,
	[branch_name] [varchar](100) NULL,
	[branch_description] [varchar](200) NULL,
	[branch_address1] [varchar](200) NULL,
	[branch_address2] [varchar](200) NULL,
	[branch_contact1] [varchar](15) NULL,
	[branch_contact2] [varchar](15) NULL,
	[branch_status] [bit] NULL,
	[branch_deletion] [bit] NULL,
	[update_date] [datetime] NULL,
	[update_by] [varchar](50) NULL,
	[create_date] [datetime] NULL,
	[create_by] [varchar](50) NULL,
 CONSTRAINT [PK_m_branch] PRIMARY KEY CLUSTERED 
(
	[branch_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_role]    Script Date: 07-Aug-23 16:21:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_role](
	[role_id] [uniqueidentifier] NOT NULL,
	[role_name] [varchar](50) NULL,
	[role_description] [varchar](200) NULL,
	[role_status] [bit] NULL,
	[role_deletion] [bit] NULL,
	[update_date] [datetime] NULL,
	[update_by] [varchar](50) NULL,
	[create_date] [datetime] NULL,
	[create_by] [varchar](50) NULL,
 CONSTRAINT [PK_m_role] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_shop]    Script Date: 07-Aug-23 16:21:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_shop](
	[shop_id] [uniqueidentifier] NOT NULL,
	[shop_type] [varchar](10) NULL,
	[shop_name] [varchar](100) NULL,
	[shop_status] [bit] NULL,
	[shop_deletion] [bit] NULL,
	[update_date] [datetime] NULL,
	[update_by] [varchar](50) NULL,
	[create_date] [datetime] NULL,
	[create_by] [varchar](50) NULL,
 CONSTRAINT [PK_m_shop] PRIMARY KEY CLUSTERED 
(
	[shop_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_shop_det]    Script Date: 07-Aug-23 16:21:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_shop_det](
	[shop_id] [varchar](100) NOT NULL,
	[shop_sequence] [int] NULL,
	[shop_detail] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_user]    Script Date: 07-Aug-23 16:21:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_user](
	[user_id] [uniqueidentifier] NOT NULL,
	[user_name] [varchar](50) NULL,
	[user_email] [varchar](100) NULL,
	[user_description] [varchar](200) NULL,
	[role_id] [varchar](100) NULL,
	[branch_id] [varchar](100) NULL,
	[user_verified] [bit] NULL,
	[user_status] [bit] NULL,
	[user_deletion] [bit] NULL,
	[update_date] [datetime] NULL,
	[update_by] [varchar](50) NULL,
	[create_date] [datetime] NULL,
	[create_by] [varchar](50) NULL,
	[user_password] [varchar](100) NULL,
	[is_approval] [bit] NULL,
 CONSTRAINT [PK_m_user] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_user_bidang]    Script Date: 07-Aug-23 16:21:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_user_bidang](
	[ub_id] [uniqueidentifier] NOT NULL,
	[user_id] [varchar](100) NOT NULL,
	[bidang_id] [varchar](100) NOT NULL,
	[ub_status] [bit] NULL,
	[ub_deletion] [bit] NULL,
	[update_date] [datetime] NULL,
	[update_by] [varchar](50) NULL,
	[create_date] [datetime] NULL,
	[create_by] [varchar](50) NULL,
 CONSTRAINT [PK_m_user_bidang] PRIMARY KEY CLUSTERED 
(
	[ub_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_doc]    Script Date: 07-Aug-23 16:21:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_doc](
	[doc_id] [uniqueidentifier] NOT NULL,
	[doc_filename] [varchar](200) NULL,
	[doc_path] [varchar](300) NULL,
	[doc_type] [varchar](10) NULL,
	[doc_description] [varchar](300) NULL,
	[doc_status] [bit] NULL,
	[doc_deletion] [bit] NULL,
	[update_date] [datetime] NULL,
	[update_by] [varchar](50) NULL,
	[create_date] [datetime] NULL,
	[create_by] [varchar](50) NULL,
 CONSTRAINT [PK_t_doc] PRIMARY KEY CLUSTERED 
(
	[doc_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_verification]    Script Date: 07-Aug-23 16:21:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_verification](
	[verif_id] [uniqueidentifier] NOT NULL,
	[verif_no] [varchar](20) NULL,
	[bidang_id] [varchar](100) NULL,
	[verif_version] [int] NULL,
	[user_id] [varchar](100) NULL,
	[user_name] [varchar](50) NULL,
	[branch_id] [varchar](100) NULL,
	[verif_status] [varchar](30) NULL,
	[verif_deletion] [bit] NULL,
	[verif_request_date] [datetime] NULL,
	[approval_userid1] [varchar](100) NULL,
	[approval_userid2] [varchar](100) NULL,
	[approval_note1] [varchar](200) NULL,
	[approval_note2] [varchar](100) NULL,
	[approval_date1] [datetime] NULL,
	[approval_date2] [datetime] NULL,
	[update_date] [datetime] NULL,
	[update_by] [varchar](50) NULL,
	[create_date] [datetime] NULL,
	[create_by] [varchar](50) NULL,
 CONSTRAINT [PK_t_verification] PRIMARY KEY CLUSTERED 
(
	[verif_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_verification_shop]    Script Date: 07-Aug-23 16:21:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_verification_shop](
	[verif_shop_id] [uniqueidentifier] NOT NULL,
	[verif_id] [varchar](100) NOT NULL,
	[shop_id] [varchar](100) NULL,
	[period] [varchar](10) NULL,
	[total] [decimal](12, 2) NULL,
	[update_date] [datetime] NULL,
	[update_by] [varchar](50) NULL,
	[create_date] [datetime] NULL,
	[create_by] [varchar](50) NULL,
 CONSTRAINT [PK_t_verification_shop] PRIMARY KEY CLUSTERED 
(
	[verif_shop_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_verification_shop_det]    Script Date: 07-Aug-23 16:21:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_verification_shop_det](
	[verif_shop_det_id] [uniqueidentifier] NOT NULL,
	[verif_shop_id] [varchar](100) NOT NULL,
	[verif_id] [varchar](100) NOT NULL,
	[shop_id] [varchar](100) NULL,
	[shop_sequence] [int] NULL,
	[doc_id] [varchar](100) NULL,
	[notes] [varchar](200) NULL,
	[approval_status] [bit] NULL,
	[approval_note] [varchar](100) NULL,
	[approval_date] [datetime] NULL,
	[approval_userid] [varchar](100) NULL,
	[update_date] [datetime] NULL,
	[update_by] [varchar](50) NULL,
	[create_date] [datetime] NULL,
	[create_by] [varchar](50) NULL,
 CONSTRAINT [PK_t_verification_shop_det] PRIMARY KEY CLUSTERED 
(
	[verif_shop_det_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[m_bidang] ([bidang_id], [bidang_code], [bidang_name], [bidang_status], [bidang_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'67cc9748-7383-408c-b0a1-125603423228', N'0015', N'UPT Pajak Daerah Kelas A Leuwiliang', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:45:52.090' AS DateTime), N'admin')
INSERT [dbo].[m_bidang] ([bidang_id], [bidang_code], [bidang_name], [bidang_status], [bidang_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'009da35c-762c-4376-89ac-1346ae8e28b9', N'0001', N'SEKRETARIAT BAPPENDA', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:45:52.087' AS DateTime), N'admin')
INSERT [dbo].[m_bidang] ([bidang_id], [bidang_code], [bidang_name], [bidang_status], [bidang_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'5125bbae-5145-468e-89c6-1d3f07b319ad', N'0003', N'BIDANG PENDATAN DAN PENILAIAN', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:45:52.087' AS DateTime), N'admin')
INSERT [dbo].[m_bidang] ([bidang_id], [bidang_code], [bidang_name], [bidang_status], [bidang_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'9023a8c3-0101-492c-ba52-32b6796492bf', N'0008', N'UPT Pajak Daerah Kelas A Jonggol', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:45:52.087' AS DateTime), N'admin')
INSERT [dbo].[m_bidang] ([bidang_id], [bidang_code], [bidang_name], [bidang_status], [bidang_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'692be837-e2fe-4197-8232-4a4051cd0c5e', N'0014', N'UPT Pajak Daerah Kelas A Cigudeg', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:45:52.090' AS DateTime), N'admin')
INSERT [dbo].[m_bidang] ([bidang_id], [bidang_code], [bidang_name], [bidang_status], [bidang_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'ca170aca-496d-4dc4-8956-551e50f61274', N'0007', N'UPT Pajak Daerah Kelas A Gunung Putri', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:45:52.087' AS DateTime), N'admin')
INSERT [dbo].[m_bidang] ([bidang_id], [bidang_code], [bidang_name], [bidang_status], [bidang_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'c3f408f0-12f6-4794-952e-57512ff90853', N'0002', N'BIDANG PERENCANAAN DAN PENGEMBANGAN PENDAPATAN DAERAH', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:45:52.087' AS DateTime), N'admin')
INSERT [dbo].[m_bidang] ([bidang_id], [bidang_code], [bidang_name], [bidang_status], [bidang_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'8c6e6d97-69fb-492a-b832-5985980063c0', N'0012', N'UPT Pajak Daerah Kelas A Citeureup', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:45:52.090' AS DateTime), N'admin')
INSERT [dbo].[m_bidang] ([bidang_id], [bidang_code], [bidang_name], [bidang_status], [bidang_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'2c9324c9-0601-4847-9abd-929d3e49b914', N'0010', N'UPT Pajak Daerah Kelas A Ciawi', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:45:52.087' AS DateTime), N'admin')
INSERT [dbo].[m_bidang] ([bidang_id], [bidang_code], [bidang_name], [bidang_status], [bidang_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'3fb7fed3-8acb-4b5f-9793-b1be8cdfbde3', N'0009', N'UPT Pajak Daerah Kelas A Parung', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:45:52.087' AS DateTime), N'admin')
INSERT [dbo].[m_bidang] ([bidang_id], [bidang_code], [bidang_name], [bidang_status], [bidang_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'34eeb177-f3db-4ff2-9949-b40b92cb54b3', N'0004', N'BIDANG PELAYANAN DAN PENETAPAN', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:45:52.087' AS DateTime), N'admin')
INSERT [dbo].[m_bidang] ([bidang_id], [bidang_code], [bidang_name], [bidang_status], [bidang_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'e4ef4ae0-13a1-4cd6-9b9e-c58d1462179c', N'0006', N'UPT Pajak Daerah Kelas A Sukaraja', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:45:52.087' AS DateTime), N'admin')
INSERT [dbo].[m_bidang] ([bidang_id], [bidang_code], [bidang_name], [bidang_status], [bidang_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'065a2261-8112-4e7f-b2c6-cb626704487c', N'0011', N'UPT Pajak Daerah Kelas A Caringin', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:45:52.090' AS DateTime), N'admin')
INSERT [dbo].[m_bidang] ([bidang_id], [bidang_code], [bidang_name], [bidang_status], [bidang_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'9681cc1f-0944-4975-80c7-e2473e391c66', N'0013', N'UPT Pajak Daerah Kelas A Ciomas', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:45:52.090' AS DateTime), N'admin')
INSERT [dbo].[m_bidang] ([bidang_id], [bidang_code], [bidang_name], [bidang_status], [bidang_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'497292ec-97b9-4096-82d0-e5b48511d441', N'0005', N'BIDANG PENAGIHAN, KEBERATAN, DAN PENGAWASAN', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:45:52.087' AS DateTime), N'admin')
GO
INSERT [dbo].[m_branch] ([branch_id], [branch_code], [branch_name], [branch_description], [branch_address1], [branch_address2], [branch_contact1], [branch_contact2], [branch_status], [branch_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'8f7029d4-831f-4f1d-bec1-61dc6e35e70d', N'BR002', N'UPT Cigudeg', N'UPT Cigudeg', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, CAST(N'2023-08-04T22:50:30.860' AS DateTime), N'Admin')
INSERT [dbo].[m_branch] ([branch_id], [branch_code], [branch_name], [branch_description], [branch_address1], [branch_address2], [branch_contact1], [branch_contact2], [branch_status], [branch_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'62824e82-ebfe-431a-b05f-8f9d2b36a245', N'BR003', N'UPT Ciomas', N'UPT Ciomas', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, CAST(N'2023-08-04T22:50:30.860' AS DateTime), N'Admin')
INSERT [dbo].[m_branch] ([branch_id], [branch_code], [branch_name], [branch_description], [branch_address1], [branch_address2], [branch_contact1], [branch_contact2], [branch_status], [branch_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'0a373e8e-8bd3-4df8-9126-f97a5cc84f3f', N'BR001', N'PEMDA Cibinong', N'PEMDA Cibinong', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, CAST(N'2023-08-04T22:50:30.780' AS DateTime), N'Admin')
GO
INSERT [dbo].[m_role] ([role_id], [role_name], [role_description], [role_status], [role_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'8bc37468-418f-4be4-aa82-0f9f2accd7a9', N'Super Admin', N'All Funciton', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:36:53.207' AS DateTime), N'Admin')
INSERT [dbo].[m_role] ([role_id], [role_name], [role_description], [role_status], [role_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'9768ae88-dba8-4f87-97ce-11fcd0ef137a', N'Reviewer/Kabag', N'Viewer/ Crontrolling All Data', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:36:53.207' AS DateTime), N'Admin')
INSERT [dbo].[m_role] ([role_id], [role_name], [role_description], [role_status], [role_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'1c75fa03-e693-4fea-9511-42875e85ba48', N'Verifikator', N'Verifikator', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:36:53.203' AS DateTime), N'Admin')
INSERT [dbo].[m_role] ([role_id], [role_name], [role_description], [role_status], [role_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'30d91062-9ad2-4146-83c2-52f97b26b040', N'Bendahara Admin', N'Bendahara Admin (View & Edit All Data)', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:36:53.207' AS DateTime), N'Admin')
INSERT [dbo].[m_role] ([role_id], [role_name], [role_description], [role_status], [role_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'ec4c49b6-47b7-4338-b0e6-726ee5fec7dc', N'Verifikator Admin', N'Verifikator Admin (View & Edit All Data)', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:36:53.203' AS DateTime), N'Admin')
INSERT [dbo].[m_role] ([role_id], [role_name], [role_description], [role_status], [role_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'a661f644-baf9-4868-a58f-8b4e82d50d56', N'Initiator', N'UPT', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:36:53.203' AS DateTime), N'Admin')
INSERT [dbo].[m_role] ([role_id], [role_name], [role_description], [role_status], [role_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'23fde120-7dec-4b5b-aed5-e407c97cf638', N'Bendahara', N'Bendahara', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:36:53.203' AS DateTime), N'Admin')
GO
INSERT [dbo].[m_shop] ([shop_id], [shop_type], [shop_name], [shop_status], [shop_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'554a55ba-057b-4d90-a6df-22c663effc10', N'GU', N'Belanja Mamin', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:12:49.140' AS DateTime), N'Admin')
INSERT [dbo].[m_shop] ([shop_id], [shop_type], [shop_name], [shop_status], [shop_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'd5f4b515-d7bd-4430-9c4c-3a4b032c58f2', N'GU', N'Belanja Bahan Komputer', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:12:49.143' AS DateTime), N'Admin')
INSERT [dbo].[m_shop] ([shop_id], [shop_type], [shop_name], [shop_status], [shop_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'52283086-4834-493f-97df-4527961299d8', N'GU', N'Belanja Tagihan Air', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:12:49.143' AS DateTime), N'Admin')
INSERT [dbo].[m_shop] ([shop_id], [shop_type], [shop_name], [shop_status], [shop_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'2265a7cf-eceb-4b76-8293-4e508219449a', N'GU', N'Belanja Tagihan Listrik', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:12:49.143' AS DateTime), N'Admin')
INSERT [dbo].[m_shop] ([shop_id], [shop_type], [shop_name], [shop_status], [shop_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'7cc71b62-9874-466d-b754-5f45b19c4f8e', N'GU', N'Belanja Alat/Bahan untuk Kegiatan Kantor - Kertas dan Cover', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:12:49.140' AS DateTime), N'Admin')
INSERT [dbo].[m_shop] ([shop_id], [shop_type], [shop_name], [shop_status], [shop_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'455e443f-504a-414b-95be-6a8b89581e53', N'GU', N'Belanja Alat Tulis Kantor', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:12:49.140' AS DateTime), N'Admin')
INSERT [dbo].[m_shop] ([shop_id], [shop_type], [shop_name], [shop_status], [shop_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'b05c723b-abec-49c1-bf12-6a99cd626486', N'GU', N'Belanja Alat Kebersihan', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:12:49.140' AS DateTime), N'Admin')
INSERT [dbo].[m_shop] ([shop_id], [shop_type], [shop_name], [shop_status], [shop_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'8f5db7a1-e6fa-4bc8-b1cd-84f5f97067f7', N'GU', N'Belanja Perabot Kantor', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:12:49.140' AS DateTime), N'Admin')
INSERT [dbo].[m_shop] ([shop_id], [shop_type], [shop_name], [shop_status], [shop_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'4b4eec89-6a0d-4e98-a4fa-9a7a9d507b65', N'GU', N'Belanja Perjalanan Dinas', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:12:49.140' AS DateTime), N'Admin')
INSERT [dbo].[m_shop] ([shop_id], [shop_type], [shop_name], [shop_status], [shop_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'527ccaeb-3ad9-473e-83d7-a61d6117445c', N'GU', N'Belanja Penggandaan', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:12:49.140' AS DateTime), N'Admin')
INSERT [dbo].[m_shop] ([shop_id], [shop_type], [shop_name], [shop_status], [shop_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'178eae1e-87ed-4385-933b-c8aa6f074354', N'GU', N'Belanja Bahan Pelumas', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:12:49.147' AS DateTime), N'Admin')
INSERT [dbo].[m_shop] ([shop_id], [shop_type], [shop_name], [shop_status], [shop_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'823b8199-2119-4a68-b960-d064f438a0a5', N'GU', N'Belanja Cetak', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:12:49.137' AS DateTime), N'Admin')
INSERT [dbo].[m_shop] ([shop_id], [shop_type], [shop_name], [shop_status], [shop_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'b8fbcd41-49b0-412c-9034-e2bc0d298491', N'GU', N'Belanja Kawat/Faksimili/Internet/TV Berlangganan', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:12:49.143' AS DateTime), N'Admin')
GO
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'823B8199-2119-4A68-B960-D064F438A0A5', 1, N'Nota Dinas')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'823B8199-2119-4A68-B960-D064F438A0A5', 2, N'Surat Pesanan')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'823B8199-2119-4A68-B960-D064F438A0A5', 3, N'Kwitansi')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'823B8199-2119-4A68-B960-D064F438A0A5', 4, N'Faktur')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'823B8199-2119-4A68-B960-D064F438A0A5', 5, N'Berita acara Serah Terima Hasil Pekerjaan')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'527CCAEB-3AD9-473E-83D7-A61D6117445C', 1, N'Nota Dinas')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'527CCAEB-3AD9-473E-83D7-A61D6117445C', 2, N'Surat Pesanan')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'527CCAEB-3AD9-473E-83D7-A61D6117445C', 3, N'Kwitansi')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'527CCAEB-3AD9-473E-83D7-A61D6117445C', 4, N'Faktur')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'527CCAEB-3AD9-473E-83D7-A61D6117445C', 5, N'Berita acara Serah Terima Hasil Pekerjaan')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'554A55BA-057B-4D90-A6DF-22C663EFFC10', 1, N'Nota Dinas')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'554A55BA-057B-4D90-A6DF-22C663EFFC10', 2, N'Surat Pesanan')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'554A55BA-057B-4D90-A6DF-22C663EFFC10', 3, N'Kwitansi')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'554A55BA-057B-4D90-A6DF-22C663EFFC10', 4, N'Faktur')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'554A55BA-057B-4D90-A6DF-22C663EFFC10', 5, N'Berita acara Serah Terima Hasil Pekerjaan')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'554A55BA-057B-4D90-A6DF-22C663EFFC10', 6, N'Surat Undangan')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'554A55BA-057B-4D90-A6DF-22C663EFFC10', 7, N'Daftar Hadir')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'554A55BA-057B-4D90-A6DF-22C663EFFC10', 8, N'Notulen')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'4B4EEC89-6A0D-4E98-A4FA-9A7A9D507B65', 1, N'Nota Dinas')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'4B4EEC89-6A0D-4E98-A4FA-9A7A9D507B65', 2, N'Surat Tugas')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'4B4EEC89-6A0D-4E98-A4FA-9A7A9D507B65', 3, N'Form SPD')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'4B4EEC89-6A0D-4E98-A4FA-9A7A9D507B65', 4, N'DOP (Daftar Ongkos Perjalanan)')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'4B4EEC89-6A0D-4E98-A4FA-9A7A9D507B65', 5, N'Kwitansi')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'4B4EEC89-6A0D-4E98-A4FA-9A7A9D507B65', 6, N'Laporan Perjalanan Dinas')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'455E443F-504A-414B-95BE-6A8B89581E53', 1, N'Nota Dinas')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'455E443F-504A-414B-95BE-6A8B89581E53', 2, N'Surat Pesanan')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'455E443F-504A-414B-95BE-6A8B89581E53', 3, N'Kwitansi')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'455E443F-504A-414B-95BE-6A8B89581E53', 4, N'Faktur')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'455E443F-504A-414B-95BE-6A8B89581E53', 5, N'Berita acara Serah Terima Hasil Pekerjaan')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 1, N'Nota Dinas')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 2, N'Surat Pesanan')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 3, N'Kwitansi')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 4, N'Faktur')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 5, N'Berita acara Serah Terima Hasil Pekerjaan')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'8F5DB7A1-E6FA-4BC8-B1CD-84F5F97067F7', 1, N'Nota Dinas')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'8F5DB7A1-E6FA-4BC8-B1CD-84F5F97067F7', 2, N'Surat Pesanan')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'8F5DB7A1-E6FA-4BC8-B1CD-84F5F97067F7', 3, N'Kwitansi')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'8F5DB7A1-E6FA-4BC8-B1CD-84F5F97067F7', 4, N'Faktur')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'8F5DB7A1-E6FA-4BC8-B1CD-84F5F97067F7', 5, N'Berita acara Serah Terima Hasil Pekerjaan')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'7CC71B62-9874-466D-B754-5F45B19C4F8E', 1, N'Nota Dinas')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'7CC71B62-9874-466D-B754-5F45B19C4F8E', 2, N'Surat Pesanan')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'7CC71B62-9874-466D-B754-5F45B19C4F8E', 3, N'Kwitansi')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'7CC71B62-9874-466D-B754-5F45B19C4F8E', 4, N'Faktur')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'7CC71B62-9874-466D-B754-5F45B19C4F8E', 5, N'Berita acara Serah Terima Hasil Pekerjaan')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'52283086-4834-493F-97DF-4527961299D8', 1, N'Nota Dinas')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'52283086-4834-493F-97DF-4527961299D8', 2, N'Surat Pesanan')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'52283086-4834-493F-97DF-4527961299D8', 3, N'Kwitansi')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'2265A7CF-ECEB-4B76-8293-4E508219449A', 1, N'Nota Dinas')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'2265A7CF-ECEB-4B76-8293-4E508219449A', 2, N'Surat Pesanan')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'2265A7CF-ECEB-4B76-8293-4E508219449A', 3, N'Kwitansi')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'B8FBCD41-49B0-412C-9034-E2BC0D298491', 1, N'Nota Dinas')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'B8FBCD41-49B0-412C-9034-E2BC0D298491', 2, N'Surat Pesanan')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'B8FBCD41-49B0-412C-9034-E2BC0D298491', 3, N'Kwitansi')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'D5F4B515-D7BD-4430-9C4C-3A4B032C58F2', 1, N'Nota Dinas')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'D5F4B515-D7BD-4430-9C4C-3A4B032C58F2', 2, N'Surat Pesanan')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'D5F4B515-D7BD-4430-9C4C-3A4B032C58F2', 3, N'Kwitansi')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'D5F4B515-D7BD-4430-9C4C-3A4B032C58F2', 4, N'Faktur')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'D5F4B515-D7BD-4430-9C4C-3A4B032C58F2', 5, N'Berita acara Serah Terima Hasil Pekerjaan')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'178EAE1E-87ED-4385-933B-C8AA6F074354', 1, N'Nota Dinas')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'178EAE1E-87ED-4385-933B-C8AA6F074354', 2, N'Surat Pesanan')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'178EAE1E-87ED-4385-933B-C8AA6F074354', 3, N'Kwitansi')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'178EAE1E-87ED-4385-933B-C8AA6F074354', 4, N'Faktur')
INSERT [dbo].[m_shop_det] ([shop_id], [shop_sequence], [shop_detail]) VALUES (N'178EAE1E-87ED-4385-933B-C8AA6F074354', 5, N'Berita acara Serah Terima Hasil Pekerjaan')
GO
INSERT [dbo].[m_user] ([user_id], [user_name], [user_email], [user_description], [role_id], [branch_id], [user_verified], [user_status], [user_deletion], [update_date], [update_by], [create_date], [create_by], [user_password], [is_approval]) VALUES (N'e98f99ed-3604-4f1c-bedb-07cbdea2109c', N'account.07', N'account.07@gmail.com', N'Reviewer/Kabag', N'9768AE88-DBA8-4F87-97CE-11FCD0EF137A', N'62824E82-EBFE-431A-B05F-8F9D2B36A245', 1, 1, 0, NULL, NULL, CAST(N'2023-07-28T17:29:53.930' AS DateTime), N'admin', N'$2y$10$.2s15GXOFg0JnTt746neneKoM6P19lfUSDGsfqx6LN0AcSeWpyXoW', 0)
INSERT [dbo].[m_user] ([user_id], [user_name], [user_email], [user_description], [role_id], [branch_id], [user_verified], [user_status], [user_deletion], [update_date], [update_by], [create_date], [create_by], [user_password], [is_approval]) VALUES (N'31904f59-6bd9-4964-9208-268d9b1e8d22', N'account.03', N'account.03@gmail.com', N'Reviewer/Kabag', N'9768AE88-DBA8-4F87-97CE-11FCD0EF137A', N'8F7029D4-831F-4F1D-BEC1-61DC6E35E70D', 1, 1, 0, NULL, NULL, CAST(N'2023-07-28T17:29:53.930' AS DateTime), N'admin', N'$2y$10$o2h956NMn9.Zy5yVYJ4ZSuOUTnfbWhN5LF2KNlJYw8Grb4pe9FqVy', 0)
INSERT [dbo].[m_user] ([user_id], [user_name], [user_email], [user_description], [role_id], [branch_id], [user_verified], [user_status], [user_deletion], [update_date], [update_by], [create_date], [create_by], [user_password], [is_approval]) VALUES (N'bc00247f-4068-4032-a988-4a2782d56f25', N'account.06', N'account.06@gmail.com', N'Bendahara', N'23FDE120-7DEC-4B5B-AED5-E407C97CF638', N'62824E82-EBFE-431A-B05F-8F9D2B36A245', 1, 1, 0, NULL, NULL, CAST(N'2023-07-28T17:29:53.930' AS DateTime), N'admin', N'$2y$10$LEAlBOXT4i2rMimP7520X.lIuLvi.4FolUsHy2RiNrqg9EIdwKNgO', 1)
INSERT [dbo].[m_user] ([user_id], [user_name], [user_email], [user_description], [role_id], [branch_id], [user_verified], [user_status], [user_deletion], [update_date], [update_by], [create_date], [create_by], [user_password], [is_approval]) VALUES (N'9a454df9-f13e-4c38-9924-88031637f5f9', N'upt.ciomas', N'upt.ciomas@gmail.com', N'UPT Ciomas', N'A661F644-BAF9-4868-A58F-8B4E82D50D56', N'62824E82-EBFE-431A-B05F-8F9D2B36A245', 0, 0, 0, NULL, NULL, CAST(N'2023-07-28T17:29:53.930' AS DateTime), N'admin', N'$2y$10$D7t6rBNAvtje6qurewzHg.r6czL2sEKmCd8dN7RstV1h1EJVbuoxi', 0)
INSERT [dbo].[m_user] ([user_id], [user_name], [user_email], [user_description], [role_id], [branch_id], [user_verified], [user_status], [user_deletion], [update_date], [update_by], [create_date], [create_by], [user_password], [is_approval]) VALUES (N'47314d00-acb8-4f47-80b1-8b791b67c75e', N'account.05', N'account.05@gmail.com', N'Verifikator', N'1C75FA03-E693-4FEA-9511-42875E85BA48', N'62824E82-EBFE-431A-B05F-8F9D2B36A245', 1, 0, 0, NULL, NULL, CAST(N'2023-07-28T17:29:53.930' AS DateTime), N'admin', N'$2y$10$LIXgp3D8M9dNLoP8QxYhVuwYdAEkNUVPw3jYCTKkm3F7BET53Kby6', 1)
INSERT [dbo].[m_user] ([user_id], [user_name], [user_email], [user_description], [role_id], [branch_id], [user_verified], [user_status], [user_deletion], [update_date], [update_by], [create_date], [create_by], [user_password], [is_approval]) VALUES (N'123daeb2-be9d-4da4-afeb-9f1dd9594d06', N'account.04', N'account.04@gmail.com', N'Verifikator Admin', N'EC4C49B6-47B7-4338-B0E6-726EE5FEC7DC', N'8F7029D4-831F-4F1D-BEC1-61DC6E35E70D', 1, 0, 0, NULL, NULL, CAST(N'2023-07-28T17:29:53.930' AS DateTime), N'admin', N'$2y$10$XfWynInG0jLkI7iYY1hPOOt3j4Dc35N2OI3i7FKpdP5Ve70xLTc0O', 1)
INSERT [dbo].[m_user] ([user_id], [user_name], [user_email], [user_description], [role_id], [branch_id], [user_verified], [user_status], [user_deletion], [update_date], [update_by], [create_date], [create_by], [user_password], [is_approval]) VALUES (N'f4d68cb3-0133-44a4-81bc-a1e4f78949f2', N'account.08', N'account.08@gmail.com', N'Verifikator Admin', N'EC4C49B6-47B7-4338-B0E6-726EE5FEC7DC', N'62824E82-EBFE-431A-B05F-8F9D2B36A245', 1, 0, 0, NULL, NULL, CAST(N'2023-07-28T17:29:53.930' AS DateTime), N'admin', N'$2y$10$GiX17BCna/QWQ9072qNW2OwYhGZxMqWeCVV.xNwNDruAbMMNkKTMS', 1)
INSERT [dbo].[m_user] ([user_id], [user_name], [user_email], [user_description], [role_id], [branch_id], [user_verified], [user_status], [user_deletion], [update_date], [update_by], [create_date], [create_by], [user_password], [is_approval]) VALUES (N'6c47838a-4d37-4762-96ef-b1badba05b2e', N'upt.cigudeg', N'upt.cigudeg@gmail.com', N'UPT Cigudeg', N'A661F644-BAF9-4868-A58F-8B4E82D50D56', N'8F7029D4-831F-4F1D-BEC1-61DC6E35E70D', 0, 0, 0, NULL, NULL, CAST(N'2023-07-28T17:29:53.930' AS DateTime), N'admin', N'$2y$10$GKgRSm97AQ./ZbeAdC2bye2TzWkcb.VofP8fUTn8VTLgD7MFj8ooa', 0)
INSERT [dbo].[m_user] ([user_id], [user_name], [user_email], [user_description], [role_id], [branch_id], [user_verified], [user_status], [user_deletion], [update_date], [update_by], [create_date], [create_by], [user_password], [is_approval]) VALUES (N'c92859fe-732f-41f0-b176-e9b80714ba24', N'account.01', N'account.01@gmail.com', N'Verifikator', N'1C75FA03-E693-4FEA-9511-42875E85BA48', N'8F7029D4-831F-4F1D-BEC1-61DC6E35E70D', 1, 0, 0, NULL, NULL, CAST(N'2023-07-28T17:29:53.930' AS DateTime), N'admin', N'$2y$10$OP6kEWbsgca4g4hBP.q6muk3J6BoQA3ukJ/vEScMKIpe6WvkNR1Si', 1)
INSERT [dbo].[m_user] ([user_id], [user_name], [user_email], [user_description], [role_id], [branch_id], [user_verified], [user_status], [user_deletion], [update_date], [update_by], [create_date], [create_by], [user_password], [is_approval]) VALUES (N'80e1b7d0-0c45-4ce2-9a81-fee7428b8edf', N'account.02', N'account.02@gmail.com', N'Bendahara', N'23FDE120-7DEC-4B5B-AED5-E407C97CF638', N'8F7029D4-831F-4F1D-BEC1-61DC6E35E70D', 1, 1, 0, NULL, NULL, CAST(N'2023-07-28T17:29:53.930' AS DateTime), N'admin', N'$2y$10$ffv70Z9FWlVRvQPNT7ikgOzNE1Q0AoylH3HGbxeYdi6OQmu2nJsMa', 1)
GO
INSERT [dbo].[m_user_bidang] ([ub_id], [user_id], [bidang_id], [ub_status], [ub_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'55b71fa0-904a-484d-b72c-7d4c9ef46f8b', N'C92859FE-732F-41F0-B176-E9B80714BA24', N'009DA35C-762C-4376-89AC-1346AE8E28B9', 1, 0, CAST(N'2023-08-06T22:53:11.117' AS DateTime), N'Admin', CAST(N'2023-08-06T22:53:11.117' AS DateTime), N'Admin')
INSERT [dbo].[m_user_bidang] ([ub_id], [user_id], [bidang_id], [ub_status], [ub_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'5e266542-bc55-4366-b4bf-8bb7c49bd557', N'47314D00-ACB8-4F47-80B1-8B791B67C75E', N'009DA35C-762C-4376-89AC-1346AE8E28B9', 1, 0, CAST(N'2023-08-06T22:53:11.117' AS DateTime), N'Admin', CAST(N'2023-08-06T22:53:11.117' AS DateTime), N'Admin')
INSERT [dbo].[m_user_bidang] ([ub_id], [user_id], [bidang_id], [ub_status], [ub_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'835fdda2-df19-4b32-b3e9-a6f7fefff0ba', N'80E1B7D0-0C45-4CE2-9A81-FEE7428B8EDF', N'009DA35C-762C-4376-89AC-1346AE8E28B9', 1, 0, CAST(N'2023-08-06T22:53:11.117' AS DateTime), N'Admin', CAST(N'2023-08-06T22:53:11.117' AS DateTime), N'Admin')
INSERT [dbo].[m_user_bidang] ([ub_id], [user_id], [bidang_id], [ub_status], [ub_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'65fe8ea1-6095-4e81-a72e-d48e1329bbdd', N'BC00247F-4068-4032-A988-4A2782D56F25', N'009DA35C-762C-4376-89AC-1346AE8E28B9', 1, 0, CAST(N'2023-08-06T22:53:11.117' AS DateTime), N'Admin', CAST(N'2023-08-06T22:53:11.117' AS DateTime), N'Admin')
GO
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'661ac30d-714d-4432-b21f-14eb8f2beb92', N'SJ_STR_COMP-TRIAL3', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:03:31.390' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'caebbd8c-75e7-4b8d-85ab-2991f5b499bc', N'SJ_STR_COMP-TRIAL_rev', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:05:31.217' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'568e5cbc-520c-4f70-b06f-35a5303759bc', N'SJ_STR_COMP-TRIAL_rev4', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:05:31.233' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'feeca6f0-8d4f-49d8-b6ce-428f88284002', N'SJ_STR_COMP-TRIAL_rev8', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:07:26.133' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'd4079a6d-e690-4446-a322-42d966aec813', N'SJ_STR_COMP-TRIAL2', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:03:31.387' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'41f390b7-57a6-4532-959e-42de3319a74e', N'SJ_STR_COMP-TRIAL_rev7', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:07:26.130' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'dbe2d88a-cd2c-4327-9836-552d0000aae2', N'SJ_STR_COMP-TRIAL_rev9', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:07:26.140' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'8713f1f0-1866-48e5-82e8-590039a6ebf3', N'SJ_STR_COMP-TRIAL_rev11', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:09:10.300' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'12edd80a-7805-41d4-8b6e-6bad62a2e0ff', N'SJ_STR_COMP-TRIAL_rev12', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:09:10.307' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'442b98ff-2b64-4d42-95e5-836379eb1b18', N'SJ_STR_COMP-TRIAL_rev14', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:09:10.317' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'4637bd53-a96f-4cb7-8bdb-93197d4e187d', N'SJ_STR_COMP-TRIAL4', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:03:31.393' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'54df19c3-651e-4153-b707-98f83a5472cc', N'SJ_STR_COMP-TRIAL_rev2', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:05:31.227' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'7d5e2c7c-2027-4098-a5a7-9a3d9b3d5ab6', N'SJ_STR_COMP-TRIAL_rev1', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:05:31.220' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'b77b3689-1250-42ad-b126-a90e1fce24c1', N'SJ_STR_COMP-TRIAL_rev6', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:07:26.127' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'20481748-cd58-4bec-90f8-b8aa223a87a6', N'SJ_STR_COMP-TRIAL_rev3', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:05:31.230' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'dfaaf1d2-66a6-4d34-ad5c-d61ef39ce37a', N'SJ_STR_COMP-TRIAL_rev5', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:07:26.120' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'f3d14794-d33c-4805-8b74-da43e66e5bae', N'SJ_STR_COMP-TRIAL_rev13', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:09:10.310' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'fd0cfe8d-35c3-41e1-9e3a-dd3b3ddc7e9c', N'SJ_STR_COMP-TRIAL_rev10', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:09:10.297' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'92750674-1e9c-4419-86fd-e140e97e1c79', N'SJ_STR_COMP-TRIAL1', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:03:31.383' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'956f654c-704e-4f76-8db2-f5c7468e8de4', N'SJ_STR_COMP-TRIAL', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:03:31.380' AS DateTime), N'upt.cigudeg')
GO
INSERT [dbo].[t_verification] ([verif_id], [verif_no], [bidang_id], [verif_version], [user_id], [user_name], [branch_id], [verif_status], [verif_deletion], [verif_request_date], [approval_userid1], [approval_userid2], [approval_note1], [approval_note2], [approval_date1], [approval_date2], [update_date], [update_by], [create_date], [create_by]) VALUES (N'b628b7ee-e8b7-4a9e-9771-231bc64fb0ff', N'VR2308-001', N'009DA35C-762C-4376-89AC-1346AE8E28B9', NULL, N'6C47838A-4D37-4762-96EF-B1BADBA05B2E', N'upt.cigudeg', N'BR002', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:03:31.367' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification] ([verif_id], [verif_no], [bidang_id], [verif_version], [user_id], [user_name], [branch_id], [verif_status], [verif_deletion], [verif_request_date], [approval_userid1], [approval_userid2], [approval_note1], [approval_note2], [approval_date1], [approval_date2], [update_date], [update_by], [create_date], [create_by]) VALUES (N'7a7aec4d-ebc2-4b14-9b22-7866b44c836f', N'VR2308-008', N'9681CC1F-0944-4975-80C7-E2473E391C66', NULL, N'9A454DF9-F13E-4C38-9924-88031637F5F9', N'upt.ciomas', N'BR003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:09:31.437' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification] ([verif_id], [verif_no], [bidang_id], [verif_version], [user_id], [user_name], [branch_id], [verif_status], [verif_deletion], [verif_request_date], [approval_userid1], [approval_userid2], [approval_note1], [approval_note2], [approval_date1], [approval_date2], [update_date], [update_by], [create_date], [create_by]) VALUES (N'82e00fca-d4a4-4db5-8359-9540dc07d3f5', N'VR2308-006', N'009DA35C-762C-4376-89AC-1346AE8E28B9', NULL, N'9A454DF9-F13E-4C38-9924-88031637F5F9', N'upt.ciomas', N'BR003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:08:09.460' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification] ([verif_id], [verif_no], [bidang_id], [verif_version], [user_id], [user_name], [branch_id], [verif_status], [verif_deletion], [verif_request_date], [approval_userid1], [approval_userid2], [approval_note1], [approval_note2], [approval_date1], [approval_date2], [update_date], [update_by], [create_date], [create_by]) VALUES (N'd2b40deb-f34a-4add-a5ea-b718483819f7', N'VR2308-005', N'009DA35C-762C-4376-89AC-1346AE8E28B9', NULL, N'9A454DF9-F13E-4C38-9924-88031637F5F9', N'upt.ciomas', N'BR003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:07:26.110' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification] ([verif_id], [verif_no], [bidang_id], [verif_version], [user_id], [user_name], [branch_id], [verif_status], [verif_deletion], [verif_request_date], [approval_userid1], [approval_userid2], [approval_note1], [approval_note2], [approval_date1], [approval_date2], [update_date], [update_by], [create_date], [create_by]) VALUES (N'754090bc-a487-472f-821e-ba56ddd273f7', N'VR2308-007', N'9681CC1F-0944-4975-80C7-E2473E391C66', NULL, N'9A454DF9-F13E-4C38-9924-88031637F5F9', N'upt.ciomas', N'BR003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:09:10.283' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification] ([verif_id], [verif_no], [bidang_id], [verif_version], [user_id], [user_name], [branch_id], [verif_status], [verif_deletion], [verif_request_date], [approval_userid1], [approval_userid2], [approval_note1], [approval_note2], [approval_date1], [approval_date2], [update_date], [update_by], [create_date], [create_by]) VALUES (N'd5e89610-4f45-486e-9ade-c269525b45b2', N'VR2308-004', N'692BE837-E2FE-4197-8232-4A4051CD0C5E', NULL, N'6C47838A-4D37-4762-96EF-B1BADBA05B2E', N'upt.cigudeg', N'BR002', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:06:13.170' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification] ([verif_id], [verif_no], [bidang_id], [verif_version], [user_id], [user_name], [branch_id], [verif_status], [verif_deletion], [verif_request_date], [approval_userid1], [approval_userid2], [approval_note1], [approval_note2], [approval_date1], [approval_date2], [update_date], [update_by], [create_date], [create_by]) VALUES (N'600d0ef6-2a40-4af7-9082-dc0f859f7e91', N'VR2308-003', N'692BE837-E2FE-4197-8232-4A4051CD0C5E', NULL, N'6C47838A-4D37-4762-96EF-B1BADBA05B2E', N'upt.cigudeg', N'BR002', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:05:31.203' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification] ([verif_id], [verif_no], [bidang_id], [verif_version], [user_id], [user_name], [branch_id], [verif_status], [verif_deletion], [verif_request_date], [approval_userid1], [approval_userid2], [approval_note1], [approval_note2], [approval_date1], [approval_date2], [update_date], [update_by], [create_date], [create_by]) VALUES (N'c940e688-6489-4a80-ba34-f06d9c585ad9', N'VR2308-002', N'009DA35C-762C-4376-89AC-1346AE8E28B9', NULL, N'6C47838A-4D37-4762-96EF-B1BADBA05B2E', N'upt.cigudeg', N'BR002', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:03:50.980' AS DateTime), N'upt.cigudeg')
GO
INSERT [dbo].[t_verification_shop] ([verif_shop_id], [verif_id], [shop_id], [period], [total], [update_date], [update_by], [create_date], [create_by]) VALUES (N'7619e5e7-6f1e-4777-ae40-17ea066d05ab', N'754090BC-A487-472F-821E-BA56DDD273F7', N'823B8199-2119-4A68-B960-D064F438A0A5', N'202308', CAST(50000000.00 AS Decimal(12, 2)), NULL, NULL, CAST(N'2023-08-07T14:09:10.290' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop] ([verif_shop_id], [verif_id], [shop_id], [period], [total], [update_date], [update_by], [create_date], [create_by]) VALUES (N'8f1533fb-dcfa-46e6-9492-36fb094b9613', N'7A7AEC4D-EBC2-4B14-9B22-7866B44C836F', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', N'202308', CAST(8000000.00 AS Decimal(12, 2)), NULL, NULL, CAST(N'2023-08-07T14:09:31.440' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop] ([verif_shop_id], [verif_id], [shop_id], [period], [total], [update_date], [update_by], [create_date], [create_by]) VALUES (N'a0c6f575-4766-4406-a7b8-5b34d7736612', N'600D0EF6-2A40-4AF7-9082-DC0F859F7E91', N'823B8199-2119-4A68-B960-D064F438A0A5', N'202308', CAST(3000000.00 AS Decimal(12, 2)), NULL, NULL, CAST(N'2023-08-07T14:05:31.210' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop] ([verif_shop_id], [verif_id], [shop_id], [period], [total], [update_date], [update_by], [create_date], [create_by]) VALUES (N'b0f889e9-c373-4bb7-ab10-655b6972fa45', N'82E00FCA-D4A4-4DB5-8359-9540DC07D3F5', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', N'202308', CAST(6000000.00 AS Decimal(12, 2)), NULL, NULL, CAST(N'2023-08-07T14:08:09.467' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop] ([verif_shop_id], [verif_id], [shop_id], [period], [total], [update_date], [update_by], [create_date], [create_by]) VALUES (N'dec7cc47-2279-45ff-b597-685238b9da8b', N'D2B40DEB-F34A-4ADD-A5EA-B718483819F7', N'823B8199-2119-4A68-B960-D064F438A0A5', N'202308', CAST(35000000.00 AS Decimal(12, 2)), NULL, NULL, CAST(N'2023-08-07T14:07:26.113' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop] ([verif_shop_id], [verif_id], [shop_id], [period], [total], [update_date], [update_by], [create_date], [create_by]) VALUES (N'126b3075-5bd3-4099-b950-6d00d0d6b766', N'C940E688-6489-4A80-BA34-F06D9C585AD9', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', N'202308', CAST(30000000.00 AS Decimal(12, 2)), NULL, NULL, CAST(N'2023-08-07T14:03:50.980' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop] ([verif_shop_id], [verif_id], [shop_id], [period], [total], [update_date], [update_by], [create_date], [create_by]) VALUES (N'3876b9ab-36f7-48df-8443-9a9870d55e4b', N'B628B7EE-E8B7-4A9E-9771-231BC64FB0FF', N'823B8199-2119-4A68-B960-D064F438A0A5', N'202308', CAST(15000000.00 AS Decimal(12, 2)), NULL, NULL, CAST(N'2023-08-07T14:03:31.373' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop] ([verif_shop_id], [verif_id], [shop_id], [period], [total], [update_date], [update_by], [create_date], [create_by]) VALUES (N'bb812d38-eda5-4b4c-9604-ffa8ec0e8e81', N'D5E89610-4F45-486E-9ADE-C269525B45B2', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', N'202308', CAST(3500000.00 AS Decimal(12, 2)), NULL, NULL, CAST(N'2023-08-07T14:06:13.173' AS DateTime), N'upt.cigudeg')
GO
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'81634857-adaf-4e88-9cb5-0c7daf6ba3bc', N'7619E5E7-6F1E-4777-AE40-17EA066D05AB', N'754090BC-A487-472F-821E-BA56DDD273F7', N'823B8199-2119-4A68-B960-D064F438A0A5', 3, N'12EDD80A-7805-41D4-8B6E-6BAD62A2E0FF', N'3', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:09:10.313' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'69a20213-30b3-4ed0-ad7d-1f7baf764a15', N'3876B9AB-36F7-48DF-8443-9A9870D55E4B', N'B628B7EE-E8B7-4A9E-9771-231BC64FB0FF', N'823B8199-2119-4A68-B960-D064F438A0A5', 2, N'92750674-1E9C-4419-86FD-E140E97E1C79', N'2', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:03:31.387' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'30c30634-f8a8-4dc1-9d80-23b34ef4570e', N'BB812D38-EDA5-4B4C-9604-FFA8EC0E8E81', N'D5E89610-4F45-486E-9ADE-C269525B45B2', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 2, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:06:13.177' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'a6ab0f53-6acb-41e1-802b-257ec1546a06', N'DEC7CC47-2279-45FF-B597-685238B9DA8B', N'D2B40DEB-F34A-4ADD-A5EA-B718483819F7', N'823B8199-2119-4A68-B960-D064F438A0A5', 1, N'DFAAF1D2-66A6-4D34-AD5C-D61EF39CE37A', N'1', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:07:26.127' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'31ee3075-42c4-4e5c-9c5e-2e1f5cf92afb', N'DEC7CC47-2279-45FF-B597-685238B9DA8B', N'D2B40DEB-F34A-4ADD-A5EA-B718483819F7', N'823B8199-2119-4A68-B960-D064F438A0A5', 2, N'B77B3689-1250-42AD-B126-A90E1FCE24C1', N'2', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:07:26.130' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'b1b72686-a73b-4cea-8c08-34e39f9b872a', N'7619E5E7-6F1E-4777-AE40-17EA066D05AB', N'754090BC-A487-472F-821E-BA56DDD273F7', N'823B8199-2119-4A68-B960-D064F438A0A5', 1, N'FD0CFE8D-35C3-41E1-9E3A-DD3B3DDC7E9C', N'1', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:09:10.303' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'bf99156e-cf7d-4918-8b5b-365c6c1cf055', N'DEC7CC47-2279-45FF-B597-685238B9DA8B', N'D2B40DEB-F34A-4ADD-A5EA-B718483819F7', N'823B8199-2119-4A68-B960-D064F438A0A5', 3, N'41F390B7-57A6-4532-959E-42DE3319A74E', N'3', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:07:26.133' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'483009f4-89b9-4e2a-b120-37b070bcd725', N'B0F889E9-C373-4BB7-AB10-655B6972FA45', N'82E00FCA-D4A4-4DB5-8359-9540DC07D3F5', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 2, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:08:09.470' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'd88f9e6c-1750-42e7-a1c5-52efcea911a1', N'A0C6F575-4766-4406-A7B8-5B34D7736612', N'600D0EF6-2A40-4AF7-9082-DC0F859F7E91', N'823B8199-2119-4A68-B960-D064F438A0A5', 2, N'7D5E2C7C-2027-4098-A5A7-9A3D9B3D5AB6', N'22', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:05:31.223' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'cb0fc4ee-e4af-4607-aa73-59e532891760', N'8F1533FB-DCFA-46E6-9492-36FB094B9613', N'7A7AEC4D-EBC2-4B14-9B22-7866B44C836F', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 3, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:09:31.443' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'578d63fb-7b45-40ae-a0c3-5af3df07a2a8', N'A0C6F575-4766-4406-A7B8-5B34D7736612', N'600D0EF6-2A40-4AF7-9082-DC0F859F7E91', N'823B8199-2119-4A68-B960-D064F438A0A5', 4, N'20481748-CD58-4BEC-90F8-B8AA223A87A6', N'44', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:05:31.233' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'f5df9d96-4b91-4e2f-a883-5da7f13e307c', N'7619E5E7-6F1E-4777-AE40-17EA066D05AB', N'754090BC-A487-472F-821E-BA56DDD273F7', N'823B8199-2119-4A68-B960-D064F438A0A5', 4, N'F3D14794-D33C-4805-8B74-DA43E66E5BAE', N'4', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:09:10.317' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'c5911922-a5f1-4f0c-ae05-63f9bddf9fa5', N'A0C6F575-4766-4406-A7B8-5B34D7736612', N'600D0EF6-2A40-4AF7-9082-DC0F859F7E91', N'823B8199-2119-4A68-B960-D064F438A0A5', 5, N'568E5CBC-520C-4F70-B06F-35A5303759BC', N'55', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:05:31.237' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'aaa3f8dc-73a1-40ab-92b1-64bc5df4b89d', N'8F1533FB-DCFA-46E6-9492-36FB094B9613', N'7A7AEC4D-EBC2-4B14-9B22-7866B44C836F', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 2, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:09:31.443' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'6314f915-41e5-494c-82b4-679136662d76', N'8F1533FB-DCFA-46E6-9492-36FB094B9613', N'7A7AEC4D-EBC2-4B14-9B22-7866B44C836F', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 1, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:09:31.443' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'0cf088c5-380b-4e91-89d7-67b3bce1ca6a', N'DEC7CC47-2279-45FF-B597-685238B9DA8B', N'D2B40DEB-F34A-4ADD-A5EA-B718483819F7', N'823B8199-2119-4A68-B960-D064F438A0A5', 4, N'FEECA6F0-8D4F-49D8-B6CE-428F88284002', N'4', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:07:26.137' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'f669d854-e65d-4b37-b6ea-6e62a67cd6ac', N'3876B9AB-36F7-48DF-8443-9A9870D55E4B', N'B628B7EE-E8B7-4A9E-9771-231BC64FB0FF', N'823B8199-2119-4A68-B960-D064F438A0A5', 4, N'661AC30D-714D-4432-B21F-14EB8F2BEB92', N'4', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:03:31.393' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'45d310b3-5377-4c89-88f0-7081809d0b28', N'DEC7CC47-2279-45FF-B597-685238B9DA8B', N'D2B40DEB-F34A-4ADD-A5EA-B718483819F7', N'823B8199-2119-4A68-B960-D064F438A0A5', 5, N'DBE2D88A-CD2C-4327-9836-552D0000AAE2', N'5', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:07:26.140' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'4b7e7b73-3e79-49d9-ac1e-7786555d45ff', N'3876B9AB-36F7-48DF-8443-9A9870D55E4B', N'B628B7EE-E8B7-4A9E-9771-231BC64FB0FF', N'823B8199-2119-4A68-B960-D064F438A0A5', 5, N'4637BD53-A96F-4CB7-8BDB-93197D4E187D', N'5', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:03:31.397' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'704b69a9-7771-47bd-8305-7a5067aeab28', N'B0F889E9-C373-4BB7-AB10-655B6972FA45', N'82E00FCA-D4A4-4DB5-8359-9540DC07D3F5', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 4, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:08:09.470' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'2dd1075f-e0ca-411f-aaae-823156a98e99', N'A0C6F575-4766-4406-A7B8-5B34D7736612', N'600D0EF6-2A40-4AF7-9082-DC0F859F7E91', N'823B8199-2119-4A68-B960-D064F438A0A5', 1, N'CAEBBD8C-75E7-4B8D-85AB-2991F5B499BC', N'11', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:05:31.220' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'3b5bcc18-b231-4529-afe2-8fcdcaf2eeb6', N'126B3075-5BD3-4099-B950-6D00D0D6B766', N'C940E688-6489-4A80-BA34-F06D9C585AD9', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 3, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:03:50.983' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'a70a2a03-65f6-42f7-9bab-92e91dc73872', N'BB812D38-EDA5-4B4C-9604-FFA8EC0E8E81', N'D5E89610-4F45-486E-9ADE-C269525B45B2', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 4, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:06:13.177' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'3b4d70af-b111-426c-8117-96d25ae540c1', N'B0F889E9-C373-4BB7-AB10-655B6972FA45', N'82E00FCA-D4A4-4DB5-8359-9540DC07D3F5', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 1, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:08:09.470' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'd67346e6-9c04-4212-9f85-9b41fb3b37d2', N'BB812D38-EDA5-4B4C-9604-FFA8EC0E8E81', N'D5E89610-4F45-486E-9ADE-C269525B45B2', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 5, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:06:13.177' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'6bedd020-77c0-49e8-bbda-9d3e1d9954c6', N'8F1533FB-DCFA-46E6-9492-36FB094B9613', N'7A7AEC4D-EBC2-4B14-9B22-7866B44C836F', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 5, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:09:31.443' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'ef1aba26-a23d-4d7e-9edc-a1c356cf2b0d', N'8F1533FB-DCFA-46E6-9492-36FB094B9613', N'7A7AEC4D-EBC2-4B14-9B22-7866B44C836F', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 4, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:09:31.443' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'5fb2fce9-a3cc-49fb-82dd-a1c79b1edb05', N'7619E5E7-6F1E-4777-AE40-17EA066D05AB', N'754090BC-A487-472F-821E-BA56DDD273F7', N'823B8199-2119-4A68-B960-D064F438A0A5', 2, N'8713F1F0-1866-48E5-82E8-590039A6EBF3', N'2', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:09:10.307' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'1e3c0d05-d314-4a82-a7f0-a40e1144c36a', N'3876B9AB-36F7-48DF-8443-9A9870D55E4B', N'B628B7EE-E8B7-4A9E-9771-231BC64FB0FF', N'823B8199-2119-4A68-B960-D064F438A0A5', 3, N'D4079A6D-E690-4446-A322-42D966AEC813', N'3', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:03:31.390' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'932b43e9-9efe-41ae-a20c-af2282a30991', N'126B3075-5BD3-4099-B950-6D00D0D6B766', N'C940E688-6489-4A80-BA34-F06D9C585AD9', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 1, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:03:50.983' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'fb4e11d1-80d4-49d1-95e4-af7a5b4a4e78', N'126B3075-5BD3-4099-B950-6D00D0D6B766', N'C940E688-6489-4A80-BA34-F06D9C585AD9', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 5, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:03:50.983' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'f1a9f4f1-1085-45ef-b711-bbebcc7dcffd', N'3876B9AB-36F7-48DF-8443-9A9870D55E4B', N'B628B7EE-E8B7-4A9E-9771-231BC64FB0FF', N'823B8199-2119-4A68-B960-D064F438A0A5', 1, N'956F654C-704E-4F76-8DB2-F5C7468E8DE4', N'1', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:03:31.380' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'6535fa37-45fa-457f-bce9-ca788bb9083d', N'A0C6F575-4766-4406-A7B8-5B34D7736612', N'600D0EF6-2A40-4AF7-9082-DC0F859F7E91', N'823B8199-2119-4A68-B960-D064F438A0A5', 3, N'54DF19C3-651E-4153-B707-98F83A5472CC', N'33', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:05:31.230' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'a42864ef-b4dc-4cf8-85cd-cf756e5c3357', N'BB812D38-EDA5-4B4C-9604-FFA8EC0E8E81', N'D5E89610-4F45-486E-9ADE-C269525B45B2', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 3, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:06:13.177' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'ad16b2fb-2b1a-42a8-8ccb-d82e4de1d6a8', N'B0F889E9-C373-4BB7-AB10-655B6972FA45', N'82E00FCA-D4A4-4DB5-8359-9540DC07D3F5', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 5, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:08:09.470' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'58ad5769-9d33-483d-a49c-da757f379477', N'B0F889E9-C373-4BB7-AB10-655B6972FA45', N'82E00FCA-D4A4-4DB5-8359-9540DC07D3F5', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 3, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:08:09.470' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'82b5dedb-980b-4490-8183-dcf3c7f781c4', N'126B3075-5BD3-4099-B950-6D00D0D6B766', N'C940E688-6489-4A80-BA34-F06D9C585AD9', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 2, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:03:50.983' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'5b754769-1493-4e52-a14b-efa0b5c95a31', N'7619E5E7-6F1E-4777-AE40-17EA066D05AB', N'754090BC-A487-472F-821E-BA56DDD273F7', N'823B8199-2119-4A68-B960-D064F438A0A5', 5, N'442B98FF-2B64-4D42-95E5-836379EB1B18', N'5', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:09:10.323' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'd0427b75-9b6d-45f8-b722-f2cf21d2123a', N'BB812D38-EDA5-4B4C-9604-FFA8EC0E8E81', N'D5E89610-4F45-486E-9ADE-C269525B45B2', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 1, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:06:13.177' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'a30691b0-43c0-41ba-a0dd-fc7bdac6e61f', N'126B3075-5BD3-4099-B950-6D00D0D6B766', N'C940E688-6489-4A80-BA34-F06D9C585AD9', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 4, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T14:03:50.983' AS DateTime), N'upt.cigudeg')
GO
ALTER TABLE [dbo].[m_bidang] ADD  CONSTRAINT [DF_m_bidang_bidang_id]  DEFAULT (newid()) FOR [bidang_id]
GO
ALTER TABLE [dbo].[m_branch] ADD  CONSTRAINT [DF_m_branch_branch_id]  DEFAULT (newid()) FOR [branch_id]
GO
ALTER TABLE [dbo].[m_role] ADD  CONSTRAINT [DF_m_role_role_id]  DEFAULT (newid()) FOR [role_id]
GO
ALTER TABLE [dbo].[m_user] ADD  CONSTRAINT [DF_m_user_user_id]  DEFAULT (newid()) FOR [user_id]
GO
ALTER TABLE [dbo].[m_user_bidang] ADD  DEFAULT (newid()) FOR [ub_id]
GO
ALTER TABLE [dbo].[t_doc] ADD  CONSTRAINT [DF_t_doc_doc_id]  DEFAULT (newid()) FOR [doc_id]
GO
ALTER TABLE [dbo].[t_doc] ADD  CONSTRAINT [DF_t_doc_create_date]  DEFAULT (getdate()) FOR [create_date]
GO
ALTER TABLE [dbo].[t_verification] ADD  DEFAULT (getdate()) FOR [create_date]
GO
ALTER TABLE [dbo].[t_verification_shop] ADD  DEFAULT (getdate()) FOR [create_date]
GO
