const express = require("express");
const router = express.Router();
const doanhThuController = require("../controllers/doanhThuController");

router.get("/", doanhThuController.getDoanhThu);
router.get("/theo-thang", doanhThuController.getDoanhThuTheoThang); //http://localhost:3000/api/doanhThu/theo-thang

module.exports = router;
