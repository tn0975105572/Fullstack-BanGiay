const pool = require("../config/database");

const magiamgia = {}; // Using an object to hold methods

// Lấy tất cả magiamgia
magiamgia.getAll = async () => {
  const [rows] = await pool.query("SELECT * FROM magiamgia");
  return rows;
};

// Lấy magiamgia theo ID
magiamgia.getById = async (id) => {
  const [rows] = await pool.query(
    "SELECT * FROM magiamgia WHERE MaGiamGia = ?",
    [id]
  );
  return rows[0];
};

// Thêm magiamgia
magiamgia.insert = async (data) => {
  const [result] = await pool.query("INSERT INTO magiamgia SET ?", [data]);
  return result.insertId;
};

// Cập nhật magiamgia
magiamgia.update = async (id, data) => {
  const [result] = await pool.query(
    "UPDATE magiamgia SET ? WHERE MaGiamGia = ?",
    [data, id]
  );
  return result.affectedRows;
};

// Xóa magiamgia
magiamgia.delete = async (id) => {
  const [result] = await pool.query(
    "DELETE FROM magiamgia WHERE MaGiamGia = ?",
    [id]
  );
  return result.affectedRows;
};

module.exports = magiamgia;
