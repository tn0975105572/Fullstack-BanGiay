const sanpham = require("../models/sanpham");
exports.filterByTag = async (req, res) => {
  try {
    const tag = req.query.tag;

    if (!tag) {
      return res.status(400).json({ message: "Thiếu tham số tag" });
    }

    const products = await sanpham.filterByTag(tag);
    res.json(products);
  } catch (error) {
    res.status(500).json({ message: "Lỗi server", error: error.message });
  }
};
exports.filterByPriceRange = async (req, res) => {
  try {
    const minPrice = parseFloat(req.query.minPrice);
    const maxPrice = parseFloat(req.query.maxPrice);

    if (isNaN(minPrice) || isNaN(maxPrice)) {
      return res.status(400).json({ message: "Giá trị không hợp lệ" });
    }

    const products = await sanpham.filterByPriceRange(minPrice, maxPrice);
    res.json(products);
  } catch (error) {
    res.status(500).json({ message: "Lỗi server", error: error.message });
  }
};
exports.filterByBrand = async (req, res) => {
  try {
    const brand = req.query.brand;
    if (!brand) {
      return res.status(400).json({ message: "Thiếu tham số brand" });
    }

    const products = await sanpham.filterByBrand(brand);
    res.json(products);
  } catch (error) {
    res.status(500).json({ message: "Lỗi server", error: error.message });
  }
};
exports.sortByPrice = async (req, res) => {
  try {
    const order = req.query.order || "ASC";
    const products = await sanpham.sortByPrice(order);
    res.json(products);
  } catch (error) {
    res.status(500).json({ message: "Lỗi server", error: error.message });
  }
};
exports.getTop5 = async (req, res) => {
  try {
    const products = await sanpham.getTop5();
    res.json(products);
  } catch (error) {
    res.status(500).json({ message: "Lỗi server", error });
  }
};
exports.getRandomProductsByTag = async (req, res) => {
  try {
    const tag = req.query.tag;
    if (!tag) {
      return res.status(400).json({ message: "Thiếu tham số tag" });
    }
    const products = await sanpham.getRandomProductsByTag(tag);
    res.json(products);
  } catch (error) {
    res.status(500).json({ message: "Lỗi server", error });
  }
};

exports.searchByName = async (req, res) => {
  try {
    const data = req.query.data;
    const result = await sanpham.Search(data);
    res.json(result);
  } catch (error) {
    res.status(500).json({ message: "Lỗi máy chủ", error });
  }
};
exports.getAll = async (req, res) => {
  try {
    const data = await sanpham.getAll();
    res.json(data);
  } catch (error) {
    res.status(500).json({ message: "Lỗi máy chủ", error });
  }
};

exports.getById = async (req, res) => {
  try {
    const id = req.params.id;
    const data = await sanpham.getById(id);
    if (!data) {
      return res.status(404).json({ message: "sanpham không tồn tại" });
    }
    res.json(data);
  } catch (error) {
    res.status(500).json({ message: "Lỗi máy chủ", error });
  }
};

exports.insert = async (req, res) => {
  try {
    const newData = req.body;
    const insertId = await sanpham.insert(newData);
    res.status(201).json({ id: insertId, message: "Thêm mới thành công" });
  } catch (error) {
    res.status(500).json({ message: "Lỗi máy chủ", error });
  }
};

exports.update = async (req, res) => {
  try {
    const id = req.params.id;
    const updatedData = req.body;
    const affectedRows = await sanpham.update(id, updatedData);
    if (affectedRows === 0) {
      return res.status(404).json({ message: "sanpham không tồn tại" });
    }
    res.json({ message: "Cập nhật thành công" });
  } catch (error) {
    res.status(500).json({ message: "Lỗi máy chủ", error });
  }
};

exports.delete = async (req, res) => {
  try {
    const id = req.params.id;
    const affectedRows = await sanpham.delete(id);
    if (affectedRows === 0) {
      return res.status(404).json({ message: "sanpham không tồn tại" });
    }
    res.json({ message: "Xóa thành công" });
  } catch (error) {
    res.status(500).json({ message: "Lỗi máy chủ", error });
  }
};
