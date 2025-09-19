const express = require("express");
const router = express.Router();
const bangluongController = require("../controllers/bangluong");

// Định nghĩa các route
router.get("/getAll", bangluongController.getAll);
router.get("/getById/:id", bangluongController.getById);
router.post("/create", bangluongController.insert);
router.put("/update/:id", bangluongController.update);
router.delete("/delete/:id", bangluongController.delete);

module.exports = router;