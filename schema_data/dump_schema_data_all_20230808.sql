USE [db_siveronika]
GO
ALTER TABLE [dbo].[t_verification_shop] DROP CONSTRAINT [DF__t_verific__creat__17F790F9]
GO
ALTER TABLE [dbo].[t_verification] DROP CONSTRAINT [DF__t_verific__creat__17036CC0]
GO
ALTER TABLE [dbo].[t_doc] DROP CONSTRAINT [DF_t_doc_create_date]
GO
ALTER TABLE [dbo].[t_doc] DROP CONSTRAINT [DF_t_doc_doc_id]
GO
ALTER TABLE [dbo].[m_user_bidang] DROP CONSTRAINT [DF__m_user_bi__ub_id__14270015]
GO
ALTER TABLE [dbo].[m_user] DROP CONSTRAINT [DF_m_user_user_id]
GO
ALTER TABLE [dbo].[m_role] DROP CONSTRAINT [DF_m_role_role_id]
GO
ALTER TABLE [dbo].[m_branch] DROP CONSTRAINT [DF_m_branch_branch_id]
GO
ALTER TABLE [dbo].[m_bidang] DROP CONSTRAINT [DF_m_bidang_bidang_id]
GO
/****** Object:  Table [dbo].[t_verification_shop_det]    Script Date: 08-Aug-23 16:29:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_verification_shop_det]') AND type in (N'U'))
DROP TABLE [dbo].[t_verification_shop_det]
GO
/****** Object:  Table [dbo].[t_verification_shop]    Script Date: 08-Aug-23 16:29:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_verification_shop]') AND type in (N'U'))
DROP TABLE [dbo].[t_verification_shop]
GO
/****** Object:  Table [dbo].[t_verification]    Script Date: 08-Aug-23 16:29:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_verification]') AND type in (N'U'))
DROP TABLE [dbo].[t_verification]
GO
/****** Object:  Table [dbo].[t_doc]    Script Date: 08-Aug-23 16:29:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_doc]') AND type in (N'U'))
DROP TABLE [dbo].[t_doc]
GO
/****** Object:  Table [dbo].[m_user_bidang]    Script Date: 08-Aug-23 16:29:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[m_user_bidang]') AND type in (N'U'))
DROP TABLE [dbo].[m_user_bidang]
GO
/****** Object:  Table [dbo].[m_user]    Script Date: 08-Aug-23 16:29:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[m_user]') AND type in (N'U'))
DROP TABLE [dbo].[m_user]
GO
/****** Object:  Table [dbo].[m_shop_det]    Script Date: 08-Aug-23 16:29:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[m_shop_det]') AND type in (N'U'))
DROP TABLE [dbo].[m_shop_det]
GO
/****** Object:  Table [dbo].[m_shop]    Script Date: 08-Aug-23 16:29:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[m_shop]') AND type in (N'U'))
DROP TABLE [dbo].[m_shop]
GO
/****** Object:  Table [dbo].[m_role]    Script Date: 08-Aug-23 16:29:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[m_role]') AND type in (N'U'))
DROP TABLE [dbo].[m_role]
GO
/****** Object:  Table [dbo].[m_branch]    Script Date: 08-Aug-23 16:29:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[m_branch]') AND type in (N'U'))
DROP TABLE [dbo].[m_branch]
GO
/****** Object:  Table [dbo].[m_bidang]    Script Date: 08-Aug-23 16:29:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[m_bidang]') AND type in (N'U'))
DROP TABLE [dbo].[m_bidang]
GO
/****** Object:  Table [dbo].[m_bidang]    Script Date: 08-Aug-23 16:29:41 ******/
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
/****** Object:  Table [dbo].[m_branch]    Script Date: 08-Aug-23 16:29:41 ******/
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
/****** Object:  Table [dbo].[m_role]    Script Date: 08-Aug-23 16:29:41 ******/
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
/****** Object:  Table [dbo].[m_shop]    Script Date: 08-Aug-23 16:29:41 ******/
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
/****** Object:  Table [dbo].[m_shop_det]    Script Date: 08-Aug-23 16:29:41 ******/
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
/****** Object:  Table [dbo].[m_user]    Script Date: 08-Aug-23 16:29:41 ******/
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
/****** Object:  Table [dbo].[m_user_bidang]    Script Date: 08-Aug-23 16:29:41 ******/
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
/****** Object:  Table [dbo].[t_doc]    Script Date: 08-Aug-23 16:29:41 ******/
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
/****** Object:  Table [dbo].[t_verification]    Script Date: 08-Aug-23 16:29:41 ******/
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
/****** Object:  Table [dbo].[t_verification_shop]    Script Date: 08-Aug-23 16:29:41 ******/
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
/****** Object:  Table [dbo].[t_verification_shop_det]    Script Date: 08-Aug-23 16:29:41 ******/
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
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'30fee07c-5a25-4fed-904f-0078421232df', N'Test2', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T07:49:46.083' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'dda3693d-dfb1-4517-951b-127451e7732f', N'Test13', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:44:41.040' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'7df4990f-ee33-4a09-96f4-212e9b9d01ee', N'Test9', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:43:50.020' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'beea9506-08a2-4dcb-8233-240624f08727', N'Test6', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:43:50.007' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'b392370a-2522-4e7e-b35e-24e126e3177c', N'Test5', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:43:50.000' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'c8504cce-acec-4253-853d-34076d6e2afa', N'Test17', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:45:35.730' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'05260b3f-b933-455a-887e-3eacb9541dd1', N'Test1', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T07:49:46.080' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'52b93217-366c-4fe9-af75-4cc2daed389e', N'Test7', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:43:50.010' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'b3c519f9-b5dc-475d-a641-4fdeb4041e0c', N'Test4', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T07:49:46.093' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'67569013-8f8a-429a-974e-68ab3591a5e2', N'Test18', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:45:35.737' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'9f145d82-17bf-4e9f-90a1-6a4c2535a1a7', N'Test3', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T07:49:46.090' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'77f20dbe-6944-4a72-8951-7113ce9c2d28', N'Test19', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:45:35.740' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'33981714-e670-4acf-9409-7d6c0e9875d5', N'Test12', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:44:41.037' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'0ce805e0-9d2b-42d9-9e5f-a252c0bbcec7', N'Test11', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:44:41.030' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'3bc65786-5ed1-453f-8073-be2599410ec1', N'Test16', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:45:35.727' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'7a617c48-0e2c-4e95-94d7-dc3a659cae48', N'Test8', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:43:50.013' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'a5c1717c-d511-4836-b4dd-dc8ff8399c53', N'Test14', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:44:41.043' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'2ba6413e-1577-453e-8ebe-e3ae731ada3b', N'Test10', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:44:41.027' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'bdc1bf16-4998-4cec-a238-f2f927244675', N'Test', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T07:49:46.077' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_doc] ([doc_id], [doc_filename], [doc_path], [doc_type], [doc_description], [doc_status], [doc_deletion], [update_date], [update_by], [create_date], [create_by]) VALUES (N'1b77ac41-5836-4854-81b1-fae0d170dda6', N'Test15', N'documents/', N'pdf', NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:45:35.723' AS DateTime), N'upt.ciomas')
GO
INSERT [dbo].[t_verification] ([verif_id], [verif_no], [bidang_id], [verif_version], [user_id], [user_name], [branch_id], [verif_status], [verif_deletion], [verif_request_date], [approval_userid1], [approval_userid2], [approval_note1], [approval_note2], [approval_date1], [approval_date2], [update_date], [update_by], [create_date], [create_by]) VALUES (N'6de4efb8-2960-4701-959c-09ecdb3e76ff', N'VR2308-003', N'692BE837-E2FE-4197-8232-4A4051CD0C5E', NULL, N'6C47838A-4D37-4762-96EF-B1BADBA05B2E', N'upt.cigudeg', N'BR002', N'SUBMITTED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:43:49.990' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification] ([verif_id], [verif_no], [bidang_id], [verif_version], [user_id], [user_name], [branch_id], [verif_status], [verif_deletion], [verif_request_date], [approval_userid1], [approval_userid2], [approval_note1], [approval_note2], [approval_date1], [approval_date2], [update_date], [update_by], [create_date], [create_by]) VALUES (N'cca45151-4086-4763-a771-3168b2acc0fb', N'VR2308-008', N'9681CC1F-0944-4975-80C7-E2473E391C66', NULL, N'9A454DF9-F13E-4C38-9924-88031637F5F9', N'upt.ciomas', N'BR003', N'DRAFT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:45:48.913' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification] ([verif_id], [verif_no], [bidang_id], [verif_version], [user_id], [user_name], [branch_id], [verif_status], [verif_deletion], [verif_request_date], [approval_userid1], [approval_userid2], [approval_note1], [approval_note2], [approval_date1], [approval_date2], [update_date], [update_by], [create_date], [create_by]) VALUES (N'c0b2073d-55f2-4b7f-b3e3-4d3b2732d72a', N'VR2308-002', N'009DA35C-762C-4376-89AC-1346AE8E28B9', NULL, N'6C47838A-4D37-4762-96EF-B1BADBA05B2E', N'upt.cigudeg', N'BR002', N'SUBMITTED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:41:58.497' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification] ([verif_id], [verif_no], [bidang_id], [verif_version], [user_id], [user_name], [branch_id], [verif_status], [verif_deletion], [verif_request_date], [approval_userid1], [approval_userid2], [approval_note1], [approval_note2], [approval_date1], [approval_date2], [update_date], [update_by], [create_date], [create_by]) VALUES (N'482e63c9-df77-40b6-8e8f-64cd1b73974d', N'VR2308-001', N'009DA35C-762C-4376-89AC-1346AE8E28B9', NULL, N'6C47838A-4D37-4762-96EF-B1BADBA05B2E', N'upt.cigudeg', N'BR002', N'SUBMITTED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T07:49:46.063' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification] ([verif_id], [verif_no], [bidang_id], [verif_version], [user_id], [user_name], [branch_id], [verif_status], [verif_deletion], [verif_request_date], [approval_userid1], [approval_userid2], [approval_note1], [approval_note2], [approval_date1], [approval_date2], [update_date], [update_by], [create_date], [create_by]) VALUES (N'62370624-8b96-472f-8c8a-78928078fd6e', N'VR2308-007', N'9681CC1F-0944-4975-80C7-E2473E391C66', NULL, N'9A454DF9-F13E-4C38-9924-88031637F5F9', N'upt.ciomas', N'BR003', N'SUBMITTED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:45:35.713' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification] ([verif_id], [verif_no], [bidang_id], [verif_version], [user_id], [user_name], [branch_id], [verif_status], [verif_deletion], [verif_request_date], [approval_userid1], [approval_userid2], [approval_note1], [approval_note2], [approval_date1], [approval_date2], [update_date], [update_by], [create_date], [create_by]) VALUES (N'0ba90e63-976c-4df2-bcc8-d054007ae363', N'VR2308-005', N'009DA35C-762C-4376-89AC-1346AE8E28B9', NULL, N'9A454DF9-F13E-4C38-9924-88031637F5F9', N'upt.ciomas', N'BR003', N'SUBMITTED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:44:41.013' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification] ([verif_id], [verif_no], [bidang_id], [verif_version], [user_id], [user_name], [branch_id], [verif_status], [verif_deletion], [verif_request_date], [approval_userid1], [approval_userid2], [approval_note1], [approval_note2], [approval_date1], [approval_date2], [update_date], [update_by], [create_date], [create_by]) VALUES (N'1819a2d2-3f8d-4b07-8358-d6fcad86c5bb', N'VR2308-006', N'009DA35C-762C-4376-89AC-1346AE8E28B9', NULL, N'9A454DF9-F13E-4C38-9924-88031637F5F9', N'upt.ciomas', N'BR003', N'DRAFT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:45:09.127' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification] ([verif_id], [verif_no], [bidang_id], [verif_version], [user_id], [user_name], [branch_id], [verif_status], [verif_deletion], [verif_request_date], [approval_userid1], [approval_userid2], [approval_note1], [approval_note2], [approval_date1], [approval_date2], [update_date], [update_by], [create_date], [create_by]) VALUES (N'44be3992-68ae-45ab-a45f-f4d35a139a7f', N'VR2308-004', N'692BE837-E2FE-4197-8232-4A4051CD0C5E', NULL, N'6C47838A-4D37-4762-96EF-B1BADBA05B2E', N'upt.cigudeg', N'BR002', N'DRAFT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:44:05.790' AS DateTime), N'upt.cigudeg')
GO
INSERT [dbo].[t_verification_shop] ([verif_shop_id], [verif_id], [shop_id], [period], [total], [update_date], [update_by], [create_date], [create_by]) VALUES (N'b306c0e9-9043-4fbf-a033-054888a592a9', N'482E63C9-DF77-40B6-8E8F-64CD1B73974D', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', N'202308', CAST(10000000.00 AS Decimal(12, 2)), NULL, NULL, CAST(N'2023-08-08T07:49:46.070' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop] ([verif_shop_id], [verif_id], [shop_id], [period], [total], [update_date], [update_by], [create_date], [create_by]) VALUES (N'9ff62dba-c55e-413a-8935-16189efb75c9', N'1819A2D2-3F8D-4B07-8358-D6FCAD86C5BB', N'823B8199-2119-4A68-B960-D064F438A0A5', N'202308', CAST(20000000.00 AS Decimal(12, 2)), NULL, NULL, CAST(N'2023-08-08T08:45:09.130' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop] ([verif_shop_id], [verif_id], [shop_id], [period], [total], [update_date], [update_by], [create_date], [create_by]) VALUES (N'985fb0da-b822-45aa-9b40-1c47acff2162', N'CCA45151-4086-4763-A771-3168B2ACC0FB', N'823B8199-2119-4A68-B960-D064F438A0A5', N'202308', CAST(8000000.00 AS Decimal(12, 2)), NULL, NULL, CAST(N'2023-08-08T08:45:48.917' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop] ([verif_shop_id], [verif_id], [shop_id], [period], [total], [update_date], [update_by], [create_date], [create_by]) VALUES (N'b21abcb1-3487-47e0-ba7f-4eaa50152363', N'62370624-8B96-472F-8C8A-78928078FD6E', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', N'202308', CAST(5000000.00 AS Decimal(12, 2)), NULL, NULL, CAST(N'2023-08-08T08:45:35.717' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop] ([verif_shop_id], [verif_id], [shop_id], [period], [total], [update_date], [update_by], [create_date], [create_by]) VALUES (N'2fdbfdc0-7ca3-445e-ae05-4fdf0a9a5f37', N'0BA90E63-976C-4DF2-BCC8-D054007AE363', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', N'202308', CAST(15000000.00 AS Decimal(12, 2)), NULL, NULL, CAST(N'2023-08-08T08:44:41.020' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop] ([verif_shop_id], [verif_id], [shop_id], [period], [total], [update_date], [update_by], [create_date], [create_by]) VALUES (N'a37990bf-7a83-4228-a8e9-5d29d5041d43', N'6DE4EFB8-2960-4701-959C-09ECDB3E76FF', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', N'202308', CAST(15000000.00 AS Decimal(12, 2)), NULL, NULL, CAST(N'2023-08-08T08:43:49.993' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop] ([verif_shop_id], [verif_id], [shop_id], [period], [total], [update_date], [update_by], [create_date], [create_by]) VALUES (N'db716a01-4806-4df7-9780-9213db8d2c89', N'C0B2073D-55F2-4B7F-B3E3-4D3B2732D72A', N'823B8199-2119-4A68-B960-D064F438A0A5', N'202308', CAST(5000000.00 AS Decimal(12, 2)), NULL, NULL, CAST(N'2023-08-08T08:41:58.503' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop] ([verif_shop_id], [verif_id], [shop_id], [period], [total], [update_date], [update_by], [create_date], [create_by]) VALUES (N'7f2d2853-231d-43cf-8938-ef5215e5eb40', N'44BE3992-68AE-45AB-A45F-F4D35A139A7F', N'823B8199-2119-4A68-B960-D064F438A0A5', N'202308', CAST(25000000.00 AS Decimal(12, 2)), NULL, NULL, CAST(N'2023-08-08T08:44:05.790' AS DateTime), N'upt.cigudeg')
GO
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'9dd2cf4e-c8a9-46ae-b886-036a13f5c7e0', N'A37990BF-7A83-4228-A8E9-5D29D5041D43', N'6DE4EFB8-2960-4701-959C-09ECDB3E76FF', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 3, N'52B93217-366C-4FE9-AF75-4CC2DAED389E', N'3', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:43:50.017' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'4ddd863a-fb56-4fd6-af63-0f7192367e8d', N'9FF62DBA-C55E-413A-8935-16189EFB75C9', N'1819A2D2-3F8D-4B07-8358-D6FCAD86C5BB', N'823B8199-2119-4A68-B960-D064F438A0A5', 3, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:45:09.130' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'beea88b6-6bea-4865-b619-16714fc7ccf5', N'985FB0DA-B822-45AA-9B40-1C47ACFF2162', N'CCA45151-4086-4763-A771-3168B2ACC0FB', N'823B8199-2119-4A68-B960-D064F438A0A5', 1, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:45:48.920' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'7c0f6ae5-ea85-4ef1-b591-1a099639f50a', N'2FDBFDC0-7CA3-445E-AE05-4FDF0A9A5F37', N'0BA90E63-976C-4DF2-BCC8-D054007AE363', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 2, N'0CE805E0-9D2B-42D9-9E5F-A252C0BBCEC7', N'2', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:44:41.033' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'360af5b9-39f2-4174-aa8d-213ce5e63ce2', N'DB716A01-4806-4DF7-9780-9213DB8D2C89', N'C0B2073D-55F2-4B7F-B3E3-4D3B2732D72A', N'823B8199-2119-4A68-B960-D064F438A0A5', 4, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:41:58.507' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'29d1e06e-28d6-42d6-ac33-247b0675103a', N'985FB0DA-B822-45AA-9B40-1C47ACFF2162', N'CCA45151-4086-4763-A771-3168B2ACC0FB', N'823B8199-2119-4A68-B960-D064F438A0A5', 3, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:45:48.920' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'628d5775-2916-4ffd-95ce-27957ae678e2', N'B21ABCB1-3487-47E0-BA7F-4EAA50152363', N'62370624-8B96-472F-8C8A-78928078FD6E', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 1, N'1B77AC41-5836-4854-81B1-FAE0D170DDA6', N'1', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:45:35.727' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'3e2d285b-ea99-453a-80ac-2a1574b2b742', N'7F2D2853-231D-43CF-8938-EF5215E5EB40', N'44BE3992-68AE-45AB-A45F-F4D35A139A7F', N'823B8199-2119-4A68-B960-D064F438A0A5', 5, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:44:05.793' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'2297adc1-8d56-4c15-9b5f-2b8ac38ad68c', N'2FDBFDC0-7CA3-445E-AE05-4FDF0A9A5F37', N'0BA90E63-976C-4DF2-BCC8-D054007AE363', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 5, N'A5C1717C-D511-4836-B4DD-DC8FF8399C53', N'5', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:44:41.047' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'4a883877-6a8d-4bca-b0b8-35beb47422a7', N'B306C0E9-9043-4FBF-A033-054888A592A9', N'482E63C9-DF77-40B6-8E8F-64CD1B73974D', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 2, N'05260B3F-B933-455A-887E-3EACB9541DD1', N'2', 1, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T07:49:46.087' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'49712f8a-eaab-4906-95ae-35f356f84f53', N'985FB0DA-B822-45AA-9B40-1C47ACFF2162', N'CCA45151-4086-4763-A771-3168B2ACC0FB', N'823B8199-2119-4A68-B960-D064F438A0A5', 4, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:45:48.920' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'87253a72-fb9d-4115-80f8-3e07df607316', N'DB716A01-4806-4DF7-9780-9213DB8D2C89', N'C0B2073D-55F2-4B7F-B3E3-4D3B2732D72A', N'823B8199-2119-4A68-B960-D064F438A0A5', 2, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:41:58.507' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'97d7cd98-314b-41d9-b801-425350b3d6d2', N'7F2D2853-231D-43CF-8938-EF5215E5EB40', N'44BE3992-68AE-45AB-A45F-F4D35A139A7F', N'823B8199-2119-4A68-B960-D064F438A0A5', 2, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:44:05.793' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'61778c20-9482-49da-be3d-44e18cc7efa6', N'A37990BF-7A83-4228-A8E9-5D29D5041D43', N'6DE4EFB8-2960-4701-959C-09ECDB3E76FF', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 2, N'BEEA9506-08A2-4DCB-8233-240624F08727', N'2', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:43:50.013' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'b9da90dc-1d92-4006-b2a7-50db53a8e165', N'9FF62DBA-C55E-413A-8935-16189EFB75C9', N'1819A2D2-3F8D-4B07-8358-D6FCAD86C5BB', N'823B8199-2119-4A68-B960-D064F438A0A5', 2, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:45:09.130' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'5b76dad8-8d4a-4414-a2ca-56bc2109b4b1', N'2FDBFDC0-7CA3-445E-AE05-4FDF0A9A5F37', N'0BA90E63-976C-4DF2-BCC8-D054007AE363', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 3, N'33981714-E670-4ACF-9409-7D6C0E9875D5', N'3', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:44:41.040' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'0dc14db0-399b-4e02-a295-5c4cc3ceaadf', N'A37990BF-7A83-4228-A8E9-5D29D5041D43', N'6DE4EFB8-2960-4701-959C-09ECDB3E76FF', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 1, N'B392370A-2522-4E7E-B35E-24E126E3177C', N'1', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:43:50.010' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'ba79e548-28f3-4084-bdba-634a192b8191', N'2FDBFDC0-7CA3-445E-AE05-4FDF0A9A5F37', N'0BA90E63-976C-4DF2-BCC8-D054007AE363', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 4, N'DDA3693D-DFB1-4517-951B-127451E7732F', N'4', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:44:41.043' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'59ef239e-564f-466e-825d-63e3ba363445', N'DB716A01-4806-4DF7-9780-9213DB8D2C89', N'C0B2073D-55F2-4B7F-B3E3-4D3B2732D72A', N'823B8199-2119-4A68-B960-D064F438A0A5', 1, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:41:58.507' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'edbd0163-1aa0-4f59-b83c-651e3a0a5398', N'A37990BF-7A83-4228-A8E9-5D29D5041D43', N'6DE4EFB8-2960-4701-959C-09ECDB3E76FF', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 4, N'7A617C48-0E2C-4E95-94D7-DC3A659CAE48', N'4', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:43:50.023' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'06df1b17-d53a-4888-bc6a-740d9139b699', N'2FDBFDC0-7CA3-445E-AE05-4FDF0A9A5F37', N'0BA90E63-976C-4DF2-BCC8-D054007AE363', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 1, N'2BA6413E-1577-453E-8EBE-E3AE731ADA3B', N'1', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:44:41.030' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'd40961b4-6180-4957-831b-845eb8df4c3d', N'7F2D2853-231D-43CF-8938-EF5215E5EB40', N'44BE3992-68AE-45AB-A45F-F4D35A139A7F', N'823B8199-2119-4A68-B960-D064F438A0A5', 1, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:44:05.793' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'a0e20eb0-4dc8-42c3-9bc0-856154dc86dd', N'9FF62DBA-C55E-413A-8935-16189EFB75C9', N'1819A2D2-3F8D-4B07-8358-D6FCAD86C5BB', N'823B8199-2119-4A68-B960-D064F438A0A5', 4, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:45:09.130' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'e289b6e2-b408-493c-b6e4-988dbba125dd', N'9FF62DBA-C55E-413A-8935-16189EFB75C9', N'1819A2D2-3F8D-4B07-8358-D6FCAD86C5BB', N'823B8199-2119-4A68-B960-D064F438A0A5', 5, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:45:09.130' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'28412f30-43ea-4250-8dc1-a0744d277af3', N'B306C0E9-9043-4FBF-A033-054888A592A9', N'482E63C9-DF77-40B6-8E8F-64CD1B73974D', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 5, N'B3C519F9-B5DC-475D-A641-4FDEB4041E0C', N'5', 1, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T07:49:46.097' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'800df92b-3930-4a18-8b97-a2824bbe4785', N'B21ABCB1-3487-47E0-BA7F-4EAA50152363', N'62370624-8B96-472F-8C8A-78928078FD6E', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 3, N'C8504CCE-ACEC-4253-853D-34076D6E2AFA', N'3', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:45:35.737' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'aac37bcc-a0a3-4f61-88db-a73eab683508', N'B306C0E9-9043-4FBF-A033-054888A592A9', N'482E63C9-DF77-40B6-8E8F-64CD1B73974D', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 3, N'30FEE07C-5A25-4FED-904F-0078421232DF', N'3', 1, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T07:49:46.093' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'25ebcc14-159a-4306-968a-a74f5e81e856', N'A37990BF-7A83-4228-A8E9-5D29D5041D43', N'6DE4EFB8-2960-4701-959C-09ECDB3E76FF', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 5, N'7DF4990F-EE33-4A09-96F4-212E9B9D01EE', N'5', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:43:50.027' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'6306ea85-3078-4227-baa1-b9b5b1906382', N'B21ABCB1-3487-47E0-BA7F-4EAA50152363', N'62370624-8B96-472F-8C8A-78928078FD6E', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 4, N'67569013-8F8A-429A-974E-68AB3591A5E2', N'4', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:45:35.740' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'51b14a33-f5b9-4503-9b0a-bd72b627a755', N'B306C0E9-9043-4FBF-A033-054888A592A9', N'482E63C9-DF77-40B6-8E8F-64CD1B73974D', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 4, N'9F145D82-17BF-4E9F-90A1-6A4C2535A1A7', N'4', 1, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T07:49:46.097' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'ede56492-f52b-43e2-859d-c0d456cd54f1', N'7F2D2853-231D-43CF-8938-EF5215E5EB40', N'44BE3992-68AE-45AB-A45F-F4D35A139A7F', N'823B8199-2119-4A68-B960-D064F438A0A5', 4, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:44:05.793' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'ff84e6f7-e0c0-4812-a30a-c7de95ca89e6', N'7F2D2853-231D-43CF-8938-EF5215E5EB40', N'44BE3992-68AE-45AB-A45F-F4D35A139A7F', N'823B8199-2119-4A68-B960-D064F438A0A5', 3, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:44:05.793' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'051dd5d5-7f06-489c-b9ae-d55e51dfaf9e', N'DB716A01-4806-4DF7-9780-9213DB8D2C89', N'C0B2073D-55F2-4B7F-B3E3-4D3B2732D72A', N'823B8199-2119-4A68-B960-D064F438A0A5', 3, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:41:58.507' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'671099c8-3f12-4948-ba91-d7b74f7ebbed', N'DB716A01-4806-4DF7-9780-9213DB8D2C89', N'C0B2073D-55F2-4B7F-B3E3-4D3B2732D72A', N'823B8199-2119-4A68-B960-D064F438A0A5', 5, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:41:58.507' AS DateTime), N'upt.cigudeg')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'6dc6ec5f-9b1f-4ee8-80d9-df082299d1a7', N'9FF62DBA-C55E-413A-8935-16189EFB75C9', N'1819A2D2-3F8D-4B07-8358-D6FCAD86C5BB', N'823B8199-2119-4A68-B960-D064F438A0A5', 1, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:45:09.130' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'f219fed5-28cf-4e13-91b5-e125a8407834', N'B21ABCB1-3487-47E0-BA7F-4EAA50152363', N'62370624-8B96-472F-8C8A-78928078FD6E', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 5, N'77F20DBE-6944-4A72-8951-7113CE9C2D28', N'5', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:45:35.747' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'd817b7c2-7146-485c-be86-e93720b6d0ed', N'B21ABCB1-3487-47E0-BA7F-4EAA50152363', N'62370624-8B96-472F-8C8A-78928078FD6E', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 2, N'3BC65786-5ED1-453F-8073-BE2599410EC1', N'2', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:45:35.730' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'f0a133e4-4a21-4136-985b-ea6b93ea4953', N'985FB0DA-B822-45AA-9B40-1C47ACFF2162', N'CCA45151-4086-4763-A771-3168B2ACC0FB', N'823B8199-2119-4A68-B960-D064F438A0A5', 2, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:45:48.920' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'63d6ebc3-0415-44e6-8379-eab63a68cb71', N'985FB0DA-B822-45AA-9B40-1C47ACFF2162', N'CCA45151-4086-4763-A771-3168B2ACC0FB', N'823B8199-2119-4A68-B960-D064F438A0A5', 5, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T08:45:48.920' AS DateTime), N'upt.ciomas')
INSERT [dbo].[t_verification_shop_det] ([verif_shop_det_id], [verif_shop_id], [verif_id], [shop_id], [shop_sequence], [doc_id], [notes], [approval_status], [approval_note], [approval_date], [approval_userid], [update_date], [update_by], [create_date], [create_by]) VALUES (N'52cd869d-9627-4edc-a00c-f8fc73b6bef0', N'B306C0E9-9043-4FBF-A033-054888A592A9', N'482E63C9-DF77-40B6-8E8F-64CD1B73974D', N'B05C723B-ABEC-49C1-BF12-6A99CD626486', 1, N'BDC1BF16-4998-4CEC-A238-F2F927244675', N'1', 1, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-08-08T07:49:46.083' AS DateTime), N'upt.cigudeg')
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
