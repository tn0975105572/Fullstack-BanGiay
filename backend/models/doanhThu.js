const pool = require("../config/database");

const DoanhThu = {};

DoanhThu.getDoanhThu = async () => {
  const [rows] = await pool.query("CALL GetDoanhThu()");
  return rows[0];
};
DoanhThu.getDoanhThuTheoThang = async (month, year) => {
  const [rows] = await pool.query("CALL GetDoanhThuTheoThang(?, ?)", [
    month,
    year,
  ]);
  return rows[0];
};
module.exports = DoanhThu;
