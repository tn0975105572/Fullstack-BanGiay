const express = require("express");
const router = express.Router();
const nhanvienController = require("../controllers/nhanvien");

// Định nghĩa các route
router.get("/getAll", nhanvienController.getAll);
router.get("/getById/:id", nhanvienController.getById);
router.post("/create", nhanvienController.insert);
router.put("/update/:id", nhanvienController.update);
router.delete("/delete/:id", nhanvienController.delete);
router.get("/search", nhanvienController.searchByHoTen);

module.exports = router;
