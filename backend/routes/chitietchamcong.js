const express = require("express");
const router = express.Router();
const chitietchamcongController = require("../controllers/chitietchamcong");

// Định nghĩa các route
router.get("/getAll", chitietchamcongController.getAll);
router.get("/getById/:id", chitietchamcongController.getById);
router.post("/create", chitietchamcongController.insert);
router.put("/update/:id", chitietchamcongController.update);
router.delete("/delete/:id", chitietchamcongController.delete);

module.exports = router;
