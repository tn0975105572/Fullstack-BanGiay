const express = require("express");
const router = express.Router();
const nhacungcapController = require("../controllers/nhacungcap");

// Định nghĩa các route
router.get("/getAll", nhacungcapController.getAll);
router.get("/getById/:id", nhacungcapController.getById);
router.post("/create", nhacungcapController.insert);
router.put("/update/:id", nhacungcapController.update);
router.delete("/delete/:id", nhacungcapController.delete);
router.get("/search", nhacungcapController.searchByTen);

module.exports = router;
