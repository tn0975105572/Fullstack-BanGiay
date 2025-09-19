const DoanhThu = require("../models/doanhThu");

exports.getDoanhThu = async (req, res) => {
  try {
    const data = await DoanhThu.getDoanhThu();
    res.json(data);
  } catch (error) {
    res.status(500).json({ message: "Lỗi server", error });
  }
};
exports.getDoanhThuTheoThang = async (req, res) => {
  try {
    const { month, year } = req.query; // Lấy tham số từ query (VD: ?month=2&year=2024)

    if (!month || !year) {
      return res.status(400).json({ message: "Vui lòng nhập tháng và năm" });
    }

    const data = await DoanhThu.getDoanhThuTheoThang(month, year);
    res.json(data);
  } catch (error) {
    res.status(500).json({ message: "Lỗi server", error });
  }
};
