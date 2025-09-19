import "../styles/main.css";

const Footer = () => {
  return (
    <footer className="bg-dark text-white py-4">
      <div className="footer">
        <div className="container">
          <div
            className="newsletter d-flex align-items-center"
            style={{ color: "#000" }}
          >
            <img
              style={{ width: "100px" }}
              src="src/assets/img/Logo.jpg"
              alt="Logo"
            />
            <div style={{ paddingLeft: "10px" }}>
              <h5 className="mb-1">ĐĂNG KÝ NHẬN TIN</h5>
              <p className="mb-0">Nhận thông tin mới nhất từ chúng tôi</p>
            </div>

            <div className="d-flex" style={{ marginLeft: "auto" }}>
              <input placeholder="Nhập email của bạn" type="email" />
              <button>
                ĐĂNG KÝ <i className="fas fa-arrow-right"></i>
              </button>
            </div>
          </div>
        </div>

        <div className="container" style={{ color: "#000" }}>
          <div className="row">
            <div className="col-md-3">
              <h5 className="footer-title">VỀ CHÚNG TÔI</h5>
              <p>
                Giày là thương hiệu được thành lập vào năm 2022 với tiêu chí đặt
                chất lượng sản phẩm lên hàng đầu.
              </p>
              <div className="social-icons">
                <a href="#">
                  <i className="fab fa-facebook-f"></i>
                </a>
                <a href="#">
                  <i className="fab fa-twitter"></i>
                </a>
                <a href="#">
                  <i className="fab fa-linkedin-in"></i>
                </a>
                <a href="#">
                  <i className="fab fa-whatsapp"></i>
                </a>
              </div>
            </div>

            <div className="col-md-3">
              <h5 className="footer-title">LIÊN KẾT</h5>
              <ul className="list-unstyled">
                <li>
                  <a className="footer-link" href="#">
                    Về chúng tôi
                  </a>
                </li>
                <li>
                  <a className="footer-link" href="#">
                    Các mẫu giày
                  </a>
                </li>
                <li>
                  <a className="footer-link" href="#">
                    Điều khoản
                  </a>
                </li>
                <li>
                  <a className="footer-link" href="#">
                    Liên hệ
                  </a>
                </li>
                <li>
                  <a className="footer-link" href="#">
                    Tin tức
                  </a>
                </li>
              </ul>
            </div>

            <div className="col-md-3">
              <h5 className="footer-title">CÁC MẪU GIÀY</h5>
              <ul className="list-unstyled">
                <li>
                  <a className="footer-link" href="#">
                    Điểm nhấn
                  </a>
                </li>
                <li>
                  <a className="footer-link" href="#">
                    Hãng Nike
                  </a>
                </li>
                <li>
                  <a className="footer-link" href="#">
                    Hãng Adidas
                  </a>
                </li>
                <li>
                  <a className="footer-link" href="#">
                    Hãng ChuVu
                  </a>
                </li>
                <li>
                  <a className="footer-link" href="#">
                    Hãng Duy
                  </a>
                </li>
              </ul>
            </div>

            <div className="col-md-3">
              <h5 className="footer-title">LIÊN HỆ</h5>
              <p>
                <i className="fa-solid fa-location-dot"></i> thôn Phú Hòa, xã
                Bình Kiều, Khoái Châu Hưng Yên
              </p>
              <p>
                <i className="fa-solid fa-phone"></i> 0849838762 <br /> 0987 654
                321
              </p>
              <p>
                <i className="fa-solid fa-envelope"></i> tn0975105572@domain.com{" "}
                <br /> infoabc@domain.com
              </p>
            </div>
          </div>

          <div className="text-center mt-4">
            <p>Copyright 2022 Giày. All Rights Reserved.</p>
          </div>
        </div>
      </div>
    </footer>
  );
};

export default Footer;
