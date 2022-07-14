DROP DATABASE IF EXISTS quan_ly_ban_hang;
CREATE DATABASE quan_ly_ban_hang;
USE quan_ly_ban_hang;

create table khach_hang (
	ma_khach_hang int primary key,
    ten_khach_hang varchar (55) not null,
    ngay_sinh date
);

create table don_dat_hang (
	ma_dat_hang int primary key,
    ma_khach_hang int not null,
    ngay_dat_hang date not null,
    tong_tien int not null,
    foreign key (ma_khach_hang) references khach_hang(ma_khach_hang)
);

create table san_pham (
	ma_san_pham int primary key,
    ten_san_pham varchar(30) not null,
    gia_san_pham int not null
);

CREATE TABLE chi_tiet_hoa_don (
    ma_dat_hang INT NOT NULL,
    ma_san_pham INT NOT NULL,
    so_luong INT NOT NULL,
    PRIMARY KEY (ma_dat_hang , ma_san_pham),
    FOREIGN KEY (ma_dat_hang)
        REFERENCES don_dat_hang (ma_dat_hang),
    FOREIGN KEY (ma_san_pham)
        REFERENCES san_pham (ma_san_pham)
);