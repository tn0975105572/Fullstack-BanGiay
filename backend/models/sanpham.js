const pool = require("../config/database");

const sanpham = {};
sanpham.filterByTag = async (tag) => {
  const [rows] = await pool.query("CALL LocTheoTagSp(?)", [tag]);
  return rows[0] || [];
};
sanpham.filterByPriceRange = async (minPrice, maxPrice) => {
  const [rows] = await pool.query("CALL LocTheoKhoangGia(?, ?)", [
    minPrice,
    maxPrice,
  ]);
  return rows[0] || [];
};
sanpham.filterByBrand = async (brand) => {
  const [rows] = await pool.query("CALL LocTheoHang(?)", [brand]);
  return rows[0] || [];
};

sanpham.sortByPrice = async (order) => {
  if (order !== "ASC" && order !== "DESC") {
    throw new Error('Tham số order phải là "ASC" hoặc "DESC".');
  }
  const [rows] = await pool.query("CALL LocSanPhamTheoThuTuGia(?)", [order]);
  return rows[0];
};

sanpham.getTop5 = async () => {
  const [rows] = await pool.query("CALL GetTop5SanPham()");
  return rows[0] || [];
};

sanpham.getRandomProductsByTag = async (tag) => {
  const [rows] = await pool.query("CALL GetRandomProductsByTag(?)", [tag]);
  return rows[0];
};
sanpham.Search = async (name) => {
  const [rows] = await pool.query("CALL SearchSanPhamByName(?)", [name]);
  return rows[0];
};
sanpham.getAll = async () => {
  const [rows] = await pool.query("CALL GetAllSanPham()");
  return rows[0];
};

// Lấy sanpham theo ID
sanpham.getById = async (id) => {
  const [rows] = await pool.query("SELECT * FROM sanpham WHERE MaSanPham = ?", [
    id,
  ]);
  return rows[0];
};

// Thêm sanpham
sanpham.insert = async (data) => {
  const [result] = await pool.query("INSERT INTO sanpham SET ?", [data]);
  return result.insertId;
};

// Cập nhật sanpham
sanpham.update = async (id, data) => {
  const [result] = await pool.query(
    "UPDATE sanpham SET ? WHERE MaSanPham = ?",
    [data, id]
  );
  return result.affectedRows;
};

// Xóa sanpham
sanpham.delete = async (id) => {
  const [result] = await pool.query("DELETE FROM sanpham WHERE MaSanPham = ?", [
    id,
  ]);
  return result.affectedRows;
};

module.exports = sanpham;
