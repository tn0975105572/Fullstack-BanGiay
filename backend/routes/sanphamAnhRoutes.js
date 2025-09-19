const express = require("express");
const router = express.Router();
const sanphamAnhController = require("../controllers/sanphamAnhController");

router.get("/:maSanPham", sanphamAnhController.getByProductId);

router.post(
  "/:maSanPham",
  sanphamAnhController.uploadMiddleware,
  sanphamAnhController.uploadImages
);

router.delete("/:id", sanphamAnhController.deleteImage);

module.exports = router;
