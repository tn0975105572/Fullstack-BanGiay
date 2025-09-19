const express = require("express");
const router = express.Router();
const khachhangController = require("../controllers/khachhang");

// Định nghĩa các route
router.get("/getAll", khachhangController.getAll);
router.get("/getById/:id", khachhangController.getById);
router.post("/create", khachhangController.insert);
router.put("/update/:id", khachhangController.update);
router.delete("/delete/:id", khachhangController.delete);
router.get("/search", khachhangController.searchByHoTen);
router.get("/top5", khachhangController.getTop5); //http://localhost:3000/api/khachhang/top5

module.exports = router;
