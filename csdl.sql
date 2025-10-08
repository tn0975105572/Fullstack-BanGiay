-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: website
-- ------------------------------------------------------
-- Server version	9.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bangluong`
--

DROP TABLE IF EXISTS `bangluong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bangluong` (
  `MaBangLuong` varchar(50) NOT NULL,
  `MaNhanVien` varchar(50) DEFAULT NULL,
  `TongLuong` decimal(18,2) DEFAULT NULL,
  `ThoiGian` date DEFAULT NULL,
  PRIMARY KEY (`MaBangLuong`),
  KEY `MaNhanVien` (`MaNhanVien`),
  CONSTRAINT `bangluong_ibfk_1` FOREIGN KEY (`MaNhanVien`) REFERENCES `nhanvien` (`MaNhanVien`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bangluong`
--

LOCK TABLES `bangluong` WRITE;
/*!40000 ALTER TABLE `bangluong` DISABLE KEYS */;
INSERT INTO `bangluong` VALUES ('1','1',6000000.00,'2024-05-16'),('2','1',0.00,'2024-04-28');
/*!40000 ALTER TABLE `bangluong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chitietchamcong`
--

DROP TABLE IF EXISTS `chitietchamcong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chitietchamcong` (
  `Macc` varchar(50) NOT NULL,
  `MaNhanVien` varchar(50) DEFAULT NULL,
  `NgayChamCong` date DEFAULT NULL,
  PRIMARY KEY (`Macc`),
  KEY `MaNhanVien` (`MaNhanVien`),
  CONSTRAINT `chitietchamcong_ibfk_1` FOREIGN KEY (`MaNhanVien`) REFERENCES `nhanvien` (`MaNhanVien`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitietchamcong`
--

LOCK TABLES `chitietchamcong` WRITE;
/*!40000 ALTER TABLE `chitietchamcong` DISABLE KEYS */;
INSERT INTO `chitietchamcong` VALUES ('1','1','2024-03-01'),('10','3','2024-05-31'),('11','3','2024-05-31'),('12','3','2024-05-31'),('2','2','2024-03-02'),('3','3','2024-03-02'),('4','4','2024-03-02'),('5','5','2024-03-02'),('8','2','2024-12-12'),('9','5','2024-05-11');
/*!40000 ALTER TABLE `chitietchamcong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chitietdonhang`
--

DROP TABLE IF EXISTS `chitietdonhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chitietdonhang` (
  `MaChiTietHoaDon` varchar(50) NOT NULL,
  `MaDonHang` varchar(50) DEFAULT NULL,
  `MaSanPham` varchar(50) DEFAULT NULL,
  `SoLuong` int DEFAULT NULL,
  `Gia` decimal(18,2) DEFAULT NULL,
  `MaNhanVien` varchar(50) DEFAULT NULL,
  `GiamGia` varchar(50) NOT NULL,
  `Size` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`MaChiTietHoaDon`),
  KEY `MaDonHang` (`MaDonHang`),
  KEY `MaSanPham` (`MaSanPham`),
  KEY `MaNhanVien` (`MaNhanVien`),
  KEY `chitietdonhang` (`GiamGia`),
  CONSTRAINT `chitietdonhang` FOREIGN KEY (`GiamGia`) REFERENCES `magiamgia` (`GiamGia`),
  CONSTRAINT `chitietdonhang_ibfk_1` FOREIGN KEY (`MaDonHang`) REFERENCES `donhang` (`MaDonHang`),
  CONSTRAINT `chitietdonhang_ibfk_2` FOREIGN KEY (`MaSanPham`) REFERENCES `sanpham` (`MaSanPham`),
  CONSTRAINT `chitietdonhang_ibfk_3` FOREIGN KEY (`MaNhanVien`) REFERENCES `nhanvien` (`MaNhanVien`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitietdonhang`
--

LOCK TABLES `chitietdonhang` WRITE;
/*!40000 ALTER TABLE `chitietdonhang` DISABLE KEYS */;
INSERT INTO `chitietdonhang` VALUES ('08340f70-bd63-4a5c-8c13-c1659780b158','6','010',6,1800580.00,'1','0','34'),('1ccef467-ee57-4f1f-ae7d-12816a2e03bc','12','009',1,1456000.00,'1','0','35'),('207af2f9-0faa-4e01-b93d-92657149dafd','10','020',1,600000.00,'1','0','39'),('2c0b7df5-d541-4821-b415-fd6047a52e72','5','014',1,2800000.00,'1','0','34'),('36321e7a-e978-47c3-b3a5-4f2dc9fe4062','7','015',1,695000.00,'1','0','34'),('3d821e4b-ada3-4782-a030-1db3a5a005a1','4','002',1,2500000.00,'1','0','34'),('4495688b-05ae-4051-bc41-8ce3742c7abe','6','008',1,2800600.00,'1','0','34'),('6458b493-7362-42af-9ed7-e45f6d5caac9','5','012',1,2900233.00,'1','0','34'),('8611cefa-a2d3-427f-9171-c7245e7bb2b0','11','006',1,550000.00,'1','0','38'),('89c16fe4-27a7-4d13-bb3a-09214cc52b9a','13','012',1,2900233.00,'1','0','40'),('8a8eee8f-5cc1-4741-ab09-7e33bd91cc6b','8','024',1,1100000.00,'1','0','34'),('98a90b17-ac3d-439b-973e-a15db4832be6','6','010',7,1800580.00,'1','0','34'),('a225a297-52e3-402e-ac5b-b15bd8aa9be8','9','010',1,1800580.00,'1','0','34'),('c89a932e-f41b-488f-8948-4c4334a1ff13','6','008',1,2800600.00,'1','0','34'),('d96e10fd-8e56-48a1-9a78-a515b396c459','5','016',1,730000.00,'1','0','34'),('e7cc788b-8f71-4779-8bfa-e8a9ca2f3be3','3','030',1,1050000.00,'1','0','3434'),('f5bb121f-b2e8-4912-80cc-17f90d4be195','2','030',1,1050000.00,'1','0','34'),('fe437021-49e3-440c-b8e6-350744c2a4b1','1','010',1,1800580.00,'1','0','34');
/*!40000 ALTER TABLE `chitietdonhang` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_tong_tien` AFTER INSERT ON `chitietdonhang` FOR EACH ROW BEGIN
   DECLARE giamGiaPercent DECIMAL(18,2) DEFAULT 0;
   DECLARE tongTienChiTiet DECIMAL(18,2) DEFAULT 0;

   -- Lấy tổng tiền tất cả chi tiết của đơn hàng đó
   SELECT SUM(`Gia` * `SoLuong`) 
   INTO tongTienChiTiet
   FROM `chitietdonhang`
   WHERE `MaDonHang` = NEW.`MaDonHang`;

   -- Lấy giảm giá tương ứng mã giảm giá mới thêm (nếu có)
   SELECT `GiaTri` 
   INTO giamGiaPercent
   FROM `magiamgia`
   WHERE `GiamGia` = NEW.`GiamGia`
   LIMIT 1;

   -- Cập nhật tổng tiền cho đơn hàng
   UPDATE `donhang`
   SET `TongTien` = tongTienChiTiet * (1 - giamGiaPercent / 100)
   WHERE `MaDonHang` = NEW.`MaDonHang`;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `donhang`
--

DROP TABLE IF EXISTS `donhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donhang` (
  `MaDonHang` varchar(50) NOT NULL,
  `MaKhachHang` varchar(50) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `NgayDat` datetime DEFAULT NULL,
  `ThoiGianNhanHang` datetime DEFAULT NULL,
  `TongTien` decimal(18,2) DEFAULT NULL,
  `TrangThaiThanhToan` tinyint(1) DEFAULT '0',
  `GhiChu` text,
  `TrangThaiDonHang` enum('Chờ xử lý','Đã xử lý','Đang giao','Đã giao','Đã hủy') DEFAULT 'Chờ xử lý',
  `PhuongThucThanhToan` enum('Tiền mặt','Chuyển khoản','Thẻ tín dụng','Ví điện tử') DEFAULT 'Tiền mặt',
  PRIMARY KEY (`MaDonHang`),
  KEY `MaKhachHang` (`MaKhachHang`),
  CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`MaKhachHang`) REFERENCES `khachhang` (`MaKhachHang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donhang`
--

LOCK TABLES `donhang` WRITE;
/*!40000 ALTER TABLE `donhang` DISABLE KEYS */;
INSERT INTO `donhang` VALUES ('1','812e4184-ad7a-4f0f-a65b-4fbcdf20d0b7','123@gmail.com','2025-05-12 14:10:04',NULL,1800580.00,1,NULL,'Chờ xử lý','Tiền mặt'),('10','c3f381cc-3e35-408c-85eb-a422f75cc624','123@gmail.com','2025-05-24 11:06:22',NULL,600000.00,0,NULL,'Chờ xử lý','Tiền mặt'),('11','9edb7e80-8a5e-4da3-aa78-4c355734a7a9','123@gmail.com','2025-05-26 13:49:24',NULL,550000.00,0,NULL,'Đã xử lý','Tiền mặt'),('12','5540a5d4-ec0c-4a9b-ba17-a82110979224','123@gmail.com','2025-06-10 02:15:34','2025-06-11 13:21:00',1456000.00,0,NULL,'Đã xử lý','Chuyển khoản'),('13','5803ae02-f728-4f9a-a53e-57f31364242f','tn0975105572@gmail.com','2025-06-16 08:25:30','2025-06-16 14:35:00',2900233.00,0,NULL,'Chờ xử lý','Chuyển khoản'),('2','2af02b59-e30e-4be5-9ede-3eb4b38afed0','123@gmail.com','2025-05-19 14:48:08',NULL,1050000.00,1,NULL,'Đã giao','Chuyển khoản'),('3','2af02b59-e30e-4be5-9ede-3eb4b38afed0','tn0975105572@gmail.com','2025-05-19 14:48:25',NULL,1050000.00,1,NULL,'Đã hủy','Tiền mặt'),('4','5b0faa0d-f968-42b2-89fb-7434c87778ee','123@gmail.com','2025-05-21 03:39:32',NULL,2500000.00,0,NULL,'Đã xử lý','Tiền mặt'),('5','38a6deba-e035-4201-9c52-e80485939de3','123@gmail.com','2025-05-21 14:40:33',NULL,6430233.00,0,NULL,'Đang giao','Tiền mặt'),('6','13b2fca2-039a-414e-96a8-de5240121397','123@gmail.com','2025-05-22 11:01:41',NULL,29008740.00,0,NULL,'Chờ xử lý','Chuyển khoản'),('7','b840e191-fe31-46db-9c7b-5b338e6f4da6','123@gmail.com','2025-05-24 08:43:11',NULL,695000.00,1,NULL,'Chờ xử lý','Tiền mặt'),('8','a674c10f-1aec-4c25-94b1-ccf910316e7b','123@gmail.com','2025-05-24 08:54:41',NULL,1100000.00,0,NULL,'Đã xử lý','Tiền mặt'),('9','897f77ca-5ca6-4d33-919a-d0bc9a772f7e','123@gmail.com','2025-05-24 11:04:49',NULL,1800580.00,0,NULL,'Đã hủy','Tiền mặt');
/*!40000 ALTER TABLE `donhang` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_update_product_quantity_after_order_processed` AFTER UPDATE ON `donhang` FOR EACH ROW BEGIN
  -- Kiểm tra nếu trạng thái đơn hàng chuyển thành 'Đã xử lý'
  IF NEW.TrangThaiDonHang = 'Đã xử lý' AND OLD.TrangThaiDonHang != 'Đã xử lý' THEN

    -- Cập nhật số lượng theo từng size trong bảng sanphamsize
    UPDATE sanphamsize spz
    JOIN chitietdonhang ct 
      ON spz.MaSanPham = ct.MaSanPham AND spz.Size = ct.Size
    SET spz.SoLuong = spz.SoLuong - ct.SoLuong
    WHERE ct.MaDonHang = NEW.MaDonHang;

  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `hoadonnhap`
--

DROP TABLE IF EXISTS `hoadonnhap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hoadonnhap` (
  `MaHoaDonNhap` varchar(50) NOT NULL,
  `MaNhaCungCap` varchar(50) DEFAULT NULL,
  `MaSanPham` varchar(50) DEFAULT NULL,
  `NgayNhap` datetime DEFAULT NULL,
  `TongTien` decimal(18,2) DEFAULT NULL,
  PRIMARY KEY (`MaHoaDonNhap`),
  KEY `MaNhaCungCap` (`MaNhaCungCap`),
  KEY `MaSanPham` (`MaSanPham`),
  CONSTRAINT `hoadonnhap_ibfk_1` FOREIGN KEY (`MaNhaCungCap`) REFERENCES `nhacungcap` (`MaNhaCungCap`),
  CONSTRAINT `hoadonnhap_ibfk_2` FOREIGN KEY (`MaSanPham`) REFERENCES `sanpham` (`MaSanPham`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoadonnhap`
--

LOCK TABLES `hoadonnhap` WRITE;
/*!40000 ALTER TABLE `hoadonnhap` DISABLE KEYS */;
/*!40000 ALTER TABLE `hoadonnhap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khachhang`
--

DROP TABLE IF EXISTS `khachhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khachhang` (
  `MaKhachHang` varchar(50) NOT NULL,
  `HoTen` varchar(100) DEFAULT NULL,
  `DiaChi` varchar(200) DEFAULT NULL,
  `SoDienThoai` varchar(20) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`MaKhachHang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khachhang`
--

LOCK TABLES `khachhang` WRITE;
/*!40000 ALTER TABLE `khachhang` DISABLE KEYS */;
INSERT INTO `khachhang` VALUES ('1','Nguyễn Văn31222222222222222222222222 Dũng','Hưng Yên','0987658263','ducon@gmail.com'),('10','Lê Thị Hồng','Hải Phòng','0978563421','hongle@gmail.com'),('11','Phạm Văn Hưng','Quảng Ninh','0912345678','hungpham@gmail.com'),('12','Nguyễn Thị Lan','Nam Định','0968451237','lannguyen@gmail.com'),('13','Đỗ Duy Anh','TP.HCM','0932456789','anhdo@gmail.com'),('13b2fca2-039a-414e-96a8-de5240121397','5345','345, Xã Ninh Quới, Huyện Hồng Dân, Tỉnh Bạc Liêu','34534','123@gmail.com'),('14','Hoàng Thị Mai','Đà Nẵng','0905123789','maimai@gmail.com'),('15','Bùi Văn Tài','Nghệ An','0978541236','taibui@gmail.com'),('16','Trịnh Thị Hương','Thanh Hóa','0945127893','huongtrinh@gmail.com'),('17','Dương Minh Đức','Cần Thơ','0923412789','ducduong@gmail.com'),('18','Nguyễn Quốc Bảo','Vĩnh Phúc','0987236451','baoquoc@gmail.com'),('19','Cao Thị Thu','Bắc Giang','0912784563','thucao@gmail.com'),('2','Nguyễn Thị Nhung','Hà Nội','0976826374','nhung@gmail.com'),('20','Vũ Đức Long','Phú Thọ','0903456782','longvu@gmail.com'),('21','Trần Hồng Sơn','Hải Dương','0967123456','sontran@gmail.com'),('22','Lương Bảo Châu','Huế','0932784561','chauluong@gmail.com'),('23','Phan Thị Thanh','Đồng Nai','0971346289','thanhphan@gmail.com'),('24','Nguyễn Minh Tú','Bình Dương','0923416789','tuminh@gmail.com'),('25','Tạ Văn Nam','Hà Tĩnh','0987456321','namta@gmail.com'),('26','Đặng Thị Vân','Lạng Sơn','0978123456','vandang@gmail.com'),('27','Lý Thái Hòa','Bắc Ninh','0945671234','hoaly@gmail.com'),('28','Đinh Công Sơn','Gia Lai','0918234567','sondinh@gmail.com'),('29','Nguyễn Anh Tú','Hà Giang','0909876543','tunguyen@gmail.com'),('2af02b59-e30e-4be5-9ede-3eb4b38afed0','5345','345, Xã Ninh Quới, Huyện Hồng Dân, Tỉnh Bạc Liêu','34534','123@gmail.com'),('3','Chu Tuấn Anh','Hà Nội','0983725483','anhdz@gmail.com'),('30','Trần Thị Ngọc','Bình Định','0923412876','ngoctran@gmail.com'),('31','Phạm Văn Tùng','Sóc Trăng','0962345123','tungpham@gmail.com'),('32','Lưu Thị Hạnh','Cao Bằng','0937812456','hanhluu@gmail.com'),('33','Ngô Văn Kiên','Sơn La','0971342879','kienngo@gmail.com'),('34','Lê Minh Phúc','Bạc Liêu','0956123487','phucle@gmail.com'),('35','Đoàn Thị Lệ','Hậu Giang','0982714563','ledoan@gmail.com'),('36','Phan Văn Thịnh','Kiên Giang','0947123658','thinhphan@gmail.com'),('37','Nguyễn Thị Hòa','Lâm Đồng','0912345789','hoanguyen@gmail.com'),('38','Hoàng Công Minh','Tây Ninh','0905671248','minhhoang@gmail.com'),('38a6deba-e035-4201-9c52-e80485939de3','5345','345, Xã Ninh Quới, Huyện Hồng Dân, Tỉnh Bạc Liêu','34534','123@gmail.com'),('39','Bùi Thị Dung','Tiền Giang','0961452783','dungbui@gmail.com'),('3acbdb93-5646-42f4-a4ff-73d93c4ae33b','5345','345, Xã Ninh Quới, Huyện Hồng Dân, Tỉnh Bạc Liêu','34534','123@gmail.com'),('45c4eaac-82ee-4bb7-bd18-858f83ee3e87','5345','345, Xã Ninh Quới, Huyện Hồng Dân, Tỉnh Bạc Liêu','34534','123@gmail.com'),('4a77a091-2284-4470-8c76-25a1bacdb25f','5345','345, Xã Ninh Quới, Huyện Hồng Dân, Tỉnh Bạc Liêu','34534','123@gmail.com'),('5540a5d4-ec0c-4a9b-ba17-a82110979224','5345','345, Xã Ninh Quới, Huyện Hồng Dân, Tỉnh Bạc Liêu','34534','123@gmail.com'),('5803ae02-f728-4f9a-a53e-57f31364242f','nguyen duy tuahs','thoogn phus hoaf, Thị trấn Tà Lùng, Huyện Quảng Hòa, Tỉnh Cao Bằng','0987398372','tn0975105572@gmail.com'),('5b0faa0d-f968-42b2-89fb-7434c87778ee','5345','345, Xã Ninh Quới, Huyện Hồng Dân, Tỉnh Bạc Liêu','34534','123@gmail.com'),('63c6aff9-6711-4b3e-8511-062c39df436e','5345','345, Xã Ninh Quới, Huyện Hồng Dân, Tỉnh Bạc Liêu','34534','123@gmail.com'),('7f874183-b8eb-4683-bfb3-0ee04cad0660','5345','345, Xã Ninh Quới, Huyện Hồng Dân, Tỉnh Bạc Liêu','34534','123@gmail.com'),('812e4184-ad7a-4f0f-a65b-4fbcdf20d0b7','5345','345, Xã Ninh Quới, Huyện Hồng Dân, Tỉnh Bạc Liêu','34534','123@gmail.com'),('897f77ca-5ca6-4d33-919a-d0bc9a772f7e','5345','345, Xã Ninh Quới, Huyện Hồng Dân, Tỉnh Bạc Liêu','34534','123@gmail.com'),('95f8e2df-f61c-4ac6-8f52-39dd3e09b2ec','5345','345, Xã Ninh Quới, Huyện Hồng Dân, Tỉnh Bạc Liêu','34534','123@gmail.com'),('9edb7e80-8a5e-4da3-aa78-4c355734a7a9','5345','345, Xã Ninh Quới, Huyện Hồng Dân, Tỉnh Bạc Liêu','34534','123@gmail.com'),('a674c10f-1aec-4c25-94b1-ccf910316e7b','5345','345, Xã Ninh Quới, Huyện Hồng Dân, Tỉnh Bạc Liêu','34534','123@gmail.com'),('aaa90cce-d8a3-41ac-85c5-f7511c074d50','5345','345, Xã Ninh Quới, Huyện Hồng Dân, Tỉnh Bạc Liêu','34534','123@gmail.com'),('b840e191-fe31-46db-9c7b-5b338e6f4da6','5345','345, Xã Ninh Quới, Huyện Hồng Dân, Tỉnh Bạc Liêu','34534','123@gmail.com'),('c3f381cc-3e35-408c-85eb-a422f75cc624','5345','345, Xã Ninh Quới, Huyện Hồng Dân, Tỉnh Bạc Liêu','34534','123@gmail.com'),('d2b24bd8-87f0-43fb-a27e-77f69e5be798','5345','345, Xã Ninh Quới, Huyện Hồng Dân, Tỉnh Bạc Liêu','34534','123@gmail.com'),('d95e5807-a06b-4f6f-9879-0ca4035d6937','5345','345, Xã Ninh Quới, Huyện Hồng Dân, Tỉnh Bạc Liêu','34534','123@gmail.com');
/*!40000 ALTER TABLE `khachhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `magiamgia`
--

DROP TABLE IF EXISTS `magiamgia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `magiamgia` (
  `GiamGia` varchar(50) NOT NULL,
  `GiaTri` decimal(18,2) DEFAULT NULL,
  `MoTa` text,
  `NgayBatDau` datetime DEFAULT NULL,
  `NgayKetThuc` datetime DEFAULT NULL,
  `SoLuong` int DEFAULT '0',
  `DieuKienApDung` text,
  `TrangThai` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`GiamGia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `magiamgia`
--

LOCK TABLES `magiamgia` WRITE;
/*!40000 ALTER TABLE `magiamgia` DISABLE KEYS */;
INSERT INTO `magiamgia` VALUES ('0',0.00,'0','2025-06-01 00:00:00','2025-06-30 23:59:59',0,'0',0),('1',NULL,NULL,NULL,NULL,0,NULL,1),('AUTUMN40',30.00,'Giảm 30% cho đơn hàng mùa thu','2025-09-01 00:00:00','2025-09-30 23:59:59',200,'Áp dụng cho đơn hàng trên 400K',0),('BIRTHDAY100',25.00,'Giảm 25% cho đơn hàng sinh nhật','2025-01-01 00:00:00','2025-12-31 23:59:59',100,'Áp dụng cho khách hàng vào ngày sinh nhật',1),('BLACKFRIDAY',20.00,'Giảm 20% cho dịp Black Friday','2025-11-28 00:00:00','2025-11-28 23:59:59',500,'Chỉ áp dụng trong ngày Black Friday',1),('BLACKFRIDAY10',15.00,'Giảm 15% cho dịp Black Friday','2025-11-27 00:00:00','2025-11-27 23:59:59',500,'Chỉ áp dụng trong ngày Black Friday',1),('CHRISTMAS2025',20.00,'Giảm 20% cho dịp Giáng Sinh','2025-12-20 00:00:00','2025-12-26 23:59:59',100,'Áp dụng cho tất cả đơn hàng',1),('CLEARANCE50',25.00,'Giảm 25% cho hàng tồn kho','2025-05-01 00:00:00','2025-05-31 23:59:59',200,'Áp dụng cho sản phẩm tồn kho',0),('EASTER30',15.00,'Giảm 15% cho dịp lễ Phục Sinh','2025-04-01 00:00:00','2025-04-15 23:59:59',100,'Áp dụng cho đơn hàng trên 400K',0),('FAMILY50',20.00,'Giảm 20% cho đơn hàng gia đình','2025-07-01 00:00:00','2025-07-31 23:59:59',200,'Áp dụng cho đơn hàng từ 1 triệu',0),('FREESHIP',10.00,'Giảm 10% phí vận chuyển','2025-03-01 00:00:00','2025-03-15 23:59:59',50,'Chỉ áp dụng cho khách hàng mới',0),('FREESHIP100',0.00,'Miễn phí vận chuyển cho đơn hàng trên 1 triệu','2025-03-01 00:00:00','2025-03-15 23:59:59',50,'Chỉ áp dụng cho đơn hàng trên 1 triệu',0),('FREESHIP2',15.00,'Giảm 15% phí vận chuyển','2025-03-01 00:00:00','2025-03-15 23:59:59',50,'Chỉ áp dụng cho đơn hàng trên 300K',0),('FRIDAYFREESHIP',0.00,'Miễn phí vận chuyển vào thứ 6','2025-04-01 00:00:00','2025-04-30 23:59:59',200,'Áp dụng cho đơn hàng bất kỳ',0),('HALLOWEEN20',20.00,'Giảm 20% cho dịp Halloween','2025-10-01 00:00:00','2025-10-31 23:59:59',150,'Áp dụng cho đơn hàng trên 500K',1),('HAPPYHOUR',10.00,'Giảm 10% vào giờ vàng','2025-04-01 12:00:00','2025-04-01 14:00:00',50,'Chỉ áp dụng trong 2 giờ',0),('LOYALCUSTOMER',25.00,'Giảm 25% cho khách hàng trung thành','2025-03-01 00:00:00','2025-03-31 23:59:59',100,'Áp dụng cho khách hàng đã mua hàng 5 lần',0),('NEWYEAR2025',30.00,'Giảm 30% nhân dịp năm mới','2025-12-25 00:00:00','2025-12-31 23:59:59',200,'Áp dụng cho tất cả đơn hàng trên 1 triệu',1),('NEWYEAR50',20.00,'Giảm 20% nhân dịp năm mới','2025-12-25 00:00:00','2025-12-31 23:59:59',200,'Áp dụng cho tất cả đơn hàng',1),('REFERFRIEND',15.00,'Giảm 15% khi giới thiệu bạn bè','2025-05-01 00:00:00','2025-05-31 23:59:59',150,'Áp dụng khi bạn bè mua hàng',0),('SALE50',20.00,'Giảm 20% cho đơn hàng từ 500K','2025-03-01 00:00:00','2025-03-31 23:59:59',100,'Áp dụng cho đơn hàng từ 500K trở lên',0),('SCHOOL30',10.00,'Giảm 10% cho sinh viên','2025-08-01 00:00:00','2025-08-31 23:59:59',100,'Cần xuất trình thẻ sinh viên',0),('SPRING25',15.00,'Giảm 15% cho đơn hàng mùa xuân','2025-04-01 00:00:00','2025-04-30 23:59:59',100,'Áp dụng cho đơn hàng trên 300K',0),('STUDENT20',10.00,'Giảm 10% cho sinh viên','2025-03-01 00:00:00','2025-03-31 23:59:59',100,'Cần xuất trình thẻ sinh viên',0),('SUMMER30',30.00,'Giảm 30% cho đơn hàng hè','2025-06-01 00:00:00','2025-06-30 23:59:59',150,'Áp dụng cho đơn hàng trên 700K',0),('SUMMER50',25.00,'Giảm 25% cho đơn hàng mùa hè','2025-06-01 00:00:00','2025-06-30 23:59:59',150,'Áp dụng cho đơn hàng trên 500K',0),('SUMMERFREESHIP',0.00,'Miễn phí vận chuyển mùa hè','2025-06-01 00:00:00','2025-06-30 23:59:59',200,'Áp dụng cho khách hàng mới',0),('TET2025',30.00,'Giảm 30% dịp Tết Nguyên Đán','2025-01-01 00:00:00','2025-01-10 23:59:59',300,'Áp dụng cho tất cả đơn hàng',0),('VIP10',10.00,'Giảm 10% cho khách hàng VIP','2025-03-01 00:00:00','2025-03-31 23:59:59',50,'Chỉ áp dụng cho khách hàng VIP',0),('VIPFREESHIP',0.00,'Miễn phí vận chuyển cho khách hàng VIP','2025-06-01 00:00:00','2025-06-30 23:59:59',100,'Chỉ áp dụng cho khách hàng VIP',0),('WEEKEND25',15.00,'Giảm 15% cho đơn hàng cuối tuần','2025-04-01 00:00:00','2025-04-30 23:59:59',100,'Áp dụng cho đơn hàng vào cuối tuần',0),('WINTER20',20.00,'Giảm 20% cho đơn hàng mùa đông','2025-12-01 00:00:00','2025-12-31 23:59:59',150,'Áp dụng cho khách hàng mới',1);
/*!40000 ALTER TABLE `magiamgia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhacungcap`
--

DROP TABLE IF EXISTS `nhacungcap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhacungcap` (
  `MaNhaCungCap` varchar(50) NOT NULL,
  `TenNhaCungCap` varchar(200) DEFAULT NULL,
  `DiaChi` varchar(200) DEFAULT NULL,
  `SoDienThoai` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`MaNhaCungCap`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhacungcap`
--

LOCK TABLES `nhacungcap` WRITE;
/*!40000 ALTER TABLE `nhacungcap` DISABLE KEYS */;
INSERT INTO `nhacungcap` VALUES ('1','Công Ty TNHH Điện Tử ABECO Việt Nam','Số 48, Đường Hoa Bằng Lăng, Khu Đô Thị Long Việt, Thị Trấn Quang Minh, Huyện Mê Linh, Hà Nội',' 033 4050129'),('10','Công Ty TNHH Sản Xuất Giày Đẹp','Số 654, Đường Đẹp, Khu Công Nghiệp Amata, Đồng Nai','0934567890'),('11','Công Ty TNHH Giày Thể Thao Golden','Số 111, Đường Thể Thao, Q. 1, TP. Hồ Chí Minh','0123456781'),('12','Công Ty Cổ Phần Giày Nam Phong','Số 222, Đường Nam Phong, Q. 2, TP. Hồ Chí Minh','0987654322'),('13','Công Ty TNHH Giày Nữ Xinh','Số 333, Đường Nữ Xinh, Q. 3, TP. Hồ Chí Minh','0981234568'),('14','Công Ty TNHH Giày Công Sở','Số 444, Đường Công Sở, Q. 4, TP. Hồ Chí Minh','0912345679'),('15','Công Ty TNHH Giày Thể Thao Sporty','Số 555, Đường Sporty, Q. 5, TP. Hồ Chí Minh','0934567891'),('16','Công Ty TNHH Giày Da Sang Trọng','Số 666, Đường Sang Trọng, Q. 6, TP. Hồ Chí Minh','0123456782'),('17','Công Ty Cổ Phần Giày Xuất Khẩu','Số 777, Đường Xuất Khẩu, Q. 7, TP. Hồ Chí Minh','0987654323'),('18','Công Ty TNHH Giày Chạy Bộ','Số 888, Đường Chạy Bộ, Q. 8, TP. Hồ Chí Minh','0981234569'),('19','Công Ty TNHH Giày Thể Thao Phong Cách','Số 999, Đường Phong Cách, Q. 9, TP. Hồ Chí Minh','0912345680'),('2','Công Ty TNHH GENESISTEK VINA','D9-26, Đường D9, The Manhattan, Khu đô thị Vinhomes Grand Park, Phường Long Bình, TP. Thủ Đức, Tp. Hồ Chí Minh',' 0902430821'),('20','Công Ty TNHH Giày Trẻ Em','Số 1010, Đường Trẻ Em, Q. 10, TP. Hồ Chí Minh','0934567892'),('21','Công Ty TNHH Giày Bóng Đá','Số 1111, Đường Bóng Đá, Q. 11, TP. Hồ Chí Minh','0123456783'),('22','Công Ty Cổ Phần Giày Thể Thao Việt','Số 1212, Đường Thể Thao Việt, Q. 12, TP. Hồ Chí Minh','0987654324'),('23','Công Ty TNHH Giày Thời Trang','Số 1313, Đường Thời Trang, Q. 13, TP. Hồ Chí Minh','0981234570'),('24','Công Ty TNHH Giày Đẹp Hàng Đầu','Số 1414, Đường Hàng Đầu, Q. 14, TP. Hồ Chí Minh','0912345681'),('25','Công Ty TNHH Giày Cao Cấp','Số 1515, Đường Cao Cấp, Q. 15, TP. Hồ Chí Minh','0934567893'),('26','Công Ty TNHH Giày Thể Thao Pro','Số 1616, Đường Pro, Q. 16, TP. Hồ Chí Minh','0123456784'),('27','Công Ty Cổ Phần Giày Thể Thao Quốc Tế','Số 1717, Đường Quốc Tế, Q. 17, TP. Hồ Chí Minh','0987654325'),('28','Công Ty TNHH Giày Đi Bộ','Số 1818, Đường Đi Bộ, Q. 18, TP. Hồ Chí Minh','0981234571'),('29','Công Ty TNHH Giày Thể Thao Cao Cấp','Số 1919, Đường Cao Cấp, Q. 19, TP. Hồ Chí Minh','0912345682'),('3','Công Ty TNHH Điện Tử Minh Hà','Tầng 3, Số 1, Ngõ 120 Trường Chinh, P. Phương Mai, Q. Đống Đa, Hà Nội','0965 891 166'),('30','Công Ty TNHH Giày Thể Thao Thông Minh','Số 2020, Đường Thông Minh, Q. 20, TP. Hồ Chí Minh','0934567894'),('4','Công Ty TNHH SI YUAN TECH','Lô G3, Đường N5, KCN Châu Sơn, P. Châu Sơn, Tp. Phủ Lý, Hà Nam','08123 96 336'),('5','Công ty cổ phần điện tử tự động Nguyên Phi','170 Bùi Hữu Nghĩa, P. 8, Q. 5, Tp. Hồ Chí Minh','0396845041'),('6','Công Ty TNHH Giày Thể Thao ABC','Số 123, Đường Giày Thể Thao, Khu Công Nghiệp Bình Hưng Hòa, TP. Hồ Chí Minh','0123456789'),('7','Công Ty Cổ Phần Giày Thể Thao XYZ','Số 456, Đường Giày, Phường 3, Q. Gò Vấp, TP. Hồ Chí Minh','0987654321'),('8','Công Ty TNHH Giày Da Bền','Số 789, Đường Da, Khu Công Nghiệp Việt Hương, Bình Dương','0981234567'),('9','Công Ty TNHH Giày Mới','Số 321, Đường Mới, Thị Trấn Hóc Môn, TP. Hồ Chí Minh','0912345678');
/*!40000 ALTER TABLE `nhacungcap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhanvien`
--

DROP TABLE IF EXISTS `nhanvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhanvien` (
  `MaNhanVien` varchar(50) NOT NULL,
  `HoTen` varchar(100) DEFAULT NULL,
  `GioiTinh` varchar(10) DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `DiaChi` varchar(200) DEFAULT NULL,
  `SoDienThoai` varchar(20) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`MaNhanVien`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhanvien`
--

LOCK TABLES `nhanvien` WRITE;
/*!40000 ALTER TABLE `nhanvien` DISABLE KEYS */;
INSERT INTO `nhanvien` VALUES ('1','Chu Tuấn Vũ','Nam','2004-12-12','HungYen','0948726482','chuvu@gmail.com'),('2','Đỗ Đức Thụy','Nam','2002-01-30','HaNoi','0398764916','ducthuy@gmail.com'),('3','Nguyễn Quốc Anh','Nam','2004-10-23','HaGiang','0234859392','anh23@gmail.com'),('3a006997-dcb0-43e6-bb0a-4f34b5e077f1','string','string','2024-12-24','string','string','string'),('4','string','string','2024-12-14','string','string','string'),('5','Hoàng Thị Kim Tuyến','Nu','2004-03-15','HungYen','098726371','kimtuy@gmail.com'),('6','12','Nu','2024-04-28','123','123','123'),('7','Nguyễn Duy Tuấn','Nam','2004-08-10','123','0974737828','tn029@gmail.com'),('f59bf8bd-fcaf-4a97-a2ee-a74b90df5b8d','nguyenquocanh','nam','2024-12-08','HY','0983299912','string'),('string','khachhang','nam','2024-12-08','Hưng Yên','0929302012','String');
/*!40000 ALTER TABLE `nhanvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sanpham`
--

DROP TABLE IF EXISTS `sanpham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sanpham` (
  `MaSanPham` varchar(50) NOT NULL,
  `TenSanPham` varchar(200) DEFAULT NULL,
  `Gia` decimal(18,2) DEFAULT NULL,
  `MoTa` text,
  `MaNhaCungCap` varchar(50) DEFAULT NULL,
  `SoLuong` int DEFAULT NULL,
  `Hang` varchar(50) DEFAULT NULL,
  `Tag` text,
  `Sao` char(10) DEFAULT NULL,
  `LinkAnh` text,
  `GiamGia` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`MaSanPham`),
  KEY `MaNhaCungCap` (`MaNhaCungCap`),
  KEY `fk_sanpham_giamgia` (`GiamGia`),
  CONSTRAINT `fk_sanpham_giamgia` FOREIGN KEY (`GiamGia`) REFERENCES `magiamgia` (`GiamGia`),
  CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`MaNhaCungCap`) REFERENCES `nhacungcap` (`MaNhaCungCap`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanpham`
--

LOCK TABLES `sanpham` WRITE;
/*!40000 ALTER TABLE `sanpham` DISABLE KEYS */;
INSERT INTO `sanpham` VALUES ('001','Giày SKOOL LOGO CHECK BLACK',1048000.00,'Giày Vans nổi tiếng với phong cách trẻ trung và cá tính, được ưa chuộng bởi giới trẻ và những người yêu thích thời trang đường phố. Được làm từ chất liệu vải canvas bền bỉ, giày Vans mang lại cảm giác thoải mái và thoáng khí cho người sử dụng. Đế giày cao su đặc trưng của Vans giúp tăng cường độ bám và độ bền, phù hợp cho cả hoạt động thể thao và sử dụng hàng ngày. Với nhiều mẫu mã và màu sắc đa dạng, giày Vans không chỉ là một phụ kiện thời trang mà còn là biểu tượng của phong cách sống năng động và tự do.','5',110,'Vans','new','3.9','sản phẩm 001/1.png,sản phẩm 001/san pham 1 1.jpg,sản phẩm 001/san pham 1 2.jpg,sản phẩm 001/san pham 1 3.jpg,sản phẩm 001/san pham 1 4.jpg,sản phẩm 001/san pham 1 5.jpg,sản phẩm 00001/san pham 2.png,sản phẩm 00001/san pham 3.png','0'),('002','Giày VANS VIP MODEL WHILE',2500000.00,'Puma là một trong những thương hiệu giày thể thao hàng đầu thế giới, nổi tiếng với sự kết hợp hoàn hảo giữa phong cách và hiệu suất. Được thành lập vào năm 1948 bởi Rudolf Dassler, Puma đã không ngừng phát triển và đổi mới để mang đến những sản phẩm chất lượng cao, đáp ứng nhu cầu của các vận động viên và người yêu thể thao trên toàn cầu. Với các dòng sản phẩm đa dạng từ giày chạy bộ, giày bóng đá đến giày thời trang, Puma luôn chú trọng đến thiết kế hiện đại, công nghệ tiên tiến và sự thoải mái cho người sử dụng. Thương hiệu này không chỉ là biểu tượng của sự năng động và sáng tạo mà còn là sự lựa chọn hàng đầu của nhiều ngôi sao thể thao và người nổi tiếng.',NULL,97,'Puma','sale','4.2','sản phẩm 002/2.png,sản phẩm 002/san pham 2 1.jpg,sản phẩm 002/san pham 2 2.jpg,sản phẩm 002/san pham 2 3.jpg,sản phẩm 002/san pham 2 4.jpg,sản phẩm 002/san pham 2 5.jpg','FAMILY50'),('003','Giày VANS OLD SKOOL MULTI BLOCK BLUE',3549000.00,'Puma là một trong những thương hiệu giày thể thao hàng đầu thế giới, nổi tiếng với sự kết hợp hoàn hảo giữa phong cách và hiệu suất. Được thành lập vào năm 1948 bởi Rudolf Dassler, Puma đã không ngừng phát triển và đổi mới để mang đến những sản phẩm chất lượng cao, đáp ứng nhu cầu của các vận động viên và người yêu thể thao trên toàn cầu. Với các dòng sản phẩm đa dạng từ giày chạy bộ, giày bóng đá đến giày thời trang, Puma luôn chú trọng đến thiết kế hiện đại, công nghệ tiên tiến và sự thoải mái cho người sử dụng. Thương hiệu này không chỉ là biểu tượng của sự năng động và sáng tạo mà còn là sự lựa chọn hàng đầu của nhiều ngôi sao thể thao và người nổi tiếng.',NULL,62,'Puma','new','3.7','sản phẩm 003/3.png,sản phẩm 003/san pham 3 1.jpg,sản phẩm 003/san pham 3 2.jpg,sản phẩm 003/san pham 3 3.jpg,sản phẩm 003/san pham 3 4.jpg,sản phẩm 003/san pham 3 5.jpg','SUMMER30'),('004','VANS SK8-HI CLASSIC NAVY/WHITE',1800000.00,'Giày Adidas nổi bật với thiết kế sáng tạo và công nghệ tiên tiến, mang lại sự thoải mái và hiệu suất tối ưu cho người sử dụng. Được làm từ các chất liệu cao cấp, giày Adidas không chỉ bền bỉ mà còn có khả năng thoáng khí, giúp đôi chân luôn khô ráo và thoải mái. Đế giày được thiết kế đặc biệt để tăng cường độ bám và giảm chấn, giúp người dùng di chuyển linh hoạt và an toàn trên mọi địa hình. Với nhiều mẫu mã và màu sắc đa dạng, giày Adidas phù hợp với nhiều phong cách và nhu cầu khác nhau, từ thể thao đến thời trang hàng ngày.',NULL,78,'Adidas','sale','4.3','sản phẩm 004/4.png,sản phẩm 004/san pham 4 1.jpg,sản phẩm 004/san pham 4 2.jpg,sản phẩm 004/san pham 4 3.jpg,sản phẩm 004/san pham 4 4.jpg,sản phẩm 004/san pham 4 5.jpg','WINTER20'),('006','VANS OLD SKOOL SENTRY WC',550000.00,'Converse là một thương hiệu giày nổi tiếng với lịch sử lâu đời và phong cách độc đáo. Được thành lập vào năm 1908, Converse đã trở thành biểu tượng của sự sáng tạo và cá tính trong ngành thời trang. Những đôi giày Converse không chỉ nổi bật với thiết kế cổ điển mà còn mang đến sự thoải mái và bền bỉ cho người sử dụng. Với nhiều bộ sưu tập đa dạng, từ những mẫu giày cổ điển đến những phiên bản hợp tác đặc biệt, Converse luôn mang đến sự mới mẻ và phong cách cho người yêu giày trên toàn thế giới.',NULL,73,'Converse','sale','4.6','sản phẩm 006/6.png,sản phẩm 006/san pham 6 1.jpg,sản phẩm 006/san pham 6 2.jpg,sản phẩm 006/san pham 6 3.jpg,sản phẩm 006/san pham 6 4.jpg,sản phẩm 006/san pham 6 5.jpg','SALE50'),('007','VANS SK8 THE LIZZIE CIPSW DAWS',1090000.00,'Giày Adidas nổi bật với thiết kế sáng tạo và công nghệ tiên tiến, mang lại sự thoải mái và hiệu suất tối ưu cho người sử dụng. Được làm từ các chất liệu cao cấp, giày Adidas không chỉ bền bỉ mà còn có khả năng thoáng khí, giúp đôi chân luôn khô ráo và thoải mái. Đế giày được thiết kế đặc biệt để tăng cường độ bám và giảm chấn, giúp người dùng di chuyển linh hoạt và an toàn trên mọi địa hình. Với nhiều mẫu mã và màu sắc đa dạng, giày Adidas phù hợp với nhiều phong cách và nhu cầu khác nhau, từ thể thao đến thời trang hàng ngày.','4',79,'Adidas','new','4.2','san pham 007\\7.png,san pham 007\\san pham 007 1.jpg,san pham 007\\san pham 007 2.jpg,san pham 007\\san pham 007 3.jpg,san pham 007\\san pham 007 4.jpg,san pham 007\\san pham 007 5.jpg','NEWYEAR50'),('008','VANS SK8-HI VINTAGE POP MARSHMALLOW',2800600.00,'Giày Adidas nổi bật với thiết kế sáng tạo và công nghệ tiên tiến, mang lại sự thoải mái và hiệu suất tối ưu cho người sử dụng. Được làm từ các chất liệu cao cấp, giày Adidas không chỉ bền bỉ mà còn có khả năng thoáng khí, giúp đôi chân luôn khô ráo và thoải mái. Đế giày được thiết kế đặc biệt để tăng cường độ bám và giảm chấn, giúp người dùng di chuyển linh hoạt và an toàn trên mọi địa hình. Với nhiều mẫu mã và màu sắc đa dạng, giày Adidas phù hợp với nhiều phong cách và nhu cầu khác nhau, từ thể thao đến thời trang hàng ngày.',NULL,71,'Adidas','sale','3.5','sản phẩm 008/8.png,sản phẩm 008/san pham 8 1.jpg,sản phẩm 008/san pham 8 2.jpg,sản phẩm 008/san pham 8 3.jpg,sản phẩm 008/san pham 8 4.jpg,sản phẩm 008/san pham 8 5.jpg','VIP10'),('009','VANS SK8 LOW BLACK',1456000.00,'Nike là thương hiệu giày thể thao hàng đầu thế giới, nổi tiếng với thiết kế đột phá và công nghệ tiên tiến. Thành lập vào năm 1964, Nike không ngừng đổi mới để mang lại những đôi giày chất lượng cao, đáp ứng nhu cầu của các vận động viên và người yêu thể thao. Công nghệ Air Max, Flyknit và React là những điểm nhấn nổi bật giúp giày Nike mang đến cảm giác êm ái, hỗ trợ tối đa cho người dùng. Với phong cách đa dạng từ thể thao đến thời trang đường phố, giày Nike không chỉ mang lại hiệu suất tối ưu mà còn thể hiện cá tính và phong cách riêng biệt.',NULL,95,'Nike','new','4.8','sản phẩm 009/9.png,sản phẩm 009/san pham 9 1.jpg,sản phẩm 009/san pham 9 2.jpg,sản phẩm 009/san pham 9 3.jpg,sản phẩm 009/san pham 9 4.jpg,sản phẩm 009/san pham 9 5.jpg','CHRISTMAS2025'),('010','VANS OUROBOROS SLIP-ON',1800580.00,'Converse là một thương hiệu giày nổi tiếng với lịch sử lâu đời và phong cách độc đáo. Được thành lập vào năm 1908, Converse đã trở thành biểu tượng của sự sáng tạo và cá tính trong ngành thời trang. Những đôi giày Converse không chỉ nổi bật với thiết kế cổ điển mà còn mang đến sự thoải mái và bền bỉ cho người sử dụng. Với nhiều bộ sưu tập đa dạng, từ những mẫu giày cổ điển đến những phiên bản hợp tác đặc biệt, Converse luôn mang đến sự mới mẻ và phong cách cho người yêu giày trên toàn thế giới.',NULL,95,'Converse','sale','3.9','sản phẩm 010/10.png,sản phẩm 010/san pham 10 1.jpg,sản phẩm 010/san pham 10 2.jpg,sản phẩm 010/san pham 10 3.jpg,sản phẩm 010/san pham 10 4.jpg,sản phẩm 010/san pham 10 5.jpg','WINTER20'),('011','VANS OUROBOROS ERA BLACK',2198000.00,'Giày Vans nổi tiếng với phong cách trẻ trung và cá tính, được ưa chuộng bởi giới trẻ và những người yêu thích thời trang đường phố. Được làm từ chất liệu vải canvas bền bỉ, giày Vans mang lại cảm giác thoải mái và thoáng khí cho người sử dụng. Đế giày cao su đặc trưng của Vans giúp tăng cường độ bám và độ bền, phù hợp cho cả hoạt động thể thao và sử dụng hàng ngày. Với nhiều mẫu mã và màu sắc đa dạng, giày Vans không chỉ là một phụ kiện thời trang mà còn là biểu tượng của phong cách sống năng động và tự do.',NULL,82,'Vans','new','4.0','sản phẩm 011/11.png,sản phẩm 011/san pham 11 1.jpg,sản phẩm 011/san pham 11 2.jpg,sản phẩm 011/san pham 11 3.jpg,sản phẩm 011/san pham 11 4.jpg,sản phẩm 011/san pham 11 5.jpg','SPRING25'),('012','VANS X NATIONAL GEOGRAPHIC',2900233.00,'Puma là một trong những thương hiệu giày thể thao hàng đầu thế giới, nổi tiếng với sự kết hợp hoàn hảo giữa phong cách và hiệu suất. Được thành lập vào năm 1948 bởi Rudolf Dassler, Puma đã không ngừng phát triển và đổi mới để mang đến những sản phẩm chất lượng cao, đáp ứng nhu cầu của các vận động viên và người yêu thể thao trên toàn cầu. Với các dòng sản phẩm đa dạng từ giày chạy bộ, giày bóng đá đến giày thời trang, Puma luôn chú trọng đến thiết kế hiện đại, công nghệ tiên tiến và sự thoải mái cho người sử dụng. Thương hiệu này không chỉ là biểu tượng của sự năng động và sáng tạo mà còn là sự lựa chọn hàng đầu của nhiều ngôi sao thể thao và người nổi tiếng.',NULL,63,'Puma','sale','4.6','sản phẩm 012/12.png,sản phẩm 012/san pham 12 1.jpg,sản phẩm 012/san pham 12 2.jpg,sản phẩm 012/san pham 12 3.jpg,sản phẩm 012/san pham 12 4.jpg,sản phẩm 012/san pham 12 5.jpg','BLACKFRIDAY'),('013','VANS X NATIONAL GEOGRAPHIC SK8-HI REISSUE 138',8987000.00,'Giày New Balance nổi tiếng với sự kết hợp hoàn hảo giữa phong cách và chức năng. Được thiết kế với công nghệ tiên tiến, giày New Balance mang lại sự thoải mái và hỗ trợ tối đa cho người sử dụng. Chất liệu cao cấp và đế giày được thiết kế đặc biệt giúp tăng cường độ bám và giảm chấn, phù hợp cho cả hoạt động thể thao và sử dụng hàng ngày. Với nhiều mẫu mã và màu sắc đa dạng, giày New Balance không chỉ đáp ứng nhu cầu về thời trang mà còn mang lại hiệu suất vượt trội cho người dùng.',NULL,64,'New Balance','new','4.7','sản phẩm 013/13.png,sản phẩm 013/san pham 13 1.jpg,sản phẩm 013/san pham 13 2.jpg,sản phẩm 013/san pham 13 3.jpg,sản phẩm 013/san pham 13 4.jpg,sản phẩm 013/san pham 13 5.jpg','STUDENT20'),('014','VANS X NATIONAL GEOGRAPHIC AUTHENTIC',2800000.00,'Nike là thương hiệu giày thể thao hàng đầu thế giới, nổi tiếng với thiết kế đột phá và công nghệ tiên tiến. Thành lập vào năm 1964, Nike không ngừng đổi mới để mang lại những đôi giày chất lượng cao, đáp ứng nhu cầu của các vận động viên và người yêu thể thao. Công nghệ Air Max, Flyknit và React là những điểm nhấn nổi bật giúp giày Nike mang đến cảm giác êm ái, hỗ trợ tối đa cho người dùng. Với phong cách đa dạng từ thể thao đến thời trang đường phố, giày Nike không chỉ mang lại hiệu suất tối ưu mà còn thể hiện cá tính và phong cách riêng biệt.',NULL,72,'Nike','sale','4.8','sản phẩm 014/14.png,sản phẩm 014/san pham 14 1.jpg,sản phẩm 014/san pham 14 2.jpg,sản phẩm 014/san pham 14 3.jpg,sản phẩm 014/san pham 14 4.jpg,sản phẩm 014/san pham 14 5.jpg','SPRING25'),('015','VANS PACKING TAPE AUTHENTIC',695000.00,'Giày Adidas nổi bật với thiết kế sáng tạo và công nghệ tiên tiến, mang lại sự thoải mái và hiệu suất tối ưu cho người sử dụng. Được làm từ các chất liệu cao cấp, giày Adidas không chỉ bền bỉ mà còn có khả năng thoáng khí, giúp đôi chân luôn khô ráo và thoải mái. Đế giày được thiết kế đặc biệt để tăng cường độ bám và giảm chấn, giúp người dùng di chuyển linh hoạt và an toàn trên mọi địa hình. Với nhiều mẫu mã và màu sắc đa dạng, giày Adidas phù hợp với nhiều phong cách và nhu cầu khác nhau, từ thể thao đến thời trang hàng ngày.',NULL,72,'Adidas','new','4.4','sản phẩm 015/15.png,sản phẩm 015/san pham 15 1.jpg,sản phẩm 015/san pham 15 2.jpg,sản phẩm 015/san pham 15 3.jpg,sản phẩm 015/san pham 15 4.jpg,sản phẩm 015/san pham 15 5.jpg','CLEARANCE50'),('016','VANS PACKING TAPE AUTHENTIC',730000.00,'Puma là một trong những thương hiệu giày thể thao hàng đầu thế giới, nổi tiếng với sự kết hợp hoàn hảo giữa phong cách và hiệu suất. Được thành lập vào năm 1948 bởi Rudolf Dassler, Puma đã không ngừng phát triển và đổi mới để mang đến những sản phẩm chất lượng cao, đáp ứng nhu cầu của các vận động viên và người yêu thể thao trên toàn cầu. Với các dòng sản phẩm đa dạng từ giày chạy bộ, giày bóng đá đến giày thời trang, Puma luôn chú trọng đến thiết kế hiện đại, công nghệ tiên tiến và sự thoải mái cho người sử dụng. Thương hiệu này không chỉ là biểu tượng của sự năng động và sáng tạo mà còn là sự lựa chọn hàng đầu của nhiều ngôi sao thể thao và người nổi tiếng.',NULL,88,'Puma','sale','3.7','sản phẩm 016/16.png, sản phẩm 016/san pham 16 1.jpg, sản phẩm 016/san pham 16 2.jpg, sản phẩm 016/san pham 16 3.jpg, sản phẩm 016/san pham 16 4.jpg, sản phẩm 016/san pham 16 5.jpg','FRIDAYFREESHIP'),('017','VANS UA SK8-LOW HONEY GOLD',890000.00,'Giày New Balance nổi tiếng với sự kết hợp hoàn hảo giữa phong cách và chức năng. Được thiết kế với công nghệ tiên tiến, giày New Balance mang lại sự thoải mái và hỗ trợ tối đa cho người sử dụng. Chất liệu cao cấp và đế giày được thiết kế đặc biệt giúp tăng cường độ bám và giảm chấn, phù hợp cho cả hoạt động thể thao và sử dụng hàng ngày. Với nhiều mẫu mã và màu sắc đa dạng, giày New Balance không chỉ đáp ứng nhu cầu về thời trang mà còn mang lại hiệu suất vượt trội cho người dùng.',NULL,79,'New Balance','new','4.5','sản phẩm 017/17.png, sản phẩm 017/san pham 17 1.jpg, sản phẩm 017/san pham 17 2.jpg, sản phẩm 017/san pham 17 3.jpg, sản phẩm 017/san pham 17 4.jpg, sản phẩm 017/san pham 17 5.jpg','WINTER20'),('018','VANS ERA PACKING TAPE BLACK',699000.00,'Puma là một trong những thương hiệu giày thể thao hàng đầu thế giới, nổi tiếng với sự kết hợp hoàn hảo giữa phong cách và hiệu suất. Được thành lập vào năm 1948 bởi Rudolf Dassler, Puma đã không ngừng phát triển và đổi mới để mang đến những sản phẩm chất lượng cao, đáp ứng nhu cầu của các vận động viên và người yêu thể thao trên toàn cầu. Với các dòng sản phẩm đa dạng từ giày chạy bộ, giày bóng đá đến giày thời trang, Puma luôn chú trọng đến thiết kế hiện đại, công nghệ tiên tiến và sự thoải mái cho người sử dụng. Thương hiệu này không chỉ là biểu tượng của sự năng động và sáng tạo mà còn là sự lựa chọn hàng đầu của nhiều ngôi sao thể thao và người nổi tiếng.',NULL,66,'Puma','sale','4.8','sản phẩm 018/18.png, sản phẩm 018/san pham 18 1.jpg, sản phẩm 018/san pham 18 2.jpg, sản phẩm 018/san pham 18 3.jpg, sản phẩm 018/san pham 18 4.jpg, sản phẩm 018/san pham 18 5.jpg','LOYALCUSTOMER'),('019','VANS MIX & MATCH OLD SKOOL BLACK/TRUE WHITE',549000.00,'Puma là một trong những thương hiệu giày thể thao hàng đầu thế giới, nổi tiếng với sự kết hợp hoàn hảo giữa phong cách và hiệu suất. Được thành lập vào năm 1948 bởi Rudolf Dassler, Puma đã không ngừng phát triển và đổi mới để mang đến những sản phẩm chất lượng cao, đáp ứng nhu cầu của các vận động viên và người yêu thể thao trên toàn cầu. Với các dòng sản phẩm đa dạng từ giày chạy bộ, giày bóng đá đến giày thời trang, Puma luôn chú trọng đến thiết kế hiện đại, công nghệ tiên tiến và sự thoải mái cho người sử dụng. Thương hiệu này không chỉ là biểu tượng của sự năng động và sáng tạo mà còn là sự lựa chọn hàng đầu của nhiều ngôi sao thể thao và người nổi tiếng.',NULL,61,'Puma','new','4.9','sản phẩm 019/19.png, sản phẩm 019/san pham 19 1.jpg, sản phẩm 019/san pham 19 2.jpg, sản phẩm 019/san pham 19 3.jpg, sản phẩm 019/san pham 19 4.jpg, sản phẩm 019/san pham 19 5.jpg','HALLOWEEN20'),('020','VANS AUTHENTIC \'LOS VANS\'',600000.00,'Converse là một thương hiệu giày nổi tiếng với lịch sử lâu đời và phong cách độc đáo. Được thành lập vào năm 1908, Converse đã trở thành biểu tượng của sự sáng tạo và cá tính trong ngành thời trang. Những đôi giày Converse không chỉ nổi bật với thiết kế cổ điển mà còn mang đến sự thoải mái và bền bỉ cho người sử dụng. Với nhiều bộ sưu tập đa dạng, từ những mẫu giày cổ điển đến những phiên bản hợp tác đặc biệt, Converse luôn mang đến sự mới mẻ và phong cách cho người yêu giày trên toàn thế giới.',NULL,77,'Converse','sale','3.6','sản phẩm 020/20.png, sản phẩm 020/san pham 20 1.jpg, sản phẩm 020/san pham 20 2.jpg, sản phẩm 020/san pham 20 3.jpg, sản phẩm 020/san pham 20 4.jpg, sản phẩm 020/san pham 20 5.jpg','NEWYEAR2025'),('021','NIKE AIR FORCE 1 LOW TRIPLE WHITE',1200000.00,'Nike là thương hiệu giày thể thao hàng đầu thế giới, nổi tiếng với thiết kế đột phá và công nghệ tiên tiến. Thành lập vào năm 1964, Nike không ngừng đổi mới để mang lại những đôi giày chất lượng cao, đáp ứng nhu cầu của các vận động viên và người yêu thể thao. Công nghệ Air Max, Flyknit và React là những điểm nhấn nổi bật giúp giày Nike mang đến cảm giác êm ái, hỗ trợ tối đa cho người dùng. Với phong cách đa dạng từ thể thao đến thời trang đường phố, giày Nike không chỉ mang lại hiệu suất tối ưu mà còn thể hiện cá tính và phong cách riêng biệt.',NULL,71,'Nike','new','4.7','sản phẩm 021/21.png, sản phẩm 021/san pham 21 1.jpg, sản phẩm 021/san pham 21 2.jpg, sản phẩm 021/san pham 21 3.jpg','NEWYEAR2025'),('022','ADIDAS SUPERSTAR WHITE/BLACK',1150000.00,'Giày Adidas nổi bật với thiết kế sáng tạo và công nghệ tiên tiến, mang lại sự thoải mái và hiệu suất tối ưu cho người sử dụng. Được làm từ các chất liệu cao cấp, giày Adidas không chỉ bền bỉ mà còn có khả năng thoáng khí, giúp đôi chân luôn khô ráo và thoải mái. Đế giày được thiết kế đặc biệt để tăng cường độ bám và giảm chấn, giúp người dùng di chuyển linh hoạt và an toàn trên mọi địa hình. Với nhiều mẫu mã và màu sắc đa dạng, giày Adidas phù hợp với nhiều phong cách và nhu cầu khác nhau, từ thể thao đến thời trang hàng ngày.',NULL,74,'Adidas','hot','4.6','sản phẩm 022/22.png, sản phẩm 022/san pham 22 1.jpg, sản phẩm 022/san pham 22 2.jpg',NULL),('023','PUMA RS-X³ PUZZLE MULTICOLOR',1350000.00,'Puma là một trong những thương hiệu giày thể thao hàng đầu thế giới, nổi tiếng với sự kết hợp hoàn hảo giữa phong cách và hiệu suất. Được thành lập vào năm 1948 bởi Rudolf Dassler, Puma đã không ngừng phát triển và đổi mới để mang đến những sản phẩm chất lượng cao, đáp ứng nhu cầu của các vận động viên và người yêu thể thao trên toàn cầu. Với các dòng sản phẩm đa dạng từ giày chạy bộ, giày bóng đá đến giày thời trang, Puma luôn chú trọng đến thiết kế hiện đại, công nghệ tiên tiến và sự thoải mái cho người sử dụng. Thương hiệu này không chỉ là biểu tượng của sự năng động và sáng tạo mà còn là sự lựa chọn hàng đầu của nhiều ngôi sao thể thao và người nổi tiếng.',NULL,93,'Puma','new','4.8','sản phẩm 023/23.png, sản phẩm 023/san pham 23 1.jpg, sản phẩm 023/san pham 23 2.jpg','SUMMER30'),('024','NEW BALANCE 327 BLACK/WHITE',1100000.00,'Giày New Balance nổi tiếng với sự kết hợp hoàn hảo giữa phong cách và chức năng. Được thiết kế với công nghệ tiên tiến, giày New Balance mang lại sự thoải mái và hỗ trợ tối đa cho người sử dụng. Chất liệu cao cấp và đế giày được thiết kế đặc biệt giúp tăng cường độ bám và giảm chấn, phù hợp cho cả hoạt động thể thao và sử dụng hàng ngày. Với nhiều mẫu mã và màu sắc đa dạng, giày New Balance không chỉ đáp ứng nhu cầu về thời trang mà còn mang lại hiệu suất vượt trội cho người dùng.',NULL,76,'New Balance','sale','4.5','sản phẩm 024/24.png, sản phẩm 024/san pham 24 1.jpg, sản phẩm 024/san pham 24 2.jpg','AUTUMN40'),('025','CONVERSE CHUCK 70 VINTAGE CANVAS',950000.00,'Converse là một thương hiệu giày nổi tiếng với lịch sử lâu đời và phong cách độc đáo. Được thành lập vào năm 1908, Converse đã trở thành biểu tượng của sự sáng tạo và cá tính trong ngành thời trang. Những đôi giày Converse không chỉ nổi bật với thiết kế cổ điển mà còn mang đến sự thoải mái và bền bỉ cho người sử dụng. Với nhiều bộ sưu tập đa dạng, từ những mẫu giày cổ điển đến những phiên bản hợp tác đặc biệt, Converse luôn mang đến sự mới mẻ và phong cách cho người yêu giày trên toàn thế giới.',NULL,77,'Converse','hot','4.7','sản phẩm 025/25.png, sản phẩm 025/san pham 25 1.jpg, sản phẩm 025/san pham 25 2.jpg',NULL),('026','NIKE DUNK LOW PANDA BLACK/WHITE',1300000.00,'Nike là thương hiệu giày thể thao hàng đầu thế giới, nổi tiếng với thiết kế đột phá và công nghệ tiên tiến. Thành lập vào năm 1964, Nike không ngừng đổi mới để mang lại những đôi giày chất lượng cao, đáp ứng nhu cầu của các vận động viên và người yêu thể thao. Công nghệ Air Max, Flyknit và React là những điểm nhấn nổi bật giúp giày Nike mang đến cảm giác êm ái, hỗ trợ tối đa cho người dùng. Với phong cách đa dạng từ thể thao đến thời trang đường phố, giày Nike không chỉ mang lại hiệu suất tối ưu mà còn thể hiện cá tính và phong cách riêng biệt.',NULL,111,'Nike','new','4.9','sản phẩm 026/26.png, sản phẩm 026/san pham 26 1.jpg, sản phẩm 026/san pham 26 2.jpg','NEWYEAR50'),('027','ADIDAS ULTRABOOST 21 TRIPLE BLACK',1400000.00,'Giày Adidas nổi bật với thiết kế sáng tạo và công nghệ tiên tiến, mang lại sự thoải mái và hiệu suất tối ưu cho người sử dụng. Được làm từ các chất liệu cao cấp, giày Adidas không chỉ bền bỉ mà còn có khả năng thoáng khí, giúp đôi chân luôn khô ráo và thoải mái. Đế giày được thiết kế đặc biệt để tăng cường độ bám và giảm chấn, giúp người dùng di chuyển linh hoạt và an toàn trên mọi địa hình. Với nhiều mẫu mã và màu sắc đa dạng, giày Adidas phù hợp với nhiều phong cách và nhu cầu khác nhau, từ thể thao đến thời trang hàng ngày.',NULL,64,'Adidas','hot','4.6','sản phẩm 027/27.png, sản phẩm 027/san pham 27 1.jpg, sản phẩm 027/san pham 27 2.jpg',NULL),('028','PUMA CALI SPORT HERITAGE WHITE/BLACK',980000.00,'Puma là một trong những thương hiệu giày thể thao hàng đầu thế giới, nổi tiếng với sự kết hợp hoàn hảo giữa phong cách và hiệu suất. Được thành lập vào năm 1948 bởi Rudolf Dassler, Puma đã không ngừng phát triển và đổi mới để mang đến những sản phẩm chất lượng cao, đáp ứng nhu cầu của các vận động viên và người yêu thể thao trên toàn cầu. Với các dòng sản phẩm đa dạng từ giày chạy bộ, giày bóng đá đến giày thời trang, Puma luôn chú trọng đến thiết kế hiện đại, công nghệ tiên tiến và sự thoải mái cho người sử dụng. Thương hiệu này không chỉ là biểu tượng của sự năng động và sáng tạo mà còn là sự lựa chọn hàng đầu của nhiều ngôi sao thể thao và người nổi tiếng.',NULL,76,'Puma','sale','4.4','sản phẩm 028/28.png, sản phẩm 028/san pham 28 1.jpg, sản phẩm 028/san pham 28 2.jpg','FREESHIP100'),('029','NEW BALANCE 574 GREY/WHITE',850000.00,'Giày New Balance nổi tiếng với sự kết hợp hoàn hảo giữa phong cách và chức năng. Được thiết kế với công nghệ tiên tiến, giày New Balance mang lại sự thoải mái và hỗ trợ tối đa cho người sử dụng. Chất liệu cao cấp và đế giày được thiết kế đặc biệt giúp tăng cường độ bám và giảm chấn, phù hợp cho cả hoạt động thể thao và sử dụng hàng ngày. Với nhiều mẫu mã và màu sắc đa dạng, giày New Balance không chỉ đáp ứng nhu cầu về thời trang mà còn mang lại hiệu suất vượt trội cho người dùng.',NULL,72,'New Balance','hot','4.3','sản phẩm 029/29.png, sản phẩm 029/san pham 29 1.jpg, sản phẩm 029/san pham 29 2.jpg',NULL),('030','CONVERSE RUN STAR HIKE BLACK/WHITE',1050000.00,'Converse là một thương hiệu giày nổi tiếng với lịch sử lâu đời và phong cách độc đáo. Được thành lập vào năm 1908, Converse đã trở thành biểu tượng của sự sáng tạo và cá tính trong ngành thời trang. Những đôi giày Converse không chỉ nổi bật với thiết kế cổ điển mà còn mang đến sự thoải mái và bền bỉ cho người sử dụng. Với nhiều bộ sưu tập đa dạng, từ những mẫu giày cổ điển đến những phiên bản hợp tác đặc biệt, Converse luôn mang đến sự mới mẻ và phong cách cho người yêu giày trên toàn thế giới.',NULL,93,'Converse','new','4.7','sản phẩm 030/30.png, sản phẩm 030/san pham 30 1.jpg, sản phẩm 030/san pham 30 2.jpg','FRIDAYFREESHIP'),('031','VANS SLIP-ON MULE CLASSIC CHECKERBOARD',7930000.00,'Nike là thương hiệu giày thể thao hàng đầu thế giới, nổi tiếng với thiết kế đột phá và công nghệ tiên tiến. Thành lập vào năm 1964, Nike không ngừng đổi mới để mang lại những đôi giày chất lượng cao, đáp ứng nhu cầu của các vận động viên và người yêu thể thao. Công nghệ Air Max, Flyknit và React là những điểm nhấn nổi bật giúp giày Nike mang đến cảm giác êm ái, hỗ trợ tối đa cho người dùng. Với phong cách đa dạng từ thể thao đến thời trang đường phố, giày Nike không chỉ mang lại hiệu suất tối ưu mà còn thể hiện cá tính và phong cách riêng biệt.',NULL,56,'Nike','top','4.9',' sản phẩm 031/31.png,\n  sản phẩm 031/san pham 31 1.jpg,\n  sản phẩm 031/san pham 31 2.jpg,\n  sản phẩm 031/san pham 31 3.jpg,\n  sản phẩm 031/san pham 31 4.jpg,\n  sản phẩm 031/san pham 31 5.jpg',NULL),('032','VANS AUTHENTIC MIX MATCH SF MULTI',3400000.00,'Giày New Balance nổi tiếng với sự kết hợp hoàn hảo giữa phong cách và chức năng. Được thiết kế với công nghệ tiên tiến, giày New Balance mang lại sự thoải mái và hỗ trợ tối đa cho người sử dụng. Chất liệu cao cấp và đế giày được thiết kế đặc biệt giúp tăng cường độ bám và giảm chấn, phù hợp cho cả hoạt động thể thao và sử dụng hàng ngày. Với nhiều mẫu mã và màu sắc đa dạng, giày New Balance không chỉ đáp ứng nhu cầu về thời trang mà còn mang lại hiệu suất vượt trội cho người dùng.',NULL,59,'New Balance','top','3.6',' sản phẩm 032/32.png,\n  sản phẩm 032/san pham 32 1.jpg,\n  sản phẩm 032/san pham 32 2.jpg,\n  sản phẩm 032/san pham 32 3.jpg,\n  sản phẩm 032/san pham 32 4.jpg,\n  sản phẩm 032/san pham 32 5.jpg',NULL),('033','VANS OLD SKOOL STYLE 36 MIX MATCH',200000.00,'Giày Vans nổi tiếng với phong cách trẻ trung và cá tính, được ưa chuộng bởi giới trẻ và những người yêu thích thời trang đường phố. Được làm từ chất liệu vải canvas bền bỉ, giày Vans mang lại cảm giác thoải mái và thoáng khí cho người sử dụng. Đế giày cao su đặc trưng của Vans giúp tăng cường độ bám và độ bền, phù hợp cho cả hoạt động thể thao và sử dụng hàng ngày. Với nhiều mẫu mã và màu sắc đa dạng, giày Vans không chỉ là một phụ kiện thời trang mà còn là biểu tượng của phong cách sống năng động và tự do.',NULL,66,'Vans','top','4.3',' sản phẩm 033/33.png,\n  sản phẩm 033/san pham 33 1.jpg,\n  sản phẩm 033/san pham 33 2.jpg,\n  sản phẩm 033/san pham 33 3.jpg,\n  sản phẩm 033/san pham 33 4.jpg,\n  sản phẩm 033/san pham 33 5.jpg',NULL),('034','VANS SLIP-ON MIX MATCH SF MARSHMALLOW',6500000.00,'Nike là thương hiệu giày thể thao hàng đầu thế giới, nổi tiếng với thiết kế đột phá và công nghệ tiên tiến. Thành lập vào năm 1964, Nike không ngừng đổi mới để mang lại những đôi giày chất lượng cao, đáp ứng nhu cầu của các vận động viên và người yêu thể thao. Công nghệ Air Max, Flyknit và React là những điểm nhấn nổi bật giúp giày Nike mang đến cảm giác êm ái, hỗ trợ tối đa cho người dùng. Với phong cách đa dạng từ thể thao đến thời trang đường phố, giày Nike không chỉ mang lại hiệu suất tối ưu mà còn thể hiện cá tính và phong cách riêng biệt.',NULL,89,'Nike','top','4.9',' sản phẩm 034/34.png,\n  sản phẩm 034/san pham 34 1.jpg,\n  sản phẩm 034/san pham 34 2.jpg,\n  sản phẩm 034/san pham 34 3.jpg,\n  sản phẩm 034/san pham 34 4.jpg,\n  sản phẩm 034/san pham 34 5.jpg',NULL),('035','VANS OLD SKOOL CLASSIC ECO',530000.00,'Giày Vans nổi tiếng với phong cách trẻ trung và cá tính, được ưa chuộng bởi giới trẻ và những người yêu thích thời trang đường phố. Được làm từ chất liệu vải canvas bền bỉ, giày Vans mang lại cảm giác thoải mái và thoáng khí cho người sử dụng. Đế giày cao su đặc trưng của Vans giúp tăng cường độ bám và độ bền, phù hợp cho cả hoạt động thể thao và sử dụng hàng ngày. Với nhiều mẫu mã và màu sắc đa dạng, giày Vans không chỉ là một phụ kiện thời trang mà còn là biểu tượng của phong cách sống năng động và tự do.',NULL,92,'Vans','top','4.4',' sản phẩm 035/35.png,\n  sản phẩm 035/san pham 35 1.jpg,\n  sản phẩm 035/san pham 35 2.jpg,\n  sản phẩm 035/san pham 35 3.jpg,\n  sản phẩm 035/san pham 35 4.jpg,\n  sản phẩm 035/san pham 35 5.jpg',NULL),('036','VANS OLD SKOOL VARSITY CANVAS BLUE',4100000.00,'Giày Vans nổi tiếng với phong cách trẻ trung và cá tính, được ưa chuộng bởi giới trẻ và những người yêu thích thời trang đường phố. Được làm từ chất liệu vải canvas bền bỉ, giày Vans mang lại cảm giác thoải mái và thoáng khí cho người sử dụng. Đế giày cao su đặc trưng của Vans giúp tăng cường độ bám và độ bền, phù hợp cho cả hoạt động thể thao và sử dụng hàng ngày. Với nhiều mẫu mã và màu sắc đa dạng, giày Vans không chỉ là một phụ kiện thời trang mà còn là biểu tượng của phong cách sống năng động và tự do.',NULL,61,'Vans','top','4.4',' sản phẩm 036/36.png,\n  sản phẩm 036/san pham 36 1.jpg,\n  sản phẩm 036/san pham 36 2.jpg,\n  sản phẩm 036/san pham 36 3.jpg,\n  sản phẩm 036/san pham 36 4.jpg,\n  sản phẩm 036/san pham 36 5.jpg',NULL),('037','VANS ERA LADY GREEN',4100000.00,'Giày Vans nổi tiếng với phong cách trẻ trung và cá tính, được ưa chuộng bởi giới trẻ và những người yêu thích thời trang đường phố. Được làm từ chất liệu vải canvas bền bỉ, giày Vans mang lại cảm giác thoải mái và thoáng khí cho người sử dụng. Đế giày cao su đặc trưng của Vans giúp tăng cường độ bám và độ bền, phù hợp cho cả hoạt động thể thao và sử dụng hàng ngày. Với nhiều mẫu mã và màu sắc đa dạng, giày Vans không chỉ là một phụ kiện thời trang mà còn là biểu tượng của phong cách sống năng động và tự do.',NULL,78,'Vans','top','4.1',' sản phẩm 037/37.png,\n  sản phẩm 037/san pham 37 1.jpg,\n  sản phẩm 037/san pham 37 2.jpg,\n  sản phẩm 037/san pham 37 3.jpg,\n  sản phẩm 037/san pham 37 4.jpg,\n  sản phẩm 037/san pham 37 5.jpg',NULL),('038','VANS SPORT CADMIUM YELLOW/TRUE WHITE',1100000.00,'Puma là một trong những thương hiệu giày thể thao hàng đầu thế giới, nổi tiếng với sự kết hợp hoàn hảo giữa phong cách và hiệu suất. Được thành lập vào năm 1948 bởi Rudolf Dassler, Puma đã không ngừng phát triển và đổi mới để mang đến những sản phẩm chất lượng cao, đáp ứng nhu cầu của các vận động viên và người yêu thể thao trên toàn cầu. Với các dòng sản phẩm đa dạng từ giày chạy bộ, giày bóng đá đến giày thời trang, Puma luôn chú trọng đến thiết kế hiện đại, công nghệ tiên tiến và sự thoải mái cho người sử dụng. Thương hiệu này không chỉ là biểu tượng của sự năng động và sáng tạo mà còn là sự lựa chọn hàng đầu của nhiều ngôi sao thể thao và người nổi tiếng.',NULL,65,'Puma','top','4.0',' sản phẩm 038/38.png,\n  sản phẩm 038/san pham 38 1.jpg,\n  sản phẩm 038/san pham 38 2.jpg,\n  sản phẩm 038/san pham 38 3.jpg,\n  sản phẩm 038/san pham 38 4.jpg,\n  sản phẩm 038/san pham 38 5.jpg',NULL),('039','VANS SPORT CADMIUM YELLOW/BLACK',1990000.00,'Puma là một trong những thương hiệu giày thể thao hàng đầu thế giới, nổi tiếng với sự kết hợp hoàn hảo giữa phong cách và hiệu suất. Được thành lập vào năm 1948 bởi Rudolf Dassler, Puma đã không ngừng phát triển và đổi mới để mang đến những sản phẩm chất lượng cao, đáp ứng nhu cầu của các vận động viên và người yêu thể thao trên toàn cầu. Với các dòng sản phẩm đa dạng từ giày chạy bộ, giày bóng đá đến giày thời trang, Puma luôn chú trọng đến thiết kế hiện đại, công nghệ tiên tiến và sự thoải mái cho người sử dụng. Thương hiệu này không chỉ là biểu tượng của sự năng động và sáng tạo mà còn là sự lựa chọn hàng đầu của nhiều ngôi sao thể thao và người nổi tiếng.',NULL,57,'Puma','top','4.9',' sản phẩm 039/39.png,\n  sản phẩm 039/san pham 39 1.jpg,\n  sản phẩm 039/san pham 39 2.jpg,\n  sản phẩm 039/san pham 39 3.jpg,\n  sản phẩm 039/san pham 39 4.jpg,\n  sản phẩm 039/san pham 39 5.jpg',NULL),('040','VANS AUTHENTIC MULE PATTERN MIX',2100000.00,'Giày Vans nổi tiếng với phong cách trẻ trung và cá tính, được ưa chuộng bởi giới trẻ và những người yêu thích thời trang đường phố. Được làm từ chất liệu vải canvas bền bỉ, giày Vans mang lại cảm giác thoải mái và thoáng khí cho người sử dụng. Đế giày cao su đặc trưng của Vans giúp tăng cường độ bám và độ bền, phù hợp cho cả hoạt động thể thao và sử dụng hàng ngày. Với nhiều mẫu mã và màu sắc đa dạng, giày Vans không chỉ là một phụ kiện thời trang mà còn là biểu tượng của phong cách sống năng động và tự do.',NULL,76,'Vans','top','4.8',' sản phẩm 040/40.png,\n  sản phẩm 040/san pham 40 1.jpg,\n  sản phẩm 040/san pham 40 2.jpg,\n  sản phẩm 040/san pham 40 3.jpg,\n  sản phẩm 040/san pham 40 4.jpg,\n  sản phẩm 040/san pham 40 5.jpg',NULL),('041','VANS ERA I HEART 95 DX',4300000.00,'Giày Adidas nổi bật với thiết kế sáng tạo và công nghệ tiên tiến, mang lại sự thoải mái và hiệu suất tối ưu cho người sử dụng. Được làm từ các chất liệu cao cấp, giày Adidas không chỉ bền bỉ mà còn có khả năng thoáng khí, giúp đôi chân luôn khô ráo và thoải mái. Đế giày được thiết kế đặc biệt để tăng cường độ bám và giảm chấn, giúp người dùng di chuyển linh hoạt và an toàn trên mọi địa hình. Với nhiều mẫu mã và màu sắc đa dạng, giày Adidas phù hợp với nhiều phong cách và nhu cầu khác nhau, từ thể thao đến thời trang hàng ngày.',NULL,94,'Adidas','top','4.7',' sản phẩm 041/41.png,\n  sản phẩm 041/san pham 41 1.jpg,\n  sản phẩm 041/san pham 41 2.jpg,\n  sản phẩm 041/san pham 41 3.jpg,\n  sản phẩm 041/san pham 41 4.jpg,\n  sản phẩm 041/san pham 41 5.jpg',NULL);
/*!40000 ALTER TABLE `sanpham` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sanpham_anh`
--

DROP TABLE IF EXISTS `sanpham_anh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sanpham_anh` (
  `MaSanPham` varchar(50) NOT NULL,
  `LinkAnh` text NOT NULL,
  `ID` char(36) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `MaSanPham` (`MaSanPham`),
  CONSTRAINT `sanpham_anh_ibfk_1` FOREIGN KEY (`MaSanPham`) REFERENCES `sanpham` (`MaSanPham`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanpham_anh`
--

LOCK TABLES `sanpham_anh` WRITE;
/*!40000 ALTER TABLE `sanpham_anh` DISABLE KEYS */;
INSERT INTO `sanpham_anh` VALUES ('001','san pham 001\\1.png','f278dcb2-f755-11ef-b573-038db8f5a351'),('001','san pham 001\\san pham 001 1.jpg','f279cdc3-f755-11ef-b573-038db8f5a351'),('001','san pham 001\\san pham 001 2.jpg','f27a8ca5-f755-11ef-b573-038db8f5a351'),('001','san pham 001\\san pham 001 3.jpg','f27b42f7-f755-11ef-b573-038db8f5a351'),('001','san pham 001\\san pham 001 4.jpg','f27c07fb-f755-11ef-b573-038db8f5a351'),('001','san pham 001\\san pham 001 5.jpg','f27cc945-f755-11ef-b573-038db8f5a351'),('002','san pham 002\\2.png','f27da40b-f755-11ef-b573-038db8f5a351'),('002','san pham 002\\san pham 002 1.jpg','f27e54b0-f755-11ef-b573-038db8f5a351'),('002','san pham 002\\san pham 002 2.jpg','f27f0e67-f755-11ef-b573-038db8f5a351'),('002','san pham 002\\san pham 002 3.jpg','f27f9eeb-f755-11ef-b573-038db8f5a351'),('002','san pham 002\\san pham 002 4.jpg','f2803b0c-f755-11ef-b573-038db8f5a351'),('002','san pham 002\\san pham 002 5.jpg','f280e9d8-f755-11ef-b573-038db8f5a351'),('003','san pham 003\\3.png','f281c232-f755-11ef-b573-038db8f5a351'),('003','san pham 003\\san pham 003 1.jpg','f282801e-f755-11ef-b573-038db8f5a351'),('003','san pham 003\\san pham 003 2.jpg','f2832aa4-f755-11ef-b573-038db8f5a351'),('003','san pham 003\\san pham 003 3.jpg','f284047b-f755-11ef-b573-038db8f5a351'),('003','san pham 003\\san pham 003 4.jpg','f284c328-f755-11ef-b573-038db8f5a351'),('003','san pham 003\\san pham 003 5.jpg','f285735c-f755-11ef-b573-038db8f5a351'),('004','san pham 004\\4.png','f28605b8-f755-11ef-b573-038db8f5a351'),('004','san pham 004\\san pham 004 1.jpg','f286be54-f755-11ef-b573-038db8f5a351'),('004','san pham 004\\san pham 004 2.jpg','f2877797-f755-11ef-b573-038db8f5a351'),('004','san pham 004\\san pham 004 3.jpg','f28832d4-f755-11ef-b573-038db8f5a351'),('004','san pham 004\\san pham 004 4.jpg','f288ecc2-f755-11ef-b573-038db8f5a351'),('004','san pham 004\\san pham 004 5.jpg','f289ab9b-f755-11ef-b573-038db8f5a351'),('006','san pham 006\\6.png','f28a8843-f755-11ef-b573-038db8f5a351'),('006','san pham 006\\san pham 006 1.jpg','f28b2b12-f755-11ef-b573-038db8f5a351'),('006','san pham 006\\san pham 006 2.jpg','f28be642-f755-11ef-b573-038db8f5a351'),('006','san pham 006\\san pham 006 3.jpg','f28c7739-f755-11ef-b573-038db8f5a351'),('006','san pham 006\\san pham 006 4.jpg','f28d321d-f755-11ef-b573-038db8f5a351'),('006','san pham 006\\san pham 006 5.jpg','f28de5b2-f755-11ef-b573-038db8f5a351'),('007','san pham 007\\7.png','f28ed40b-f755-11ef-b573-038db8f5a351'),('007','san pham 007\\san pham 007 1.jpg','f28f7fe6-f755-11ef-b573-038db8f5a351'),('007','san pham 007\\san pham 007 2.jpg','f2904be5-f755-11ef-b573-038db8f5a351'),('007','san pham 007\\san pham 007 3.jpg','f2912a1d-f755-11ef-b573-038db8f5a351'),('007','san pham 007\\san pham 007 4.jpg','f291e4a8-f755-11ef-b573-038db8f5a351'),('007','san pham 007\\san pham 007 5.jpg','f2927197-f755-11ef-b573-038db8f5a351'),('008','san pham 008\\8.png','f2937b76-f755-11ef-b573-038db8f5a351'),('008','san pham 008\\san pham 008 1.jpg','f2943670-f755-11ef-b573-038db8f5a351'),('008','san pham 008\\san pham 008 2.jpg','f294d567-f755-11ef-b573-038db8f5a351'),('008','san pham 008\\san pham 008 3.jpg','f2957fc6-f755-11ef-b573-038db8f5a351'),('008','san pham 008\\san pham 008 4.jpg','f296454e-f755-11ef-b573-038db8f5a351'),('008','san pham 008\\san pham 008 5.jpg','f296e62c-f755-11ef-b573-038db8f5a351'),('009','san pham 009\\9.png','f2979c48-f755-11ef-b573-038db8f5a351'),('009','san pham 009\\san pham 009 1.jpg','f2984922-f755-11ef-b573-038db8f5a351'),('009','san pham 009\\san pham 009 2.jpg','f298eb3e-f755-11ef-b573-038db8f5a351'),('009','san pham 009\\san pham 009 3.jpg','f2999bfe-f755-11ef-b573-038db8f5a351'),('009','san pham 009\\san pham 009 4.jpg','f29a43e0-f755-11ef-b573-038db8f5a351'),('009','san pham 009\\san pham 009 5.jpg','f29b09ac-f755-11ef-b573-038db8f5a351'),('010','san pham 010\\10.png','f29bd23a-f755-11ef-b573-038db8f5a351'),('010','san pham 010\\san pham 010 1.jpg','f29c70b2-f755-11ef-b573-038db8f5a351'),('010','san pham 010\\san pham 010 2.jpg','f29d1634-f755-11ef-b573-038db8f5a351'),('010','san pham 010\\san pham 010 3.jpg','f29dcfd1-f755-11ef-b573-038db8f5a351'),('010','san pham 010\\san pham 010 4.jpg','f29e57a5-f755-11ef-b573-038db8f5a351'),('010','san pham 010\\san pham 010 5.jpg','f29ee771-f755-11ef-b573-038db8f5a351'),('011','san pham 011\\11.png','f29faf9e-f755-11ef-b573-038db8f5a351'),('011','san pham 011\\san pham 011 1.jpg','f2a06229-f755-11ef-b573-038db8f5a351'),('011','san pham 011\\san pham 011 2.jpg','f2a1113a-f755-11ef-b573-038db8f5a351'),('011','san pham 011\\san pham 011 3.jpg','f2a1b246-f755-11ef-b573-038db8f5a351'),('011','san pham 011\\san pham 011 4.jpg','f2a26f7c-f755-11ef-b573-038db8f5a351'),('011','san pham 011\\san pham 011 5.jpg','f2a33efc-f755-11ef-b573-038db8f5a351'),('012','san pham 012\\12.png','f2a410ba-f755-11ef-b573-038db8f5a351'),('012','san pham 012\\san pham 012 1.jpg','f2a4a4af-f755-11ef-b573-038db8f5a351'),('012','san pham 012\\san pham 012 2.jpg','f2a57401-f755-11ef-b573-038db8f5a351'),('012','san pham 012\\san pham 012 3.jpg','f2a63a28-f755-11ef-b573-038db8f5a351'),('012','san pham 012\\san pham 012 4.jpg','f2a6faa1-f755-11ef-b573-038db8f5a351'),('012','san pham 012\\san pham 012 5.jpg','f2a7efe3-f755-11ef-b573-038db8f5a351'),('013','san pham 013\\13.png','f2a8d72c-f755-11ef-b573-038db8f5a351'),('013','san pham 013\\san pham 013 1.jpg','f2a96cc9-f755-11ef-b573-038db8f5a351'),('013','san pham 013\\san pham 013 2.jpg','f2aa08da-f755-11ef-b573-038db8f5a351'),('013','san pham 013\\san pham 013 3.jpg','f2aaa034-f755-11ef-b573-038db8f5a351'),('013','san pham 013\\san pham 013 4.jpg','f2ab34d2-f755-11ef-b573-038db8f5a351'),('013','san pham 013\\san pham 013 5.jpg','f2abc554-f755-11ef-b573-038db8f5a351'),('014','san pham 014\\14.png','f2ac9c40-f755-11ef-b573-038db8f5a351'),('014','san pham 014\\san pham 014 1.jpg','f2ad4c97-f755-11ef-b573-038db8f5a351'),('014','san pham 014\\san pham 014 2.jpg','f2adfa61-f755-11ef-b573-038db8f5a351'),('014','san pham 014\\san pham 014 3.jpg','f2ae8692-f755-11ef-b573-038db8f5a351'),('014','san pham 014\\san pham 014 4.jpg','f2af397e-f755-11ef-b573-038db8f5a351'),('014','san pham 014\\san pham 014 5.jpg','f2aff88e-f755-11ef-b573-038db8f5a351'),('015','san pham 015\\15.png','f2b0911c-f755-11ef-b573-038db8f5a351'),('015','san pham 015\\san pham 015 1.jpg','f2b11a18-f755-11ef-b573-038db8f5a351'),('015','san pham 015\\san pham 015 2.jpg','f2b1ee5e-f755-11ef-b573-038db8f5a351'),('015','san pham 015\\san pham 015 3.jpg','f2b2a7be-f755-11ef-b573-038db8f5a351'),('015','san pham 015\\san pham 015 4.jpg','f2b33c6c-f755-11ef-b573-038db8f5a351'),('015','san pham 015\\san pham 015 5.jpg','f2b3ce4f-f755-11ef-b573-038db8f5a351'),('016','san pham 016\\16.png','f2b4b725-f755-11ef-b573-038db8f5a351'),('016','san pham 016\\san pham 016 1.jpg','f2b56cb5-f755-11ef-b573-038db8f5a351'),('016','san pham 016\\san pham 016 2.jpg','f2b616c4-f755-11ef-b573-038db8f5a351'),('016','san pham 016\\san pham 016 3.jpg','f2b69227-f755-11ef-b573-038db8f5a351'),('016','san pham 016\\san pham 016 4.jpg','f2b74c0e-f755-11ef-b573-038db8f5a351'),('016','san pham 016\\san pham 016 5.jpg','f2b8031b-f755-11ef-b573-038db8f5a351'),('017','san pham 017\\17.png','f2b8bb1c-f755-11ef-b573-038db8f5a351'),('017','san pham 017\\san pham 017 1.jpg','f2b9703c-f755-11ef-b573-038db8f5a351'),('017','san pham 017\\san pham 017 2.jpg','f2ba1887-f755-11ef-b573-038db8f5a351'),('017','san pham 017\\san pham 017 3.jpg','f2babe98-f755-11ef-b573-038db8f5a351'),('017','san pham 017\\san pham 017 4.jpg','f2bb5f8b-f755-11ef-b573-038db8f5a351'),('017','san pham 017\\san pham 017 5.jpg','f2bbe509-f755-11ef-b573-038db8f5a351'),('018','san pham 018\\18.png','f2bcc746-f755-11ef-b573-038db8f5a351'),('018','san pham 018\\san pham 018 1.jpg','f2bd8840-f755-11ef-b573-038db8f5a351'),('018','san pham 018\\san pham 018 2.jpg','f2be4e46-f755-11ef-b573-038db8f5a351'),('018','san pham 018\\san pham 018 3.jpg','f2bf4134-f755-11ef-b573-038db8f5a351'),('018','san pham 018\\san pham 018 4.jpg','f2bfe8d2-f755-11ef-b573-038db8f5a351'),('018','san pham 018\\san pham 018 5.jpg','f2c09538-f755-11ef-b573-038db8f5a351'),('019','san pham 019\\19.png','f2c175a1-f755-11ef-b573-038db8f5a351'),('019','san pham 019\\san pham 019 1.jpg','f2c227e0-f755-11ef-b573-038db8f5a351'),('019','san pham 019\\san pham 019 2.jpg','f2c2b5d4-f755-11ef-b573-038db8f5a351'),('019','san pham 019\\san pham 019 3.jpg','f2c36209-f755-11ef-b573-038db8f5a351'),('019','san pham 019\\san pham 019 4.jpg','f2c4170a-f755-11ef-b573-038db8f5a351'),('019','san pham 019\\san pham 019 5.jpg','f2c4c64d-f755-11ef-b573-038db8f5a351'),('020','san pham 020\\20.png','f2c588f9-f755-11ef-b573-038db8f5a351'),('020','san pham 020\\san pham 020 1.jpg','f2c647e1-f755-11ef-b573-038db8f5a351'),('020','san pham 020\\san pham 020 2.jpg','f2c70401-f755-11ef-b573-038db8f5a351'),('020','san pham 020\\san pham 020 3.jpg','f2c7b25b-f755-11ef-b573-038db8f5a351'),('020','san pham 020\\san pham 020 4.jpg','f2c837d5-f755-11ef-b573-038db8f5a351'),('020','san pham 020\\san pham 020 5.jpg','f2c8e7ab-f755-11ef-b573-038db8f5a351'),('021','san pham 021\\21.png','f2c9c2b4-f755-11ef-b573-038db8f5a351'),('021','san pham 021\\san pham 021 1.jpg','f2ca7799-f755-11ef-b573-038db8f5a351'),('021','san pham 021\\san pham 021 2.jpg','f2cb0b9d-f755-11ef-b573-038db8f5a351'),('021','san pham 021\\san pham 021 3.jpg','f2cbc5b7-f755-11ef-b573-038db8f5a351'),('021','san pham 021\\san pham 021 4.jpg','f2cc553a-f755-11ef-b573-038db8f5a351'),('021','san pham 021\\san pham 021 5.jpg','f2ccea23-f755-11ef-b573-038db8f5a351'),('022','san pham 022\\22.png','f2cdcce7-f755-11ef-b573-038db8f5a351'),('022','san pham 022\\san pham 022 1.jpg','f2ce62cc-f755-11ef-b573-038db8f5a351'),('022','san pham 022\\san pham 022 2.jpg','f2cf1c24-f755-11ef-b573-038db8f5a351'),('022','san pham 022\\san pham 022 3.jpg','f2cfcd02-f755-11ef-b573-038db8f5a351'),('022','san pham 022\\san pham 022 4.jpg','f2d06d3f-f755-11ef-b573-038db8f5a351'),('022','san pham 022\\san pham 022 5.jpg','f2d12aca-f755-11ef-b573-038db8f5a351'),('023','san pham 023\\23.png','f2d20b0f-f755-11ef-b573-038db8f5a351'),('023','san pham 023\\san pham 023 1.jpg','f2d2c162-f755-11ef-b573-038db8f5a351'),('023','san pham 023\\san pham 023 2.jpg','f2d3711d-f755-11ef-b573-038db8f5a351'),('023','san pham 023\\san pham 023 3.jpg','f2d420c7-f755-11ef-b573-038db8f5a351'),('023','san pham 023\\san pham 023 4.jpg','f2d4a448-f755-11ef-b573-038db8f5a351'),('023','san pham 023\\san pham 023 5.jpg','f2d54cb8-f755-11ef-b573-038db8f5a351'),('024','san pham 024\\24.png','f2d61f04-f755-11ef-b573-038db8f5a351'),('024','san pham 024\\san pham 024 1.jpg','f2d6ce27-f755-11ef-b573-038db8f5a351'),('024','san pham 024\\san pham 024 2.jpg','f2d75a21-f755-11ef-b573-038db8f5a351'),('024','san pham 024\\san pham 024 3.jpg','f2d80b01-f755-11ef-b573-038db8f5a351'),('024','san pham 024\\san pham 024 4.jpg','f2d8af2d-f755-11ef-b573-038db8f5a351'),('024','san pham 024\\san pham 024 5.jpg','f2d93934-f755-11ef-b573-038db8f5a351'),('025','san pham 025\\25.png','f2d9e04c-f755-11ef-b573-038db8f5a351'),('025','san pham 025\\san pham 025 1.jpg','f2daa11a-f755-11ef-b573-038db8f5a351'),('025','san pham 025\\san pham 025 2.jpg','f2db5f54-f755-11ef-b573-038db8f5a351'),('025','san pham 025\\san pham 025 3.jpg','f2dbf1b1-f755-11ef-b573-038db8f5a351'),('025','san pham 025\\san pham 025 4.jpg','f2dc9f76-f755-11ef-b573-038db8f5a351'),('025','san pham 025\\san pham 025 5.jpg','f2dd51f7-f755-11ef-b573-038db8f5a351'),('026','san pham 026\\26.png','f2de19c0-f755-11ef-b573-038db8f5a351'),('026','san pham 026\\san pham 026 1.jpg','f2dec049-f755-11ef-b573-038db8f5a351'),('026','san pham 026\\san pham 026 2.jpg','f2df76c9-f755-11ef-b573-038db8f5a351'),('026','san pham 026\\san pham 026 3.jpg','f2e01dea-f755-11ef-b573-038db8f5a351'),('026','san pham 026\\san pham 026 4.jpg','f2e0f20e-f755-11ef-b573-038db8f5a351'),('026','san pham 026\\san pham 026 5.jpg','f2e1cd52-f755-11ef-b573-038db8f5a351'),('027','san pham 027\\27.png','f2e2c7a5-f755-11ef-b573-038db8f5a351'),('027','san pham 027\\san pham 027 1.jpg','f2e3a0b1-f755-11ef-b573-038db8f5a351'),('027','san pham 027\\san pham 027 2.jpg','f2e464c6-f755-11ef-b573-038db8f5a351'),('027','san pham 027\\san pham 027 3.jpg','f2e5341e-f755-11ef-b573-038db8f5a351'),('027','san pham 027\\san pham 027 4.jpg','f2e5f7cb-f755-11ef-b573-038db8f5a351'),('027','san pham 027\\san pham 027 5.jpg','f2e696f4-f755-11ef-b573-038db8f5a351'),('028','san pham 028\\28.png','f2e778d9-f755-11ef-b573-038db8f5a351'),('028','san pham 028\\san pham 028 1.jpg','f2e831f5-f755-11ef-b573-038db8f5a351'),('028','san pham 028\\san pham 028 2.jpg','f2e901f7-f755-11ef-b573-038db8f5a351'),('028','san pham 028\\san pham 028 3.jpg','f2e9cefc-f755-11ef-b573-038db8f5a351'),('028','san pham 028\\san pham 028 4.jpg','f2eab1d4-f755-11ef-b573-038db8f5a351'),('028','san pham 028\\san pham 028 5.jpg','f2eb7a80-f755-11ef-b573-038db8f5a351'),('029','san pham 029\\29.png','f2ec3f3e-f755-11ef-b573-038db8f5a351'),('029','san pham 029\\san pham 029 1.jpg','f2ed012a-f755-11ef-b573-038db8f5a351'),('029','san pham 029\\san pham 029 2.jpg','f2ed9bcc-f755-11ef-b573-038db8f5a351'),('029','san pham 029\\san pham 029 3.jpg','f2ee5925-f755-11ef-b573-038db8f5a351'),('029','san pham 029\\san pham 029 4.jpg','f2ef1a36-f755-11ef-b573-038db8f5a351'),('029','san pham 029\\san pham 029 5.jpg','f2efd71f-f755-11ef-b573-038db8f5a351'),('030','san pham 030\\30.png','f2f07fbd-f755-11ef-b573-038db8f5a351'),('030','san pham 030\\san pham 030 1.jpg','f2f1165b-f755-11ef-b573-038db8f5a351'),('030','san pham 030\\san pham 030 2.jpg','f2f20493-f755-11ef-b573-038db8f5a351'),('030','san pham 030\\san pham 030 3.jpg','f2f2ddd7-f755-11ef-b573-038db8f5a351'),('030','san pham 030\\san pham 030 4.jpg','f2f39db4-f755-11ef-b573-038db8f5a351'),('030','san pham 030\\san pham 030 5.jpg','f2f4679a-f755-11ef-b573-038db8f5a351'),('031','san pham 031\\31.png','f2f52362-f755-11ef-b573-038db8f5a351'),('031','san pham 031\\san pham 031 1.jpg','f2f5e1a1-f755-11ef-b573-038db8f5a351'),('031','san pham 031\\san pham 031 2.jpg','f2f69334-f755-11ef-b573-038db8f5a351'),('031','san pham 031\\san pham 031 3.jpg','f2f742f3-f755-11ef-b573-038db8f5a351'),('031','san pham 031\\san pham 031 4.jpg','f2f7f47c-f755-11ef-b573-038db8f5a351'),('031','san pham 031\\san pham 031 5.jpg','f2f87dcb-f755-11ef-b573-038db8f5a351'),('032','san pham 032\\32.png','f2f9cead-f755-11ef-b573-038db8f5a351'),('032','san pham 032\\san pham 032 1.jpg','f2faffea-f755-11ef-b573-038db8f5a351'),('032','san pham 032\\san pham 032 2.jpg','f2fbfb20-f755-11ef-b573-038db8f5a351'),('032','san pham 032\\san pham 032 3.jpg','f2fccb5a-f755-11ef-b573-038db8f5a351'),('032','san pham 032\\san pham 032 4.jpg','f2fdbb74-f755-11ef-b573-038db8f5a351'),('032','san pham 032\\san pham 032 5.jpg','f2feca11-f755-11ef-b573-038db8f5a351'),('033','san pham 033\\33.png','f3000ab6-f755-11ef-b573-038db8f5a351'),('033','san pham 033\\san pham 033 1.jpg','f3013a3a-f755-11ef-b573-038db8f5a351'),('033','san pham 033\\san pham 033 2.jpg','f3022b53-f755-11ef-b573-038db8f5a351'),('033','san pham 033\\san pham 033 3.jpg','f3036823-f755-11ef-b573-038db8f5a351'),('033','san pham 033\\san pham 033 4.jpg','f304471a-f755-11ef-b573-038db8f5a351'),('033','san pham 033\\san pham 033 5.jpg','f30517a4-f755-11ef-b573-038db8f5a351'),('034','san pham 034\\34.png','f3066a1e-f755-11ef-b573-038db8f5a351'),('034','san pham 034\\san pham 034 1.jpg','f3079210-f755-11ef-b573-038db8f5a351'),('034','san pham 034\\san pham 034 2.jpg','f308d82e-f755-11ef-b573-038db8f5a351'),('034','san pham 034\\san pham 034 3.jpg','f30a14a6-f755-11ef-b573-038db8f5a351'),('034','san pham 034\\san pham 034 4.jpg','f30b69e9-f755-11ef-b573-038db8f5a351'),('034','san pham 034\\san pham 034 5.jpg','f30c8746-f755-11ef-b573-038db8f5a351'),('035','san pham 035\\35.png','f30dcef5-f755-11ef-b573-038db8f5a351'),('035','san pham 035\\san pham 035 1.jpg','f30ea72e-f755-11ef-b573-038db8f5a351'),('035','san pham 035\\san pham 035 2.jpg','f30f7c6d-f755-11ef-b573-038db8f5a351'),('035','san pham 035\\san pham 035 3.jpg','f3109b9e-f755-11ef-b573-038db8f5a351'),('035','san pham 035\\san pham 035 4.jpg','f311c005-f755-11ef-b573-038db8f5a351'),('035','san pham 035\\san pham 035 5.jpg','f312f892-f755-11ef-b573-038db8f5a351'),('036','san pham 036\\36.png','f313f830-f755-11ef-b573-038db8f5a351'),('036','san pham 036\\san pham 036 1.jpg','f3149e86-f755-11ef-b573-038db8f5a351'),('036','san pham 036\\san pham 036 2.jpg','f315540b-f755-11ef-b573-038db8f5a351'),('036','san pham 036\\san pham 036 3.jpg','f315e888-f755-11ef-b573-038db8f5a351'),('036','san pham 036\\san pham 036 4.jpg','f3169430-f755-11ef-b573-038db8f5a351'),('036','san pham 036\\san pham 036 5.jpg','f3171bf9-f755-11ef-b573-038db8f5a351'),('037','san pham 037\\37.png','f317e425-f755-11ef-b573-038db8f5a351'),('037','san pham 037\\san pham 037 1.jpg','f3189996-f755-11ef-b573-038db8f5a351'),('037','san pham 037\\san pham 037 2.jpg','f3194762-f755-11ef-b573-038db8f5a351'),('037','san pham 037\\san pham 037 3.jpg','f319f41e-f755-11ef-b573-038db8f5a351'),('037','san pham 037\\san pham 037 4.jpg','f31ab104-f755-11ef-b573-038db8f5a351'),('037','san pham 037\\san pham 037 5.jpg','f31b6d29-f755-11ef-b573-038db8f5a351'),('038','san pham 038\\38.png','f31c194b-f755-11ef-b573-038db8f5a351'),('038','san pham 038\\san pham 038 1.jpg','f31cac93-f755-11ef-b573-038db8f5a351'),('038','san pham 038\\san pham 038 2.jpg','f31d6e6b-f755-11ef-b573-038db8f5a351'),('038','san pham 038\\san pham 038 3.jpg','f31e2042-f755-11ef-b573-038db8f5a351'),('038','san pham 038\\san pham 038 4.jpg','f31eab6d-f755-11ef-b573-038db8f5a351'),('038','san pham 038\\san pham 038 5.jpg','f31f65e9-f755-11ef-b573-038db8f5a351'),('039','san pham 039\\39.png','f3203be6-f755-11ef-b573-038db8f5a351'),('039','san pham 039\\san pham 039 1.jpg','f320c966-f755-11ef-b573-038db8f5a351'),('039','san pham 039\\san pham 039 2.jpg','f32152e6-f755-11ef-b573-038db8f5a351'),('039','san pham 039\\san pham 039 3.jpg','f321ed4a-f755-11ef-b573-038db8f5a351'),('039','san pham 039\\san pham 039 4.jpg','f322980d-f755-11ef-b573-038db8f5a351'),('039','san pham 039\\san pham 039 5.jpg','f323394f-f755-11ef-b573-038db8f5a351'),('040','san pham 040\\40.png','f323e793-f755-11ef-b573-038db8f5a351'),('040','san pham 040\\san pham 040 1.jpg','f32481a1-f755-11ef-b573-038db8f5a351'),('040','san pham 040\\san pham 040 2.jpg','f32547b1-f755-11ef-b573-038db8f5a351'),('040','san pham 040\\san pham 040 3.jpg','f325df3c-f755-11ef-b573-038db8f5a351'),('040','san pham 040\\san pham 040 4.jpg','f3266e24-f755-11ef-b573-038db8f5a351'),('040','san pham 040\\san pham 040 5.jpg','f3272312-f755-11ef-b573-038db8f5a351'),('041','san pham 041\\41.png','f327cdc8-f755-11ef-b573-038db8f5a351'),('041','san pham 041\\san pham 041 1.jpg','f3285301-f755-11ef-b573-038db8f5a351'),('041','san pham 041\\san pham 041 2.jpg','f3290ce8-f755-11ef-b573-038db8f5a351'),('041','san pham 041\\san pham 041 3.jpg','f329dae7-f755-11ef-b573-038db8f5a351'),('041','san pham 041\\san pham 041 4.jpg','f32a9e83-f755-11ef-b573-038db8f5a351'),('041','san pham 041\\san pham 041 5.jpg','f32b53cf-f755-11ef-b573-038db8f5a351');
/*!40000 ALTER TABLE `sanpham_anh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sanphamsize`
--

DROP TABLE IF EXISTS `sanphamsize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sanphamsize` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `MaSanPham` varchar(50) NOT NULL,
  `Size` varchar(50) NOT NULL,
  `SoLuong` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `MaSanPham` (`MaSanPham`),
  CONSTRAINT `sanphamsize_ibfk_1` FOREIGN KEY (`MaSanPham`) REFERENCES `sanpham` (`MaSanPham`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=248 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanphamsize`
--

LOCK TABLES `sanphamsize` WRITE;
/*!40000 ALTER TABLE `sanphamsize` DISABLE KEYS */;
INSERT INTO `sanphamsize` VALUES (1,'001','38',18),(2,'001','39',9),(3,'001','40',9),(4,'001','41',17),(5,'001','42',20),(6,'001','43',14),(7,'002','38',9),(8,'002','39',17),(9,'002','40',17),(10,'002','41',19),(11,'002','42',18),(12,'002','43',17),(13,'003','38',14),(14,'003','39',11),(15,'003','40',16),(16,'003','41',5),(17,'003','42',5),(18,'003','43',11),(19,'004','38',16),(20,'004','39',16),(21,'004','40',10),(22,'004','41',12),(23,'004','42',12),(24,'004','43',12),(31,'006','38',10),(32,'006','39',11),(33,'006','40',7),(34,'006','41',14),(35,'006','42',15),(36,'006','43',16),(37,'007','38',20),(38,'007','39',8),(39,'007','40',11),(40,'007','41',14),(41,'007','42',10),(42,'007','43',16),(43,'008','38',10),(44,'008','39',12),(45,'008','40',18),(46,'008','41',10),(47,'008','42',15),(48,'008','43',6),(49,'009','38',18),(50,'009','39',20),(51,'009','40',16),(52,'009','41',18),(53,'009','42',5),(54,'009','43',18),(55,'010','38',18),(56,'010','39',19),(57,'010','40',7),(58,'010','41',19),(59,'010','42',18),(60,'010','43',14),(61,'011','38',11),(62,'011','39',16),(63,'011','40',18),(64,'011','41',19),(65,'011','42',13),(66,'011','43',5),(67,'012','38',12),(68,'012','39',11),(69,'012','40',18),(70,'012','41',7),(71,'012','42',15),(72,'012','43',0),(73,'013','38',18),(74,'013','39',5),(75,'013','40',12),(76,'013','41',11),(77,'013','42',5),(78,'013','43',13),(79,'014','38',9),(80,'014','39',10),(81,'014','40',7),(82,'014','41',17),(83,'014','42',20),(84,'014','43',9),(85,'015','38',9),(86,'015','39',20),(87,'015','40',9),(88,'015','41',13),(89,'015','42',6),(90,'015','43',15),(91,'016','38',20),(92,'016','39',15),(93,'016','40',14),(94,'016','41',10),(95,'016','42',20),(96,'016','43',9),(97,'017','38',9),(98,'017','39',12),(99,'017','40',14),(100,'017','41',12),(101,'017','42',20),(102,'017','43',12),(103,'018','38',8),(104,'018','39',13),(105,'018','40',8),(106,'018','41',20),(107,'018','42',10),(108,'018','43',7),(109,'019','38',9),(110,'019','39',7),(111,'019','40',12),(112,'019','41',9),(113,'019','42',8),(114,'019','43',16),(115,'020','38',12),(116,'020','39',16),(117,'020','40',5),(118,'020','41',13),(119,'020','42',17),(120,'020','43',14),(121,'021','38',7),(122,'021','39',11),(123,'021','40',5),(124,'021','41',11),(125,'021','42',18),(126,'021','43',19),(127,'022','38',11),(128,'022','39',9),(129,'022','40',15),(130,'022','41',19),(131,'022','42',9),(132,'022','43',11),(133,'023','38',19),(134,'023','39',15),(135,'023','40',17),(136,'023','41',18),(137,'023','42',19),(138,'023','43',5),(139,'024','38',14),(140,'024','39',17),(141,'024','40',16),(142,'024','41',6),(143,'024','42',18),(144,'024','43',6),(145,'025','38',15),(146,'025','39',6),(147,'025','40',13),(148,'025','41',6),(149,'025','42',20),(150,'025','43',17),(151,'026','38',18),(152,'026','39',16),(153,'026','40',20),(154,'026','41',20),(155,'026','42',19),(156,'026','43',18),(157,'027','38',6),(158,'027','39',8),(159,'027','40',14),(160,'027','41',12),(161,'027','42',10),(162,'027','43',14),(163,'028','38',20),(164,'028','39',9),(165,'028','40',6),(166,'028','41',13),(167,'028','42',8),(168,'028','43',20),(169,'029','38',12),(170,'029','39',6),(171,'029','40',14),(172,'029','41',15),(173,'029','42',10),(174,'029','43',15),(175,'030','38',12),(176,'030','39',14),(177,'030','40',19),(178,'030','41',13),(179,'030','42',19),(180,'030','43',16),(181,'031','38',9),(182,'031','39',7),(183,'031','40',14),(184,'031','41',12),(185,'031','42',6),(186,'031','43',8),(187,'032','38',7),(188,'032','39',7),(189,'032','40',14),(190,'032','41',13),(191,'032','42',10),(192,'032','43',8),(193,'033','38',18),(194,'033','39',7),(195,'033','40',8),(196,'033','41',13),(197,'033','42',8),(198,'033','43',12),(199,'034','38',13),(200,'034','39',7),(201,'034','40',20),(202,'034','41',16),(203,'034','42',16),(204,'034','43',17),(205,'035','38',18),(206,'035','39',16),(207,'035','40',16),(208,'035','41',13),(209,'035','42',15),(210,'035','43',14),(211,'036','38',11),(212,'036','39',6),(213,'036','40',9),(214,'036','41',16),(215,'036','42',13),(216,'036','43',6),(217,'037','38',15),(218,'037','39',9),(219,'037','40',13),(220,'037','41',16),(221,'037','42',8),(222,'037','43',17),(223,'038','38',6),(224,'038','39',17),(225,'038','40',17),(226,'038','41',10),(227,'038','42',8),(228,'038','43',7),(229,'039','38',9),(230,'039','39',5),(231,'039','40',10),(232,'039','41',8),(233,'039','42',13),(234,'039','43',12),(235,'040','38',9),(236,'040','39',20),(237,'040','40',15),(238,'040','41',15),(239,'040','42',11),(240,'040','43',6),(241,'041','38',18),(242,'041','39',18),(243,'041','40',8),(244,'041','41',20),(245,'041','42',17),(246,'041','43',13),(247,'001','43',23);
/*!40000 ALTER TABLE `sanphamsize` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_soluong_sanpham` AFTER INSERT ON `sanphamsize` FOR EACH ROW BEGIN
    UPDATE sanpham
    SET SoLuong = (
        SELECT SUM(SoLuong)
        FROM sanphamsize
        WHERE MaSanPham = NEW.MaSanPham
    )
    WHERE MaSanPham = NEW.MaSanPham;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_soluong_sanpham_after_update` AFTER UPDATE ON `sanphamsize` FOR EACH ROW BEGIN
    UPDATE sanpham
    SET SoLuong = (
        SELECT SUM(SoLuong)
        FROM sanphamsize
        WHERE MaSanPham = NEW.MaSanPham
    )
    WHERE MaSanPham = NEW.MaSanPham;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_soluong_sanpham_after_delete` AFTER DELETE ON `sanphamsize` FOR EACH ROW BEGIN
    UPDATE sanpham
    SET SoLuong = (
        SELECT SUM(SoLuong)
        FROM sanphamsize
        WHERE MaSanPham = OLD.MaSanPham
    )
    WHERE MaSanPham = OLD.MaSanPham;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `taikhoan`
--

DROP TABLE IF EXISTS `taikhoan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taikhoan` (
  `Email` varchar(50) DEFAULT NULL,
  `TaiKhoan` varchar(50) NOT NULL,
  `MatKhau` varchar(50) DEFAULT NULL,
  `SDT` int DEFAULT NULL,
  `NgaySinh` datetime DEFAULT NULL,
  `MaNhanVien` varchar(50) DEFAULT NULL,
  `Role` varchar(50) DEFAULT NULL,
  `LoaiTaiKhoan` enum('nhanvien','khachhang') NOT NULL,
  `MaKhachHang` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`TaiKhoan`),
  KEY `fk_taikhoan_nhanvien` (`MaNhanVien`),
  KEY `fk_taikhoan_khachhang` (`MaKhachHang`),
  CONSTRAINT `fk_taikhoan_khachhang` FOREIGN KEY (`MaKhachHang`) REFERENCES `khachhang` (`MaKhachHang`),
  CONSTRAINT `fk_taikhoan_nhanvien` FOREIGN KEY (`MaNhanVien`) REFERENCES `nhanvien` (`MaNhanVien`),
  CONSTRAINT `taikhoan_ibfk_1` FOREIGN KEY (`MaNhanVien`) REFERENCES `nhanvien` (`MaNhanVien`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taikhoan`
--

LOCK TABLES `taikhoan` WRITE;
/*!40000 ALTER TABLE `taikhoan` DISABLE KEYS */;
INSERT INTO `taikhoan` VALUES ('test@example.com','admin','2',987654321,'1990-05-15 00:00:00','1','admin','nhanvien',NULL),('anhan12@gmail.com','anhan12','hanan12',987654345,'2012-06-30 00:00:00',NULL,'admin','nhanvien',NULL),('test@example.com','anhthu_admin','2',987654321,'2025-03-05 00:00:00',NULL,'admin','nhanvien',NULL),('anhtu03@hotmail.com','anhtu03','antu03!',987654336,'2003-09-10 00:00:00',NULL,'thuong','khachhang',NULL),('anhtu40@gmail.com','anhtu40','pass040',901234600,'2029-04-30 00:00:00',NULL,'thuong','khachhang',NULL),('anhtuan12@yahoo.com','anhtuan12','pass012',901234572,'2001-12-10 00:00:00',NULL,'thuong','nhanvien',NULL),('bachduong23@outlook.com','bachduong23','duongbach23',987654356,'2023-05-10 00:00:00',NULL,'thuong','khachhang',NULL),('bachhoa25@gmail.com','bachhoa25','pass025',901234585,'2014-01-15 00:00:00',NULL,'thuong','khachhang',NULL),('bachtuan89@gmail.com','bachtuan','tuanhero89',987654326,'1989-11-11 00:00:00',NULL,'thuong','khachhang',NULL),('baoquoc31@gmail.com','baoquoc31','pass031',901234591,'2020-07-15 00:00:00',NULL,'thuong','khachhang',NULL),('binhminh08@outlook.com','binhminh08','pass008',901234568,'1997-08-20 00:00:00',NULL,'admin','nhanvien',NULL),('duchieu06@gmail.com','duchieu06','hieuduc06',987654339,'2006-12-25 00:00:00',NULL,'thuong','nhanvien',NULL),('duclong18@yahoo.com','duclong18','longduc18',987654351,'2018-12-12 00:00:00',NULL,'admin','nhanvien',NULL),('Tuan@gmail.com','Duy Tuấn','123',123,'2025-01-04 00:00:00','1','thuong','nhanvien',NULL),('duylinh11@gmail.com','duylinh11','pass011',901234571,'2000-11-05 00:00:00',NULL,'admin','nhanvien',NULL),('duynguyen91@gmail.com','duynguyen','duypro91',987654324,'1991-09-05 00:00:00',NULL,'thuong','khachhang',NULL),('hanhtrang99@outlook.com','hanhtrang99','trang123',987654332,'1999-05-20 00:00:00',NULL,'thuong','khachhang',NULL),('hienpham01@yahoo.com','hienpham01','hienpass01',987654334,'2001-07-30 00:00:00',NULL,'thuong','khachhang',NULL),('hieuviet16@outlook.com','hieuviet16','pass016',901234576,'2005-04-30 00:00:00',NULL,'thuong','khachhang',NULL),('hoanglong93@yahoo.com','hoanglong','pass456',987654322,'1993-07-15 00:00:00',NULL,'thuong','nhanvien',NULL),('hoangnam97@yahoo.com','hoangnam97','namno1',987654330,'1997-03-30 00:00:00',NULL,'thuong','khachhang',NULL),('hoangngoc22@gmail.com','hoangngoc22','pass022',901234582,'2011-10-30 00:00:00',NULL,'thuong','khachhang',NULL),('hoangson09@yahoo.com','hoangson09','sonhoang09',987654342,'2009-03-22 00:00:00',NULL,'admin','nhanvien',NULL),('hoangvu09@gmail.com','hoangvu09','pass009',901234569,'1998-09-25 00:00:00',NULL,'thuong','nhanvien',NULL),('hongan27@outlook.com','hongan27','pass027',901234587,'2016-03-25 00:00:00',NULL,'thuong','nhanvien',NULL),('hongan37@gmail.com','hongan37','pass037',901234597,'2026-01-15 00:00:00',NULL,'thuong','khachhang',NULL),('hongthuy29@yahoo.com','hongthuy29','pass029',901234589,'2018-05-05 00:00:00',NULL,'admin','nhanvien',NULL),('hongvan17@gmail.com','hongvan17','vanhong17',987654350,'2017-11-08 00:00:00',NULL,'thuong','khachhang',NULL),('huyhoang33@outlook.com','huyhoang33','pass033',901234593,'2022-09-25 00:00:00',NULL,'thuong','nhanvien',NULL),('khanhly87@gmail.com','khanhly87','lylove87',987654328,'1987-01-20 00:00:00',NULL,'thuong','khachhang',NULL),('khanhvy20@hotmail.com','khanhvy20','vykhanh20',987654353,'2020-02-28 00:00:00',NULL,'thuong','khachhang',NULL),('kieuanh35@yahoo.com','kieuanh35','pass035',901234595,'2024-11-05 00:00:00',NULL,'admin','nhanvien',NULL),('kimngan14@gmail.com','kimngan14','pass014',901234574,'2003-02-20 00:00:00',NULL,'admin','nhanvien',NULL),('kimphuong07@yahoo.com','kimphuong07','pass007',901234567,'1996-07-15 00:00:00',NULL,'thuong','khachhang',NULL),('kimyen07@gmail.com','kimyen07','yenpass07',987654340,'2007-01-30 00:00:00',NULL,'thuong','khachhang',NULL),('lamvu21@hotmail.com','lamvu21','pass021',901234581,'2010-09-25 00:00:00',NULL,'thuong','nhanvien',NULL),('lanhuong24@outlook.com','lanhuong24','pass024',901234584,'2013-12-10 00:00:00',NULL,'thuong','nhanvien',NULL),('lehoang02@yahoo.com','lehoang02','pass002',901234562,'1991-02-20 00:00:00',NULL,'admin','nhanvien',NULL),('lethanh15@yahoo.com','lethanh15','thanhle15',987654348,'2015-09-17 00:00:00',NULL,'admin','nhanvien',NULL),('linhchi24@gmail.com','linhchi24','chiling24',987654357,'2024-06-05 00:00:00',NULL,'admin','nhanvien',NULL),('linhpham92@outlook.com','linhpham92','mylove92',987654323,'1992-08-10 00:00:00',NULL,'thuong','khachhang',NULL),('maihoa10@outlook.com','maihoa10','hoa10pass',987654343,'2010-04-18 00:00:00',NULL,'thuong','nhanvien',NULL),('manhcuong00@gmail.com','manhcuong','cuongmanh00',987654333,'2000-06-25 00:00:00',NULL,'admin','nhanvien',NULL),('minhanh30@outlook.com','minhanh30','pass030',901234590,'2019-06-10 00:00:00',NULL,'thuong','nhanvien',NULL),('minhphat13@outlook.com','minhphat13','pass013',901234573,'2002-01-15 00:00:00',NULL,'user','khachhang',NULL),('minhquan21@gmail.com','minhquan21','quanminh21',987654354,'2021-03-30 00:00:00',NULL,'admin','nhanvien',NULL),('minhthanh13@hotmail.com','minhthanh13','thanhminh13',987654346,'2013-07-11 00:00:00',NULL,'thuong','nhanvien',NULL),('minhtran95@gmail.com','minhtran','pass123',987654321,'1995-06-20 00:00:00',NULL,'user','nhanvien',NULL),('myhanh05@yahoo.com','myhanh05','hanhmy05',987654338,'2005-11-20 00:00:00',NULL,'user','khachhang',NULL),('myhanh17@gmail.com','myhanh17','pass017',901234577,'2006-05-05 00:00:00',NULL,'admin','nhanvien',NULL),('ngocdung06@gmail.com','ngocdung06','pass006',901234566,'1995-06-10 00:00:00',NULL,'thuong','nhanvien',NULL),('ngocquynh88@hotmail.com','ngocquynh','quynh88!',987654327,'1988-12-12 00:00:00',NULL,'thuong','nhanvien',NULL),('nguyenthanh01@gmail.com','ngthanh01','pass001',901234561,'1990-01-15 00:00:00',NULL,'user','khachhang',NULL),('nguyenan26@yahoo.com','nguyenan26','pass026',901234586,'2015-02-20 00:00:00',NULL,'admin','nhanvien',NULL),('phamquyen03@outlook.com','phamquyen03','pass003',901234563,'1992-03-25 00:00:00',NULL,'thuong','nhanvien',NULL),('phuonghoa20@gmail.com','phuonghoa20','pass020',901234580,'2009-08-20 00:00:00',NULL,'admin','nhanvien',NULL),('phuonglan08@gmail.com','phuonglan08','lanphuong08',987654341,'2008-02-14 00:00:00',NULL,'thuong','khachhang',NULL),('quocbao14@gmail.com','quocbao14','baoquoc14',987654347,'2014-08-09 00:00:00',NULL,'thuong','khachhang',NULL),('quocbao39@outlook.com','quocbao39','pass039',901234599,'2028-03-25 00:00:00',NULL,'thuong','nhanvien',NULL),('tandung96@gmail.com','tandung_admin','dungvip96',987654329,'1996-02-25 00:00:00',NULL,'admin','nhanvien',NULL),('tandung18@yahoo.com','tandung18','pass018',901234578,'2007-06-10 00:00:00',NULL,'thuong','nhanvien',NULL),('testu32245ser@gmail.com','testu32245ser@gmail.com',NULL,NULL,NULL,NULL,'thuong','khachhang',NULL),('testuser@gmail.com','testuser@gmail.com',NULL,NULL,NULL,NULL,'thuong','khachhang',NULL),('thanhdat28@gmail.com','thanhdat28','pass028',901234588,'2017-04-30 00:00:00',NULL,'thuong','khachhang',NULL),('thanhha10@hotmail.com','thanhha10','pass010',901234570,'1999-10-30 00:00:00',NULL,'thuong','khachhang',NULL),('thanhtruc22@yahoo.com','thanhtruc22','tructhanh22',987654355,'2022-04-19 00:00:00',NULL,'thuong','nhanvien',NULL),('thienan32@yahoo.com','thienan32','pass032',901234592,'2021-08-20 00:00:00',NULL,'admin','nhanvien',NULL),('thienbao11@gmail.com','thienbao11','bao11thien',987654344,'2011-05-26 00:00:00',NULL,'thuong','khachhang',NULL),('thuydo@gmail.com','thuydo','12345',896387252,'2025-03-04 00:00:00','1','admin','nhanvien',NULL),('tienmanh16@outlook.com','tienmanh16','manhtien16',987654349,'2016-10-21 00:00:00',NULL,'thuong','nhanvien',NULL),('tn0975105572@gmail.com','tn0975105572@gmail.com',NULL,NULL,NULL,NULL,'thuong','khachhang',NULL),('tranbao04@gmail.com','tranbao04','pass004',901234564,'1993-04-30 00:00:00',NULL,'thuong','khachhang',NULL),('trunghieu23@yahoo.com','trunghieu23','pass023',901234583,'2012-11-05 00:00:00',NULL,'admin','nhanvien',NULL),('trunghieu34@gmail.com','trunghieu34','pass034',901234594,'2023-10-30 00:00:00',NULL,'thuong','khachhang',NULL),('trungnghia98@gmail.com','trungnghia','nghia98pass',987654331,'1998-04-15 00:00:00',NULL,'thuong','nhanvien',NULL),('truongan19@outlook.com','truongan19','pass019',901234579,'2008-07-15 00:00:00',NULL,'thuong','khachhang',NULL),('truongkhoa26@gmail.com','truongkhoa26','khoatruong26',987654359,'2026-08-20 00:00:00',NULL,'thuong','khachhang',NULL),('truongson04@gmail.com','truongson04','sontruong04',987654337,'2004-10-15 00:00:00',NULL,'admin','nhanvien',NULL),('123@gmail.com','tuan','123',928288821,'2004-08-10 00:00:00','3','admin','nhanvien',NULL),('123','Tuan0810','123',986387286,'2004-08-10 00:00:00','1','admin','nhanvien',NULL),('test@example.com','tuãncvbnm,','2',987654321,'1990-05-14 00:00:00','1','admin','nhanvien',NULL),('tuanminh36@outlook.com','tuanminh36','pass036',901234596,'2025-12-10 00:00:00',NULL,'thuong','nhanvien',NULL),('tuann0796@gmail.com','tuann0796@gmail.com',NULL,NULL,NULL,NULL,'thuong','khachhang',NULL),('tueanh19@gmail.com','tueanh19','anhtue19',987654352,'2019-01-25 00:00:00',NULL,'thuong','nhanvien',NULL),('vanphuc25@yahoo.com','vanphuc25','phucvan25',987654358,'2025-07-15 00:00:00',NULL,'thuong','nhanvien',NULL),('vietanh15@yahoo.com','vietanh15','pass015',901234575,'2004-03-25 00:00:00',NULL,'thuong','nhanvien',NULL),('vietthang02@gmail.com','vietthang02','thangviet02',987654335,'2002-08-05 00:00:00',NULL,'thuong','nhanvien',NULL),('vumanh38@yahoo.com','vumanh38','pass038',901234598,'2027-02-20 00:00:00',NULL,'admin','nhanvien',NULL),('vuthao05@hotmail.com','vuthao05','pass005',901234565,'1994-05-05 00:00:00',NULL,'admin','nhanvien',NULL);
/*!40000 ALTER TABLE `taikhoan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `UserID` varchar(50) NOT NULL,
  `FullName` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `PasswordHash` varchar(255) NOT NULL,
  `PhoneNumber` varchar(15) DEFAULT NULL,
  `Address` text,
  `Role` varchar(20) DEFAULT NULL,
  `CreatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('1','John Doe','admin@example.com','hashedpassword1','123456789','123 Admin St','Admin','2024-11-30 15:02:02'),('2','Jane Smith','employee@example.com','hashedpassword2','987654321','456 Employee St','Employee','2024-11-30 15:02:02'),('3','Alice Johnson','customer1@example.com','hashedpassword3','123123123','789 Customer Rd','Customer','2024-11-30 15:02:02'),('4','Bob Brown','customer2@example.com','hashedpassword4','456456456','321 Customer Ln','Customer','2024-11-30 15:02:02'),('E9DEBB47-CD3D-4241-8A9E-3761FE2D6B12','admin','ad@ad.ad','admin','312342411','ădawdawd','Admin','2024-12-13 23:45:04'),('fd4bdbdd-7cf3-4ff1-b066-77d43d7c4221','PHVA','phva@gmail.com','anhnaygay','0193776721','lolololololol','admin','2025-05-07 03:52:03');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'website'
--
/*!50106 SET @save_time_zone= @@TIME_ZONE */ ;
/*!50106 DROP EVENT IF EXISTS `AutoDisableExpiredCoupons` */;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `AutoDisableExpiredCoupons` ON SCHEDULE EVERY 1 DAY STARTS '2025-03-02 20:55:46' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
    UPDATE `magiamgia`
    SET `TrangThai` = 0
    WHERE `NgayKetThuc` < NOW();
END */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
DELIMITER ;
/*!50106 SET TIME_ZONE= @save_time_zone */ ;

--
-- Dumping routines for database 'website'
--
/*!50003 DROP PROCEDURE IF EXISTS `AddNhanVien` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AddNhanVien`(
    IN p_MaNhanVien VARCHAR(50),
    IN p_HoTen VARCHAR(100),
    IN p_GioiTinh VARCHAR(10),
    IN p_NgaySinh DATE,
    IN p_DiaChi VARCHAR(200),
    IN p_SoDienThoai VARCHAR(20),
    IN p_Email VARCHAR(100)
)
BEGIN
    INSERT INTO NhanVien (MaNhanVien, HoTen, GioiTinh, NgaySinh, DiaChi, SoDienThoai, Email)
    VALUES (p_MaNhanVien, p_HoTen, p_GioiTinh, p_NgaySinh, p_DiaChi, p_SoDienThoai, p_Email);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AddTaiKhoan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AddTaiKhoan`(
    IN p_MaNhanVien VARCHAR(50),
    IN p_TaiKhoan VARCHAR(50),
    IN p_MatKhau VARCHAR(50),
    IN p_SDT VARCHAR(15),
    IN p_NgaySinh DATE,
    IN p_Email VARCHAR(100),
    IN p_Role VARCHAR(50)
)
BEGIN
    DECLARE v_Count INT;
    DECLARE v_Role VARCHAR(50);

    -- Kiểm tra Email đã tồn tại chưa
    SELECT COUNT(*) INTO v_Count FROM TaiKhoan WHERE Email = p_Email;

    IF v_Count > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Email đã tồn tại trong hệ thống!';
    ELSE
        -- Xử lý giá trị mặc định của Role
        SET v_Role = IF(p_Role IS NULL OR p_Role = 'string', 'thuong', p_Role);

        -- Thực hiện thêm tài khoản
        INSERT INTO TaiKhoan (MaNhanVien, TaiKhoan, MatKhau, SDT, NgaySinh, Email, Role)
        VALUES (p_MaNhanVien, p_TaiKhoan, p_MatKhau, p_SDT, p_NgaySinh, p_Email, v_Role);
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeleteNhanVien` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteNhanVien`(
    IN p_MaNhanVien VARCHAR(50)
)
BEGIN
    DELETE FROM NhanVien WHERE MaNhanVien = p_MaNhanVien;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeleteSanPham` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteSanPham`(
    IN p_MaSanPham VARCHAR(50)
)
BEGIN
    DELETE FROM SanPham WHERE MaSanPham = p_MaSanPham;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeleteTaiKhoan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteTaiKhoan`(
    IN p_TaiKhoan VARCHAR(50)
)
BEGIN
    DELETE FROM TaiKhoan WHERE TaiKhoan = p_TaiKhoan;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetAllNhanVien` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllNhanVien`()
BEGIN
    SELECT MaNhanVien, HoTen, GioiTinh, NgaySinh, DiaChi, SoDienThoai, Email 
    FROM NhanVien;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetAllSanPham` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllSanPham`()
BEGIN
    SELECT 
        sp.MaSanPham, 
        sp.TenSanPham, 
        sp.Gia, 
        sp.MoTa, 
        sp.MaNhaCungCap, 
        sp.SoLuong, 
        sp.Hang, 
        sp.Tag, 
        sp.Sao, 
        sp.GiamGia,
        GROUP_CONCAT(sa.LinkAnh SEPARATOR ',') AS LinkAnh  -- Gộp nhiều ảnh thành một chuỗi
    FROM 
        sanpham sp
    LEFT JOIN 
        sanpham_anh sa ON sp.MaSanPham = sa.MaSanPham  -- Kết nối bảng ảnh
    GROUP BY 
        sp.MaSanPham;  -- Nhóm theo sản phẩm
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetAllTaiKhoan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllTaiKhoan`()
BEGIN
    SELECT * FROM TaiKhoan;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetDoanhThu` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetDoanhThu`()
BEGIN
    -- Tính tổng doanh thu theo tháng
    SELECT 
        YEAR(NgayDat) AS Nam,
        MONTH(NgayDat) AS Thang,
        SUM(TongTien) AS TongDoanhThu
    FROM DonHang
    GROUP BY YEAR(NgayDat), MONTH(NgayDat)
    ORDER BY YEAR(NgayDat), MONTH(NgayDat);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetDoanhThuTheoThang` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetDoanhThuTheoThang`(
    IN p_Month INT,
    IN p_Year INT
)
BEGIN
    -- Nếu không truyền vào tháng hoặc năm, lấy giá trị hiện tại
    IF p_Month IS NULL OR p_Year IS NULL THEN
        SET p_Month = MONTH(CURDATE());
        SET p_Year = YEAR(CURDATE());
    END IF;

    -- Tính tổng doanh thu của tháng và năm chỉ định
    SELECT 
        SUM(TongTien) AS TotalRevenue
    FROM DonHang
    WHERE MONTH(NgayDat) = p_Month AND YEAR(NgayDat) = p_Year;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetMaGiamGia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetMaGiamGia`(
    IN p_MaGiamGia VARCHAR(50)
)
BEGIN
    SELECT 
        MaGiamGia,
        GiaTri,
        MoTa
    FROM MaGiamGia
    WHERE MaGiamGia = p_MaGiamGia
    LIMIT 1000;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetNhanVienById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetNhanVienById`(
    IN p_MaNhanVien VARCHAR(50)
)
BEGIN
    SELECT MaNhanVien, HoTen, GioiTinh, NgaySinh, DiaChi, SoDienThoai, Email
    FROM NhanVien
    WHERE MaNhanVien = p_MaNhanVien;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetOrderCount` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetOrderCount`()
BEGIN
    SELECT 
        COUNT(MaDonHang) AS SoLuongDonHang,  
        SUM(TongTien) AS TongTien           
    FROM DonHang;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetRandomProductsByTag` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetRandomProductsByTag`(
    IN p_Tag VARCHAR(100)
)
BEGIN
    -- Trường hợp nếu p_Tag rỗng hoặc NULL thì lấy ngẫu nhiên tất cả sản phẩm
    IF p_Tag IS NULL OR p_Tag = '' THEN
        SELECT 
            sp.MaSanPham, 
            sp.TenSanPham, 
            sp.Gia, 
            sp.MoTa, 
            sp.MaNhaCungCap, 
            sp.SoLuong, 
            sp.Hang, 
            sp.Tag, 
            sp.Sao, 
            GROUP_CONCAT(sa.LinkAnh) AS LinkAnh,   -- Kết hợp tất cả các LinkAnh của sản phẩm vào một chuỗi
            sp.GiamGia
        FROM SanPham sp
        LEFT JOIN sanpham_anh sa ON sp.MaSanPham = sa.MaSanPham  -- Kết nối với bảng sanpham_anh
        GROUP BY sp.MaSanPham
        ORDER BY RAND()
        LIMIT 4;
    ELSE
        SELECT 
            sp.MaSanPham, 
            sp.TenSanPham, 
            sp.Gia, 
            sp.MoTa, 
            sp.MaNhaCungCap, 
            sp.SoLuong, 
            sp.Hang, 
            sp.Tag, 
            sp.Sao, 
            GROUP_CONCAT(sa.LinkAnh) AS LinkAnh,   -- Kết hợp tất cả các LinkAnh của sản phẩm vào một chuỗi
            sp.GiamGia
        FROM SanPham sp
        LEFT JOIN sanpham_anh sa ON sp.MaSanPham = sa.MaSanPham  -- Kết nối với bảng sanpham_anh
        WHERE sp.Tag = p_Tag
        GROUP BY sp.MaSanPham
        ORDER BY RAND();
        
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetSanPhamByHang` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetSanPhamByHang`(IN pHang VARCHAR(100))
BEGIN
    SELECT 
        sp.MaSanPham, 
        sp.TenSanPham, 
        sp.Gia, 
        sp.MoTa, 
        sp.MaNhaCungCap, 
        sp.SoLuong, 
        sp.Hang, 
        sp.Tag, 
        sp.Sao, 
        sp.GiamGia,
        GROUP_CONCAT(sa.LinkAnh SEPARATOR ',') AS LinkAnh  
    FROM 
        sanpham sp
    LEFT JOIN 
        sanpham_anh sa ON sp.MaSanPham = sa.MaSanPham
    WHERE
        sp.Hang = pHang
    GROUP BY 
        sp.MaSanPham;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetSanPhamById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetSanPhamById`(
    IN p_MaSanPham VARCHAR(50)
)
BEGIN
    SELECT 
        sp.MaSanPham, 
        sp.TenSanPham, 
        sp.Gia, 
        sp.MoTa, 
        sp.MaNhaCungCap, 
        sp.SoLuong, 
        sp.Hang, 
        sp.Tag, 
        sp.Sao, 
        sp.GiamGia,
        GROUP_CONCAT(sa.LinkAnh SEPARATOR ',') AS LinkAnh  -- Gộp tất cả ảnh của sản phẩm
    FROM 
        sanpham sp
    LEFT JOIN 
        sanpham_anh sa ON sp.MaSanPham = sa.MaSanPham  -- Kết nối bảng ảnh
    WHERE 
        sp.MaSanPham = p_MaSanPham  -- Lọc theo mã sản phẩm
    GROUP BY 
        sp.MaSanPham;  -- Nhóm theo sản phẩm để không bị lặp
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetSanPhamSapHetHang` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetSanPhamSapHetHang`()
BEGIN
  SELECT 
      sp.MaSanPham,
      sp.TenSanPham,
      sp.Gia,
      sp.MoTa,
      sp.Hang,
      sp.Tag,
      sp.Sao,
      sp.GiamGia,
      sa.LinkAnh,
      ss.Size,
      ss.SoLuong
  FROM sanpham sp
  JOIN sanphamsize ss ON sp.MaSanPham = ss.MaSanPham
  LEFT JOIN sanpham_anh sa ON sp.MaSanPham = sa.MaSanPham
  WHERE ss.SoLuong < 6
  ORDER BY ss.SoLuong ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetTaiKhoan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetTaiKhoan`(
    IN p_Email VARCHAR(50),
    IN p_PASS VARCHAR(50)
)
BEGIN
    SELECT * FROM TaiKhoan 
    WHERE Email = p_Email AND MatKhau = p_PASS;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetTaiKhoanById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetTaiKhoanById`(
    IN p_TaiKhoan VARCHAR(50)
)
BEGIN
    SELECT * FROM TaiKhoan WHERE TaiKhoan = p_TaiKhoan;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetTop5BestSellingProductsByMonthParam` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetTop5BestSellingProductsByMonthParam`(IN thang INT, IN nam INT)
BEGIN
  SELECT 
    sp.MaSanPham,
    sp.TenSanPham,
    sp.Gia,
    sp.MoTa,
    sp.Hang,
    sp.Tag,
    sp.Sao,
    sp.GiamGia,
    -- Lấy một ảnh đại diện (ảnh đầu tiên)
    (
      SELECT sa.LinkAnh 
      FROM sanpham_anh sa 
      WHERE sa.MaSanPham = sp.MaSanPham 
      LIMIT 1
    ) AS LinkAnh,
    -- Lấy tất cả size thành chuỗi, ngăn cách bởi dấu phẩy
    (
      SELECT GROUP_CONCAT(sz.Size ORDER BY sz.Size ASC SEPARATOR ', ') 
      FROM sanphamsize sz 
      WHERE sz.MaSanPham = sp.MaSanPham
    ) AS SizeList,
    -- Tổng số lượng đã bán trong tháng
    SUM(ct.SoLuong) AS TongSoLuongBan
  FROM 
    chitietdonhang ct
    JOIN donhang dh ON ct.MaDonHang = dh.MaDonHang
    JOIN sanpham sp ON ct.MaSanPham = sp.MaSanPham
  WHERE 
    MONTH(dh.NgayDat) = thang AND
    YEAR(dh.NgayDat) = nam
  GROUP BY 
    sp.MaSanPham
  ORDER BY 
    TongSoLuongBan DESC
  LIMIT 5;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetTop5KhachHang` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetTop5KhachHang`()
BEGIN
    -- Tính tổng tiền và số lần mua hàng của từng khách hàng
    CREATE TEMPORARY TABLE CustomerStats
    AS
    SELECT 
        dh.MaKhachHang,
        COUNT(dh.MaDonHang) AS SoLanMua,
        SUM(dh.TongTien) AS TongTien
    FROM DonHang dh
    GROUP BY dh.MaKhachHang;

    -- Lấy thông tin top 5 khách hàng thân thiết nhất
    SELECT 
        cs.MaKhachHang,
        kh.HoTen,
        kh.DiaChi,
        kh.SoDienThoai,
        kh.Email,
        cs.SoLanMua,
        cs.TongTien
    FROM CustomerStats cs
    INNER JOIN KhachHang kh ON cs.MaKhachHang = kh.MaKhachHang
    ORDER BY cs.TongTien DESC, cs.SoLanMua DESC
    LIMIT 5;

    -- Xóa bảng tạm sau khi sử dụng
    DROP TEMPORARY TABLE IF EXISTS CustomerStats;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetTop5SanPham` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetTop5SanPham`()
BEGIN
    -- Dùng CTE để lấy số lần xuất hiện của từng sản phẩm
    WITH ProductSales AS (
        SELECT 
            MaSanPham,
            COUNT(*) AS SoLanXuatHien
        FROM ChiTietDonHang
        GROUP BY MaSanPham
    )
    -- Lấy thông tin sản phẩm và gộp ảnh từ bảng `sanpham_anh`
    SELECT 
        ps.MaSanPham,
        sp.TenSanPham,
        sp.Gia,
        sp.MoTa,
        sp.Hang,
        sp.Tag,
        sp.Sao,
        GROUP_CONCAT(sa.LinkAnh SEPARATOR ',') AS LinkAnh,  -- Gộp ảnh
        sp.GiamGia,
        sp.MaNhaCungCap,
        sp.SoLuong, 
        ps.SoLanXuatHien
    FROM ProductSales ps
    INNER JOIN SanPham sp ON ps.MaSanPham = sp.MaSanPham
    LEFT JOIN sanpham_anh sa ON sp.MaSanPham = sa.MaSanPham  -- Kết nối bảng ảnh
    GROUP BY sp.MaSanPham  -- Nhóm lại để tránh lặp
    ORDER BY ps.SoLanXuatHien DESC
    LIMIT 5;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertSanPham` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertSanPham`(
    IN p_MaSanPham VARCHAR(50),
    IN p_TenSanPham VARCHAR(255),
    IN p_Gia DECIMAL(18,2),
    IN p_MoTa TEXT,
    IN p_MaNhaCungCap INT,
    IN p_SoLuong INT,
    IN p_Hang VARCHAR(50),
    IN p_Tag VARCHAR(50),
    IN p_Sao VARCHAR(50),
    IN p_LinkAnh TEXT,
    IN p_GiamGia TEXT
)
BEGIN
    INSERT INTO SanPham (MaSanPham, TenSanPham, Gia, MoTa, MaNhaCungCap, SoLuong, Hang, Tag, Sao, LinkAnh, GiamGia)
    VALUES (p_MaSanPham, p_TenSanPham, p_Gia, p_MoTa, p_MaNhaCungCap, p_SoLuong, p_Hang, p_Tag, p_Sao, p_LinkAnh, p_GiamGia);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertTaoDonHang` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertTaoDonHang`()
BEGIN
    DECLARE NewMaDonHang INT;

    -- Lấy giá trị MaDonHang mới (tăng dần)
    SELECT IFNULL(MAX(MaDonHang), 0) + 1 INTO NewMaDonHang FROM DonHang;

    -- Thêm đơn hàng mới với các giá trị NULL
    INSERT INTO DonHang (MaDonHang, MaKhachHang, NgayDat, TongTien)
    VALUES (NewMaDonHang, NULL, NULL, NULL);

    -- Trả về MaDonHang mới
    SELECT NewMaDonHang AS MaDonHang;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `LocSanPhamTheoThuTuGia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `LocSanPhamTheoThuTuGia`(IN p_SapXepGia VARCHAR(10))
BEGIN
    -- Kiểm tra giá trị đầu vào, chỉ chấp nhận 'ASC' hoặc 'DESC'
    IF p_SapXepGia NOT IN ('ASC', 'DESC') THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Tham số p_SapXepGia phải là "ASC" hoặc "DESC".';
    END IF;

    -- Xây dựng câu truy vấn động, kết hợp bảng ảnh
    SET @query = CONCAT(
        'SELECT sp.MaSanPham, sp.TenSanPham, sp.Gia, sp.MoTa, sp.MaNhaCungCap, sp.SoLuong, sp.Hang, sp.Tag, sp.Sao, ',
        'GROUP_CONCAT(sa.LinkAnh SEPARATOR '','') AS LinkAnh, sp.GiamGia ',
        'FROM SanPham sp ',
        'LEFT JOIN sanpham_anh sa ON sp.MaSanPham = sa.MaSanPham ',
        'GROUP BY sp.MaSanPham ',
        'ORDER BY sp.Gia ', p_SapXepGia
    );

    -- Thực thi câu truy vấn động
    PREPARE stmt FROM @query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `LocTheoHang` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `LocTheoHang`(IN p_Hang VARCHAR(255))
BEGIN
    SELECT  
        sp.MaSanPham,
        sp.TenSanPham,
        sp.Gia,
        sp.MoTa,
        sp.MaNhaCungCap,
        sp.SoLuong,
        sp.Hang,
        sp.Tag,
        sp.Sao,
        GROUP_CONCAT(sa.LinkAnh SEPARATOR ' , ') AS LinkAnh,  -- Gộp ảnh
        sp.GiamGia
    FROM SanPham sp
    LEFT JOIN sanpham_anh sa ON sp.MaSanPham = sa.MaSanPham
    WHERE sp.Hang = p_Hang
    GROUP BY sp.MaSanPham
    LIMIT 1000;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `LocTheoKhoangGia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `LocTheoKhoangGia`(
    IN p_MinPrice DECIMAL(18,2),
    IN p_MaxPrice DECIMAL(18,2)
)
BEGIN
    SELECT  
        sp.MaSanPham,
        sp.TenSanPham,
        sp.Gia,
        sp.MoTa,
        sp.MaNhaCungCap,
        sp.SoLuong,
        sp.Hang,
        sp.Sao,
        sp.Tag,
        GROUP_CONCAT(sa.LinkAnh SEPARATOR ', ') AS LinkAnh,  -- Gộp ảnh thành chuỗi
        sp.GiamGia
    FROM SanPham sp
    LEFT JOIN sanpham_anh sa ON sp.MaSanPham = sa.MaSanPham
    WHERE sp.Gia BETWEEN p_MinPrice AND p_MaxPrice
    GROUP BY sp.MaSanPham
    LIMIT 1000;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `LocTheoTagSp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `LocTheoTagSp`(IN p_Tag VARCHAR(255))
BEGIN
    SELECT  
        sp.MaSanPham,
        sp.TenSanPham,
        sp.Gia,
        sp.MoTa,
        sp.MaNhaCungCap,
        sp.SoLuong,
        sp.Hang,
        sp.Tag,
        sp.Sao,
        GROUP_CONCAT(sa.LinkAnh SEPARATOR ', ') AS LinkAnh, -- Gộp ảnh thành chuỗi
        sp.GiamGia
    FROM SanPham sp
    LEFT JOIN sanpham_anh sa ON sp.MaSanPham = sa.MaSanPham
    WHERE sp.Tag = p_Tag
    GROUP BY sp.MaSanPham;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `RemoveLinkAnh` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `RemoveLinkAnh`(
    IN p_MaSanPham VARCHAR(50),
    IN p_LinkAnhToRemove TEXT
)
BEGIN
    DECLARE v_UpdatedLinkAnh TEXT;

    -- Lấy danh sách ảnh, loại bỏ ảnh cần xóa
    SELECT REPLACE(LinkAnh, p_LinkAnhToRemove, '') 
    INTO v_UpdatedLinkAnh
    FROM SanPham
    WHERE MaSanPham = p_MaSanPham;

    -- Xóa dấu phân tách thừa nếu có
    SET v_UpdatedLinkAnh = TRIM(BOTH ';' FROM REPLACE(v_UpdatedLinkAnh, ';;', ';'));

    -- Cập nhật lại giá trị mới
    UPDATE SanPham
    SET LinkAnh = v_UpdatedLinkAnh
    WHERE MaSanPham = p_MaSanPham;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SearchNhanVienByName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SearchNhanVienByName`(IN p_HoTen VARCHAR(100))
BEGIN
    SELECT 
        MaNhanVien, 
        HoTen, 
        GioiTinh, 
        NgaySinh, 
        DiaChi, 
        SoDienThoai, 
        Email
    FROM NhanVien
    WHERE HoTen LIKE CONCAT('%', p_HoTen, '%');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SearchSanPhamByName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SearchSanPhamByName`(IN p_TenSanPham VARCHAR(255))
BEGIN
    SELECT 
        sp.MaSanPham, 
        sp.TenSanPham, 
        sp.Gia, 
        sp.MoTa, 
        sp.MaNhaCungCap, 
        sp.SoLuong,
        sp.Hang,
        sp.Tag,
        sp.Sao,
        sp.GiamGia,
        -- Nối các link ảnh lại thành chuỗi, cách nhau bởi dấu phẩy
        GROUP_CONCAT(spa.LinkAnh SEPARATOR ', ') AS LinkAnh
    FROM SanPham sp
    LEFT JOIN sanpham_anh spa ON sp.MaSanPham = spa.MaSanPham
    WHERE sp.TenSanPham LIKE CONCAT('%', p_TenSanPham, '%')
    GROUP BY sp.MaSanPham; -- Gom nhóm theo sản phẩm
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateLinkAnh` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateLinkAnh`(
    IN p_MaSanPham VARCHAR(50),
    IN p_LinkAnh TEXT
)
BEGIN
    UPDATE SanPham
    SET LinkAnh = 
        CASE 
            WHEN LinkAnh IS NULL OR LinkAnh = '' THEN CONCAT('sản phẩm ', p_LinkAnh)
            ELSE CONCAT(LinkAnh, ',', 'sản phẩm ', p_LinkAnh)
        END
    WHERE MaSanPham = p_MaSanPham;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateNhanVien` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateNhanVien`(
    IN p_MaNhanVien VARCHAR(50),
    IN p_HoTen VARCHAR(100),
    IN p_GioiTinh VARCHAR(10),
    IN p_NgaySinh DATE,
    IN p_DiaChi VARCHAR(200),
    IN p_SoDienThoai VARCHAR(20),
    IN p_Email VARCHAR(100)
)
BEGIN
    UPDATE NhanVien
    SET HoTen = p_HoTen,
        GioiTinh = p_GioiTinh,
        NgaySinh = p_NgaySinh,
        DiaChi = p_DiaChi,
        SoDienThoai = p_SoDienThoai,
        Email = p_Email
    WHERE MaNhanVien = p_MaNhanVien;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateSanPham` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateSanPham`(
    IN p_MaSanPham INT,
    IN p_TenSanPham VARCHAR(255),
    IN p_Gia DECIMAL(18,2),
    IN p_MoTa TEXT,
    IN p_MaNhaCungCap INT,
    IN p_SoLuong INT,
    IN p_Hang TEXT,
    IN p_Tag VARCHAR(50),
    IN p_Sao VARCHAR(50),
    IN p_LinkAnh TEXT,
    IN p_GiamGia TEXT
)
BEGIN
    UPDATE SanPham
    SET TenSanPham = p_TenSanPham,
        Gia = p_Gia,
        MoTa = p_MoTa,
        MaNhaCungCap = p_MaNhaCungCap,
        SoLuong = p_SoLuong,
        Hang = p_Hang,
        Tag = p_Tag,
        Sao = p_Sao,
        LinkAnh = p_LinkAnh,
        GiamGia = p_GiamGia
    WHERE MaSanPham = p_MaSanPham;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateTaiKhoan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateTaiKhoan`(
    IN p_TaiKhoan VARCHAR(50),
    IN p_MatKhau VARCHAR(50),
    IN p_SDT VARCHAR(20),
    IN p_NgaySinh DATE,
    IN p_Email VARCHAR(100),
    IN p_Role VARCHAR(50)
)
BEGIN
    UPDATE TaiKhoan
    SET MatKhau = p_MatKhau,
        SDT = p_SDT,
        NgaySinh = p_NgaySinh,
        Email = p_Email,
        Role = p_Role
    WHERE TaiKhoan = p_TaiKhoan;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_SuaChiTietDonHang` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_SuaChiTietDonHang`(
    IN p_MaChiTietHoaDon VARCHAR(50),
    IN p_SoLuongMoi INT,
    IN p_MaNhanVien VARCHAR(50),
    IN p_MaGiamGia VARCHAR(50),
    IN p_Gia DECIMAL(18,2),
    IN p_MaDonHang VARCHAR(50),
    IN p_MaSanPham VARCHAR(50)
)
BEGIN
    DECLARE v_SoLuongHienTai INT;
    DECLARE v_ChenhLech INT;

    -- Lấy số lượng hiện tại của chi tiết đơn hàng
    SELECT SoLuong INTO v_SoLuongHienTai
    FROM ChiTietDonHang
    WHERE MaChiTietHoaDon = p_MaChiTietHoaDon;

    -- Nếu số lượng mới lớn hơn số lượng hiện tại
    IF p_SoLuongMoi > v_SoLuongHienTai THEN
        SET v_ChenhLech = p_SoLuongMoi - v_SoLuongHienTai;

        -- Kiểm tra xem còn đủ hàng hay không
        IF (SELECT SoLuong FROM SanPham WHERE MaSanPham = p_MaSanPham) >= v_ChenhLech THEN
            -- Cập nhật ChiTietDonHang
            UPDATE ChiTietDonHang
            SET SoLuong = p_SoLuongMoi, 
                Gia = p_Gia * p_SoLuongMoi, 
                MaNhanVien = p_MaNhanVien, 
                MaGiamGia = p_MaGiamGia,
                MaDonHang = p_MaDonHang,
                MaSanPham = p_MaSanPham
            WHERE MaChiTietHoaDon = p_MaChiTietHoaDon;

            -- Giảm số lượng trong bảng SanPham
            UPDATE SanPham
            SET SoLuong = SoLuong - v_ChenhLech
            WHERE MaSanPham = p_MaSanPham;

            SELECT 'Cập nhật thành công. Số lượng đã được tăng.' AS Message;
        ELSE
            SELECT 'Số lượng tồn kho không đủ để cập nhật.' AS Message;
        END IF;
    
    -- Nếu số lượng mới nhỏ hơn số lượng hiện tại
    ELSEIF p_SoLuongMoi < v_SoLuongHienTai THEN
        SET v_ChenhLech = v_SoLuongHienTai - p_SoLuongMoi;

        -- Cập nhật ChiTietDonHang
        UPDATE ChiTietDonHang
        SET SoLuong = p_SoLuongMoi, 
            Gia = p_Gia * p_SoLuongMoi, 
            MaNhanVien = p_MaNhanVien, 
            MaGiamGia = p_MaGiamGia,
            MaDonHang = p_MaDonHang,
            MaSanPham = p_MaSanPham
        WHERE MaChiTietHoaDon = p_MaChiTietHoaDon;

        -- Tăng lại số lượng trong bảng SanPham
        UPDATE SanPham
        SET SoLuong = SoLuong + v_ChenhLech
        WHERE MaSanPham = p_MaSanPham;

        SELECT 'Cập nhật thành công. Số lượng đã được giảm.' AS Message;

    ELSE
        SELECT 'Không có thay đổi về số lượng.' AS Message;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_ThemChiTietDonHang` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_ThemChiTietDonHang`(
    IN p_MaChiTietDonHang VARCHAR(50), 
    IN p_MaDonHang VARCHAR(50),
    IN p_MaSanPham VARCHAR(50),
    IN p_SoLuong INT,
    IN p_MaNhanVien VARCHAR(50),
    IN p_MaGiamGia INT
)
BEGIN
    DECLARE v_Gia DECIMAL(18,2);
    DECLARE v_MaChiTietDonHang VARCHAR(50);

    -- Nếu MaChiTietDonHang không được truyền vào, tự tạo giá trị
    IF p_MaChiTietDonHang IS NULL THEN
        SET v_MaChiTietDonHang = CONCAT('CT', DATE_FORMAT(NOW(), '%Y%m%d%H%i%s%f'));
    ELSE
        SET v_MaChiTietDonHang = p_MaChiTietDonHang;
    END IF;

    -- Kiểm tra số lượng sản phẩm có đủ không
    IF EXISTS (
        SELECT 1 FROM SanPham WHERE MaSanPham = p_MaSanPham AND SoLuong >= p_SoLuong
    ) THEN
        -- Nếu giá không được truyền vào, lấy giá từ bảng SanPham
        SELECT Gia INTO v_Gia FROM SanPham WHERE MaSanPham = p_MaSanPham;

        -- Thêm chi tiết đơn hàng
        INSERT INTO ChiTietDonHang (MaChiTietHoaDon, MaDonHang, MaSanPham, SoLuong, Gia, MaNhanVien, MaGiamGia)
        VALUES (v_MaChiTietDonHang, p_MaDonHang, p_MaSanPham, p_SoLuong, v_Gia * p_SoLuong, p_MaNhanVien, p_MaGiamGia);

        -- Cập nhật số lượng sản phẩm
        UPDATE SanPham
        SET SoLuong = SoLuong - p_SoLuong
        WHERE MaSanPham = p_MaSanPham;

        SELECT 'Thêm chi tiết đơn hàng thành công.' AS Message;
    ELSE
        SELECT 'Số lượng không đủ.' AS Message;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_TimKiemChiTietDonHang` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_TimKiemChiTietDonHang`(
    IN p_MaDonHang VARCHAR(50)
)
BEGIN
    SELECT * FROM ChiTietDonHang
    WHERE (p_MaDonHang IS NULL OR MaDonHang = p_MaDonHang);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_XoaChiTietDonHang` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_XoaChiTietDonHang`(
    IN p_MaChiTietHoaDon VARCHAR(50)
)
BEGIN
    DELETE FROM ChiTietDonHang
    WHERE MaChiTietHoaDon = p_MaChiTietHoaDon;

    SELECT 'Xóa chi tiết đơn hàng thành công.' AS Message;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-08 15:54:15
