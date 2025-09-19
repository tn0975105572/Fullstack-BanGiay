const pool = require("../config/database");

const nhanvien = {}; // Using an object to hold methods
nhanvien.searchByHoTen = async (hoTen) => {
  const query = "SELECT * FROM nhanvien WHERE HoTen LIKE ?";
  const [rows] = await pool.query(query, [`%${hoTen}%`]);
  return rows;
};

nhanvien.getAll = async () => {
  const [rows] = await pool.query("SELECT * FROM nhanvien");
  return rows;
};

nhanvien.getById = async (id) => {
  const [rows] = await pool.query(
    "SELECT * FROM nhanvien WHERE MaNhanVien = ?",
    [id]
  );
  return rows[0];
};

nhanvien.insert = async (data) => {
  const [result] = await pool.query("INSERT INTO nhanvien SET ?", [data]);
  return result.insertId;
};

nhanvien.update = async (id, data) => {
  const [result] = await pool.query(
    "UPDATE nhanvien SET ? WHERE MaNhanVien= ?",
    [data, id]
  );
  return result.affectedRows;
};

// Xóa nhanvien
nhanvien.delete = async (id) => {
  const [result] = await pool.query(
    "DELETE FROM nhanvien WHERE MaNhanVien = ?",
    [id]
  );
  return result.affectedRows;
};

module.exports = nhanvien;
