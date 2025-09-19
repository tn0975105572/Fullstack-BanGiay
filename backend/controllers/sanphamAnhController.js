const fs = require("fs");
const SanPhamAnh = require("../models/sanphamAnh");
const multer = require("multer");
const path = require("path");

const storage = multer.diskStorage({
  destination: (req, file, cb) => {
    const maSanPham = req.params.maSanPham;
    if (!maSanPham) {
      return cb(new Error("Mã sản phẩm không hợp lệ"), null);
    }

    const productFolder = path.join(
      "uploads",
      "AnhSP",
      `san pham ${maSanPham}`
    );

    // Tạo thư mục nếu chưa có
    fs.mkdirSync(productFolder, { recursive: true });

    cb(null, productFolder);
  },
  filename: (req, file, cb) => {
    const maSanPham = req.params.maSanPham;
    const productFolder = path.join(
      "uploads",
      "AnhSP",
      `san pham ${maSanPham}`
    );
    fs.readdir(productFolder, (err, files) => {
      if (err) {
        return cb(err, null);
      }

      const nextIndex = files.length + 1;
      const fileExtension = path.extname(file.originalname);
      const fileName = `san pham ${maSanPham} ${nextIndex}${fileExtension}`;

      cb(null, fileName);
    });
  },
});

const upload = multer({ storage });

exports.uploadMiddleware = upload.array("images", 10); // Tối đa 10 ảnh

exports.getByProductId = async (req, res) => {
  try {
    const images = await SanPhamAnh.getByProductId(req.params.maSanPham);
    res.json(images);
  } catch (error) {
    res.status(500).json({ message: "Lỗi server", error });
  }
};

exports.uploadImages = async (req, res) => {
  const maSanPham = req.params.maSanPham;
  if (!req.files || req.files.length === 0) {
    return res.status(400).json({ message: "Vui lòng chọn ít nhất một ảnh" });
  }

  const imagePaths = req.files.map((file) => file.path.replace(/\\/g, "/"));

  try {
    await Promise.all(
      imagePaths.map((path) => SanPhamAnh.insert(maSanPham, path))
    );

    res
      .status(201)
      .json({ message: "Ảnh đã được tải lên", images: imagePaths });
  } catch (error) {
    res.status(500).json({ message: "Lỗi server", error });
  }
};

exports.deleteImage = async (req, res) => {
  try {
    const id = req.params.id;
    const affectedRows = await SanPhamAnh.delete(id);

    if (affectedRows === 0) {
      return res.status(404).json({ message: "Ảnh không tồn tại" });
    }

    res.json({ message: "Xóa ảnh thành công" });
  } catch (error) {
    res.status(500).json({ message: "Lỗi server", error });
  }
};