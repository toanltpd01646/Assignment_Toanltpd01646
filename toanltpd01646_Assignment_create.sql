-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2017-02-11 06:52:21.62

-- tables
-- Table: chiTietHoaDon
Create database DTDM_Assignment1
use DTDM_Assignment1
CREATE TABLE chiTietHoaDon (
    maHD char(10)  NOT NULL,
    maSP char(10)  NOT NULL,
    ngayLap datetime  NOT NULL,
    soLuongMua char(5)  NOT NULL,
    giaBan money  NOT NULL,
    hoaDon_maHD char(10)  NOT NULL,
    sanPham_maSP char(10)  NOT NULL,
    CONSTRAINT chiTietHoaDon_pk PRIMARY KEY  (maHD,maSP)
);

-- Table: hoaDon
CREATE TABLE hoaDon (
    maHD char(10)  NOT NULL,
    maKH char(10)  NOT NULL,
    ngayLap datetime  NOT NULL,
    khachHang_maKH char(10)  NOT NULL,
    CONSTRAINT hoaDon_pk PRIMARY KEY  (maHD)
);

-- Table: khachHang
CREATE TABLE khachHang (
    maKH char(10)  NOT NULL,
    tenKH nvarchar(100)  NOT NULL,
    diaChi nvarchar(200)  NOT NULL,
    sdt char(11)  NOT NULL,
    CONSTRAINT khachHang_pk PRIMARY KEY  (maKH)
);

-- Table: loaiSanPham
CREATE TABLE loaiSanPham (
    maLSP char(10)  NOT NULL,
    tenLSP nvarchar(100)  NOT NULL,
    CONSTRAINT loaiSanPham_pk PRIMARY KEY  (maLSP)
);

-- Table: sanPham
CREATE TABLE sanPham (
    maSP char(10)  NOT NULL,
    tenSP nvarchar(100)  NOT NULL,
    soLuong char(5)  NOT NULL,
    moTa nvarchar(255)  NOT NULL,
    maLSP char(10)  NOT NULL,
    loaiSanPham_maLSP char(10)  NOT NULL,
    CONSTRAINT sanPham_pk PRIMARY KEY  (maSP)
);

-- foreign keys
-- Reference: chiTietHoaDon_hoaDon (table: chiTietHoaDon)
ALTER TABLE chiTietHoaDon ADD CONSTRAINT chiTietHoaDon_hoaDon
    FOREIGN KEY (hoaDon_maHD)
    REFERENCES hoaDon (maHD);

-- Reference: chiTietHoaDon_sanPham (table: chiTietHoaDon)
ALTER TABLE chiTietHoaDon ADD CONSTRAINT chiTietHoaDon_sanPham
    FOREIGN KEY (sanPham_maSP)
    REFERENCES sanPham (maSP);

-- Reference: hoaDon_khachHang (table: hoaDon)
ALTER TABLE hoaDon ADD CONSTRAINT hoaDon_khachHang
    FOREIGN KEY (khachHang_maKH)
    REFERENCES khachHang (maKH);

-- Reference: sanPham_loaiSanPham (table: sanPham)
ALTER TABLE sanPham ADD CONSTRAINT sanPham_loaiSanPham
    FOREIGN KEY (loaiSanPham_maLSP)
    REFERENCES loaiSanPham (maLSP);


	--Thêm thông tin khách hàng --
	INSERT INTO khachHang VALUES('KH1','LÊ TẤN TOÀN','ĐÀ NẴNG','0935031423');
	INSERT INTO khachHang VALUES('KH2','TRỊNH NGỌC CẢ','ĐĂK LẮK','0123456789');
	INSERT INTO khachHang VALUES('KH3','TRƯƠNG ĐÌNH HÙNG','QUẢNG TRỊ','01233456788');

-- End of file.

