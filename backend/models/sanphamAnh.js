const { v4: uuidv4 } = require("uuid");
const pool = require("../config/database");
const SanPhamAnh = {};

SanPhamAnh.getByProductId = async (MaSanPham) => {
  const [rows] = await pool.query(
    "SELECT * FROM sanpham_anh WHERE MaSanPham = ?",
    [MaSanPham]
  );
  return rows;
};

SanPhamAnh.insert = async (MaSanPham, LinkAnh) => {
  const newID = uuidv4();
  const [result] = await pool.query(
    "INSERT INTO sanpham_anh (ID, MaSanPham, LinkAnh) VALUES (?, ?, ?)",
    [newID, MaSanPham, LinkAnh]
  );
  return newID;
};
SanPhamAnh.delete = async (ID) => {
  const [result] = await pool.query("DELETE FROM sanpham_anh WHERE ID = ?", [
    ID,
  ]);
  return result.affectedRows;
};

module.exports = SanPhamAnh;
