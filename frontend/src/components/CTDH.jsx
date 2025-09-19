import React from "react";
import "../styles/CTDH.css";
const Cart = () => {
  const handleCheckout = () => {};

  return (
    <div>
      {/* Phần banner giỏ hàng */}
      <div
        className="main-cart-breadcrumb"
        title="Giỏ hàng"
        style={{
          backgroundImage:
            "url('https://bizweb.dktcdn.net/100/369/492/themes/799053/assets/slider_1.jpg?1706113053856')",
          backgroundSize: "cover",
          backgroundPosition: "center",
          backgroundRepeat: "no-repeat",
          height: "428px",
          backgroundPositionX: "center",
          backgroundPositionY: "92.5%",
          display: "flex",
          justifyContent: "center",
          alignItems: "center",
        }}
      ></div>

      {/* Phần chi tiết giỏ hàng */}
      <nav className="phanthan1" style={{ marginBottom: "10%" }}>
        <div className="container-fluid mt-4" style={{ maxWidth: "90%" }}>
          <div className="row">
            {/* Phần danh sách sản phẩm trong giỏ hàng */}
            <div className="col-md-8" id="cart-items">
              <div
                className="cart-header"
                style={{
                  fontSize: "30px",
                  fontFamily: "'Times New Roman', Times, serif",
                }}
              >
                <i className="fas fa-shopping-cart"></i> GIỎ HÀNG CỦA BẠN
              </div>
              <div className="mt-4" id="cart-item">
                <div className="container">
                  <div className="row align-items-center">
                    <div className="col-md-6 text-center text-md-start">
                      <h1 className="fw-bold1" style={{ fontWeight: "bold" }}>
                        Bạn chưa lựa chọn được sản phẩm nào.?
                      </h1>
                      <p>
                        Tìm kiếm ngay sản phẩm mà bạn mong muốn với bộ sưu tập
                        rộng lớn của chúng tôi!
                      </p>
                      <div className="custom-search-box">
                        <input type="text" placeholder="Bạn cần tìm gì ...?" />
                        <i className="fa fa-search"></i>
                      </div>
                    </div>
                    <div className="col-md-6 text-center">
                      <img
                        width="1566"
                        height="350"
                        title="Tìm kiếm"
                        className="w-100 lazyloaded"
                        src="https://file.hstatic.net/200000584705/file/37578_dae02aa6e03e4230b958e97100__1___1__db746ec851754034b04b27f8690072c7.jpg"
                        data-src="https://file.hstatic.net/200000584705/file/37578_dae02aa6e03e4230b958e97100__1___1__db746ec851754034b04b27f8690072c7.jpg"
                        alt="Cart none"
                      />
                    </div>
                  </div>
                </div>
              </div>
              <hr />
              <div className="order-note">Ghi chú đơn hàng</div>
              <textarea
                className="form-control mt-2"
                placeholder="Nhập thông tin ghi chú của bạn ..."
                rows="4"
                style={{ height: "350px" }}
              ></textarea>
            </div>

            {/* Phần tổng kết đơn hàng */}
            <div className="col-md-4" id="order-summary">
              <div className="text-end mb-2">
                Bạn đang có <span id="item-count"></span> sản phẩm trong giỏ
                hàng
              </div>
              <div className="order-summary">
                <div className="fw-bold">THÔNG TIN ĐƠN HÀNG</div>
                <div className="mt-2">
                  Tổng tiền:
                  <span className="total-price" id="total-price">
                    {" "}
                    0₫{" "}
                  </span>
                </div>
                <div className="text-muted mt-2">
                  Phí vận chuyển sẽ được tính ở trang thanh toán. Bạn cũng có
                  thể nhập mã giảm giá ở trang thanh toán.
                </div>
                <div className="form-check mt-3">
                  <input
                    className="form-check-input"
                    id="invoice"
                    type="checkbox"
                  />
                  <label className="form-check-label" htmlFor="invoice">
                    Xuất hóa đơn
                  </label>
                </div>
                <button
                  className="muathem"
                  onClick={() => (window.location.href = "Menu.html")}
                >
                  Tiếp tục mua hàng
                </button>
                <button
                  id="checkout-button"
                  className="btn btn-primary w-100 mt-2"
                  onClick={handleCheckout}
                >
                  Thanh toán
                </button>
              </div>
            </div>
          </div>
        </div>
      </nav>
    </div>
  );
};

export default Cart;
