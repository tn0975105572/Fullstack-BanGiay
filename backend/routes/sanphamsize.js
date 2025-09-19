const express = require("express");
const router = express.Router();
const sanphamsizeController = require("../controllers/sanphamsize");

// Định nghĩa các route
router.get("/getAll", sanphamsizeController.getAll);
router.get("/getById/:id", sanphamsizeController.getById);
router.post("/create", sanphamsizeController.insert);
router.put("/update/:id", sanphamsizeController.update);
router.delete("/delete/:id", sanphamsizeController.delete);
router.get("/search", sanphamsizeController.searchByName);
module.exports = router;
