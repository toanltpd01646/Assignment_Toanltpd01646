-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2017-02-01 07:20:14.713

-- tables
-- Table: chiTietHoaDon

CREATE TABLE chiTietHoaDon (
 
   maHD char(10) NOT NULL,
 
   maSP char(10) NOT NULL,
 
   soLuongMua char(5) NOT NULL,
 
   giaBan int NOT NULL,
   
 hoaDon_maHD char(10) NOT NULL,
 
   sanPham_maSP char(10) NOT NULL,

    CONSTRAINT chiTietHoaDon_pk PRIMARY KEY (maHD,maSP)
);


-- Table: hoaDon
CREATE TABLE hoaDon (
 
   maHD char(10) NOT NULL,

   maKH char(10) NOT NULL,
    ngayLap datetime NOT NULL,

    khachHang_maKH char(5) NOT NULL,
 
   CONSTRAINT hoaDon_pk PRIMARY KEY (maHD)
);


-- Table: khachHang
CREATE TABLE khachHang (
    
   maKH char(5) NOT NULL,
    
   tenKH varchar(100) NOT NULL,

   diaChi varchar(200) NOT NULL,

   SDT char(11) NOT NULL,
 
   matKhau varchar(10) NOT NULL,
 
   CONSTRAINT khachHang_pk PRIMARY KEY (maKH)
);


-- Table: loaiSanPham
CREATE TABLE loaiSanPham (
  
  maLSP char(10) NOT NULL,
   
 tenLSP varchar(100) NOT NULL,

    CONSTRAINT loaiSanPham_pk PRIMARY KEY (maLSP)
);


-- Table: sanPham
CREATE TABLE sanPham (
   
 maSP char(10) NOT NULL,
   
 tenSP varchar(100) NOT NULL,
 
   moTa varchar(255) NOT NULL,
  
  soLuong char(5) NOT NULL,
  
  hinhAnh varchar(20) NOT NULL,
   
 maLSP char(10) NOT NULL,
    
loaiSanPham_maLSP char(10) NOT NULL,
 
 CONSTRAINT sanPham_pk PRIMARY KEY (maSP)
);


-- foreign keys
-- Reference: chiTietHoaDon_hoaDon (table: chiTietHoaDon)
ALTER TABLE chiTietHoaDon ADD CONSTRAINT chiTietHoaDon_hoaDon FOREIGN KEY chiTietHoaDon_hoaDon (hoaDon_maHD)
    REFERENCES hoaDon (maHD);


-- Reference: chiTietHoaDon_sanPham (table: chiTietHoaDon)
ALTER TABLE chiTietHoaDon ADD CONSTRAINT chiTietHoaDon_sanPham FOREIGN KEY chiTietHoaDon_sanPham (sanPham_maSP)
    REFERENCES sanPham (maSP);


-- Reference: hoaDon_khachHang (table: hoaDon)
ALTER TABLE hoaDon ADD CONSTRAINT hoaDon_khachHang FOREIGN KEY hoaDon_khachHang (khachHang_maKH)
    REFERENCES khachHang (maKH);


-- Reference: sanPham_loaiSanPham (table: sanPham)
ALTER TABLE sanPham ADD CONSTRAINT sanPham_loaiSanPham FOREIGN KEY sanPham_loaiSanPham (loaiSanPham_maLSP)
    REFERENCES loaiSanPham (maLSP);