DROP DATABASE IF EXISTS quan_ly_sinh_vien;
CREATE DATABASE quan_ly_sinh_vien;
USE quan_ly_sinh_vien;

CREATE TABLE lop (
    ma_lop INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ten_lop VARCHAR(60) NOT NULL,
    ngay_bat_dau DATETIME NOT NULL,
    trang_thai BIT
);

CREATE TABLE sinh_vien (
    ma_sinh_vien INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ten_sinh_vien VARCHAR(30) NOT NULL,
    dia_chi VARCHAR(50),
    dien_thoai VARCHAR(20),
    trang_thai BIT,
    ma_lop INT NOT NULL,
    FOREIGN KEY (ma_lop)
        REFERENCES lop (ma_lop)
);

CREATE TABLE mon_hoc (
    ma_mon_hoc INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ten_mon_hoc VARCHAR(30) NOT NULL,
	tin_dung TINYINT NOT NULL DEFAULT 1 CHECK (tin_dung >= 1), 
    trang_thai BIT DEFAULT 1
);

CREATE TABLE diem (
    ma_diem INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ma_mon_hoc INT NOT NULL,
    ma_sinh_vien INT NOT NULL,
    diem FLOAT DEFAULT 0 CHECK (diem BETWEEN 0 AND 100),
    thoi_gian_thi TINYINT DEFAULT 1,
    UNIQUE (ma_mon_hoc , ma_sinh_vien),
    FOREIGN KEY (ma_mon_hoc)
        REFERENCES mon_hoc (ma_mon_hoc),
    FOREIGN KEY (ma_sinh_vien)
        REFERENCES sinh_vien (ma_sinh_vien)
);
