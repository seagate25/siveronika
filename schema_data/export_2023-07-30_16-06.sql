-- DROP SCHEMA dbo;

CREATE SCHEMA dbo;
-- db_siveronika.dbo.m_bidang definition

-- Drop table

-- DROP TABLE db_siveronika.dbo.m_bidang;

CREATE TABLE db_siveronika.dbo.m_bidang (
	bidang_id uniqueidentifier DEFAULT newid() NOT NULL,
	bidang_code varchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	bidang_name varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	bidang_status bit NULL,
	bidang_deletion bit NULL,
	update_date datetime NULL,
	update_by varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	create_date datetime NULL,
	create_by varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT PK_m_bidang PRIMARY KEY (bidang_id)
);


-- db_siveronika.dbo.m_branch definition

-- Drop table

-- DROP TABLE db_siveronika.dbo.m_branch;

CREATE TABLE db_siveronika.dbo.m_branch (
	branch_id uniqueidentifier DEFAULT newid() NOT NULL,
	branch_code varchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	branch_name varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	branch_description varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	branch_address1 varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	branch_address2 varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	branch_contact1 varchar(15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	branch_contact2 varchar(15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	branch_status bit NULL,
	branch_deletion bit NULL,
	update_date datetime NULL,
	update_by varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	create_date datetime NULL,
	create_by varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT PK_m_branch PRIMARY KEY (branch_id)
);


-- db_siveronika.dbo.m_role definition

-- Drop table

-- DROP TABLE db_siveronika.dbo.m_role;

CREATE TABLE db_siveronika.dbo.m_role (
	role_id uniqueidentifier DEFAULT newid() NOT NULL,
	role_name varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	role_description varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	role_status bit NULL,
	role_deletion bit NULL,
	update_date datetime NULL,
	update_by varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	create_date datetime NULL,
	create_by varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT PK_m_role PRIMARY KEY (role_id)
);


-- db_siveronika.dbo.m_shop definition

-- Drop table

-- DROP TABLE db_siveronika.dbo.m_shop;

CREATE TABLE db_siveronika.dbo.m_shop (
	shop_id uniqueidentifier NOT NULL,
	shop_type varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	shop_name varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	shop_status bit NULL,
	shop_deletion bit NULL,
	update_date datetime NULL,
	update_by varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	create_date datetime NULL,
	create_by varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT PK_m_shop PRIMARY KEY (shop_id)
);


-- db_siveronika.dbo.m_shop_det definition

-- Drop table

-- DROP TABLE db_siveronika.dbo.m_shop_det;

CREATE TABLE db_siveronika.dbo.m_shop_det (
	shop_id varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	shop_sequence int NULL,
	shop_detail varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- db_siveronika.dbo.m_user definition

-- Drop table

-- DROP TABLE db_siveronika.dbo.m_user;

CREATE TABLE db_siveronika.dbo.m_user (
	user_id uniqueidentifier DEFAULT newid() NOT NULL,
	user_name varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	user_email varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	user_description varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	role_id varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	branch_id varchar(16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	user_verified bit NULL,
	user_status bit NULL,
	user_deletion bit NULL,
	update_date datetime NULL,
	update_by varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	create_date datetime NULL,
	create_by varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	user_password varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT NULL NULL,
	CONSTRAINT PK_m_user PRIMARY KEY (user_id)
);


-- db_siveronika.dbo.t_doc definition

-- Drop table

-- DROP TABLE db_siveronika.dbo.t_doc;

CREATE TABLE db_siveronika.dbo.t_doc (
	doc_id uniqueidentifier DEFAULT newid() NOT NULL,
	doc_filename varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	doc_path varchar(300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	doc_type varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	doc_description varchar(300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	doc_status bit NULL,
	doc_deletion bit NULL,
	update_date datetime NULL,
	update_by varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	create_date datetime NULL,
	create_by varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT PK_t_doc PRIMARY KEY (doc_id)
);


-- db_siveronika.dbo.t_verification definition

-- Drop table

-- DROP TABLE db_siveronika.dbo.t_verification;

CREATE TABLE db_siveronika.dbo.t_verification (
	verif_id uniqueidentifier NOT NULL,
	verif_no varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	bidang_id varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	verif_version int NULL,
	user_id varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	user_name varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	branch_id varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	verif_status varchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	verif_deletion bit NULL,
	verif_request_date datetime NULL,
	update_date datetime NULL,
	update_by varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	create_date datetime NULL,
	create_by varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- db_siveronika.dbo.t_verification_shop definition

-- Drop table

-- DROP TABLE db_siveronika.dbo.t_verification_shop;

CREATE TABLE db_siveronika.dbo.t_verification_shop (
	verif_id varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	shop_id varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	period varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	total decimal(12,2) NULL
);


-- db_siveronika.dbo.t_verification_shop_det definition

-- Drop table

-- DROP TABLE db_siveronika.dbo.t_verification_shop_det;

CREATE TABLE db_siveronika.dbo.t_verification_shop_det (
	verif_id varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	shop_id varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	shop_sequence int NULL,
	doc_id varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	notes varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);

INSERT INTO db_siveronika.dbo.m_bidang (bidang_id,bidang_code,bidang_name,bidang_status,bidang_deletion,update_date,update_by,create_date,create_by) VALUES
	 (N'8A831DB7-F362-4516-98FE-21C05DF79BFB',N'0011',N'UPT Pajak Daerah Kelas A Caringin',1,0,NULL,NULL,'2023-07-23 13:59:39.513',N'admin'),
	 (N'47128975-0D14-45A1-9F9C-358AD4062AF1',N'0015',N'UPT Pajak Daerah Kelas A Leuwiliang',1,0,NULL,NULL,'2023-07-23 13:59:39.513',N'admin'),
	 (N'888541C2-3240-4596-867F-561FADD58ED0',N'0013',N'UPT Pajak Daerah Kelas A Ciomas',1,0,NULL,NULL,'2023-07-23 13:59:39.513',N'admin'),
	 (N'F713617E-2B93-4DA4-A087-61915595E40E',N'0001',N'SEKRETARIAT BAPPENDA',1,0,NULL,NULL,'2023-07-23 13:55:52.64',N'admin'),
	 (N'6061F5E0-6F85-457E-A2CF-62AFFFEF9697',N'0004',N'BIDANG PELAYANAN DAN PENETAPAN',1,0,NULL,NULL,'2023-07-23 13:59:39.513',N'admin'),
	 (N'E5173359-CE8E-490A-B3A8-6FB5C4F3E8CC',N'0008',N'UPT Pajak Daerah Kelas A Jonggol',1,0,NULL,NULL,'2023-07-23 13:59:39.513',N'admin'),
	 (N'191EF754-0567-49ED-BA7B-76C54F2C99F8',N'0014',N'UPT Pajak Daerah Kelas A Cigudeg',1,0,NULL,NULL,'2023-07-23 13:59:39.513',N'admin'),
	 (N'2F3D1DA8-89E8-4D18-96E1-A1AB89D15946',N'0005',N'BIDANG PENAGIHAN, KEBERATAN, DAN PENGAWASAN',1,0,NULL,NULL,'2023-07-23 13:59:39.513',N'admin'),
	 (N'44F109D3-BEDE-4F48-AAF6-A5F1CE301250',N'0009',N'UPT Pajak Daerah Kelas A Parung',1,0,NULL,NULL,'2023-07-23 13:59:39.513',N'admin'),
	 (N'21DB688C-4ABE-4803-A93D-A8D19F9C185F',N'0006',N'UPT Pajak Daerah Kelas A Sukaraja',1,0,NULL,NULL,'2023-07-23 13:59:39.513',N'admin');
INSERT INTO db_siveronika.dbo.m_bidang (bidang_id,bidang_code,bidang_name,bidang_status,bidang_deletion,update_date,update_by,create_date,create_by) VALUES
	 (N'07FB4A6A-5539-4B1A-B34E-B50B521068DE',N'0007',N'UPT Pajak Daerah Kelas A Gunung Putri',1,0,NULL,NULL,'2023-07-23 13:59:39.513',N'admin'),
	 (N'86F19D3B-5611-4A17-9E75-BF15BA892B88',N'0003',N'BIDANG PENDATAN DAN PENILAIAN',1,0,NULL,NULL,'2023-07-23 13:59:39.513',N'admin'),
	 (N'17712869-BBF9-4503-80CF-D97AD19E48DE',N'0010',N'UPT Pajak Daerah Kelas A Ciawi',1,0,NULL,NULL,'2023-07-23 13:59:39.513',N'admin'),
	 (N'C268DD4A-FBB9-4FC5-A6E3-E45BED15F67C',N'0002',N'BIDANG PERENCANAAN DAN PENGEMBANGAN PENDAPATAN DAERAH',1,0,NULL,NULL,'2023-07-23 13:59:39.513',N'admin'),
	 (N'4DB9D64F-3F8F-4BA5-A09B-F96EA953C0DD',N'0012',N'UPT Pajak Daerah Kelas A Citeureup',1,0,NULL,NULL,'2023-07-23 13:59:39.513',N'admin');
INSERT INTO db_siveronika.dbo.m_branch (branch_id,branch_code,branch_name,branch_description,branch_address1,branch_address2,branch_contact1,branch_contact2,branch_status,branch_deletion,update_date,update_by,create_date,create_by) VALUES
	 (N'B92AEE19-1469-453E-B5E4-682893232B6D',N'BR003',N'UPT Ciomas',N'UPT Ciomas',NULL,NULL,NULL,NULL,1,0,NULL,NULL,'2023-07-28 15:29:09.377',N'admin'),
	 (N'C90D3A32-6C6A-48CC-986E-BF36B022E352',N'BR002',N'UPT Cigudeg',N'UPT Cigudeg',NULL,NULL,NULL,NULL,1,0,NULL,NULL,'2023-07-28 15:29:09.377',N'admin'),
	 (N'23F3AFA1-4039-41AE-B5E7-D05C226D1F83',N'BR001',N'PEMDA Cibinong',N'Pemda Cibinong',NULL,NULL,NULL,NULL,1,0,NULL,NULL,'2023-07-28 15:29:09.377',N'admin');
INSERT INTO db_siveronika.dbo.m_role (role_id,role_name,role_description,role_status,role_deletion,update_date,update_by,create_date,create_by) VALUES
	 (N'E665877E-895B-40CA-95C9-0AD4E2D8D1E2',N'Super Admin',N'All Function',1,0,NULL,NULL,'2023-07-28 15:32:41.323',N'admin'),
	 (N'0C0C2D92-B145-4C7A-A4DA-255F2E4BE8BE',N'Bendahara',N'Bendahara',1,0,NULL,NULL,'2023-07-28 15:32:41.323',N'admin'),
	 (N'CB68262E-8560-4A2F-A8F6-30A622735F49',N'Verifikator',N'Verifikator',1,0,NULL,NULL,'2023-07-28 15:32:41.323',N'admin'),
	 (N'157B6E51-6847-48AB-B13A-5455E81135CF',N'Verifikator Admin',N'Verifikator Admin',1,0,NULL,NULL,'2023-07-28 15:32:41.323',N'admin'),
	 (N'BAC00819-EE59-4A2B-BDAA-98546FD9E9E5',N'Initiator',N'UPT',1,0,NULL,NULL,'2023-07-28 15:32:41.323',N'admin'),
	 (N'BFC53234-F4A7-4D93-B0AB-9D23D4DE2695',N'Reviewer',N'Viewer/ Crontrolling All Data',1,0,NULL,NULL,'2023-07-28 15:32:41.323',N'admin'),
	 (N'7475E697-7D00-4CE7-808B-CFF4F0E52A70',N'Bendahara Admin',N'Bendahara Admin',1,0,NULL,NULL,'2023-07-28 15:32:41.323',N'admin');
INSERT INTO db_siveronika.dbo.m_shop (shop_id,shop_type,shop_name,shop_status,shop_deletion,update_date,update_by,create_date,create_by) VALUES
	 (N'2A98AB9C-5B90-4A59-BA2D-412328672291',N'GU',N'Belanja Perjalanan Dinas',1,0,NULL,NULL,'2023-07-30 00:52:43.927',N'admin'),
	 (N'DC8C0F0F-5AB5-472C-9998-437BDB76C2CF',N'GU',N'Belanja Tagihan Air',1,0,NULL,NULL,'2023-07-30 00:52:43.927',N'admin'),
	 (N'F6FE0707-82E1-4688-9487-5304DC7DF91B',N'GU',N'Belanja Tagihan Listrik',1,0,NULL,NULL,'2023-07-30 00:52:43.927',N'admin'),
	 (N'7FAA9710-BF0E-439A-9E5F-65BC7E55CD9F',N'GU',N'Belanja Cetak',1,0,NULL,NULL,'2023-07-30 00:52:43.927',N'admin'),
	 (N'BDCF195A-C8AD-407B-9343-6A59CBFAB262',N'GU',N'Belanja  Bahan Pelumas',1,0,NULL,NULL,'2023-07-30 00:52:43.927',N'admin'),
	 (N'DAB02D09-FAC1-4B16-BAEF-77F4281469E9',N'GU',N'Belanja Mamin',1,0,NULL,NULL,'2023-07-30 00:52:43.927',N'admin'),
	 (N'21FC8F3A-678C-4D66-ACE2-836D16DB917A',N'GU',N'Belanja Perabot Kantor',1,0,NULL,NULL,'2023-07-30 00:52:43.927',N'admin'),
	 (N'CE0EA46D-33A0-4727-B47A-A3E36ACC4471',N'GU',N'Belanja Alat Kebersihan',1,0,NULL,NULL,'2023-07-30 00:52:43.927',N'admin'),
	 (N'A9F40BD9-8977-4AE2-B36D-B0A96C1F66C1',N'GU',N'Belanja Bahan Komputer',1,0,NULL,NULL,'2023-07-30 00:52:43.927',N'admin'),
	 (N'ADA23CD1-5871-4E5D-A87A-B64A2C5477C8',N'GU',N'Belanja Alat Tulis Kantor',1,0,NULL,NULL,'2023-07-30 00:52:43.927',N'admin');
INSERT INTO db_siveronika.dbo.m_shop (shop_id,shop_type,shop_name,shop_status,shop_deletion,update_date,update_by,create_date,create_by) VALUES
	 (N'1299FF15-0B11-43C6-8036-CE4A3EF29D82',N'GU',N'Belanja Penggandaan',1,0,NULL,NULL,'2023-07-30 00:52:43.927',N'admin'),
	 (N'2894C26C-9AAD-40C0-A872-E8A2B160506D',N'GU',N'Belanja Kawat/Faksimili/Internet/TV Berlangganan',1,0,NULL,NULL,'2023-07-30 00:52:43.927',N'admin'),
	 (N'C3585DC1-F37C-4DCE-B206-F104E10E12C7',N'GU',N'Belanja Alat/Bahan untuk Kegiatan Kantor - Kertas dan Cover',1,0,NULL,NULL,'2023-07-30 00:52:43.927',N'admin');
INSERT INTO db_siveronika.dbo.m_shop_det (shop_id,shop_sequence,shop_detail) VALUES
	 (N'7FAA9710-BF0E-439A-9E5F-65BC7E55CD9F',1,N'Nota Dinas'),
	 (N'7FAA9710-BF0E-439A-9E5F-65BC7E55CD9F',2,N'Surat Pesanan'),
	 (N'7FAA9710-BF0E-439A-9E5F-65BC7E55CD9F',3,N'Kwitansi'),
	 (N'7FAA9710-BF0E-439A-9E5F-65BC7E55CD9F',4,N'Faktur'),
	 (N'7FAA9710-BF0E-439A-9E5F-65BC7E55CD9F',5,N'Berita acara Serah Terima Hasil Pekerjaan'),
	 (N'DAB02D09-FAC1-4B16-BAEF-77F4281469E9',1,N'Nota Dinas'),
	 (N'DAB02D09-FAC1-4B16-BAEF-77F4281469E9',2,N'Surat Pesanan'),
	 (N'DAB02D09-FAC1-4B16-BAEF-77F4281469E9',3,N'Kwitansi'),
	 (N'DAB02D09-FAC1-4B16-BAEF-77F4281469E9',4,N'Faktur'),
	 (N'DAB02D09-FAC1-4B16-BAEF-77F4281469E9',5,N'Berita acara Serah Terima Hasil Pekerjaan');
INSERT INTO db_siveronika.dbo.m_shop_det (shop_id,shop_sequence,shop_detail) VALUES
	 (N'DAB02D09-FAC1-4B16-BAEF-77F4281469E9',6,N'Surat Undangan'),
	 (N'DAB02D09-FAC1-4B16-BAEF-77F4281469E9',7,N'Daftar Hadir'),
	 (N'DAB02D09-FAC1-4B16-BAEF-77F4281469E9',8,N'Notulen'),
	 (N'1299FF15-0B11-43C6-8036-CE4A3EF29D82',1,N'Nota Dinas'),
	 (N'1299FF15-0B11-43C6-8036-CE4A3EF29D82',2,N'Surat Pesanan'),
	 (N'1299FF15-0B11-43C6-8036-CE4A3EF29D82',3,N'Kwitansi'),
	 (N'1299FF15-0B11-43C6-8036-CE4A3EF29D82',4,N'Faktur'),
	 (N'1299FF15-0B11-43C6-8036-CE4A3EF29D82',5,N'Berita acara Serah Terima Hasil Pekerjaan'),
	 (N'ADA23CD1-5871-4E5D-A87A-B64A2C5477C8',1,N'Nota Dinas'),
	 (N'ADA23CD1-5871-4E5D-A87A-B64A2C5477C8',2,N'Surat Pesanan');
INSERT INTO db_siveronika.dbo.m_shop_det (shop_id,shop_sequence,shop_detail) VALUES
	 (N'ADA23CD1-5871-4E5D-A87A-B64A2C5477C8',3,N'Kwitansi'),
	 (N'ADA23CD1-5871-4E5D-A87A-B64A2C5477C8',4,N'Faktur'),
	 (N'ADA23CD1-5871-4E5D-A87A-B64A2C5477C8',5,N'Berita acara Serah Terima Hasil Pekerjaan');
INSERT INTO db_siveronika.dbo.m_user (user_id,user_name,user_email,user_description,role_id,branch_id,user_verified,user_status,user_deletion,update_date,update_by,create_date,create_by,user_password) VALUES
	 (N'31904F59-6BD9-4964-9208-268D9B1E8D22',N'account.03',N'account.03@gmail.com',N'Reviewer, Kabag',N'BFC53234-F4A7-4D93-B0AB-9D23D4DE2695',N'B001',1,1,0,NULL,NULL,'2023-07-28 17:29:53.93',N'admin',N'$2y$2y$10$BtzMQ52gr8i8W81jqLJdnOF7oBx5wgYPANKYqwkUPq9rSKOs7/K2S'),
	 (N'9A454DF9-F13E-4C38-9924-88031637F5F9',N'upt.ciomas',N'upt.ciomas@gmail.com',N'UPT Ciomas',N'BAC00819-EE59-4A2B-BDAA-98546FD9E9E5',N'B003',0,0,0,NULL,NULL,'2023-07-28 17:29:53.93',N'admin',N'$2y$10$D7t6rBNAvtje6qurewzHg.r6czL2sEKmCd8dN7RstV1h1EJVbuoxi'),
	 (N'6C47838A-4D37-4762-96EF-B1BADBA05B2E',N'upt.cigudeg',N'upt.cigudeg@gmail.com',N'UPT Cigudeg',N'BAC00819-EE59-4A2B-BDAA-98546FD9E9E5',N'B002',0,0,0,NULL,NULL,'2023-07-28 17:29:53.93',N'admin',N'$2y$10$GKgRSm97AQ./ZbeAdC2bye2TzWkcb.VofP8fUTn8VTLgD7MFj8ooa'),
	 (N'C92859FE-732F-41F0-B176-E9B80714BA24',N'account.01',N'account.01@gmail.com',N'Verifikator',N'CB68262E-8560-4A2F-A8F6-30A622735F49',N'B001',1,0,0,NULL,NULL,'2023-07-28 17:29:53.93',N'admin',N'$2y$2y$10$C25H7wEhb/S2Xefp9.gNL.FBOBM2t5gY0JgRGeC0SimDW509zZHPm'),
	 (N'80E1B7D0-0C45-4CE2-9A81-FEE7428B8EDF',N'account.02',N'account.02@gmail.com',N'Approval Bendahara',N'0C0C2D92-B145-4C7A-A4DA-255F2E4BE8BE',N'B001',1,1,0,NULL,NULL,'2023-07-28 17:29:53.93',N'admin',N'$2y$10$ffv70Z9FWlVRvQPNT7ikgOzNE1Q0AoylH3HGbxeYdi6OQmu2nJsMa');
INSERT INTO db_siveronika.dbo.t_doc (doc_id,doc_filename,doc_path,doc_type,doc_description,doc_status,doc_deletion,update_date,update_by,create_date,create_by) VALUES
	 (N'336A0C26-1739-4112-A8A1-36E261D81505',N'test_file5',N'\siveronika\doc',N'pdf',NULL,NULL,0,NULL,NULL,'2023-07-30 01:25:36.407',N'admin'),
	 (N'F2BF880B-FA91-45D6-A049-3E26E1711487',N'test_file2',N'\siveronika\doc',N'pdf',NULL,NULL,0,NULL,NULL,'2023-07-30 01:25:36.407',N'admin'),
	 (N'E6ADAC12-74F7-47CE-84B0-5AD44884F995',N'test_file1',N'\siveronika\doc',N'pdf',NULL,NULL,0,NULL,NULL,'2023-07-30 01:25:36.407',N'admin'),
	 (N'1C251F3D-E272-47C2-91CE-7C5DBE51148C',N'test_file4',N'\siveronika\doc',N'pdf',NULL,NULL,0,NULL,NULL,'2023-07-30 01:25:36.407',N'admin'),
	 (N'F6B67735-1037-4E94-8830-A60A3FD20456',N'test_file3',N'\siveronika\doc',N'pdf',NULL,NULL,0,NULL,NULL,'2023-07-30 01:25:36.407',N'admin');
INSERT INTO db_siveronika.dbo.t_verification (verif_id,verif_no,bidang_id,verif_version,user_id,user_name,branch_id,verif_status,verif_deletion,verif_request_date,update_date,update_by,create_date,create_by) VALUES
	 (N'DB0267C6-C511-4D0C-B7D6-38CC960962AE',N'VR2306-001',N'0001',0,N'6C47838A-4D37-4762-96EF-B1BADBA05B2E',N'upt.cigudeg',N'BR002',NULL,NULL,NULL,NULL,NULL,'2023-07-30 01:16:40.767',N'admin');
INSERT INTO db_siveronika.dbo.t_verification_shop (verif_id,shop_id,period,total) VALUES
	 (N'DB0267C6-C511-4D0C-B7D6-38CC960962AE',N'7FAA9710-BF0E-439A-9E5F-65BC7E55CD9F',N'202306',8000000.00),
	 (N'DB0267C6-C511-4D0C-B7D6-38CC960962AE',N'7FAA9710-BF0E-439A-9E5F-65BC7E55CD9F',N'202307',9500000.00),
	 (N'DB0267C6-C511-4D0C-B7D6-38CC960962AE',N'DAB02D09-FAC1-4B16-BAEF-77F4281469E9',N'202307',9500000.00);
INSERT INTO db_siveronika.dbo.t_verification_shop_det (verif_id,shop_id,shop_sequence,doc_id,notes) VALUES
	 (N'DB0267C6-C511-4D0C-B7D6-38CC960962AE',N'7FAA9710-BF0E-439A-9E5F-65BC7E55CD9F',1,N'E6ADAC12-74F7-47CE-84B0-5AD44884F995',N'Nota Dinas'),
	 (N'DB0267C6-C511-4D0C-B7D6-38CC960962AE',N'7FAA9710-BF0E-439A-9E5F-65BC7E55CD9F',2,N'E6ADAC12-74F7-47CE-84B0-5AD44884F995',N'Surat Pesanan'),
	 (N'DB0267C6-C511-4D0C-B7D6-38CC960962AE',N'7FAA9710-BF0E-439A-9E5F-65BC7E55CD9F',3,NULL,N'Kwitansi'),
	 (N'DB0267C6-C511-4D0C-B7D6-38CC960962AE',N'7FAA9710-BF0E-439A-9E5F-65BC7E55CD9F',4,NULL,N'Faktur'),
	 (N'DB0267C6-C511-4D0C-B7D6-38CC960962AE',N'7FAA9710-BF0E-439A-9E5F-65BC7E55CD9F',5,NULL,N'Berita acara Serah Terima Hasil Pekerjaan'),
	 (N'DB0267C6-C511-4D0C-B7D6-38CC960962AE',N'DAB02D09-FAC1-4B16-BAEF-77F4281469E9',1,NULL,N'Nota Dinas'),
	 (N'DB0267C6-C511-4D0C-B7D6-38CC960962AE',N'DAB02D09-FAC1-4B16-BAEF-77F4281469E9',2,NULL,N'Surat Pesanan'),
	 (N'DB0267C6-C511-4D0C-B7D6-38CC960962AE',N'DAB02D09-FAC1-4B16-BAEF-77F4281469E9',3,NULL,N'Kwitansi'),
	 (N'DB0267C6-C511-4D0C-B7D6-38CC960962AE',N'DAB02D09-FAC1-4B16-BAEF-77F4281469E9',4,NULL,N'Faktur'),
	 (N'DB0267C6-C511-4D0C-B7D6-38CC960962AE',N'DAB02D09-FAC1-4B16-BAEF-77F4281469E9',5,NULL,N'Berita acara Serah Terima Hasil Pekerjaan');
