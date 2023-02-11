USE [baragud]
GO
/****** Object:  Table [dbo].[TB_S_MST_KONFIRMASI]    Script Date: 11/02/2023 13:21:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_S_MST_KONFIRMASI](
	[kode_konfirmasi] [int] NOT NULL,
	[tanggal_kirim] [date] NULL,
	[kode_vendor] [char](10) NULL,
	[nama_vendor] [char](40) NULL,
	[harga_po_terakhir] [decimal](13, 2) NULL,
	[mata_uang_po_terakhir] [char](5) NULL,
	[nomor_pr] [char](10) NULL,
	[item_pr] [int] NULL,
	[kode_material] [char](18) NULL,
	[deskripsi] [char](40) NULL,
	[jumlah] [decimal](13, 3) NULL,
	[harga] [decimal](13, 2) NULL,
	[mata_uang] [char](5) NULL,
	[satuan] [char](3) NULL,
	[konfirmasi_status] [char](1) NULL,
	[jumlah_tersedia] [decimal](13, 3) NULL,
	[jumlah_inden] [decimal](13, 3) NULL,
	[lama_inden] [int] NULL,
	[pesan_ulang] [char](1) NULL,
	[modified_date] [datetime] NULL,
	[modified_by] [char](12) NULL,
	[flag_kirim] [bit] NULL,
	[deskripsi_material] [nvarchar](max) NULL,
 CONSTRAINT [PK_TB_S_MST_KONFIRMASI] PRIMARY KEY CLUSTERED 
(
	[kode_konfirmasi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_S_MST_MATA_UANG]    Script Date: 11/02/2023 13:21:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_S_MST_MATA_UANG](
	[kode_uang] [char](5) NOT NULL,
	[deskripsi] [char](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[kode_uang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_S_MST_NEGARA]    Script Date: 11/02/2023 13:21:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_S_MST_NEGARA](
	[kode_negara] [char](3) NOT NULL,
	[nama] [char](50) NULL,
	[deletion] [char](1) NULL,
	[modified_date] [datetime] NULL,
	[modified_by] [char](12) NULL,
 CONSTRAINT [PK_TB_S_MST_NEGARA] PRIMARY KEY CLUSTERED 
(
	[kode_negara] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_S_MST_NEGO_BARANG_DTL]    Script Date: 11/02/2023 13:21:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_S_MST_NEGO_BARANG_DTL](
	[nomor_rfq] [char](10) NOT NULL,
	[urutan_rfq] [char](5) NOT NULL,
	[kode_barang] [varchar](18) NULL,
	[deskripsi_barang] [varchar](40) NULL,
	[deskripsi] [text] NULL,
	[jumlah_permintaan] [decimal](13, 3) NULL,
	[satuan] [char](3) NULL,
	[deskripsi_satuan] [char](10) NULL,
	[nomor_sr] [varchar](30) NULL,
	[kode_kebun] [char](2) NULL,
	[jumlah_tersedia] [decimal](13, 3) NULL,
	[jumlah_inden] [decimal](13, 3) NULL,
	[lama_inden] [int] NULL,
	[mata_uang] [char](3) NULL,
	[harga_satuan] [decimal](13, 2) NULL,
	[per_harga_satuan] [varchar](30) NULL,
	[harga_satuan_nego] [decimal](13, 2) NULL,
	[keterangan_nego] [text] NULL,
	[konversi] [char](1) NULL,
	[jumlah_konversi] [decimal](13, 3) NULL,
	[satuan_konversi] [varchar](30) NULL,
	[ketersediaan_barang] [char](1) NULL,
	[masa_berlaku_harga] [date] NULL,
	[keterangan] [varchar](100) NULL,
	[dibuat_oleh] [varchar](30) NULL,
	[modified_date] [datetime] NULL,
	[modified_by] [char](12) NULL,
	[deskripsi_material] [nvarchar](max) NULL,
	[dipakai_untuk] [varchar](max) NULL,
 CONSTRAINT [PK_TB_S_MST_NEGO_BARANG_DTL] PRIMARY KEY CLUSTERED 
(
	[nomor_rfq] ASC,
	[urutan_rfq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_S_MST_NEGO_BARANG_EQIV]    Script Date: 11/02/2023 13:21:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_S_MST_NEGO_BARANG_EQIV](
	[nomor_rfq] [char](10) NOT NULL,
	[urutan_rfq] [char](5) NOT NULL,
	[ekuivalen] [char](1) NOT NULL,
	[kode_barang] [varchar](18) NULL,
	[deskripsi_barang] [varchar](40) NULL,
	[deskripsi] [text] NULL,
	[jumlah_permintaan] [decimal](13, 3) NULL,
	[satuan] [char](3) NULL,
	[deskripsi_satuan] [char](10) NULL,
	[nomor_sr] [varchar](30) NULL,
	[kode_kebun] [char](2) NULL,
	[spesifikasi] [text] NULL,
	[merek] [varchar](30) NULL,
	[tipe] [varchar](30) NULL,
	[buatan] [varchar](30) NULL,
	[jumlah_tersedia] [decimal](13, 3) NULL,
	[jumlah_inden] [decimal](13, 3) NULL,
	[lama_inden] [int] NULL,
	[mata_uang] [char](3) NULL,
	[harga_satuan] [decimal](13, 2) NULL,
	[per_harga_satuan] [varchar](30) NULL,
	[harga_satuan_nego] [decimal](13, 2) NULL,
	[keterangan_nego] [text] NULL,
	[konversi] [char](1) NULL,
	[jumlah_konversi] [decimal](13, 3) NULL,
	[satuan_konversi] [varchar](30) NULL,
	[ketersediaan_barang] [char](1) NULL,
	[masa_berlaku_harga] [date] NULL,
	[keterangan] [varchar](100) NULL,
	[dibuat_oleh] [varchar](30) NULL,
	[modified_date] [datetime] NULL,
	[modified_by] [char](12) NULL,
	[deskripsi_material] [nvarchar](max) NULL,
	[dipakai_untuk] [varchar](max) NULL,
 CONSTRAINT [PK_TB_S_MST_NEGO_BARANG_EQIV] PRIMARY KEY CLUSTERED 
(
	[nomor_rfq] ASC,
	[urutan_rfq] ASC,
	[ekuivalen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_S_MST_NEGO_BARANG_HEAD]    Script Date: 11/02/2023 13:21:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_S_MST_NEGO_BARANG_HEAD](
	[nomor_rfq] [char](10) NOT NULL,
	[tanggal_rfq] [datetime] NULL,
	[nomor_ph] [char](10) NULL,
	[tanggal_jatuh_tempo] [datetime] NULL,
	[kode_vendor] [char](10) NULL,
	[nama_vendor] [varchar](40) NULL,
	[modified_date] [datetime] NULL,
	[modified_by] [char](12) NULL,
 CONSTRAINT [PK_TB_S_MST_NEGO_BARANG_HEAD] PRIMARY KEY CLUSTERED 
(
	[nomor_rfq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_S_MST_NEGO_BIAYA_TAMBAHAN]    Script Date: 11/02/2023 13:21:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_S_MST_NEGO_BIAYA_TAMBAHAN](
	[nomor_rfq] [char](10) NOT NULL,
	[kode_biaya] [char](4) NOT NULL,
	[deskripsi_biaya] [text] NULL,
	[jumlah_biaya] [decimal](13, 2) NULL,
	[jumlah_biaya_nego] [decimal](13, 2) NULL,
	[mata_uang] [char](5) NULL,
	[keterangan] [text] NULL,
 CONSTRAINT [PK_TB_S_MST_NEGO_BIAYA_TAMBAHAN] PRIMARY KEY CLUSTERED 
(
	[nomor_rfq] ASC,
	[kode_biaya] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_S_MST_NEGO_LAMPIRAN_BARANG]    Script Date: 11/02/2023 13:21:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_S_MST_NEGO_LAMPIRAN_BARANG](
	[nomor_rfq] [char](10) NOT NULL,
	[kode_barang] [varchar](18) NOT NULL,
	[alamat_berkas] [text] NULL,
	[nama_berkas] [text] NULL,
	[sudah_gabung] [char](1) NULL,
	[modified_date] [datetime] NULL,
	[modified_by] [char](12) NULL,
 CONSTRAINT [PK_TB_S_MST_NEGO_LAMPIRAN_BARANG] PRIMARY KEY CLUSTERED 
(
	[nomor_rfq] ASC,
	[kode_barang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_S_MST_PENGGUNA]    Script Date: 11/02/2023 13:21:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_S_MST_PENGGUNA](
	[kode_vendor] [char](10) NOT NULL,
	[sandi] [varchar](255) NULL,
	[nama] [char](50) NULL,
	[deletion] [char](1) NULL,
	[first_login] [int] NULL,
	[modified_date] [datetime] NULL,
	[modified_by] [char](12) NULL,
 CONSTRAINT [PK_TB_S_MST_PENGGUNA] PRIMARY KEY CLUSTERED 
(
	[kode_vendor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_S_MST_PROVINSI]    Script Date: 11/02/2023 13:21:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_S_MST_PROVINSI](
	[kode_provinsi] [char](3) NOT NULL,
	[nama] [char](50) NULL,
	[deletion] [char](1) NULL,
	[modified_date] [datetime] NULL,
	[modified_by] [char](12) NULL,
 CONSTRAINT [PK_TB_S_MST_PROVINSI] PRIMARY KEY CLUSTERED 
(
	[kode_provinsi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_S_MST_RFQ_BARANG_DTL]    Script Date: 11/02/2023 13:21:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_S_MST_RFQ_BARANG_DTL](
	[nomor_rfq] [char](10) NOT NULL,
	[urutan_rfq] [char](5) NOT NULL,
	[kode_barang] [varchar](18) NULL,
	[deskripsi_barang] [varchar](40) NULL,
	[deskripsi] [text] NULL,
	[jumlah_permintaan] [decimal](13, 3) NULL,
	[satuan] [char](3) NULL,
	[deskripsi_satuan] [char](10) NULL,
	[nomor_sr] [varchar](30) NULL,
	[kode_kebun] [char](2) NULL,
	[jumlah_tersedia] [decimal](13, 3) NULL,
	[jumlah_inden] [decimal](13, 3) NULL,
	[lama_inden] [int] NULL,
	[mata_uang] [char](3) NULL,
	[harga_satuan] [decimal](13, 2) NULL,
	[per_harga_satuan] [varchar](30) NULL,
	[konversi] [char](1) NULL,
	[jumlah_konversi] [decimal](13, 3) NULL,
	[satuan_konversi] [varchar](30) NULL,
	[ketersediaan_barang] [char](1) NULL,
	[masa_berlaku_harga] [date] NULL,
	[keterangan] [varchar](8000) NULL,
	[dibuat_oleh] [varchar](30) NULL,
	[modified_date] [datetime] NULL,
	[modified_by] [char](12) NULL,
	[deskripsi_material] [nvarchar](max) NULL,
	[dipakai_untuk] [varchar](max) NULL,
 CONSTRAINT [PK_TB_S_MST_RFQ_BARANG_DTL] PRIMARY KEY CLUSTERED 
(
	[nomor_rfq] ASC,
	[urutan_rfq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_S_MST_RFQ_BARANG_EQIV]    Script Date: 11/02/2023 13:21:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_S_MST_RFQ_BARANG_EQIV](
	[nomor_rfq] [char](10) NOT NULL,
	[urutan_rfq] [char](5) NOT NULL,
	[ekuivalen] [char](1) NOT NULL,
	[kode_barang] [varchar](18) NULL,
	[deskripsi_barang] [varchar](40) NULL,
	[deskripsi] [text] NULL,
	[jumlah_permintaan] [decimal](13, 3) NULL,
	[satuan] [char](3) NULL,
	[deskripsi_satuan] [char](10) NULL,
	[nomor_sr] [varchar](30) NULL,
	[kode_kebun] [char](2) NULL,
	[spesifikasi] [text] NULL,
	[merek] [varchar](30) NULL,
	[tipe] [varchar](30) NULL,
	[buatan] [varchar](30) NULL,
	[jumlah_tersedia] [decimal](13, 3) NULL,
	[jumlah_inden] [decimal](13, 3) NULL,
	[lama_inden] [int] NULL,
	[mata_uang] [char](3) NULL,
	[harga_satuan] [decimal](13, 2) NULL,
	[per_harga_satuan] [varchar](30) NULL,
	[konversi] [char](1) NULL,
	[jumlah_konversi] [decimal](13, 3) NULL,
	[satuan_konversi] [varchar](30) NULL,
	[ketersediaan_barang] [char](1) NULL,
	[masa_berlaku_harga] [date] NULL,
	[keterangan] [varchar](8000) NULL,
	[dibuat_oleh] [varchar](30) NULL,
	[modified_date] [datetime] NULL,
	[modified_by] [char](12) NULL,
	[deskripsi_material] [nvarchar](max) NULL,
	[dipakai_untuk] [varchar](max) NULL,
 CONSTRAINT [PK_TB_S_MST_RFQ_BARANG_EQIV] PRIMARY KEY CLUSTERED 
(
	[nomor_rfq] ASC,
	[urutan_rfq] ASC,
	[ekuivalen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_S_MST_RFQ_BARANG_HEAD]    Script Date: 11/02/2023 13:21:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_S_MST_RFQ_BARANG_HEAD](
	[nomor_rfq] [char](10) NOT NULL,
	[tanggal_rfq] [datetime] NULL,
	[nomor_ph] [char](10) NULL,
	[tanggal_jatuh_tempo] [datetime] NULL,
	[kode_vendor] [char](10) NULL,
	[nama_vendor] [varchar](40) NULL,
	[modified_date] [datetime] NULL,
	[modified_by] [char](12) NULL,
 CONSTRAINT [PK_TB_S_MST_RFQ_BARANG_HEAD] PRIMARY KEY CLUSTERED 
(
	[nomor_rfq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_S_MST_RFQ_BIAYA_TAMBAHAN]    Script Date: 11/02/2023 13:21:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_S_MST_RFQ_BIAYA_TAMBAHAN](
	[nomor_rfq] [char](10) NOT NULL,
	[kode_biaya] [char](4) NOT NULL,
	[deskripsi_biaya] [text] NULL,
	[jumlah_biaya] [decimal](13, 2) NULL,
	[mata_uang] [char](5) NULL,
	[keterangan] [text] NULL,
 CONSTRAINT [PK_TB_S_MST_RFQ_BIAYA_TAMBAHAN] PRIMARY KEY CLUSTERED 
(
	[nomor_rfq] ASC,
	[kode_biaya] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_S_MST_RFQ_LAMPIRAN_BARANG]    Script Date: 11/02/2023 13:21:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_S_MST_RFQ_LAMPIRAN_BARANG](
	[nomor_rfq] [char](10) NOT NULL,
	[kode_barang] [varchar](18) NOT NULL,
	[alamat_berkas] [text] NULL,
	[nama_berkas] [text] NULL,
	[sudah_gabung] [char](1) NULL,
	[modified_date] [datetime] NULL,
	[modified_by] [char](12) NULL,
 CONSTRAINT [PK_TB_S_MST_RFQ_LAMPIRAN_BARANG] PRIMARY KEY CLUSTERED 
(
	[nomor_rfq] ASC,
	[kode_barang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_S_MST_SATUAN]    Script Date: 11/02/2023 13:21:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_S_MST_SATUAN](
	[satuan] [char](3) NOT NULL,
	[deskripsi_satuan] [char](30) NOT NULL,
 CONSTRAINT [PK_TB_S_MST_SATUAN] PRIMARY KEY CLUSTERED 
(
	[satuan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_S_MST_VENDOR]    Script Date: 11/02/2023 13:21:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_S_MST_VENDOR](
	[kode_vendor] [varchar](10) NOT NULL,
	[tanggal_registrasi] [datetime] NULL,
	[nama_perusahaan] [varchar](200) NULL,
	[no_surat_rekanan] [varchar](20) NULL,
	[no_sppkp] [char](20) NULL,
	[alamat_perusahaan] [varchar](max) NULL,
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
	[alamat_npwp] [varchar](max) NULL,
	[bidang_utama] [char](30) NULL,
	[bidang_usaha] [char](30) NULL,
	[nama_marketing] [char](35) NULL,
	[no_hp_marketing] [char](20) NULL,
	[no_ar] [char](20) NULL,
	[no_hp_ar] [char](20) NULL,
	[kode_pos] [char](5) NULL,
	[rekening01] [char](18) NULL,
	[atas_nama01] [char](60) NULL,
	[mata_uang01] [char](5) NULL,
	[nama_bank01] [char](60) NULL,
	[rekening02] [char](18) NULL,
	[atas_nama02] [char](60) NULL,
	[mata_uang02] [char](5) NULL,
	[nama_bank02] [char](60) NULL,
	[rekening03] [char](18) NULL,
	[atas_nama03] [char](60) NULL,
	[mata_uang03] [char](5) NULL,
	[nama_bank03] [char](60) NULL,
	[rekening04] [char](18) NULL,
	[atas_nama04] [char](60) NULL,
	[mata_uang04] [char](5) NULL,
	[nama_bank04] [char](60) NULL,
	[rekening05] [char](18) NULL,
	[atas_nama05] [char](60) NULL,
	[mata_uang05] [char](5) NULL,
	[nama_bank05] [char](60) NULL,
	[modified_date] [datetime] NULL,
	[modified_by] [char](12) NULL,
 CONSTRAINT [PK_TB_S_MST_VENDOR] PRIMARY KEY CLUSTERED 
(
	[kode_vendor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_S_TR_BATCH]    Script Date: 11/02/2023 13:21:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_S_TR_BATCH](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nomor_po] [char](10) NULL,
	[item_po] [char](6) NULL,
	[kode_material] [char](7) NULL,
	[deskripsi_material] [varchar](40) NULL,
	[quantity] [decimal](13, 3) NULL,
	[satuan] [char](3) NULL,
	[batch] [varchar](60) NULL,
	[kadarluarsa] [datetime] NULL,
	[tanggal_produksi] [datetime] NULL,
	[temp_quantity] [decimal](13, 3) NULL,
	[status_receipt] [char](1) NULL,
	[modified_date] [datetime] NULL,
	[modified_by] [char](12) NULL,
 CONSTRAINT [PK_TB_S_TR_BATCH] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_S_TR_PO_DTL]    Script Date: 11/02/2023 13:21:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_S_TR_PO_DTL](
	[nomor_po] [char](10) NOT NULL,
	[item] [char](10) NOT NULL,
	[short_text] [varchar](255) NULL,
	[kode_barang] [varchar](18) NULL,
	[plant] [char](4) NULL,
	[storage_location] [char](4) NULL,
	[tracking_number] [varchar](30) NULL,
	[material_group] [char](5) NULL,
	[material_group_description] [varchar](40) NULL,
	[jumlah] [decimal](13, 3) NULL,
	[unit] [varchar](50) NULL,
	[base_unit] [varchar](50) NULL,
	[denominator] [varchar](50) NULL,
	[numerator] [varchar](50) NULL,
	[order_price_unit] [char](10) NULL,
	[net_order_price] [decimal](13, 3) NULL,
	[assignment] [varchar](50) NULL,
	[business_area] [char](10) NULL,
	[mrsrno] [varchar](50) NULL,
	[keterangan1] [varchar](100) NULL,
	[keterangan2] [varchar](100) NULL,
	[keterangan3] [varchar](100) NULL,
	[delivery_date] [datetime] NULL,
	[openquantitypo] [decimal](13, 3) NULL,
	[status] [bit] NULL,
	[modified_date] [datetime] NULL,
	[modified_by] [char](12) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_S_TR_PO_HEAD]    Script Date: 11/02/2023 13:21:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_S_TR_PO_HEAD](
	[nomor_po] [char](10) NOT NULL,
	[dibuat_oleh] [char](12) NULL,
	[kode_Vendor] [char](10) NULL,
	[nama_vendor] [varchar](40) NULL,
	[top] [char](5) NULL,
	[p_group] [char](5) NULL,
	[mata_uang] [char](5) NULL,
	[tanggal_document] [datetime] NULL,
	[incoterms_1] [char](10) NULL,
	[incoterms_2] [varchar](255) NULL,
	[jatuh_tempo] [datetime] NULL,
	[tanggal_dibuat] [datetime] NULL,
	[plant] [char](4) NULL,
	[status] [bit] NULL,
	[category] [char](1) NULL,
	[modified_date] [datetime] NULL,
	[modified_by] [char](12) NULL,
 CONSTRAINT [PK_TB_S_TR_PO_HEAD] PRIMARY KEY CLUSTERED 
(
	[nomor_po] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_S_TR_PO_LAMPIRAN]    Script Date: 11/02/2023 13:21:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_S_TR_PO_LAMPIRAN](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nomor_po] [char](10) NOT NULL,
	[alamat_berkas] [text] NULL,
	[nama_berkas] [text] NULL,
	[modified_date] [datetime] NULL,
	[modified_by] [char](12) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_S_TR_PO_OUTSTANDING]    Script Date: 11/02/2023 13:21:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_S_TR_PO_OUTSTANDING](
	[purchasing_document] [varchar](100) NULL,
	[vendor_name] [varchar](100) NULL,
	[delivery_date] [date] NULL,
	[posnr] [varchar](50) NULL,
	[item_code] [varchar](50) NULL,
	[description] [varchar](max) NULL,
	[qty] [varchar](50) NULL,
	[order_unit] [varchar](30) NULL,
	[currency] [varchar](50) NULL,
	[unitprice] [varchar](50) NULL,
	[total_price] [varchar](50) NULL,
	[gr_partial_in_qty] [varchar](50) NULL,
	[material_document] [varchar](100) NULL,
	[posting_date] [date] NULL,
	[outstanding] [varchar](50) NULL,
	[gr_late_in_day] [varchar](50) NULL,
	[vendor] [varchar](50) NULL,
	[order_qty] [varchar](50) NULL,
	[net_order_price] [varchar](50) NULL,
	[net_order_value] [varchar](50) NULL,
	[material_doc_year] [varchar](50) NULL,
	[material_doc_item] [varchar](max) NULL,
	[deletion_indicator] [char](1) NULL,
	[deadline_date] [date] NULL,
	[estate] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_TR_QUOTATION_LAMPIRAN]    Script Date: 11/02/2023 13:21:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_TR_QUOTATION_LAMPIRAN](
	[nomor_quotation] [char](10) NOT NULL,
	[ekuivalen] [char](1) NOT NULL,
	[urutan_berkas] [int] NOT NULL,
	[kode_barang] [varchar](18) NOT NULL,
	[alamat_berkas] [text] NULL,
	[nama_berkas_asli] [text] NULL,
	[nama_berkas] [text] NULL,
	[modified_date] [datetime] NULL,
	[modified_by] [char](12) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
