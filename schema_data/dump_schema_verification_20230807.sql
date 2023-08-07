USE [db_siveronika]
GO

DROP TABLE [dbo].[t_verification]
DROP TABLE [dbo].[t_verification_shop]
DROP TABLE [dbo].[t_verification_shop_det]

/****** Object:  Table [dbo].[t_verification]    Script Date: 06/08/2023 22:56:34 ******/
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
	[approval_userid1]	[varchar](100) NULL,
	[approval_userid2]	[varchar](100) NULL,
	[approval_note1]	[varchar](200) NULL,
	[approval_note2]	[varchar](100) NULL,
	[approval_date1]	[datetime] NULL,
	[approval_date2]	[datetime] NULL,
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
/****** Object:  Table [dbo].[t_verification_shop]    Script Date: 06/08/2023 22:56:34 ******/
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
/****** Object:  Table [dbo].[t_verification_shop_det]    Script Date: 06/08/2023 22:56:34 ******/
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
	[approval_status] bit NULL, 
	[approval_note]	[varchar](100) NULL, 
	[approval_date]	[datetime] NULL,
	[approval_userid]	[varchar] (100) NULL, 
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