const pool = require("../config/database");

const chitietchamcong = {}; // Using an object to hold methods

// Lấy tất cả chitietchamcong
chitietchamcong.getAll = async () => {
  const [rows] = await pool.query("SELECT * FROM chitietchamcong");
  return rows;
};

// Lấy chitietchamcong theo ID
chitietchamcong.getById = async (id) => {
  const [rows] = await pool.query("SELECT * FROM chitietchamcong WHERE id = ?", [id]);
  return rows[0];
};

// Thêm chitietchamcong
chitietchamcong.insert = async (data) => {
  const [result] = await pool.query("INSERT INTO chitietchamcong SET ?", [data]);
  return result.insertId;
};

// Cập nhật chitietchamcong
chitietchamcong.update = async (id, data) => {
  const [result] = await pool.query("UPDATE chitietchamcong SET ? WHERE id = ?", [data, id]);
  return result.affectedRows;
};

// Xóa chitietchamcong
chitietchamcong.delete = async (id) => {
  const [result] = await pool.query("DELETE FROM chitietchamcong WHERE id = ?", [id]);
  return result.affectedRows;
};

module.exports = chitietchamcong;
