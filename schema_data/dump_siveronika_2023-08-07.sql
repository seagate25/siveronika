USE [db_siveronika]
GO
/****** Object:  Table [dbo].[m_bidang]    Script Date: 07-Aug-23 11:50:50 ******/
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
/****** Object:  Table [dbo].[m_branch]    Script Date: 07-Aug-23 11:50:50 ******/
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
/****** Object:  Table [dbo].[m_role]    Script Date: 07-Aug-23 11:50:50 ******/
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
/****** Object:  Table [dbo].[m_shop]    Script Date: 07-Aug-23 11:50:50 ******/
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
/****** Object:  Table [dbo].[m_shop_det]    Script Date: 07-Aug-23 11:50:50 ******/
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
/****** Object:  Table [dbo].[m_user]    Script Date: 07-Aug-23 11:50:50 ******/
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
/****** Object:  Table [dbo].[m_user_bidang]    Script Date: 07-Aug-23 11:50:50 ******/
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
/****** Object:  Table [dbo].[t_doc]    Script Date: 07-Aug-23 11:50:50 ******/
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
/****** Object:  Table [dbo].[t_verification]    Script Date: 07-Aug-23 11:50:50 ******/
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
/****** Object:  Table [dbo].[t_verification_shop]    Script Date: 07-Aug-23 11:50:50 ******/
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
/****** Object:  Table [dbo].[t_verification_shop_det]    Script Date: 07-Aug-23 11:50:50 ******/
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
INSERT [dbo].[m_role] ([role_id], [role_name], [role_description], [role_status], [role_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'9768ae88-dba8-4f87-97ce-11fcd0ef137a', N'Reviewer', N'Viewer/ Crontrolling All Data', 1, 0, NULL, NULL, CAST(N'2023-08-04T22:36:53.207' AS DateTime), N'Admin')
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
INSERT [dbo].[m_user] ([user_id], [user_name], [user_email], [user_description], [role_id], [branch_id], [user_verified], [user_status], [user_deletion], [update_date], [update_by], [create_date], [create_by], [user_password], [is_approval]) VALUES (N'31904f59-6bd9-4964-9208-268d9b1e8d22', N'account.03', N'account.03@gmail.com', N'Reviewer, Kabag', N'BFC53234-F4A7-4D93-B0AB-9D23D4DE2695', N'0A373E8E-8BD3-4DF8-9126-F97A5CC84F3F', 1, 1, 0, NULL, NULL, CAST(N'2023-07-28T17:29:53.930' AS DateTime), N'admin', N'$2y$2y$10$BtzMQ52gr8i8W81jqLJdnOF7oBx5wgYPANKYqwkUPq9rSKOs7/K2S', 0)
INSERT [dbo].[m_user] ([user_id], [user_name], [user_email], [user_description], [role_id], [branch_id], [user_verified], [user_status], [user_deletion], [update_date], [update_by], [create_date], [create_by], [user_password], [is_approval]) VALUES (N'9a454df9-f13e-4c38-9924-88031637f5f9', N'upt.ciomas', N'upt.ciomas@gmail.com', N'UPT Ciomas', N'A661F644-BAF9-4868-A58F-8B4E82D50D56', N'62824E82-EBFE-431A-B05F-8F9D2B36A245', 0, 0, 0, NULL, NULL, CAST(N'2023-07-28T17:29:53.930' AS DateTime), N'admin', N'$2y$10$D7t6rBNAvtje6qurewzHg.r6czL2sEKmCd8dN7RstV1h1EJVbuoxi', 0)
INSERT [dbo].[m_user] ([user_id], [user_name], [user_email], [user_description], [role_id], [branch_id], [user_verified], [user_status], [user_deletion], [update_date], [update_by], [create_date], [create_by], [user_password], [is_approval]) VALUES (N'6c47838a-4d37-4762-96ef-b1badba05b2e', N'upt.cigudeg', N'upt.cigudeg@gmail.com', N'UPT Cigudeg', N'A661F644-BAF9-4868-A58F-8B4E82D50D56', N'8F7029D4-831F-4F1D-BEC1-61DC6E35E70D', 0, 0, 0, NULL, NULL, CAST(N'2023-07-28T17:29:53.930' AS DateTime), N'admin', N'$2y$10$GKgRSm97AQ./ZbeAdC2bye2TzWkcb.VofP8fUTn8VTLgD7MFj8ooa', 0)
INSERT [dbo].[m_user] ([user_id], [user_name], [user_email], [user_description], [role_id], [branch_id], [user_verified], [user_status], [user_deletion], [update_date], [update_by], [create_date], [create_by], [user_password], [is_approval]) VALUES (N'c92859fe-732f-41f0-b176-e9b80714ba24', N'account.01', N'account.01@gmail.com', N'Verifikator', N'1C75FA03-E693-4FEA-9511-42875E85BA48', N'0A373E8E-8BD3-4DF8-9126-F97A5CC84F3F', 1, 0, 0, NULL, NULL, CAST(N'2023-07-28T17:29:53.930' AS DateTime), N'admin', N'$2y$10$OP6kEWbsgca4g4hBP.q6muk3J6BoQA3ukJ/vEScMKIpe6WvkNR1Si', 1)
INSERT [dbo].[m_user] ([user_id], [user_name], [user_email], [user_description], [role_id], [branch_id], [user_verified], [user_status], [user_deletion], [update_date], [update_by], [create_date], [create_by], [user_password], [is_approval]) VALUES (N'80e1b7d0-0c45-4ce2-9a81-fee7428b8edf', N'account.02', N'account.02@gmail.com', N'Bendahara', N'23FDE120-7DEC-4B5B-AED5-E407C97CF638', N'0A373E8E-8BD3-4DF8-9126-F97A5CC84F3F', 1, 1, 0, NULL, NULL, CAST(N'2023-07-28T17:29:53.930' AS DateTime), N'admin', N'$2y$10$ffv70Z9FWlVRvQPNT7ikgOzNE1Q0AoylH3HGbxeYdi6OQmu2nJsMa', 1)
GO
INSERT [dbo].[m_user_bidang] ([ub_id], [user_id], [bidang_id], [ub_status], [ub_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'55b71fa0-904a-484d-b72c-7d4c9ef46f8b', N'C92859FE-732F-41F0-B176-E9B80714BA24', N'009DA35C-762C-4376-89AC-1346AE8E28B9', 1, 0, CAST(N'2023-08-06T22:53:11.117' AS DateTime), N'Admin', CAST(N'2023-08-06T22:53:11.117' AS DateTime), N'Admin')
INSERT [dbo].[m_user_bidang] ([ub_id], [user_id], [bidang_id], [ub_status], [ub_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'835fdda2-df19-4b32-b3e9-a6f7fefff0ba', N'80E1B7D0-0C45-4CE2-9A81-FEE7428B8EDF', N'009DA35C-762C-4376-89AC-1346AE8E28B9', 1, 0, CAST(N'2023-08-06T22:53:11.117' AS DateTime), N'Admin', CAST(N'2023-08-06T22:53:11.117' AS DateTime), N'Admin')
GO
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'40519ae8-41a7-4ffd-9ea5-0a4cfdc3b205', N'SJ_STR_COMP-TRIAL_rev4', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T10:35:57.260' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'6f775dcc-7fa6-4e32-88ab-14c1c8d84e8d', N'SJ_STR_COMP-TRIAL_rev5', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T10:36:47.367' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'b3965f87-7277-449b-88a6-2dc9e259ad64', N'SJ_STR_COMP-TRIAL2', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T10:38:01.817' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'0f219dc2-01d1-4be9-a2e7-3ae19e20b6eb', N'SJ_STR_COMP-TRIAL_rev8', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T10:40:57.990' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'edf8c437-2690-4412-b575-47f9544c868b', N'SJ_STR_COMP-TRIAL_rev6', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T10:38:01.800' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'3d795f88-bd73-40d4-b693-708060d17eda', N'SJ_STR_COMP-TRIAL', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T10:38:01.807' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'95c537bd-1293-452e-8ed1-70af536dacf3', N'SJ_STR_COMP-TRIAL_rev3', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T10:35:57.257' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'3b4f7d1f-61c8-4adc-a9a9-820804cbb91d', N'SJ_STR_COMP-TRIAL_rev10', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T10:40:58.000' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'8e0d8a13-3a24-4c67-baf6-8390e1b78480', N'SJ_STR_COMP-TRIAL_rev2', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T10:35:57.250' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'0e1409de-40eb-4093-b0c1-a2c608b9ab41', N'SJ_STR_COMP-TRIAL_rev9', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T10:40:57.993' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'bea9f77c-e9ba-49a7-ae47-b062ff5e7daa', N'SJ_STR_COMP-TRIAL_rev', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T10:35:57.240' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'e8d8ee4c-1f66-4ef4-b45f-b7690b6cd895', N'SJ_STR_COMP-TRIAL1', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T10:38:01.810' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'632b79fd-35f8-4755-b53e-d91668402499', N'SJ_STR_COMP-TRIAL_rev7', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T10:40:57.983' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'241626ec-8659-44c2-ad32-daaa9f5ee5b4', N'SJ_STR_COMP-TRIAL_rev11', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T10:40:58.007' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'32da2678-0944-4e56-ba94-f4b76b5b218c', N'SJ_STR_COMP-TRIAL_rev1', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T10:35:57.247' AS DateTime), N'upt.ciomas')
GO
INSERT [dbo].[t_verification] ([verif_id], [verif_no], [bidang_id], [verif_version], [user_id], [user_name], [branch_id], [verif_status], [verif_deletion], [verif_request_date], [update_date], [update_by], [create_date], [create_by]) VALUES (N'a0a023be-36e5-4ad5-9e6c-1aad71943e41', N'VR2308-001', N'009DA35C-762C-4376-89AC-1346AE8E28B9', NULL, N'9A454DF9-F13E-4C38-9924-88031637F5F9', N'upt.ciomas', N'BR003', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T10:35:57.220' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification] ([verif_id], [verif_no], [bidang_id], [verif_version], [user_id], [user_name], [branch_id], [verif_status], [verif_deletion], [verif_request_date], [update_date], [update_by], [create_date], [create_by]) VALUES (N'fbd122b2-f99c-4972-880c-63c17abf4012', N'VR2308-006', N'009DA35C-762C-4376-89AC-1346AE8E28B9', NULL, N'6C47838A-4D37-4762-96EF-B1BADBA05B2E', N'upt.cigudeg', N'BR002', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T10:41:12.130' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification] ([verif_id], [verif_no], [bidang_id], [verif_version], [user_id], [user_name], [branch_id], [verif_status], [verif_deletion], [verif_request_date], [update_date], [update_by], [create_date], [create_by]) VALUES (N'79b36ff7-f258-4f1b-8475-6beffc71f138', N'VR2308-003', N'9681CC1F-0944-4975-80C7-E2473E391C66', NULL, N'9A454DF9-F13E-4C38-9924-88031637F5F9', N'upt.ciomas', N'BR003', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T10:38:01.790' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification] ([verif_id], [verif_no], [bidang_id], [verif_version], [user_id], [user_name], [branch_id], [verif_status], [verif_deletion], [verif_request_date], [update_date], [update_by], [create_date], [create_by]) VALUES (N'dfd08058-7a9c-4bf1-b1ab-a8ce4e10551b', N'VR2308-002', N'009DA35C-762C-4376-89AC-1346AE8E28B9', NULL, N'9A454DF9-F13E-4C38-9924-88031637F5F9', N'upt.ciomas', N'BR003', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T10:36:47.353' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification] ([verif_id], [verif_no], [bidang_id], [verif_version], [user_id], [user_name], [branch_id], [verif_status], [verif_deletion], [verif_request_date], [update_date], [update_by], [create_date], [create_by]) VALUES (N'6dd7464f-8d7d-4c9f-9e3d-b9234a1ca1f0', N'VR2308-007', N'692BE837-E2FE-4197-8232-4A4051CD0C5E', NULL, N'6C47838A-4D37-4762-96EF-B1BADBA05B2E', N'upt.cigudeg', N'BR002', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T10:42:12.700' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification] ([verif_id], [verif_no], [bidang_id], [verif_version], [user_id], [user_name], [branch_id], [verif_status], [verif_deletion], [verif_request_date], [update_date], [update_by], [create_date], [create_by]) VALUES (N'f998ccfa-8baa-45e1-946a-f0caa5a8be68', N'VR2308-005', N'009DA35C-762C-4376-89AC-1346AE8E28B9', NULL, N'6C47838A-4D37-4762-96EF-B1BADBA05B2E', N'upt.cigudeg', N'BR002', NULL, NULL, NULL, CAST(N'2023-08-07T11:43:32.250' AS DateTime), N'upt.cigudeg', CAST(N'2023-08-07T10:40:57.973' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification] ([verif_id], [verif_no], [bidang_id], [verif_version], [user_id], [user_name], [branch_id], [verif_status], [verif_deletion], [verif_request_date], [update_date], [update_by], [create_date], [create_by]) VALUES (N'8ea0614c-d05a-4c2f-9be9-f770be4a95a6', N'VR2308-004', N'9681CC1F-0944-4975-80C7-E2473E391C66', NULL, N'9A454DF9-F13E-4C38-9924-88031637F5F9', N'upt.ciomas', N'BR003', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-07T10:38:21.780' AS DateTime), N'upt.ciomas')
GO
INSERT [dbo].[t_verification_shop] ([verif_shop_id], [verif_id], [shop_id], [period], [total], [update_date], [update_by], [create_date], [create_by]) VALUES (N'2e0d326f-7db1-429d-9d78-17182a916d74', N'A0A023BE-36E5-4AD5-9E6C-1AAD71943E41', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', N'202308', CAST(10000000.00 AS Decimal(12, 2)), NULL, NULL, CAST(N'2023-08-07T10:35:57.227' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop] ([verif_shop_id], [verif_id], [shop_id], [period], [total], [update_date], [update_by], [create_date], [create_by]) VALUES (N'46b2f6d4-e49a-42af-888e-5314344a1dda', N'79B36FF7-F258-4F1B-8475-6BEFFC71F138', N'D5F4B515-D7BD-4430-9C4C-3A4B032C58F2', N'202308', CAST(75000000.00 AS Decimal(12, 2)), NULL, NULL, CAST(N'2023-08-07T10:38:01.793' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop] ([verif_shop_id], [verif_id], [shop_id], [period], [total], [update_date], [update_by], [create_date], [create_by]) VALUES (N'cdaaf007-ad92-42d3-b13f-638a9cd92a53', N'F998CCFA-8BAA-45E1-946A-F0CAA5A8BE68', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', N'202308', CAST(15000000.00 AS Decimal(12, 2)), NULL, NULL, CAST(N'2023-08-07T11:43:32.253' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop] ([verif_shop_id], [verif_id], [shop_id], [period], [total], [update_date], [update_by], [create_date], [create_by]) VALUES (N'5c69600b-46bd-4c1e-a56b-714d3e816b28', N'8EA0614C-D05A-4C2F-9BE9-F770BE4A95A6', N'178EAE1E-87ED-4385-933B-C8AA6F074354', N'202308', CAST(20000000.00 AS Decimal(12, 2)), NULL, NULL, CAST(N'2023-08-07T10:38:21.783' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop] ([verif_shop_id], [verif_id], [shop_id], [period], [total], [update_date], [update_by], [create_date], [create_by]) VALUES (N'08391bb5-eac9-4107-add5-9242cc6b046f', N'F998CCFA-8BAA-45E1-946A-F0CAA5A8BE68', N'823B8199-2119-4A68-B960-D064F438A0A5', N'202308', CAST(10000000.00 AS Decimal(12, 2)), NULL, NULL, CAST(N'2023-08-07T10:40:57.977' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop] ([verif_shop_id], [verif_id], [shop_id], [period], [total], [update_date], [update_by], [create_date], [create_by]) VALUES (N'bb6fe477-2c5d-4b41-a812-bf0c8d959973', N'DFD08058-7A9C-4BF1-B1AB-A8CE4E10551B', N'455E443F-504A-414B-95BE-6A8B89581E53', N'202308', CAST(15000000.00 AS Decimal(12, 2)), NULL, NULL, CAST(N'2023-08-07T10:36:47.360' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop] ([verif_shop_id], [verif_id], [shop_id], [period], [total], [update_date], [update_by], [create_date], [create_by]) VALUES (N'5a22c70f-6096-4a4f-bcf5-f3129edde154', N'6DD7464F-8D7D-4C9F-9E3D-B9234A1CA1F0', N'D5F4B515-D7BD-4430-9C4C-3A4B032C58F2', N'202308', CAST(100000000.00 AS Decimal(12, 2)), NULL, NULL, CAST(N'2023-08-07T10:42:12.707' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop] ([verif_shop_id], [verif_id], [shop_id], [period], [total], [update_date], [update_by], [create_date], [create_by]) VALUES (N'4ba56b7f-9c15-4533-9c3a-fd1fae8093bc', N'FBD122B2-F99C-4972-880C-63C17ABF4012', N'554A55BA-057B-4D90-A6DF-22C663EFFC10', N'202308', CAST(25000000.00 AS Decimal(12, 2)), NULL, NULL, CAST(N'2023-08-07T10:41:12.130' AS DateTime), N'upt.cigudeg')
GO
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [update_date], [update_by], [create_date], [create_by]) VALUES (N'882db890-c096-44a5-a064-01a7677915aa', N'5C69600B-46BD-4C1E-A56B-714D3E816B28', N'8EA0614C-D05A-4C2F-9BE9-F770BE4A95A6', N'178EAE1E-87ED-4385-933B-C8AA6F074354', 5, NULL, N'', NULL, NULL, CAST(N'2023-08-07T10:38:21.787' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [update_date], [update_by], [create_date], [create_by]) VALUES (N'd48c2962-055d-417e-9f99-135c697b4c13', N'4BA56B7F-9C15-4533-9C3A-FD1FAE8093BC', N'FBD122B2-F99C-4972-880C-63C17ABF4012', N'554A55BA-057B-4D90-A6DF-22C663EFFC10', 1, NULL, N'', NULL, NULL, CAST(N'2023-08-07T10:41:12.133' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [update_date], [update_by], [create_date], [create_by]) VALUES (N'5cd18a10-23a9-47b9-9e5b-1a9af0a631e3', N'BB6FE477-2C5D-4B41-A812-BF0C8D959973', N'DFD08058-7A9C-4BF1-B1AB-A8CE4E10551B', N'455E443F-504A-414B-95BE-6A8B89581E53', 3, NULL, N'', NULL, NULL, CAST(N'2023-08-07T10:36:47.373' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [update_date], [update_by], [create_date], [create_by]) VALUES (N'28ef15fe-cfd8-486a-a020-1e08d3982dbd', N'4BA56B7F-9C15-4533-9C3A-FD1FAE8093BC', N'FBD122B2-F99C-4972-880C-63C17ABF4012', N'554A55BA-057B-4D90-A6DF-22C663EFFC10', 4, NULL, N'', NULL, NULL, CAST(N'2023-08-07T10:41:12.133' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [update_date], [update_by], [create_date], [create_by]) VALUES (N'a9895fe3-6601-4b16-aca8-1e1f90e88198', N'5C69600B-46BD-4C1E-A56B-714D3E816B28', N'8EA0614C-D05A-4C2F-9BE9-F770BE4A95A6', N'178EAE1E-87ED-4385-933B-C8AA6F074354', 2, NULL, N'', NULL, NULL, CAST(N'2023-08-07T10:38:21.787' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [update_date], [update_by], [create_date], [create_by]) VALUES (N'59aa2827-8ac2-4595-be9a-22c0f9526186', N'2E0D326F-7DB1-429D-9D78-17182A916D74', N'A0A023BE-36E5-4AD5-9E6C-1AAD71943E41', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 1, N'BEA9F77C-E9BA-49A7-AE47-B062FF5E7DAA', N'Nota Dinas	', NULL, NULL, CAST(N'2023-08-07T10:35:57.247' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [update_date], [update_by], [create_date], [create_by]) VALUES (N'fdd7d14c-7194-4742-a3e7-23467d7c6dd1', N'BB6FE477-2C5D-4B41-A812-BF0C8D959973', N'DFD08058-7A9C-4BF1-B1AB-A8CE4E10551B', N'455E443F-504A-414B-95BE-6A8B89581E53', 1, N'6F775DCC-7FA6-4E32-88AB-14C1C8D84E8D', N'Nota Dinas	', NULL, NULL, CAST(N'2023-08-07T10:36:47.373' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [update_date], [update_by], [create_date], [create_by]) VALUES (N'eddaa85a-c958-47fa-b3ce-263e9d20f6d8', N'2E0D326F-7DB1-429D-9D78-17182A916D74', N'A0A023BE-36E5-4AD5-9E6C-1AAD71943E41', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 3, N'8E0D8A13-3A24-4C67-BAF6-8390E1B78480', N'Kwitansi', NULL, NULL, CAST(N'2023-08-07T10:35:57.257' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [update_date], [update_by], [create_date], [create_by]) VALUES (N'b7017a17-1f5c-43e0-bfb0-2c3c457d906c', N'5A22C70F-6096-4A4F-BCF5-F3129EDDE154', N'6DD7464F-8D7D-4C9F-9E3D-B9234A1CA1F0', N'D5F4B515-D7BD-4430-9C4C-3A4B032C58F2', 1, NULL, N'', NULL, NULL, CAST(N'2023-08-07T10:42:12.710' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [update_date], [update_by], [create_date], [create_by]) VALUES (N'f92b23cb-f976-47a7-acb5-2e9296986d09', N'2E0D326F-7DB1-429D-9D78-17182A916D74', N'A0A023BE-36E5-4AD5-9E6C-1AAD71943E41', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 4, N'95C537BD-1293-452E-8ED1-70AF536DACF3', N'Faktur', NULL, NULL, CAST(N'2023-08-07T10:35:57.260' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [update_date], [update_by], [create_date], [create_by]) VALUES (N'cfe94b75-eab7-4c41-8564-2f1fa9286d85', N'CDAAF007-AD92-42D3-B13F-638A9CD92A53', N'F998CCFA-8BAA-45E1-946A-F0CAA5A8BE68', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 3, NULL, N'', NULL, NULL, CAST(N'2023-08-07T11:43:32.257' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [update_date], [update_by], [create_date], [create_by]) VALUES (N'36096370-4047-42ca-ab64-38a4e02cd214', N'5C69600B-46BD-4C1E-A56B-714D3E816B28', N'8EA0614C-D05A-4C2F-9BE9-F770BE4A95A6', N'178EAE1E-87ED-4385-933B-C8AA6F074354', 4, NULL, N'', NULL, NULL, CAST(N'2023-08-07T10:38:21.787' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [update_date], [update_by], [create_date], [create_by]) VALUES (N'3bd68886-366a-4b0d-ba7b-39484ba8e38d', N'46B2F6D4-E49A-42AF-888E-5314344A1DDA', N'79B36FF7-F258-4F1B-8475-6BEFFC71F138', N'D5F4B515-D7BD-4430-9C4C-3A4B032C58F2', 5, N'B3965F87-7277-449B-88A6-2DC9E259AD64', N'Berita acara Serah Terima Hasil Pekerjaan	', NULL, NULL, CAST(N'2023-08-07T10:38:01.820' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [update_date], [update_by], [create_date], [create_by]) VALUES (N'c7e3fee0-ef9c-479f-8019-4316c28ae177', N'46B2F6D4-E49A-42AF-888E-5314344A1DDA', N'79B36FF7-F258-4F1B-8475-6BEFFC71F138', N'D5F4B515-D7BD-4430-9C4C-3A4B032C58F2', 2, N'3D795F88-BD73-40D4-B693-708060D17EDA', N'Surat Pesanan	', NULL, NULL, CAST(N'2023-08-07T10:38:01.807' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [update_date], [update_by], [create_date], [create_by]) VALUES (N'388ec0f2-812b-4a87-917a-43af30748908', N'4BA56B7F-9C15-4533-9C3A-FD1FAE8093BC', N'FBD122B2-F99C-4972-880C-63C17ABF4012', N'554A55BA-057B-4D90-A6DF-22C663EFFC10', 3, NULL, N'', NULL, NULL, CAST(N'2023-08-07T10:41:12.133' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [update_date], [update_by], [create_date], [create_by]) VALUES (N'ab4dfe95-cff9-4650-b172-47b9a3bf93ac', N'CDAAF007-AD92-42D3-B13F-638A9CD92A53', N'F998CCFA-8BAA-45E1-946A-F0CAA5A8BE68', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 4, NULL, N'', NULL, NULL, CAST(N'2023-08-07T11:43:32.257' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [update_date], [update_by], [create_date], [create_by]) VALUES (N'6f0c807d-fdc6-4d6e-aa0b-4d5a70ea9033', N'08391BB5-EAC9-4107-ADD5-9242CC6B046F', N'F998CCFA-8BAA-45E1-946A-F0CAA5A8BE68', N'823B8199-2119-4A68-B960-D064F438A0A5', 1, N'632B79FD-35F8-4755-B53E-D91668402499', N'Nota Dinas	', NULL, NULL, CAST(N'2023-08-07T10:40:57.987' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [update_date], [update_by], [create_date], [create_by]) VALUES (N'ef64ed56-e8c2-4559-bc0d-555b3606fdd9', N'46B2F6D4-E49A-42AF-888E-5314344A1DDA', N'79B36FF7-F258-4F1B-8475-6BEFFC71F138', N'D5F4B515-D7BD-4430-9C4C-3A4B032C58F2', 4, NULL, N'Faktur', NULL, NULL, CAST(N'2023-08-07T10:38:01.817' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [update_date], [update_by], [create_date], [create_by]) VALUES (N'519b76ee-ffad-4bb4-8a3a-578984846387', N'CDAAF007-AD92-42D3-B13F-638A9CD92A53', N'F998CCFA-8BAA-45E1-946A-F0CAA5A8BE68', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 2, NULL, N'', NULL, NULL, CAST(N'2023-08-07T11:43:32.257' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [update_date], [update_by], [create_date], [create_by]) VALUES (N'28c5dbcd-9e1e-4922-9cb7-57e5142d4bdd', N'BB6FE477-2C5D-4B41-A812-BF0C8D959973', N'DFD08058-7A9C-4BF1-B1AB-A8CE4E10551B', N'455E443F-504A-414B-95BE-6A8B89581E53', 2, NULL, N'', NULL, NULL, CAST(N'2023-08-07T10:36:47.373' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [update_date], [update_by], [create_date], [create_by]) VALUES (N'2dbe42c1-844f-424e-92ea-5e0862a55f22', N'5C69600B-46BD-4C1E-A56B-714D3E816B28', N'8EA0614C-D05A-4C2F-9BE9-F770BE4A95A6', N'178EAE1E-87ED-4385-933B-C8AA6F074354', 1, NULL, N'', NULL, NULL, CAST(N'2023-08-07T10:38:21.787' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [update_date], [update_by], [create_date], [create_by]) VALUES (N'a839a26b-fafd-474d-b81c-6c2cac8be12f', N'5C69600B-46BD-4C1E-A56B-714D3E816B28', N'8EA0614C-D05A-4C2F-9BE9-F770BE4A95A6', N'178EAE1E-87ED-4385-933B-C8AA6F074354', 3, NULL, N'', NULL, NULL, CAST(N'2023-08-07T10:38:21.787' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [update_date], [update_by], [create_date], [create_by]) VALUES (N'2e5923ce-d4c8-4802-98f8-793d46aa1c03', N'5A22C70F-6096-4A4F-BCF5-F3129EDDE154', N'6DD7464F-8D7D-4C9F-9E3D-B9234A1CA1F0', N'D5F4B515-D7BD-4430-9C4C-3A4B032C58F2', 2, NULL, N'', NULL, NULL, CAST(N'2023-08-07T10:42:12.710' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [update_date], [update_by], [create_date], [create_by]) VALUES (N'e8a3a0d1-4b42-4adb-b0f0-7e665d0b98b1', N'08391BB5-EAC9-4107-ADD5-9242CC6B046F', N'F998CCFA-8BAA-45E1-946A-F0CAA5A8BE68', N'823B8199-2119-4A68-B960-D064F438A0A5', 2, N'0F219DC2-01D1-4BE9-A2E7-3AE19E20B6EB', N'Surat Pesanan	', NULL, NULL, CAST(N'2023-08-07T10:40:57.993' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [update_date], [update_by], [create_date], [create_by]) VALUES (N'062d7d3c-bb20-44e1-bf26-895b29be8fd5', N'5A22C70F-6096-4A4F-BCF5-F3129EDDE154', N'6DD7464F-8D7D-4C9F-9E3D-B9234A1CA1F0', N'D5F4B515-D7BD-4430-9C4C-3A4B032C58F2', 5, NULL, N'', NULL, NULL, CAST(N'2023-08-07T10:42:12.710' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [update_date], [update_by], [create_date], [create_by]) VALUES (N'd5934f3c-6434-49da-bcb9-931217760b8e', N'4BA56B7F-9C15-4533-9C3A-FD1FAE8093BC', N'FBD122B2-F99C-4972-880C-63C17ABF4012', N'554A55BA-057B-4D90-A6DF-22C663EFFC10', 2, NULL, N'', NULL, NULL, CAST(N'2023-08-07T10:41:12.133' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [update_date], [update_by], [create_date], [create_by]) VALUES (N'3bce5638-849b-42ad-9b2a-951a953c46e7', N'08391BB5-EAC9-4107-ADD5-9242CC6B046F', N'F998CCFA-8BAA-45E1-946A-F0CAA5A8BE68', N'823B8199-2119-4A68-B960-D064F438A0A5', 3, N'0E1409DE-40EB-4093-B0C1-A2C608B9AB41', N'Kwitansi', NULL, NULL, CAST(N'2023-08-07T10:40:57.997' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [update_date], [update_by], [create_date], [create_by]) VALUES (N'7c412263-8c2e-4b98-9d2f-960d0abcd385', N'46B2F6D4-E49A-42AF-888E-5314344A1DDA', N'79B36FF7-F258-4F1B-8475-6BEFFC71F138', N'D5F4B515-D7BD-4430-9C4C-3A4B032C58F2', 1, N'EDF8C437-2690-4412-B575-47F9544C868B', N'Nota Dinas	', NULL, NULL, CAST(N'2023-08-07T10:38:01.807' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [update_date], [update_by], [create_date], [create_by]) VALUES (N'927d8c28-933a-4ded-88d1-9a9c438c95d4', N'2E0D326F-7DB1-429D-9D78-17182A916D74', N'A0A023BE-36E5-4AD5-9E6C-1AAD71943E41', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 2, N'32DA2678-0944-4E56-BA94-F4B76B5B218C', N'Surat Pesanan	', NULL, NULL, CAST(N'2023-08-07T10:35:57.250' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [update_date], [update_by], [create_date], [create_by]) VALUES (N'b5d6d12a-13bd-4521-a617-9f887b0f61b7', N'2E0D326F-7DB1-429D-9D78-17182A916D74', N'A0A023BE-36E5-4AD5-9E6C-1AAD71943E41', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 5, N'40519AE8-41A7-4FFD-9EA5-0A4CFDC3B205', N'Berita acara Serah Terima Hasil Pekerjaan	', NULL, NULL, CAST(N'2023-08-07T10:35:57.263' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [update_date], [update_by], [create_date], [create_by]) VALUES (N'3df37d9e-4cb7-451e-ad00-aa8404b2612b', N'08391BB5-EAC9-4107-ADD5-9242CC6B046F', N'F998CCFA-8BAA-45E1-946A-F0CAA5A8BE68', N'823B8199-2119-4A68-B960-D064F438A0A5', 5, N'241626EC-8659-44C2-AD32-DAAA9F5EE5B4', N'Berita acara Serah Terima Hasil Pekerjaan	', NULL, NULL, CAST(N'2023-08-07T10:40:58.010' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [update_date], [update_by], [create_date], [create_by]) VALUES (N'20f71e8a-23c4-4181-b5b6-ac129aabf06d', N'46B2F6D4-E49A-42AF-888E-5314344A1DDA', N'79B36FF7-F258-4F1B-8475-6BEFFC71F138', N'D5F4B515-D7BD-4430-9C4C-3A4B032C58F2', 3, N'E8D8EE4C-1F66-4EF4-B45F-B7690B6CD895', N'Kwitansi', NULL, NULL, CAST(N'2023-08-07T10:38:01.813' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [update_date], [update_by], [create_date], [create_by]) VALUES (N'2c3e5f8d-5083-475e-a8a7-ae50915da5a2', N'BB6FE477-2C5D-4B41-A812-BF0C8D959973', N'DFD08058-7A9C-4BF1-B1AB-A8CE4E10551B', N'455E443F-504A-414B-95BE-6A8B89581E53', 5, NULL, N'', NULL, NULL, CAST(N'2023-08-07T10:36:47.373' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [update_date], [update_by], [create_date], [create_by]) VALUES (N'125c21ad-4222-426c-a5a5-af1c25357a9d', N'CDAAF007-AD92-42D3-B13F-638A9CD92A53', N'F998CCFA-8BAA-45E1-946A-F0CAA5A8BE68', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 1, NULL, N'', NULL, NULL, CAST(N'2023-08-07T11:43:32.257' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [update_date], [update_by], [create_date], [create_by]) VALUES (N'3e442824-4451-478e-ba03-b65da3f51954', N'5A22C70F-6096-4A4F-BCF5-F3129EDDE154', N'6DD7464F-8D7D-4C9F-9E3D-B9234A1CA1F0', N'D5F4B515-D7BD-4430-9C4C-3A4B032C58F2', 3, NULL, N'', NULL, NULL, CAST(N'2023-08-07T10:42:12.710' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [update_date], [update_by], [create_date], [create_by]) VALUES (N'd4fee0a4-0efa-4609-be85-bc83131775f9', N'4BA56B7F-9C15-4533-9C3A-FD1FAE8093BC', N'FBD122B2-F99C-4972-880C-63C17ABF4012', N'554A55BA-057B-4D90-A6DF-22C663EFFC10', 8, NULL, N'', NULL, NULL, CAST(N'2023-08-07T10:41:12.133' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [update_date], [update_by], [create_date], [create_by]) VALUES (N'acbc005b-2600-4e36-bfe6-be4952c4641e', N'BB6FE477-2C5D-4B41-A812-BF0C8D959973', N'DFD08058-7A9C-4BF1-B1AB-A8CE4E10551B', N'455E443F-504A-414B-95BE-6A8B89581E53', 4, NULL, N'', NULL, NULL, CAST(N'2023-08-07T10:36:47.373' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [update_date], [update_by], [create_date], [create_by]) VALUES (N'f4b53260-f7a4-4f9a-bb44-cf7582f4f9f9', N'4BA56B7F-9C15-4533-9C3A-FD1FAE8093BC', N'FBD122B2-F99C-4972-880C-63C17ABF4012', N'554A55BA-057B-4D90-A6DF-22C663EFFC10', 5, NULL, N'', NULL, NULL, CAST(N'2023-08-07T10:41:12.133' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [update_date], [update_by], [create_date], [create_by]) VALUES (N'57230139-4841-4c72-9d4d-dc9fdc880893', N'4BA56B7F-9C15-4533-9C3A-FD1FAE8093BC', N'FBD122B2-F99C-4972-880C-63C17ABF4012', N'554A55BA-057B-4D90-A6DF-22C663EFFC10', 7, NULL, N'', NULL, NULL, CAST(N'2023-08-07T10:41:12.133' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [update_date], [update_by], [create_date], [create_by]) VALUES (N'2e7b5bdb-4c5a-45e2-b031-e4c528126023', N'08391BB5-EAC9-4107-ADD5-9242CC6B046F', N'F998CCFA-8BAA-45E1-946A-F0CAA5A8BE68', N'823B8199-2119-4A68-B960-D064F438A0A5', 4, N'3B4F7D1F-61C8-4ADC-A9A9-820804CBB91D', N'Faktur', NULL, NULL, CAST(N'2023-08-07T10:40:58.003' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [update_date], [update_by], [create_date], [create_by]) VALUES (N'89b881ba-7b1f-454c-a4ec-eb0e313b2935', N'4BA56B7F-9C15-4533-9C3A-FD1FAE8093BC', N'FBD122B2-F99C-4972-880C-63C17ABF4012', N'554A55BA-057B-4D90-A6DF-22C663EFFC10', 6, NULL, N'', NULL, NULL, CAST(N'2023-08-07T10:41:12.133' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [update_date], [update_by], [create_date], [create_by]) VALUES (N'd12a6134-7741-41b3-aa03-f933f8e79563', N'5A22C70F-6096-4A4F-BCF5-F3129EDDE154', N'6DD7464F-8D7D-4C9F-9E3D-B9234A1CA1F0', N'D5F4B515-D7BD-4430-9C4C-3A4B032C58F2', 4, NULL, N'', NULL, NULL, CAST(N'2023-08-07T10:42:12.710' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [update_date], [update_by], [create_date], [create_by]) VALUES (N'a580a1d0-44b8-45e9-9da2-fa2b04b5c093', N'CDAAF007-AD92-42D3-B13F-638A9CD92A53', N'F998CCFA-8BAA-45E1-946A-F0CAA5A8BE68', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 5, NULL, N'', NULL, NULL, CAST(N'2023-08-07T11:43:32.257' AS DateTime), N'upt.cigudeg')
GO
ALTER TABLE [dbo].[m_bidang] ADD  CONSTRAINT [DF_m_bidang_bidang_id]  DEFAULT (newid()) FOR [bidang_id]
GO
ALTER TABLE [dbo].[m_branch] ADD  CONSTRAINT [DF_m_branch_branch_id]  DEFAULT (newid()) FOR [branch_id]
GO
ALTER TABLE [dbo].[m_role] ADD  CONSTRAINT [DF_m_role_role_id]  DEFAULT (newid()) FOR [role_id]
GO
ALTER TABLE [dbo].[m_user] ADD  CONSTRAINT [DF_m_user_user_id]  DEFAULT (newid()) FOR [user_id]
GO
ALTER TABLE [dbo].[t_doc] ADD  CONSTRAINT [DF_t_doc_doc_id]  DEFAULT (newid()) FOR [doc_id]
GO
ALTER TABLE [dbo].[t_doc] ADD  CONSTRAINT [DF_t_doc_create_date]  DEFAULT (getdate()) FOR [create_date]
GO
ALTER TABLE [dbo].[t_verification] ADD  DEFAULT (getdate()) FOR [create_date]
GO
ALTER TABLE [dbo].[t_verification_shop] ADD  DEFAULT (getdate()) FOR [create_date]
GO
ALTER TABLE [dbo].[t_verification_shop_det] ADD  DEFAULT (getdate()) FOR [create_date]
GO
