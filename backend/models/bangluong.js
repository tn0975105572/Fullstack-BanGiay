const pool = require("../config/database");

const bangluong = {}; // Using an object to hold methods

// Lấy tất cả bangluong
bangluong.getAll = async () => {
  const [rows] = await pool.query("SELECT * FROM bangluong");
  return rows;
};

// Lấy bangluong theo ID
bangluong.getById = async (id) => {
  const [rows] = await pool.query("SELECT * FROM bangluong WHERE id = ?", [id]);
  return rows[0];
};

// Thêm bangluong
bangluong.insert = async (data) => {
  const [result] = await pool.query("INSERT INTO bangluong SET ?", [data]);
  return result.insertId;
};

// Cập nhật bangluong
bangluong.update = async (id, data) => {
  const [result] = await pool.query("UPDATE bangluong SET ? WHERE id = ?", [
    data,
    id,
  ]);
  return result.affectedRows;
};

// Xóa bangluong
bangluong.delete = async (id) => {
  const [result] = await pool.query("DELETE FROM bangluong WHERE id = ?", [id]);
  return result.affectedRows;
};

module.exports = bangluong;
