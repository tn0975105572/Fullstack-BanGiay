const pool = require("../config/database");

const khachhang = {};

khachhang.getTop5 = async () => {
  const [rows] = await pool.query("CALL GetTop5KhachHang()");
  return rows[0] || [];
};

khachhang.searchByHoTen = async (hoTen) => {
  const query = "SELECT * FROM khachhang WHERE HoTen LIKE ?";
  const [rows] = await pool.query(query, [`%${hoTen}%`]);
  return rows;
};
khachhang.getAll = async () => {
  const [rows] = await pool.query("SELECT * FROM khachhang");
  return rows;
};

// Lấy khachhang theo ID
khachhang.getById = async (id) => {
  const [rows] = await pool.query(
    "SELECT * FROM khachhang WHERE MaKhachHang = ?",
    [id]
  );
  return rows[0];
};

// Thêm khachhang
khachhang.insert = async (data) => {
  const [result] = await pool.query("INSERT INTO khachhang SET ?", [data]);
  return result.insertId;
};

// Cập nhật khachhang
khachhang.update = async (id, data) => {
  const [result] = await pool.query(
    "UPDATE khachhang SET ? WHERE MaKhachHang = ?",
    [data, id]
  );
  return result.affectedRows;
};

// Xóa khachhang
khachhang.delete = async (id) => {
  const [result] = await pool.query(
    "DELETE FROM khachhang WHERE MaKhachHang = ?",
    [id]
  );
  return result.affectedRows;
};

module.exports = khachhang;
