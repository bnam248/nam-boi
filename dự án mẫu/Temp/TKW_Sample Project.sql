CREATE TABLE nhan_vien(
	ma_nv VARCHAR(20) NOT NULL,
	mat_khau VARCHAR(50) NULL,
	ho_ten VARCHAR(50) NULL,
	PRIMARY KEY(ma_nv)
);
CREATE TABLE mon_hoc(
	ma_mh VARCHAR(20) NOT NULL,
	ten_mh VARCHAR(50) NOT NULL,
	hinh VARCHAR(50) NOT NULL,
	so_tc INT NOT NULL,
	mo_ta VARCHAR(255) NULL,
	PRIMARY KEY(ma_mh)
);
CREATE TABLE giang_vien(
	ma_gv VARCHAR(20) NOT NULL,
	mat_khau VARCHAR(50) NOT NULL,
	ho_ten VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL,
	mobile VARCHAR(50) NOT NULL,
	PRIMARY KEY(ma_gv)
);
CREATE TABLE hoc_ky(
	ma_hk VARCHAR(20) NOT NULL,
	ten_hk VARCHAR(50) NOT NULL,
	bat_dau DATE NOT NULL,
	ket_thuc DATE NOT NULL,
	PRIMARY KEY(ma_hk)
);
CREATE TABLE sinh_vien(
	ma_sv VARCHAR(20) NOT NULL,
	mat_khau VARCHAR(50) NOT NULL,
	ho_ten VARCHAR(50) NOT NULL,
	gioi_tinh bit NOT NULL,
	email VARCHAR(50) NOT NULL,
	mobile VARCHAR(50) NOT NULL,
	PRIMARY KEY(ma_sv)
);
CREATE TABLE lop_hoc(
	ma_lh VARCHAR(20) NOT NULL,
	ma_mh VARCHAR(20) NULL,
	ma_gv VARCHAR(20) NULL,
	ma_hk VARCHAR(20) NULL,
	PRIMARY KEY(ma_lh),
	UNIQUE(ma_mh, ma_gv, ma_hk)
);
CREATE TABLE hoc_vien(
	ma_hv INT AUTO_INCREMENT NOT NULL,
	ma_sv VARCHAR(20) NOT NULL,
	ma_lh VARCHAR(20) NOT NULL,
	diem FLOAT NULL,
	nhan_xet VARCHAR(50) NULL,
	PRIMARY KEY(ma_hv),
	UNIQUE(ma_sv, ma_lh)
);
