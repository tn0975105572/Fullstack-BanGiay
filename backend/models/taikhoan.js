const pool = require("../config/database");
const bcrypt = require("bcryptjs");

const taikhoan = {};

// tao ma token

taikhoan.getByEmail = async (Email) => {
  const [rows] = await pool.query("SELECT * FROM taikhoan WHERE Email = ?", [
    Email,
  ]);
  return rows[0];
};

taikhoan.getAll = async () => {
  const [rows] = await pool.query("SELECT * FROM taikhoan");
  return rows;
};

taikhoan.getById = async (id) => {
  const [rows] = await pool.query("SELECT * FROM taikhoan WHERE id = ?", [id]);
  return rows[0];
};

taikhoan.insert = async (data) => {
  const [result] = await pool.query("INSERT INTO taikhoan SET ?", [data]);
  return result.insertId;
};

taikhoan.update = async (id, data) => {
  const [result] = await pool.query(
    "UPDATE taikhoan SET ? WHERE TaiKhoan = ?",
    [data, id]
  );
  return result.affectedRows;
};

// Xóa taikhoan
taikhoan.delete = async (id) => {
  const [result] = await pool.query("DELETE FROM taikhoan WHERE TaiKhoan = ?", [
    id,
  ]);
  return result.affectedRows;
};

taikhoan.searchByName = async (name) => {
  const [rows] = await pool.query(
    "SELECT * FROM taikhoan WHERE TaiKhoan LIKE ?",
    [`%${name}%`]
  );
  return rows;
};

module.exports = taikhoan;
