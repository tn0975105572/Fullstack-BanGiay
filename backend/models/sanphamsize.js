const pool = require("../config/database");

const sanphamsize = {};
sanphamsize.Search = async (data) => {
  const [rows] = await pool.query(
    "SELECT * FROM sanphamsize WHERE MaSanPham LIKE ?",
    [`%${data}%`]
  );
  return rows;
};
// Lấy tất cả sanphamsize
sanphamsize.getAll = async () => {
  const [rows] = await pool.query("SELECT * FROM sanphamsize");
  return rows;
};

sanphamsize.getById = async (id) => {
  const [rows] = await pool.query("SELECT * FROM sanphamsize WHERE ID = ?", [
    id,
  ]);
  return rows[0];
};

// Thêm sanphamsize
sanphamsize.insert = async (data) => {
  const [result] = await pool.query("INSERT INTO sanphamsize SET ?", [data]);
  return result.insertId;
};

// Cập nhật sanphamsize
sanphamsize.update = async (id, data) => {
  const [result] = await pool.query("UPDATE sanphamsize SET ? WHERE ID= ?", [
    data,
    id,
  ]);
  return result.affectedRows;
};

// Xóa sanphamsize
sanphamsize.delete = async (id) => {
  const [result] = await pool.query("DELETE FROM sanphamsize WHERE ID = ?", [
    id,
  ]);
  return result.affectedRows;
};

module.exports = sanphamsize;
