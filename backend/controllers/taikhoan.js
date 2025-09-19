require("dotenv").config();
const taikhoan = require("../models/taikhoan");
const jwt = require("jsonwebtoken");
const bcrypt = require("bcryptjs");
const SECRET_KEY = process.env.JWT_SECRET;

exports.login = async (req, res) => {
  try {
    const { Email, MatKhau } = req.body;
    const user = await taikhoan.getByEmail(Email);
    if (!user) {
      return res.status(404).json({ message: "Email không tồn tại" });
    }

    if (user.MatKhau !== MatKhau) {
      return res.status(401).json({ message: "Sai mật khẩu" });
    }
    const token = jwt.sign(
      { Email: user.Email, Role: user.Role },
      process.env.JWT_SECRET,
      { expiresIn: "1h" }
    );

    res.json({ message: "Đăng nhập thành công", token });
  } catch (error) {
    res.status(500).json({ message: "Lỗi máy chủ", error });
  }
};

exports.getAll = async (req, res) => {
  try {
    const data = await taikhoan.getAll();
    res.json(data);
  } catch (error) {
    res.status(500).json({ message: "Lỗi máy chủ", error });
  }
};

exports.getById = async (req, res) => {
  try {
    const id = req.params.id;
    const data = await taikhoan.getById(id);
    if (!data) {
      return res.status(404).json({ message: "taikhoan không tồn tại" });
    }
    res.json(data);
  } catch (error) {
    res.status(500).json({ message: "Lỗi máy chủ", error });
  }
};

exports.insert = async (req, res) => {
  try {
    const newData = req.body;
    const insertId = await taikhoan.insert(newData);
    res.status(201).json({ id: insertId, message: "Thêm mới thành công" });
  } catch (error) {
    res.status(500).json({ message: "Lỗi máy chủ", error });
  }
};

exports.update = async (req, res) => {
  try {
    const id = req.params.id;
    const updatedData = req.body;
    const affectedRows = await taikhoan.update(id, updatedData);
    if (affectedRows === 0) {
      return res.status(404).json({ message: "taikhoan không tồn tại" });
    }
    res.json({ message: "Cập nhật thành công" });
  } catch (error) {
    res.status(500).json({ message: "Lỗi máy chủ", error });
  }
};

exports.delete = async (req, res) => {
  try {
    const id = req.params.id;
    const affectedRows = await taikhoan.delete(id);
    if (affectedRows === 0) {
      return res.status(404).json({ message: "taikhoan không tồn tại" });
    }
    res.json({ message: "Xóa thành công" });
  } catch (error) {
    res.status(500).json({ message: "Lỗi máy chủ", error });
  }
};
exports.searchByName = async (req, res) => {
  try {
    const name = req.query.name;
    if (!name) {
      return res.status(400).json({ message: "Vui lòng nhập tên để tìm kiếm" });
    }

    const results = await taikhoan.searchByName(name);
    if (results.length === 0) {
      return res.status(404).json({ message: "Không tìm thấy tài khoản nào" });
    }

    res.json(results);
  } catch (error) {
    res.status(500).json({ message: "Lỗi máy chủ", error });
  }
};
