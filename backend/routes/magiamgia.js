const express = require("express");
const router = express.Router();
const magiamgiaController = require("../controllers/magiamgia");

// Định nghĩa các route
router.get("/getAll", magiamgiaController.getAll);
router.get("/getById/:id", magiamgiaController.getById);
router.post("/create", magiamgiaController.insert);
router.put("/update/:id", magiamgiaController.update);
router.delete("/delete/:id", magiamgiaController.delete);

module.exports = router;
