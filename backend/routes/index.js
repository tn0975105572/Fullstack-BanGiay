require("dotenv").config();
const express = require("express");
const router = express.Router();

// Import từng route con
const bangluongRoutes = require("./bangluong");
const chitietchamcongRoutes = require("./chitietchamcong");
const chitietdonhangRoutes = require("./chitietdonhang");
const donhangRoutes = require("./donhang");
const hoadonnhapRoutes = require("./hoadonnhap");
const khachhangRoutes = require("./khachhang");
const magiamgiaRoutes = require("./magiamgia");
const nhacungcapRoutes = require("./nhacungcap");
const nhanvienRoutes = require("./nhanvien");
const sanphamRoutes = require("./sanpham");
const sanphamsizeRoutes = require("./sanphamsize");
const taikhoanRoutes = require("./taikhoan");
const sanphamAnhRoutes = require("./sanphamAnhRoutes");
const doanhThuRoutes = require("./doanhThu");

// Gán các route con vào router chính
router.use("/bangluong", bangluongRoutes);
router.use("/chitietchamcong", chitietchamcongRoutes);
router.use("/chitietdonhang", chitietdonhangRoutes);
router.use("/donhang", donhangRoutes);
router.use("/hoadonnhap", hoadonnhapRoutes);
router.use("/khachhang", khachhangRoutes);
router.use("/magiamgia", magiamgiaRoutes);
router.use("/nhacungcap", nhacungcapRoutes);
router.use("/nhanvien", nhanvienRoutes);
router.use("/sanpham", sanphamRoutes);
router.use("/sanphamsize", sanphamsizeRoutes);
router.use("/taikhoan", taikhoanRoutes);
router.use("/sanphamAnh", sanphamAnhRoutes);
router.use("/doanhThu", doanhThuRoutes);

module.exports = router;
