const express = require("express");
const router = express.Router();
const hoadonnhapController = require("../controllers/hoadonnhap");

// Định nghĩa các route
router.get("/getAll", hoadonnhapController.getAll);
router.get("/getById/:id", hoadonnhapController.getById);
router.post("/create", hoadonnhapController.insert);
router.put("/update/:id", hoadonnhapController.update);
router.delete("/delete/:id", hoadonnhapController.delete);

module.exports = router;
