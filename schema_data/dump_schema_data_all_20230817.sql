USE [db_siveronika]
GO
/****** Object:  Table [dbo].[m_bidang]    Script Date: 17/08/2023 22:13:10 ******/
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
/****** Object:  Table [dbo].[m_branch]    Script Date: 17/08/2023 22:13:10 ******/
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
/****** Object:  Table [dbo].[m_role]    Script Date: 17/08/2023 22:13:10 ******/
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
/****** Object:  Table [dbo].[m_shop]    Script Date: 17/08/2023 22:13:10 ******/
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
/****** Object:  Table [dbo].[m_shop_det]    Script Date: 17/08/2023 22:13:10 ******/
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
/****** Object:  Table [dbo].[m_user]    Script Date: 17/08/2023 22:13:10 ******/
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
/****** Object:  Table [dbo].[m_user_bidang]    Script Date: 17/08/2023 22:13:10 ******/
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
/****** Object:  Table [dbo].[t_doc]    Script Date: 17/08/2023 22:13:10 ******/
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
/****** Object:  Table [dbo].[t_verification]    Script Date: 17/08/2023 22:13:10 ******/
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
	[status_verifikasi] [varchar](30) NULL,
	[status_bendahara] [varchar](30) NULL,
 CONSTRAINT [PK_t_verification] PRIMARY KEY CLUSTERED 
(
	[verif_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_verification_shop]    Script Date: 17/08/2023 22:13:10 ******/
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
	[approval_status] [bit] NULL,
	[approval_date] [datetime] NULL,
	[approval_userid] [varchar](100) NULL,
 CONSTRAINT [PK_t_verification_shop] PRIMARY KEY CLUSTERED 
(
	[verif_shop_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_verification_shop_det]    Script Date: 17/08/2023 22:13:10 ******/
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
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'a8ce7016-c5ce-4b8a-836e-008f95378509', N'Test36', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-16T13:38:12.520' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'044330dc-6eaf-4db0-a05a-0098127418e2', N'Test7', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-10T14:16:44.583' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'f2815a40-7d4d-417f-90ed-1e0b41d0aa23', N'Test24', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-12T19:19:05.480' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'cbf1e4c8-3885-48cb-8e76-260d3c8402b1', N'Test12', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-10T14:19:31.903' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'30bd619a-021b-4ea1-b31d-26fcf87d8373', N'Test3', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-10T14:09:15.970' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'5c2ded97-eef5-4c03-8f27-27a70f81a3b3', N'Test32', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-12T19:20:39.263' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'4203b3d8-2484-4bad-90b9-2f2f520704f4', N'Test27', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-12T19:19:53.690' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'c12a78e2-8f67-4006-83cf-30ef1e80d950', N'Test4', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-10T14:09:15.973' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'3d653ea4-a245-44b0-add2-360f8d723917', N'Test6', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-10T14:16:44.580' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'b7bd38ec-e568-4ea7-9cfb-3edb08e46040', N'Test1', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-10T14:09:15.960' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'ca2e278b-15c0-4b45-9630-4310fc504afb', N'Test2', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-10T14:09:15.967' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'ed311b1a-a6d6-4ad3-b470-436f3bd6b64c', N'Test20', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-12T19:19:05.373' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'e7dfa9fe-1e09-46d6-8034-54af7a04e66f', N'Test13', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-10T14:19:31.907' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'b93020e9-2a50-405e-bdbd-559ee07471d1', N'Test11', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-10T14:19:31.900' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'24cf4837-7870-4d60-b843-5c90578c6b83', N'Test8', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-10T14:16:44.587' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'16f6127e-b28f-4ada-9f4c-63ce0882c57e', N'Test10', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-10T14:19:31.893' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'dbd6fd8f-5b83-4bf5-a564-6677c914ae01', N'Test33', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-12T19:20:39.290' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'3ab8a83d-b9e3-4053-9907-680e306b0889', N'Test18', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-10T19:32:50.040' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'96d84777-adab-43f1-acfc-78421da11ecd', N'Test34', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-12T19:20:39.317' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'39089f67-7f7a-43e5-acac-7d564d4ca648', N'tes_4', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-17T13:21:08.320' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'06e3b9ff-66ed-4434-af87-7dabb36161ae', N'Test28', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-12T19:19:53.717' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'91a57904-f1e7-4ccb-b435-811b5c9ec579', N'Test23', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-12T19:19:05.453' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'14a89936-3768-461e-a879-84bf8944d958', N'Test', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-10T14:09:15.957' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'61ae88e9-a52c-452a-ab81-8bbcc05fede3', N'Test29', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-12T19:19:53.740' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'89393e66-b32b-4ec5-9406-8c8996c8124e', N'Test21', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-12T19:19:05.407' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'8577209f-ebda-4707-a062-93a2d93af3b5', N'Test31', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-12T19:20:39.240' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'a47aedc3-e9dd-4b58-bde6-9493aaa301bd', N'Test25', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-12T19:19:53.643' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'd256372e-6632-4764-852d-9a0801d7d293', N'Test14', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-10T14:19:31.910' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'1e422290-f048-4d64-9b77-9bf0ed04b8ba', N'Test30', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-12T19:20:39.217' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'c3d3accf-15a3-41b1-a391-9d939aa1a14a', N'Test19', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-10T19:32:50.070' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'3c7f5023-bb87-411c-8ae6-a137c0d4ac69', N'Test9', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-10T14:16:44.590' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'6585a254-b988-42ad-bf11-ab63423f26e2', N'Test22', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-12T19:19:05.430' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'734461ce-bb63-4ae3-9d42-af47ddffeae4', N'Test15', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-10T19:32:49.950' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'8e92e517-0060-4205-9c45-bd44e12a1ebe', N'Test35', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-16T13:38:12.470' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'b947e210-cfba-47f1-9289-c5f867de87a5', N'Test16', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-10T19:32:49.987' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'51c783e7-c15a-435d-be23-cf85d70d5028', N'Test5', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-10T14:16:44.573' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'18282b8f-3b2d-4cd7-86ab-e7faaa32585d', N'Test17', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-10T19:32:50.013' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'e7eb0472-a49e-4f07-a0b8-eec9b1755a29', N'Test26', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-12T19:19:53.670' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'6f1fe1fc-580a-4c5b-9c63-f2c1f34ae36f', N'tes_3', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-17T13:21:08.280' AS DateTime), N'upt.cigudeg')
GO
INSERT [dbo].[t_verification] ([verif_id], [verif_no], [bidang_id], [verif_version], [user_id], [user_name], [branch_id], [verif_status], [verif_deletion], [verif_request_date], [approval_userid1], [approval_userid2], [approval_note1], [approval_note2], [approval_date1], [approval_date2], [update_date], [update_by], [create_date], [create_by], [status_verifikasi], [status_bendahara]) VALUES (N'7f6a9180-2275-41cf-8315-02b61b9158ab', N'VR2308-008', N'009DA35C-762C-4376-89AC-1346AE8E28B9', NULL, N'6C47838A-4D37-4762-96EF-B1BADBA05B2E', N'upt.cigudeg', N'BR002', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-16T13:38:12.443' AS DateTime), N'upt.cigudeg', N'DRAFT', NULL)
INSERT [dbo].[t_verification] ([verif_id], [verif_no], [bidang_id], [verif_version], [user_id], [user_name], [branch_id], [verif_status], [verif_deletion], [verif_request_date], [approval_userid1], [approval_userid2], [approval_note1], [approval_note2], [approval_date1], [approval_date2], [update_date], [update_by], [create_date], [create_by], [status_verifikasi], [status_bendahara]) VALUES (N'6175d4db-d9dd-4fad-a9d6-0d4a8e67e9c0', N'VR2308-001', N'009DA35C-762C-4376-89AC-1346AE8E28B9', NULL, N'6C47838A-4D37-4762-96EF-B1BADBA05B2E', N'upt.cigudeg', N'BR002', NULL, NULL, CAST(N'2023-08-10T14:19:51.327' AS DateTime), N'C92859FE-732F-41F0-B176-E9B80714BA24', N'80E1B7D0-0C45-4CE2-9A81-FEE7428B8EDF', N'Benar;Benar;Benar;Benar;Benar;Benar;;;;;Tidak Sesuai;Tidak Sesuai;Tidak Sesuai;Tidak Sesuai;Tidak Sesuai', N'dokumen sudah benar.', CAST(N'2023-08-12T00:31:16.740' AS DateTime), CAST(N'2023-08-13T18:03:47.883' AS DateTime), CAST(N'2023-08-13T18:03:47.883' AS DateTime), N'account.02', CAST(N'2023-08-10T14:09:15.947' AS DateTime), N'upt.cigudeg', N'UNCOMPLETE', N'ON-PROGRESS')
INSERT [dbo].[t_verification] ([verif_id], [verif_no], [bidang_id], [verif_version], [user_id], [user_name], [branch_id], [verif_status], [verif_deletion], [verif_request_date], [approval_userid1], [approval_userid2], [approval_note1], [approval_note2], [approval_date1], [approval_date2], [update_date], [update_by], [create_date], [create_by], [status_verifikasi], [status_bendahara]) VALUES (N'a559c30b-56c8-45a3-81f5-34d7fca59475', N'VR2308-002', N'009DA35C-762C-4376-89AC-1346AE8E28B9', NULL, N'6C47838A-4D37-4762-96EF-B1BADBA05B2E', N'upt.cigudeg', N'BR002', NULL, NULL, CAST(N'2023-08-10T19:39:06.140' AS DateTime), N'C92859FE-732F-41F0-B176-E9B80714BA24', N'80E1B7D0-0C45-4CE2-9A81-FEE7428B8EDF', N'12345678901234567890;12345678901234567890;12345678901234567890;12345678901234567890;12345678901234567890', N'Anggaran sudah tidak mencukupi', CAST(N'2023-08-12T18:47:51.660' AS DateTime), CAST(N'2023-08-13T18:18:51.887' AS DateTime), CAST(N'2023-08-13T18:18:51.887' AS DateTime), N'account.02', CAST(N'2023-08-10T19:32:49.853' AS DateTime), N'upt.cigudeg', N'COMPLETED', N'VERIFIED')
INSERT [dbo].[t_verification] ([verif_id], [verif_no], [bidang_id], [verif_version], [user_id], [user_name], [branch_id], [verif_status], [verif_deletion], [verif_request_date], [approval_userid1], [approval_userid2], [approval_note1], [approval_note2], [approval_date1], [approval_date2], [update_date], [update_by], [create_date], [create_by], [status_verifikasi], [status_bendahara]) VALUES (N'bb5efb5e-bc33-488a-81bb-4f081bf361cb', N'VR2308-003', N'009DA35C-762C-4376-89AC-1346AE8E28B9', NULL, N'6C47838A-4D37-4762-96EF-B1BADBA05B2E', N'upt.cigudeg', N'BR002', NULL, NULL, CAST(N'2023-08-12T13:43:08.010' AS DateTime), N'C92859FE-732F-41F0-B176-E9B80714BA24', NULL, N'qwertyuiopasdfghjklz;qwertyuiopasdfghjklz;qwertyuiopasdfghjklz;qwertyuiopasdfghjklz;qwertyuiopasdfghjklz', NULL, CAST(N'2023-08-13T06:15:34.490' AS DateTime), NULL, CAST(N'2023-08-13T06:15:34.490' AS DateTime), N'account.01', CAST(N'2023-08-10T20:00:58.510' AS DateTime), N'upt.cigudeg', N'UNCOMPLETE', NULL)
INSERT [dbo].[t_verification] ([verif_id], [verif_no], [bidang_id], [verif_version], [user_id], [user_name], [branch_id], [verif_status], [verif_deletion], [verif_request_date], [approval_userid1], [approval_userid2], [approval_note1], [approval_note2], [approval_date1], [approval_date2], [update_date], [update_by], [create_date], [create_by], [status_verifikasi], [status_bendahara]) VALUES (N'4be434eb-7f86-4a8b-90ae-5c09bdf45442', N'VR2308-005', N'009DA35C-762C-4376-89AC-1346AE8E28B9', NULL, N'6C47838A-4D37-4762-96EF-B1BADBA05B2E', N'upt.cigudeg', N'BR002', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-12T13:36:24.707' AS DateTime), N'upt.cigudeg', N'DRAFT', NULL)
INSERT [dbo].[t_verification] ([verif_id], [verif_no], [bidang_id], [verif_version], [user_id], [user_name], [branch_id], [verif_status], [verif_deletion], [verif_request_date], [approval_userid1], [approval_userid2], [approval_note1], [approval_note2], [approval_date1], [approval_date2], [update_date], [update_by], [create_date], [create_by], [status_verifikasi], [status_bendahara]) VALUES (N'd0715663-d30f-47f4-b1cc-7309b21a2bcf', N'VR2308-006', N'009DA35C-762C-4376-89AC-1346AE8E28B9', NULL, N'6C47838A-4D37-4762-96EF-B1BADBA05B2E', N'upt.cigudeg', N'BR002', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-12T13:38:05.993' AS DateTime), N'upt.cigudeg', N'DRAFT', NULL)
INSERT [dbo].[t_verification] ([verif_id], [verif_no], [bidang_id], [verif_version], [user_id], [user_name], [branch_id], [verif_status], [verif_deletion], [verif_request_date], [approval_userid1], [approval_userid2], [approval_note1], [approval_note2], [approval_date1], [approval_date2], [update_date], [update_by], [create_date], [create_by], [status_verifikasi], [status_bendahara]) VALUES (N'ad7de8fd-5e46-4734-8c34-bd383ad498df', N'VR2308-004', N'009DA35C-762C-4376-89AC-1346AE8E28B9', NULL, N'6C47838A-4D37-4762-96EF-B1BADBA05B2E', N'upt.cigudeg', N'BR002', NULL, NULL, CAST(N'2023-08-14T07:54:48.553' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-12T13:35:01.737' AS DateTime), N'upt.cigudeg', N'SUBMITTED', NULL)
INSERT [dbo].[t_verification] ([verif_id], [verif_no], [bidang_id], [verif_version], [user_id], [user_name], [branch_id], [verif_status], [verif_deletion], [verif_request_date], [approval_userid1], [approval_userid2], [approval_note1], [approval_note2], [approval_date1], [approval_date2], [update_date], [update_by], [create_date], [create_by], [status_verifikasi], [status_bendahara]) VALUES (N'5730d9a0-6728-4edb-9af6-f8bfcc608607', N'VR2308-007', N'009DA35C-762C-4376-89AC-1346AE8E28B9', NULL, N'6C47838A-4D37-4762-96EF-B1BADBA05B2E', N'upt.cigudeg', N'BR002', NULL, NULL, CAST(N'2023-08-12T19:21:00.090' AS DateTime), N'C92859FE-732F-41F0-B176-E9B80714BA24', NULL, N';;;;;12345678901234567890;12345678901234567890;12345678901234567890;12345678901234567890;12345678901234567890;;;;;', NULL, CAST(N'2023-08-12T19:23:50.810' AS DateTime), NULL, CAST(N'2023-08-12T19:23:50.810' AS DateTime), N'account.01', CAST(N'2023-08-12T19:19:05.287' AS DateTime), N'upt.cigudeg', N'ON-PROGRESS', NULL)
GO
INSERT [dbo].[t_verification_shop] ([verif_shop_id], [verif_id], [shop_id], [period], [total], [update_date], [update_by], [create_date], [create_by], [approval_status], [approval_date], [approval_userid]) VALUES (N'bff82384-52ce-4355-8443-10dcd3f51db6', N'AD7DE8FD-5E46-4734-8C34-BD383AD498DF', N'7CC71B62-9874-466D-B754-5F45B19C4F8E', N'202308', CAST(15000000.00 AS Decimal(12, 2)), NULL, NULL, CAST(N'2023-08-12T13:35:01.757' AS DateTime), N'upt.cigudeg', NULL, NULL, NULL)
INSERT [dbo].[t_verification_shop] ([verif_shop_id], [verif_id], [shop_id], [period], [total], [update_date], [update_by], [create_date], [create_by], [approval_status], [approval_date], [approval_userid]) VALUES (N'9d9586d6-3af5-40f5-96ce-1e0571db273c', N'4BE434EB-7F86-4A8B-90AE-5C09BDF45442', N'178EAE1E-87ED-4385-933B-C8AA6F074354', N'202308', CAST(20000000.00 AS Decimal(12, 2)), NULL, NULL, CAST(N'2023-08-12T13:36:24.730' AS DateTime), N'upt.cigudeg', NULL, NULL, NULL)
INSERT [dbo].[t_verification_shop] ([verif_shop_id], [verif_id], [shop_id], [period], [total], [update_date], [update_by], [create_date], [create_by], [approval_status], [approval_date], [approval_userid]) VALUES (N'1bdd4b3b-9e5c-4ddc-831c-38db70746ac3', N'6175D4DB-D9DD-4FAD-A9D6-0D4A8E67E9C0', N'823B8199-2119-4A68-B960-D064F438A0A5', N'202307', CAST(10000000.00 AS Decimal(12, 2)), CAST(N'2023-08-13T18:03:47.853' AS DateTime), N'account.02', CAST(N'2023-08-10T14:09:15.950' AS DateTime), N'upt.cigudeg', 1, CAST(N'2023-08-13T18:03:47.853' AS DateTime), N'80E1B7D0-0C45-4CE2-9A81-FEE7428B8EDF')
INSERT [dbo].[t_verification_shop] ([verif_shop_id], [verif_id], [shop_id], [period], [total], [update_date], [update_by], [create_date], [create_by], [approval_status], [approval_date], [approval_userid]) VALUES (N'1f4a042d-e3e0-4025-8a6e-43e64bca0122', N'D0715663-D30F-47F4-B1CC-7309B21A2BCF', N'554A55BA-057B-4D90-A6DF-22C663EFFC10', N'202308', CAST(20000000.00 AS Decimal(12, 2)), NULL, NULL, CAST(N'2023-08-12T13:38:06.010' AS DateTime), N'upt.cigudeg', NULL, NULL, NULL)
INSERT [dbo].[t_verification_shop] ([verif_shop_id], [verif_id], [shop_id], [period], [total], [update_date], [update_by], [create_date], [create_by], [approval_status], [approval_date], [approval_userid]) VALUES (N'c1df0361-0a45-4af8-b650-51669d584f37', N'6175D4DB-D9DD-4FAD-A9D6-0D4A8E67E9C0', N'D5F4B515-D7BD-4430-9C4C-3A4B032C58F2', N'202308', CAST(20000000.00 AS Decimal(12, 2)), NULL, NULL, CAST(N'2023-08-10T14:19:31.887' AS DateTime), N'upt.cigudeg', NULL, NULL, NULL)
INSERT [dbo].[t_verification_shop] ([verif_shop_id], [verif_id], [shop_id], [period], [total], [update_date], [update_by], [create_date], [create_by], [approval_status], [approval_date], [approval_userid]) VALUES (N'5729e656-e492-4f6b-a228-5ba5576d16d5', N'5730D9A0-6728-4EDB-9AF6-F8BFCC608607', N'178EAE1E-87ED-4385-933B-C8AA6F074354', N'202306', CAST(20000000.00 AS Decimal(12, 2)), NULL, NULL, CAST(N'2023-08-12T19:19:53.613' AS DateTime), N'upt.cigudeg', NULL, NULL, NULL)
INSERT [dbo].[t_verification_shop] ([verif_shop_id], [verif_id], [shop_id], [period], [total], [update_date], [update_by], [create_date], [create_by], [approval_status], [approval_date], [approval_userid]) VALUES (N'd04911d8-115b-42dc-8067-601f89c7f122', N'6175D4DB-D9DD-4FAD-A9D6-0D4A8E67E9C0', N'823B8199-2119-4A68-B960-D064F438A0A5', N'202308', CAST(10000000.00 AS Decimal(12, 2)), NULL, NULL, CAST(N'2023-08-10T14:16:44.567' AS DateTime), N'upt.cigudeg', NULL, NULL, NULL)
INSERT [dbo].[t_verification_shop] ([verif_shop_id], [verif_id], [shop_id], [period], [total], [update_date], [update_by], [create_date], [create_by], [approval_status], [approval_date], [approval_userid]) VALUES (N'd15523bb-9ac4-442b-b106-8dcb586fd210', N'7F6A9180-2275-41CF-8315-02B61B9158AB', N'D5F4B515-D7BD-4430-9C4C-3A4B032C58F2', N'202308', CAST(75000000.00 AS Decimal(12, 2)), CAST(N'2023-08-17T13:22:40.267' AS DateTime), N'upt.cigudeg', CAST(N'2023-08-16T13:38:12.450' AS DateTime), N'upt.cigudeg', NULL, NULL, NULL)
INSERT [dbo].[t_verification_shop] ([verif_shop_id], [verif_id], [shop_id], [period], [total], [update_date], [update_by], [create_date], [create_by], [approval_status], [approval_date], [approval_userid]) VALUES (N'012e197a-9312-4331-9f2e-9f9b455de37e', N'5730D9A0-6728-4EDB-9AF6-F8BFCC608607', N'527CCAEB-3AD9-473E-83D7-A61D6117445C', N'202306', CAST(10000000.00 AS Decimal(12, 2)), NULL, NULL, CAST(N'2023-08-12T19:20:39.190' AS DateTime), N'upt.cigudeg', NULL, NULL, NULL)
INSERT [dbo].[t_verification_shop] ([verif_shop_id], [verif_id], [shop_id], [period], [total], [update_date], [update_by], [create_date], [create_by], [approval_status], [approval_date], [approval_userid]) VALUES (N'16408ca1-872d-4e05-ac1a-b5027b387a44', N'BB5EFB5E-BC33-488A-81BB-4F081BF361CB', N'455E443F-504A-414B-95BE-6A8B89581E53', N'202308', CAST(2000000.00 AS Decimal(12, 2)), NULL, NULL, CAST(N'2023-08-10T20:00:58.533' AS DateTime), N'upt.cigudeg', NULL, NULL, NULL)
INSERT [dbo].[t_verification_shop] ([verif_shop_id], [verif_id], [shop_id], [period], [total], [update_date], [update_by], [create_date], [create_by], [approval_status], [approval_date], [approval_userid]) VALUES (N'79107603-bee3-4288-9a9d-ebd346b6a5b6', N'5730D9A0-6728-4EDB-9AF6-F8BFCC608607', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', N'202308', CAST(20000000.00 AS Decimal(12, 2)), NULL, NULL, CAST(N'2023-08-12T19:19:05.307' AS DateTime), N'upt.cigudeg', NULL, NULL, NULL)
INSERT [dbo].[t_verification_shop] ([verif_shop_id], [verif_id], [shop_id], [period], [total], [update_date], [update_by], [create_date], [create_by], [approval_status], [approval_date], [approval_userid]) VALUES (N'bf206787-cd43-4eec-9815-f5a31aeb8b87', N'A559C30B-56C8-45A3-81F5-34D7FCA59475', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', N'202308', CAST(5000000.00 AS Decimal(12, 2)), CAST(N'2023-08-13T18:18:51.857' AS DateTime), N'account.02', CAST(N'2023-08-10T19:32:49.873' AS DateTime), N'upt.cigudeg', 0, CAST(N'2023-08-13T18:18:51.857' AS DateTime), N'80E1B7D0-0C45-4CE2-9A81-FEE7428B8EDF')
GO
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'41d58502-b447-49af-84bd-001cd1f4044b', N'16408CA1-872D-4E05-AC1A-B5027B387A44', N'BB5EFB5E-BC33-488A-81BB-4F081BF361CB', N'455E443F-504A-414B-95BE-6A8B89581E53', 2, NULL, N'', 0, N'qwertyuiopasdfghjklz', NULL, NULL, CAST(N'2023-08-13T06:15:04.177' AS DateTime), N'account.01', CAST(N'2023-08-10T20:00:58.557' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'704b4c70-dc0d-4940-a199-00b765d4ee6a', N'BF206787-CD43-4EEC-9815-F5A31AEB8B87', N'A559C30B-56C8-45A3-81F5-34D7FCA59475', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 4, N'3AB8A83D-B9E3-4053-9907-680E306B0889', N'212', 1, N'12345678901234567890', NULL, NULL, CAST(N'2023-08-12T18:45:47.790' AS DateTime), N'account.01', CAST(N'2023-08-10T19:32:50.050' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'7ae79405-d1c5-4b0c-9172-01c096768ab3', N'1BDD4B3B-9E5C-4DDC-831C-38DB70746AC3', N'6175D4DB-D9DD-4FAD-A9D6-0D4A8E67E9C0', N'823B8199-2119-4A68-B960-D064F438A0A5', 3, N'CA2E278B-15C0-4B45-9630-4310FC504AFB', N'3', 1, N'Benar', NULL, NULL, CAST(N'2023-08-10T18:53:04.697' AS DateTime), N'account.01', CAST(N'2023-08-10T14:09:15.967' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'dd49bca5-7ea0-48e6-8491-08337ba8a600', N'D15523BB-9AC4-442B-B106-8DCB586FD210', N'7F6A9180-2275-41CF-8315-02B61B9158AB', N'D5F4B515-D7BD-4430-9C4C-3A4B032C58F2', 5, NULL, N'Berita acara Serah Terima Hasil Pekerjaan	', NULL, NULL, NULL, NULL, CAST(N'2023-08-17T13:21:08.347' AS DateTime), N'upt.cigudeg', CAST(N'2023-08-16T13:38:12.523' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'c7e5715d-fd24-4d5f-836c-0864da3f8082', N'1F4A042D-E3E0-4025-8A6E-43E64BCA0122', N'D0715663-D30F-47F4-B1CC-7309B21A2BCF', N'554A55BA-057B-4D90-A6DF-22C663EFFC10', 2, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-12T13:38:06.033' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'2949c61d-c40e-4cf4-9250-102b263bcdd8', N'1F4A042D-E3E0-4025-8A6E-43E64BCA0122', N'D0715663-D30F-47F4-B1CC-7309B21A2BCF', N'554A55BA-057B-4D90-A6DF-22C663EFFC10', 1, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-12T13:38:06.033' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'cc5dfcd0-5583-4a09-952a-123a72124e38', N'1BDD4B3B-9E5C-4DDC-831C-38DB70746AC3', N'6175D4DB-D9DD-4FAD-A9D6-0D4A8E67E9C0', N'823B8199-2119-4A68-B960-D064F438A0A5', 4, N'30BD619A-021B-4EA1-B31D-26FCF87D8373', N'4', 1, N'Benar', NULL, NULL, CAST(N'2023-08-10T18:53:31.060' AS DateTime), N'account.01', CAST(N'2023-08-10T14:09:15.970' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'ae3f4bdf-6918-482b-b4a6-16863e239faf', N'9D9586D6-3AF5-40F5-96CE-1E0571DB273C', N'4BE434EB-7F86-4A8B-90AE-5C09BDF45442', N'178EAE1E-87ED-4385-933B-C8AA6F074354', 1, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-12T13:36:24.747' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'61837d7f-b04d-4cbb-a9cb-18877a07e657', N'BF206787-CD43-4EEC-9815-F5A31AEB8B87', N'A559C30B-56C8-45A3-81F5-34D7FCA59475', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 5, N'C3D3ACCF-15A3-41B1-A391-9D939AA1A14A', N'212', 1, N'12345678901234567890', NULL, NULL, CAST(N'2023-08-12T18:45:56.957' AS DateTime), N'account.01', CAST(N'2023-08-10T19:32:50.080' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'f4dec0a6-6408-436f-ba5d-1a6526b2ed19', N'79107603-BEE3-4288-9A9D-EBD346B6A5B6', N'5730D9A0-6728-4EDB-9AF6-F8BFCC608607', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 2, N'89393E66-B32B-4EC5-9406-8C8996C8124E', N'ok', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-12T19:19:05.417' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'e616ec76-d741-41fc-b1c4-1d4ac210bf0f', N'C1DF0361-0A45-4AF8-B650-51669D584F37', N'6175D4DB-D9DD-4FAD-A9D6-0D4A8E67E9C0', N'D5F4B515-D7BD-4430-9C4C-3A4B032C58F2', 2, N'B93020E9-2A50-405E-BDBD-559EE07471D1', N'2', 0, N'Tidak Sesuai', NULL, NULL, CAST(N'2023-08-10T18:54:35.913' AS DateTime), N'account.01', CAST(N'2023-08-10T14:19:31.900' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'584a3621-30e2-4883-989c-21401543c124', N'79107603-BEE3-4288-9A9D-EBD346B6A5B6', N'5730D9A0-6728-4EDB-9AF6-F8BFCC608607', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 5, N'F2815A40-7D4D-417F-90ED-1E0B41D0AA23', N'ok', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-12T19:19:05.490' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'd90a0102-e649-4e01-a162-29677a2633ab', N'D04911D8-115B-42DC-8067-601F89C7F122', N'6175D4DB-D9DD-4FAD-A9D6-0D4A8E67E9C0', N'823B8199-2119-4A68-B960-D064F438A0A5', 5, N'3C7F5023-BB87-411C-8AE6-A137C0D4AC69', N'55', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-10T14:16:44.593' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'588c7153-de2d-489d-878e-2d378e08539f', N'BFF82384-52CE-4355-8443-10DCD3F51DB6', N'AD7DE8FD-5E46-4734-8C34-BD383AD498DF', N'7CC71B62-9874-466D-B754-5F45B19C4F8E', 1, NULL, N'', 0, N'21311564956449979774', CAST(N'2023-08-14T08:17:47.407' AS DateTime), N'C92859FE-732F-41F0-B176-E9B80714BA24', CAST(N'2023-08-14T08:17:47.407' AS DateTime), N'account.01', CAST(N'2023-08-12T13:35:01.777' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'131d2e8f-eab3-4773-abae-3d8396a1e355', N'9D9586D6-3AF5-40F5-96CE-1E0571DB273C', N'4BE434EB-7F86-4A8B-90AE-5C09BDF45442', N'178EAE1E-87ED-4385-933B-C8AA6F074354', 2, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-12T13:36:24.747' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'c8d65782-f1d4-444d-a0ee-4021df29fac2', N'C1DF0361-0A45-4AF8-B650-51669D584F37', N'6175D4DB-D9DD-4FAD-A9D6-0D4A8E67E9C0', N'D5F4B515-D7BD-4430-9C4C-3A4B032C58F2', 5, N'D256372E-6632-4764-852D-9A0801D7D293', N'5', 0, N'Tidak Sesuai', NULL, NULL, CAST(N'2023-08-10T18:55:34.427' AS DateTime), N'account.01', CAST(N'2023-08-10T14:19:31.913' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'a53ecc44-c0a8-4def-a7a0-429013d71bc6', N'BFF82384-52CE-4355-8443-10DCD3F51DB6', N'AD7DE8FD-5E46-4734-8C34-BD383AD498DF', N'7CC71B62-9874-466D-B754-5F45B19C4F8E', 5, NULL, N'', 0, N'21311564956449979774', CAST(N'2023-08-14T08:18:06.913' AS DateTime), N'C92859FE-732F-41F0-B176-E9B80714BA24', CAST(N'2023-08-14T08:18:06.913' AS DateTime), N'account.01', CAST(N'2023-08-12T13:35:01.777' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'e6331ca4-dcff-4415-bb05-4a1a89476397', N'012E197A-9312-4331-9F2E-9F9B455DE37E', N'5730D9A0-6728-4EDB-9AF6-F8BFCC608607', N'527CCAEB-3AD9-473E-83D7-A61D6117445C', 5, N'96D84777-ADAB-43F1-ACFC-78421DA11ECD', N'ok', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-12T19:20:39.323' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'd35afd86-3eb5-4328-be7d-4ddc6c01392b', N'D04911D8-115B-42DC-8067-601F89C7F122', N'6175D4DB-D9DD-4FAD-A9D6-0D4A8E67E9C0', N'823B8199-2119-4A68-B960-D064F438A0A5', 1, N'51C783E7-C15A-435D-BE23-CF85D70D5028', N'11', 1, N'Benar', NULL, NULL, CAST(N'2023-08-10T18:54:05.777' AS DateTime), N'account.01', CAST(N'2023-08-10T14:16:44.577' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'85e1eca9-a439-4913-bc24-5c2f1a3d00f2', N'16408CA1-872D-4E05-AC1A-B5027B387A44', N'BB5EFB5E-BC33-488A-81BB-4F081BF361CB', N'455E443F-504A-414B-95BE-6A8B89581E53', 5, NULL, N'', 0, N'qwertyuiopasdfghjklz', NULL, NULL, CAST(N'2023-08-13T06:15:26.870' AS DateTime), N'account.01', CAST(N'2023-08-10T20:00:58.557' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'a09b7d9e-40b2-4670-93c9-5d58ceda2144', N'79107603-BEE3-4288-9A9D-EBD346B6A5B6', N'5730D9A0-6728-4EDB-9AF6-F8BFCC608607', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 1, N'ED311B1A-A6D6-4AD3-B470-436F3BD6B64C', N'ok', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-12T19:19:05.393' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'b3015027-2659-40c0-aba6-7130f8ffde84', N'D04911D8-115B-42DC-8067-601F89C7F122', N'6175D4DB-D9DD-4FAD-A9D6-0D4A8E67E9C0', N'823B8199-2119-4A68-B960-D064F438A0A5', 3, N'044330DC-6EAF-4DB0-A05A-0098127418E2', N'33', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-10T14:16:44.583' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'4ae64cfd-ee47-4c2b-b01b-7788a660344b', N'C1DF0361-0A45-4AF8-B650-51669D584F37', N'6175D4DB-D9DD-4FAD-A9D6-0D4A8E67E9C0', N'D5F4B515-D7BD-4430-9C4C-3A4B032C58F2', 3, N'CBF1E4C8-3885-48CB-8E76-260D3C8402B1', N'3', 0, N'Tidak Sesuai', NULL, NULL, CAST(N'2023-08-10T18:54:51.907' AS DateTime), N'account.01', CAST(N'2023-08-10T14:19:31.907' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'99638d9d-1757-4c92-b4b9-7833512b64e2', N'1F4A042D-E3E0-4025-8A6E-43E64BCA0122', N'D0715663-D30F-47F4-B1CC-7309B21A2BCF', N'554A55BA-057B-4D90-A6DF-22C663EFFC10', 6, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-12T13:38:06.033' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'99425fb8-beda-4484-ae35-78ea7d6fed32', N'5729E656-E492-4F6B-A228-5BA5576D16D5', N'5730D9A0-6728-4EDB-9AF6-F8BFCC608607', N'178EAE1E-87ED-4385-933B-C8AA6F074354', 3, N'4203B3D8-2484-4BAD-90B9-2F2F520704F4', N'ok', 1, N'12345678901234567890', NULL, NULL, CAST(N'2023-08-12T19:22:03.317' AS DateTime), N'account.01', CAST(N'2023-08-12T19:19:53.717' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'e9ec6fec-6e28-4e7d-bc31-79d344b27cdf', N'D15523BB-9AC4-442B-B106-8DCB586FD210', N'7F6A9180-2275-41CF-8315-02B61B9158AB', N'D5F4B515-D7BD-4430-9C4C-3A4B032C58F2', 1, N'8E92E517-0060-4205-9C45-BD44E12A1EBE', N'Nota Dinas', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-16T13:38:12.477' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'1275ee40-a403-4f38-81c7-7b7d1dbe82c0', N'9D9586D6-3AF5-40F5-96CE-1E0571DB273C', N'4BE434EB-7F86-4A8B-90AE-5C09BDF45442', N'178EAE1E-87ED-4385-933B-C8AA6F074354', 5, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-12T13:36:24.747' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'6267df07-d0bd-4b3d-a67b-7bcd4be003b8', N'79107603-BEE3-4288-9A9D-EBD346B6A5B6', N'5730D9A0-6728-4EDB-9AF6-F8BFCC608607', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 4, N'91A57904-F1E7-4CCB-B435-811B5C9EC579', N'ok', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-12T19:19:05.463' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'61596610-30c0-4d2e-a632-7c6c1987dea1', N'012E197A-9312-4331-9F2E-9F9B455DE37E', N'5730D9A0-6728-4EDB-9AF6-F8BFCC608607', N'527CCAEB-3AD9-473E-83D7-A61D6117445C', 2, N'8577209F-EBDA-4707-A062-93A2D93AF3B5', N'ok', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-12T19:20:39.247' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'd46a2e74-435e-4dd9-afb0-88eca9bbd3fd', N'5729E656-E492-4F6B-A228-5BA5576D16D5', N'5730D9A0-6728-4EDB-9AF6-F8BFCC608607', N'178EAE1E-87ED-4385-933B-C8AA6F074354', 4, N'06E3B9FF-66ED-4434-AF87-7DABB36161AE', N'ok', 1, N'12345678901234567890', NULL, NULL, CAST(N'2023-08-12T19:22:09.860' AS DateTime), N'account.01', CAST(N'2023-08-12T19:19:53.740' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'b268cc08-eb4c-4483-9a12-8932354b2fe5', N'C1DF0361-0A45-4AF8-B650-51669D584F37', N'6175D4DB-D9DD-4FAD-A9D6-0D4A8E67E9C0', N'D5F4B515-D7BD-4430-9C4C-3A4B032C58F2', 1, N'16F6127E-B28F-4ADA-9F4C-63CE0882C57E', N'1', 0, N'Tidak Sesuai', NULL, NULL, CAST(N'2023-08-10T18:54:28.053' AS DateTime), N'account.01', CAST(N'2023-08-10T14:19:31.897' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'2e10c677-d80b-4100-ad57-91b3f18b13d8', N'C1DF0361-0A45-4AF8-B650-51669D584F37', N'6175D4DB-D9DD-4FAD-A9D6-0D4A8E67E9C0', N'D5F4B515-D7BD-4430-9C4C-3A4B032C58F2', 4, N'E7DFA9FE-1E09-46D6-8034-54AF7A04E66F', N'4', 0, N'Tidak Sesuai', NULL, NULL, CAST(N'2023-08-10T18:55:21.127' AS DateTime), N'account.01', CAST(N'2023-08-10T14:19:31.910' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'eb2adfc8-dbc9-4f36-b93f-95e958dd0e5e', N'1BDD4B3B-9E5C-4DDC-831C-38DB70746AC3', N'6175D4DB-D9DD-4FAD-A9D6-0D4A8E67E9C0', N'823B8199-2119-4A68-B960-D064F438A0A5', 2, N'B7BD38EC-E568-4EA7-9CFB-3EDB08E46040', N'2', 1, N'Benar', NULL, NULL, CAST(N'2023-08-10T18:52:54.670' AS DateTime), N'account.01', CAST(N'2023-08-10T14:09:15.963' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'ee7efb21-bdb2-4ed8-af39-9b04b91a6dc2', N'16408CA1-872D-4E05-AC1A-B5027B387A44', N'BB5EFB5E-BC33-488A-81BB-4F081BF361CB', N'455E443F-504A-414B-95BE-6A8B89581E53', 1, NULL, N'', 0, N'qwertyuiopasdfghjklz', NULL, NULL, CAST(N'2023-08-13T06:14:58.103' AS DateTime), N'account.01', CAST(N'2023-08-10T20:00:58.557' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'4d1f86a7-4bb0-422e-8c1b-9befd726ee0d', N'D15523BB-9AC4-442B-B106-8DCB586FD210', N'7F6A9180-2275-41CF-8315-02B61B9158AB', N'D5F4B515-D7BD-4430-9C4C-3A4B032C58F2', 2, N'6F1FE1FC-580A-4C5B-9C63-F2C1F34AE36F', N'Surat Pesanan', NULL, NULL, NULL, NULL, CAST(N'2023-08-17T13:21:08.307' AS DateTime), N'upt.cigudeg', CAST(N'2023-08-16T13:38:12.517' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'6402875e-a17b-401f-958c-a1162c75ef45', N'1F4A042D-E3E0-4025-8A6E-43E64BCA0122', N'D0715663-D30F-47F4-B1CC-7309B21A2BCF', N'554A55BA-057B-4D90-A6DF-22C663EFFC10', 5, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-12T13:38:06.033' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'25038fc5-abe7-4ccf-ab70-a1efa93203e7', N'BFF82384-52CE-4355-8443-10DCD3F51DB6', N'AD7DE8FD-5E46-4734-8C34-BD383AD498DF', N'7CC71B62-9874-466D-B754-5F45B19C4F8E', 4, NULL, N'', 0, N'21311564956449979774', CAST(N'2023-08-14T08:18:01.993' AS DateTime), N'C92859FE-732F-41F0-B176-E9B80714BA24', CAST(N'2023-08-14T08:18:01.993' AS DateTime), N'account.01', CAST(N'2023-08-12T13:35:01.777' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'f903105f-f1b2-472b-8f7e-a35943facd61', N'012E197A-9312-4331-9F2E-9F9B455DE37E', N'5730D9A0-6728-4EDB-9AF6-F8BFCC608607', N'527CCAEB-3AD9-473E-83D7-A61D6117445C', 1, N'1E422290-F048-4D64-9B77-9BF0ED04B8BA', N'ok', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-12T19:20:39.223' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'2dea3cf5-5ba3-45f7-8620-a4becc439e3a', N'1F4A042D-E3E0-4025-8A6E-43E64BCA0122', N'D0715663-D30F-47F4-B1CC-7309B21A2BCF', N'554A55BA-057B-4D90-A6DF-22C663EFFC10', 4, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-12T13:38:06.033' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'1bc14716-58f1-4467-bc92-add493ff7e7d', N'BF206787-CD43-4EEC-9815-F5A31AEB8B87', N'A559C30B-56C8-45A3-81F5-34D7FCA59475', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 3, N'18282B8F-3B2D-4CD7-86AB-E7FAAA32585D', N'212', 1, N'12345678901234567890', NULL, NULL, CAST(N'2023-08-12T18:45:38.743' AS DateTime), N'account.01', CAST(N'2023-08-10T19:32:50.027' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'79c2a694-81e7-4cd7-87f9-b546465dd723', N'D15523BB-9AC4-442B-B106-8DCB586FD210', N'7F6A9180-2275-41CF-8315-02B61B9158AB', N'D5F4B515-D7BD-4430-9C4C-3A4B032C58F2', 3, N'A8CE7016-C5CE-4B8A-836E-008F95378509', N'Kwitansi', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-16T13:38:12.523' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'09782db1-acc2-4839-907e-b8380fd862f6', N'16408CA1-872D-4E05-AC1A-B5027B387A44', N'BB5EFB5E-BC33-488A-81BB-4F081BF361CB', N'455E443F-504A-414B-95BE-6A8B89581E53', 3, NULL, N'', 0, N'qwertyuiopasdfghjklz', NULL, NULL, CAST(N'2023-08-13T06:15:11.187' AS DateTime), N'account.01', CAST(N'2023-08-10T20:00:58.557' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'55d307b2-f09b-4df4-a801-bb8402a3a634', N'BF206787-CD43-4EEC-9815-F5A31AEB8B87', N'A559C30B-56C8-45A3-81F5-34D7FCA59475', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 1, N'734461CE-BB63-4AE3-9D42-AF47DDFFEAE4', N'212', 1, N'12345678901234567890', NULL, NULL, CAST(N'2023-08-12T18:43:38.053' AS DateTime), N'account.01', CAST(N'2023-08-10T19:32:49.967' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'4fc571c9-6ca2-4b6b-a49d-bef92cf4dfce', N'5729E656-E492-4F6B-A228-5BA5576D16D5', N'5730D9A0-6728-4EDB-9AF6-F8BFCC608607', N'178EAE1E-87ED-4385-933B-C8AA6F074354', 5, N'61AE88E9-A52C-452A-AB81-8BBCC05FEDE3', N'ok', 1, N'12345678901234567890', NULL, NULL, CAST(N'2023-08-12T19:22:23.700' AS DateTime), N'account.01', CAST(N'2023-08-12T19:19:53.767' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'4c2c4df0-a0ce-4282-8847-c3bb74eb4948', N'9D9586D6-3AF5-40F5-96CE-1E0571DB273C', N'4BE434EB-7F86-4A8B-90AE-5C09BDF45442', N'178EAE1E-87ED-4385-933B-C8AA6F074354', 3, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-12T13:36:24.747' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'8f228a1a-af8b-47dc-8a4b-c68c055d73ff', N'BF206787-CD43-4EEC-9815-F5A31AEB8B87', N'A559C30B-56C8-45A3-81F5-34D7FCA59475', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 2, N'B947E210-CFBA-47F1-9289-C5F867DE87A5', N'212', 1, N'12345678901234567890', NULL, NULL, CAST(N'2023-08-12T18:45:30.743' AS DateTime), N'account.01', CAST(N'2023-08-10T19:32:49.997' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'5e6f1d7b-1ab1-4845-ac39-c6dbf11c78e5', N'1BDD4B3B-9E5C-4DDC-831C-38DB70746AC3', N'6175D4DB-D9DD-4FAD-A9D6-0D4A8E67E9C0', N'823B8199-2119-4A68-B960-D064F438A0A5', 1, N'14A89936-3768-461E-A879-84BF8944D958', N'1', 1, N'Benar', NULL, NULL, CAST(N'2023-08-10T18:31:57.223' AS DateTime), N'account.01', CAST(N'2023-08-10T14:09:15.960' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'dfe8dc74-ed14-410a-9e5a-c8a2c59209d3', N'1BDD4B3B-9E5C-4DDC-831C-38DB70746AC3', N'6175D4DB-D9DD-4FAD-A9D6-0D4A8E67E9C0', N'823B8199-2119-4A68-B960-D064F438A0A5', 5, N'C12A78E2-8F67-4006-83CF-30EF1E80D950', N'5', 1, N'Benar', NULL, NULL, CAST(N'2023-08-10T18:53:40.090' AS DateTime), N'account.01', CAST(N'2023-08-10T14:09:15.973' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'2fb1ff01-295e-46aa-9689-cc8ebd88ec4e', N'9D9586D6-3AF5-40F5-96CE-1E0571DB273C', N'4BE434EB-7F86-4A8B-90AE-5C09BDF45442', N'178EAE1E-87ED-4385-933B-C8AA6F074354', 4, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-12T13:36:24.747' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'c3bc5541-f4c3-4882-95a2-ce4e761d977f', N'1F4A042D-E3E0-4025-8A6E-43E64BCA0122', N'D0715663-D30F-47F4-B1CC-7309B21A2BCF', N'554A55BA-057B-4D90-A6DF-22C663EFFC10', 7, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-12T13:38:06.033' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'c98d2226-a0d9-4bc8-9fbb-d5b4ae4ccc3c', N'012E197A-9312-4331-9F2E-9F9B455DE37E', N'5730D9A0-6728-4EDB-9AF6-F8BFCC608607', N'527CCAEB-3AD9-473E-83D7-A61D6117445C', 4, N'DBD6FD8F-5B83-4BF5-A564-6677C914AE01', N'ok', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-12T19:20:39.297' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'c042f6cc-b09d-4d3b-b068-d8da543c630f', N'16408CA1-872D-4E05-AC1A-B5027B387A44', N'BB5EFB5E-BC33-488A-81BB-4F081BF361CB', N'455E443F-504A-414B-95BE-6A8B89581E53', 4, NULL, N'', 0, N'qwertyuiopasdfghjklz', NULL, NULL, CAST(N'2023-08-13T06:15:18.313' AS DateTime), N'account.01', CAST(N'2023-08-10T20:00:58.557' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'e60e5753-cdef-462d-84f6-e1635f54fd5f', N'79107603-BEE3-4288-9A9D-EBD346B6A5B6', N'5730D9A0-6728-4EDB-9AF6-F8BFCC608607', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 3, N'6585A254-B988-42AD-BF11-AB63423F26E2', N'ok', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-12T19:19:05.437' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'60d8e2d1-e13f-48fe-b044-e3cdcb779e88', N'D04911D8-115B-42DC-8067-601F89C7F122', N'6175D4DB-D9DD-4FAD-A9D6-0D4A8E67E9C0', N'823B8199-2119-4A68-B960-D064F438A0A5', 2, N'3D653EA4-A245-44B0-ADD2-360F8D723917', N'22', 1, N'', CAST(N'2023-08-17T13:41:13.843' AS DateTime), N'C92859FE-732F-41F0-B176-E9B80714BA24', CAST(N'2023-08-17T13:41:13.843' AS DateTime), N'account.01', CAST(N'2023-08-10T14:16:44.580' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'965fe42a-47c3-41d6-9781-e4c277771a9f', N'D04911D8-115B-42DC-8067-601F89C7F122', N'6175D4DB-D9DD-4FAD-A9D6-0D4A8E67E9C0', N'823B8199-2119-4A68-B960-D064F438A0A5', 4, N'24CF4837-7870-4D60-B843-5C90578C6B83', N'44', NULL, N'', NULL, NULL, NULL, NULL, CAST(N'2023-08-10T14:16:44.590' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'8236e0cd-80f7-433a-a87d-e86a90a653fc', N'5729E656-E492-4F6B-A228-5BA5576D16D5', N'5730D9A0-6728-4EDB-9AF6-F8BFCC608607', N'178EAE1E-87ED-4385-933B-C8AA6F074354', 1, N'A47AEDC3-E9DD-4B58-BDE6-9493AAA301BD', N'ok', 1, N'12345678901234567890', NULL, NULL, CAST(N'2023-08-12T19:21:48.243' AS DateTime), N'account.01', CAST(N'2023-08-12T19:19:53.670' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'0058aa04-de44-4e78-a0bb-ea4e83ddce13', N'1F4A042D-E3E0-4025-8A6E-43E64BCA0122', N'D0715663-D30F-47F4-B1CC-7309B21A2BCF', N'554A55BA-057B-4D90-A6DF-22C663EFFC10', 8, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-12T13:38:06.033' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'0472c498-a660-410e-9db9-f3a0348ab961', N'BFF82384-52CE-4355-8443-10DCD3F51DB6', N'AD7DE8FD-5E46-4734-8C34-BD383AD498DF', N'7CC71B62-9874-466D-B754-5F45B19C4F8E', 2, NULL, N'', 0, N'21311564956449979774', CAST(N'2023-08-14T08:17:51.317' AS DateTime), N'C92859FE-732F-41F0-B176-E9B80714BA24', CAST(N'2023-08-14T08:17:51.317' AS DateTime), N'account.01', CAST(N'2023-08-12T13:35:01.777' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'54711f2e-d5f2-4b77-a113-f5f6ee009a9d', N'D15523BB-9AC4-442B-B106-8DCB586FD210', N'7F6A9180-2275-41CF-8315-02B61B9158AB', N'D5F4B515-D7BD-4430-9C4C-3A4B032C58F2', 4, N'39089F67-7F7A-43E5-ACAC-7D564D4CA648', N'Faktur', NULL, NULL, NULL, NULL, CAST(N'2023-08-17T13:21:08.337' AS DateTime), N'upt.cigudeg', CAST(N'2023-08-16T13:38:12.523' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'678f3ad3-4704-444a-b580-f9d5ce21d49d', N'012E197A-9312-4331-9F2E-9F9B455DE37E', N'5730D9A0-6728-4EDB-9AF6-F8BFCC608607', N'527CCAEB-3AD9-473E-83D7-A61D6117445C', 3, N'5C2DED97-EEF5-4C03-8F27-27A70F81A3B3', N'ok', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-12T19:20:39.270' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'b8e79893-a765-4971-ba17-fca67ecb7ebb', N'BFF82384-52CE-4355-8443-10DCD3F51DB6', N'AD7DE8FD-5E46-4734-8C34-BD383AD498DF', N'7CC71B62-9874-466D-B754-5F45B19C4F8E', 3, NULL, N'', 0, N'21311564956449979774', CAST(N'2023-08-14T08:17:56.727' AS DateTime), N'C92859FE-732F-41F0-B176-E9B80714BA24', CAST(N'2023-08-14T08:17:56.727' AS DateTime), N'account.01', CAST(N'2023-08-12T13:35:01.777' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'a464713b-17ad-47da-b04c-fda9de0b2593', N'1F4A042D-E3E0-4025-8A6E-43E64BCA0122', N'D0715663-D30F-47F4-B1CC-7309B21A2BCF', N'554A55BA-057B-4D90-A6DF-22C663EFFC10', 3, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-12T13:38:06.033' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'de9fa504-fe16-48de-a265-fde0fd169d66', N'5729E656-E492-4F6B-A228-5BA5576D16D5', N'5730D9A0-6728-4EDB-9AF6-F8BFCC608607', N'178EAE1E-87ED-4385-933B-C8AA6F074354', 2, N'E7EB0472-A49E-4F07-A0B8-EEC9B1755A29', N'ok', 1, N'12345678901234567890', NULL, NULL, CAST(N'2023-08-12T19:21:56.050' AS DateTime), N'account.01', CAST(N'2023-08-12T19:19:53.693' AS DateTime), N'upt.cigudeg')
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
