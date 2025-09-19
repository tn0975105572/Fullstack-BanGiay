const pool = require("../config/database");

const nhacungcap = {}; // Using an object to hold methods
nhacungcap.searchByTen = async (ten) => {
  const query = "SELECT * FROM nhacungcap WHERE TenNhaCungCap LIKE ?";
  const [rows] = await pool.query(query, [`%${ten}%`]);
  return rows;
};

// Lấy tất cả nhacungcap
nhacungcap.getAll = async () => {
  const [rows] = await pool.query("SELECT * FROM nhacungcap");
  return rows;
};

// Lấy nhacungcap theo ID
nhacungcap.getById = async (id) => {
  const [rows] = await pool.query(
    "SELECT * FROM nhacungcap WHERE MaNhaCungCap = ?",
    [id]
  );
  return rows[0];
};

// Thêm nhacungcap
nhacungcap.insert = async (data) => {
  const [result] = await pool.query("INSERT INTO nhacungcap SET ?", [data]);
  return result.insertId;
};

// Cập nhật nhacungcap
nhacungcap.update = async (id, data) => {
  const [result] = await pool.query(
    "UPDATE nhacungcap SET ? WHERE MaNhaCungCap = ?",
    [data, id]
  );
  return result.affectedRows;
};

// Xóa nhacungcap
nhacungcap.delete = async (id) => {
  const [result] = await pool.query(
    "DELETE FROM nhacungcap WHERE MaNhaCungCap = ?",
    [id]
  );
  return result.affectedRows;
};

module.exports = nhacungcap;
