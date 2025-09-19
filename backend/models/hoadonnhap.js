const pool = require("../config/database");

const hoadonnhap = {}; // Using an object to hold methods

// Lấy tất cả hoadonnhap
hoadonnhap.getAll = async () => {
  const [rows] = await pool.query("SELECT * FROM hoadonnhap");
  return rows;
};

// Lấy hoadonnhap theo ID
hoadonnhap.getById = async (id) => {
  const [rows] = await pool.query(
    "SELECT * FROM hoadonnhap WHERE MaHoaDonNhap = ?",
    [id]
  );
  return rows[0];
};

// Thêm hoadonnhap
hoadonnhap.insert = async (data) => {
  const [result] = await pool.query("INSERT INTO hoadonnhap SET ?", [data]);
  return result.insertId;
};

// Cập nhật hoadonnhap
hoadonnhap.update = async (id, data) => {
  const [result] = await pool.query(
    "UPDATE hoadonnhap SET ? WHERE MaHoaDonNhap = ?",
    [data, id]
  );
  return result.affectedRows;
};

// Xóa hoadonnhap
hoadonnhap.delete = async (id) => {
  const [result] = await pool.query(
    "DELETE FROM hoadonnhap WHERE MaHoaDonNhap = ?",
    [id]
  );
  return result.affectedRows;
};

module.exports = hoadonnhap;
