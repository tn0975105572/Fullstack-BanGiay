const khachhang = require("../models/khachhang");
exports.getTop5 = async (req, res) => {
  try {
    const customers = await khachhang.getTop5();
    res.json(customers);
  } catch (error) {
    res.status(500).json({ message: "Lỗi server", error });
  }
};
exports.searchByHoTen = async (req, res) => {
  try {
    const hoTen = req.query.hoTen;
    if (!hoTen) {
      return res
        .status(400)
        .json({ message: "Vui lòng nhập họ tên để tìm kiếm" });
    }
    const data = await khachhang.searchByHoTen(hoTen);
    res.json(data);
  } catch (error) {
    res.status(500).json({ message: "Lỗi máy chủ", error });
  }
};
exports.getAll = async (req, res) => {
  try {
    const data = await khachhang.getAll();
    res.json(data);
  } catch (error) {
    res.status(500).json({ message: "Lỗi máy chủ", error });
  }
};

exports.getById = async (req, res) => {
  try {
    const id = req.params.id;
    const data = await khachhang.getById(id);
    if (!data) {
      return res.status(404).json({ message: "khachhang không tồn tại" });
    }
    res.json(data);
  } catch (error) {
    res.status(500).json({ message: "Lỗi máy chủ", error });
  }
};

exports.insert = async (req, res) => {
  try {
    const newData = req.body;
    const insertId = await khachhang.insert(newData);
    res.status(201).json({ id: insertId, message: "Thêm mới thành công" });
  } catch (error) {
    res.status(500).json({ message: "Lỗi máy chủ", error });
  }
};

exports.update = async (req, res) => {
  try {
    const id = req.params.id;
    const updatedData = req.body;
    const affectedRows = await khachhang.update(id, updatedData);
    if (affectedRows === 0) {
      return res.status(404).json({ message: "khachhang không tồn tại" });
    }
    res.json({ message: "Cập nhật thành công" });
  } catch (error) {
    res.status(500).json({ message: "Lỗi máy chủ", error });
  }
};

exports.delete = async (req, res) => {
  try {
    const id = req.params.id;
    const affectedRows = await khachhang.delete(id);
    if (affectedRows === 0) {
      return res.status(404).json({ message: "khachhang không tồn tại" });
    }
    res.json({ message: "Xóa thành công" });
  } catch (error) {
    res.status(500).json({ message: "Lỗi máy chủ", error });
  }
};
