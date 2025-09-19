const express = require("express");
const router = express.Router();
const sanphamController = require("../controllers/sanpham");

// Định nghĩa các route
router.get("/getAll", sanphamController.getAll);
router.get("/getById/:id", sanphamController.getById);
router.post("/create", sanphamController.insert);
router.put("/update/:id", sanphamController.update);
router.delete("/delete/:id", sanphamController.delete);
router.get("/search", sanphamController.searchByName);
router.get("/random", sanphamController.getRandomProductsByTag);
router.get("/top5", sanphamController.getTop5); //http://localhost:3000/api/sanpham/top5
router.get("/sortByPrice", sanphamController.sortByPrice); //http://localhost:3000/api/sanpham/sortByPrice?order=ASC
router.get("/filterByBrand", sanphamController.filterByBrand); //http://localhost:3000/api/sanpham/filterByBrand?brand=Apple
router.get("/filterByPriceRange", sanphamController.filterByPriceRange); //http://localhost:3000/api/sanpham/filterByPriceRange?minPrice=1000000&maxPrice=2000000
router.get("/filterByTag", sanphamController.filterByTag); //http://localhost:3000/api/sanpham/filterByTag?tag=Apple

module.exports = router;
    