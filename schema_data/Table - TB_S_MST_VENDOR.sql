USE [baragud]
GO

/****** Object:  Table [dbo].[TB_S_MST_PROVINSI]    Script Date: 04/06/2022 18:01:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TB_S_MST_VENDOR](
	[kode_vendor] [char](10) NOT NULL,
	[tanggal_registrasi] [datetime] NULL,
	[nama_perusahaan] [varchar](200) NULL,
	[no_surat_rekanan] [varchar](20) NULL,
	[no_sppkp] [char](20) NULL,
	[alamat_perusahaan] [char](60) NULL,
	[kode_negara] [char](3) NULL,
	[kode_provinsi] [char](3) NULL,
	[kabkot] [char](50) NULL,
	[no_telepon] [char](20) NULL,
	[no_hp] [char](20) NULL,
	[no_fax] [char](20) NULL,
	[email_perusahaan] [varchar](241) NULL,
	[email_lainnya] [varchar](241) NULL,
	[no_npwp] [char](25) NULL,
	[nama_npwp] [char](35) NULL,
	[nama_bank] [char](50) NULL,
	[nama] [char](50) NULL,
	[bidang_utama] [char](30) NULL,
	[bidang_usaha] [char](30) NULL,
	[nama_marketing] [char](35) NULL,
	[no_hp_marketing] [char](20) NULL,
	[no_ar] [char](20) NULL,
	[no_hp_ar] [char](20) NULL,
	[kode_pos] [char](5) NULL,
	[modified_date] [datetime] NULL,
	[modified_by] [char](12) NULL,
 CONSTRAINT [PK_TB_S_MST_VENDOR] PRIMARY KEY CLUSTERED 
(
	[kode_vendor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


