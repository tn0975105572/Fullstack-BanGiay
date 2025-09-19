const express = require("express");
const router = express.Router();
const taikhoanController = require("../controllers/taikhoan");
const { authenticateToken, authorizeRole } = require("../middleware/baoVe");

router.get(
  "/getAll",
  authenticateToken,
  authorizeRole("admin"),
  taikhoanController.getAll
);
router.get("/getById/:id", taikhoanController.getById);
router.post("/create", taikhoanController.insert);
router.put("/update/:id", taikhoanController.update);
router.delete("/delete/:id", taikhoanController.delete);
router.post("/login", taikhoanController.login);
router.get("/search", taikhoanController.searchByName);

module.exports = router;
