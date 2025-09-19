import React, { useState, useEffect } from "react";
import axios from "axios";
import "bootstrap/dist/css/bootstrap.min.css";
import "bootstrap/dist/js/bootstrap.bundle.min";
import "@fortawesome/fontawesome-free/css/all.min.css";
import "../styles/main.css";
import ProductCarousel from "./Sale,Top,Hot";
import ModalNotification from "./ModalNotification"; // Import ModalNotification component

const API_URL = import.meta.env.VITE_API_URL;

const closeSearchAdvanced = () => {
  document.querySelector(".advanced-search").style.display = "none";
};

const Home = () => {
  const [products, setProducts] = useState([]);
  const [cartItems, setCartItems] = useState([]);
  const [timeLeft, setTimeLeft] = useState({
    days: 0,
    hours: 0,
    minutes: 0,
    seconds: 0,
  });

  useEffect(() => {
    const savedCart = sessionStorage.getItem("cart");
    if (savedCart) {
      setCartItems(JSON.parse(savedCart));
    }
  }, []);

  useEffect(() => {
    sessionStorage.setItem("cart", JSON.stringify(cartItems));
  }, [cartItems]);

  // Fetch sản phẩm sale
  useEffect(() => {
    axios
      .get(`${API_URL}/api/sanpham/random?tag=sale`)
      .then((response) => {
        if (Array.isArray(response.data)) {
          setProducts(response.data.slice(0, 4));
        } else {
          console.error("Dữ liệu API không hợp lệ:", response.data);
        }
      })
      .catch((error) => console.error("Lỗi fetch sản phẩm:", error));
  }, []);

  // Xử lý countdown
  useEffect(() => {
    const targetDate = new Date("2025-12-31T23:59:59").getTime();

    const updateCountdown = () => {
      const now = new Date().getTime();
      const distance = targetDate - now;

      setTimeLeft({
        days: Math.floor(distance / (1000 * 60 * 60 * 24)),
        hours: Math.floor(
          (distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60)
        ),
        minutes: Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60)),
        seconds: Math.floor((distance % (1000 * 60)) / 1000),
      });
    };

    const interval = setInterval(updateCountdown, 1000);
    updateCountdown();

    return () => clearInterval(interval);
  }, []);
  //hiện thông báo khi them thành côngcông
  const [modalVisible, setModalVisible] = useState(false);
  const [currentProduct, setCurrentProduct] = useState(null);
  const handleAddToCart = (product) => {
    const existingItem = cartItems.find(
      (item) => item.MaSanPham === product.MaSanPham
    );

    if (existingItem) {
      setCartItems(
        cartItems.map((item) =>
          item.MaSanPham === product.MaSanPham
            ? { ...item, quantity: item.quantity + 1 }
            : item
        )
      );
    } else {
      setCartItems((prevItems) => [
        ...prevItems,
        {
          MaSanPham: product.MaSanPham,
          TenSanPham: product.TenSanPham,
          LinkAnh: product.LinkAnh,
          Gia: product.Gia,
          quantity: 1,
        },
      ]);
    }
    setCurrentProduct(product);
    setModalVisible(true);
  };
  const closeModal = () => {
    setModalVisible(false);
  };
  // Xử lý advanced search
  useEffect(() => {
    const filterButton = document.getElementById("filter-button");
    const advancedSearch = document.querySelector(".advanced-search");
    const listProductElement = document.getElementById("listProduct");

    const toggleAdvancedSearch = () => {
      if (!advancedSearch) return;

      advancedSearch.style.display =
        advancedSearch.style.display === "none" ||
        advancedSearch.style.display === ""
          ? "block"
          : "none";

      listProductElement?.scrollIntoView({
        behavior: "smooth",
        block: "start",
      });
    };

    filterButton?.addEventListener("click", toggleAdvancedSearch);

    return () => {
      filterButton?.removeEventListener("click", toggleAdvancedSearch);
    };
  }, []);

  return (
    <div>
      {/* Phần khuyến mãi */}
      <nav
        className="khuyen-mai"
        style={{ width: "94%", borderRadius: "30px", margin: "0 3% 1%" }}
      >
        <div className="banner-khuyen-mai">
          <img
            alt="Sale Banner"
            height="200"
            src="https://bizweb.dktcdn.net/100/493/370/themes/940719/assets/home_fsale_image.png?1713464283843"
            width="800"
            style={{ marginBottom: "-50px" }}
          />
          <div className="dem-nguoc">
            {Object.entries(timeLeft).map(([unit, value]) => (
              <div key={unit}>
                <div>{value}</div>
                <div>{unit.charAt(0).toUpperCase() + unit.slice(1)}</div>
              </div>
            ))}
          </div>
        </div>

        <div className="container">
          <div className="row" id="sale-thoi-gian">
            {products.length === 0 ? (
              <div className="col-12 text-center py-5">
                <div className="spinner-border text-danger" role="status">
                  <span className="visually-hidden">Loading...</span>
                </div>
              </div>
            ) : (
              products.map((product) => {
                const imageUrls = product.LinkAnh?.split(",") || [];
                const mainImage = imageUrls[0]
                  ? `${API_URL}/uploads/AnhSP/${imageUrls[0].replace(
                      /\\/g,
                      "/"
                    )}`
                  : "https://via.placeholder.com/200";
                const giaGoc = parseFloat(product.Gia) || 0;
                const giamGia = parseFloat(product.GiamGia) || 0;
                const giaSauGiam = giaGoc * (1 - giamGia / 100);

                return (
                  <div key={product.MaSanPham} className="col-md-3 mb-4">
                    <div className="san-pham position-relative">
                      {giamGia > 0 && (
                        <div className="nhan-giam-gia bg-danger text-white">
                          -{giamGia}%
                        </div>
                      )}
                      <i className="far fa-heart yeu-thich position-absolute end-0 m-2" />

                      <img
                        src={mainImage}
                        alt={product.TenSanPham}
                        className="img-fluid"
                        style={{
                          height: "200px",
                          objectFit: "cover",
                          width: "100%",
                        }}
                      />

                      <div className="thong-tin-san-pham p-3">
                        <h5 className="mb-2">{product.TenSanPham}</h5>
                        <div className="sao text-warning mb-2">
                          ⭐ {product.Sao || 5} / 5
                          <div className="so-luong">SẮP CHÁY HÀNG!!!</div>
                        </div>
                        <div className="thanh-tien-trinh">
                          <div></div>
                        </div>
                        <div className="gia h5 text-danger">
                          {giaSauGiam.toLocaleString("vi-VN")}đ
                        </div>
                        {giamGia > 0 && (
                          <div className="gia-goc text-muted">
                            <del>{giaGoc.toLocaleString("vi-VN")}đ</del>
                          </div>
                        )}
                        <button
                          className="them-vao-gio them"
                          onClick={() => handleAddToCart(product)}
                        >
                          Thêm vào giỏ
                        </button>
                      </div>
                    </div>
                  </div>
                );
              })
            )}
          </div>
        </div>
      </nav>

      {/* Modal thông báo */}
      <ModalNotification
        isVisible={modalVisible}
        onClose={closeModal}
        product={currentProduct}
      />

      <section className="home-coupon" style={{ marginBottom: "5%" }}>
        <div className="container">
          <div className="home-coupon-wrap" style={{ display: "flex" }}>
            {/* Các coupon */}
            <div
              className="home-coupon-item"
              style={{ width: "263px", height: "auto" }}
            >
              <img
                decoding="async"
                src="https://file.hstatic.net/200000306687/file/background-coupon_d5a81f5bc7ea49_ec6d59fdd17c4a718809792590ed9455.png"
                alt="Mã : F1SHOES"
                className="img-fluid"
              />
              <div className="home-coupon-content">
                <div className="home-coupon-content-head">
                  <h3>Mã : F1SHOES</h3>
                  <img
                    decoding="async"
                    src="//bizweb.dktcdn.net/100/493/370/themes/940719/assets/home_coupon_item_image_1.png?1713464283843"
                    title="Mã : F1SHOES"
                    alt="Mã : F1SHOES"
                  />
                  <p>Mã giảm 10% mua 1 sản phẩm</p>
                </div>
              </div>
            </div>
            {/* Thêm các coupon khác tương tự */}
            <div
              className="home-coupon-item"
              style={{ width: "263px", height: "auto" }}
            >
              <img
                decoding="async"
                src="https://file.hstatic.net/200000306687/file/background-coupon_d5a81f5bc7ea49_ec6d59fdd17c4a718809792590ed9455.png"
                alt="Mã : F1SHOES"
                className="img-fluid"
              />
              <div className="home-coupon-content">
                <div className="home-coupon-content-head">
                  <h3>Mã : F1SHOES</h3>
                  <img
                    decoding="async"
                    src="//bizweb.dktcdn.net/100/493/370/themes/940719/assets/home_coupon_item_image_1.png?1713464283843"
                    title="Mã : F1SHOES"
                    alt="Mã : F1SHOES"
                  />
                  <p>Mã giảm 38% mua 2 sản phẩm</p>
                </div>
              </div>
            </div>
            <div
              className="home-coupon-item"
              style={{ width: "263px", height: "auto" }}
            >
              <img
                decoding="async"
                src="https://file.hstatic.net/200000306687/file/background-coupon_d5a81f5bc7ea49_ec6d59fdd17c4a718809792590ed9455.png"
                alt="Mã : F1SHOES"
                className="img-fluid"
              />
              <div className="home-coupon-content">
                <div className="home-coupon-content-head">
                  <h3>Mã : F2SHOES</h3>
                  <img
                    decoding="async"
                    src="https://bizweb.dktcdn.net/100/493/370/themes/940719/assets/home_coupon_item_image_2.png?1713464283843"
                    title="Mã : F1SHOES"
                    alt="Mã : F1SHOES"
                  />
                  <p>Mã giảm 13% mua 3 sản phẩm</p>
                </div>
              </div>
            </div>
            <div
              className="home-coupon-item"
              style={{ width: "263px", height: "auto" }}
            >
              <img
                decoding="async"
                src="https://file.hstatic.net/200000306687/file/background-coupon_d5a81f5bc7ea49_ec6d59fdd17c4a718809792590ed9455.png"
                alt="Mã : F1SHOES"
                className="img-fluid"
              />
              <div className="home-coupon-content">
                <div className="home-coupon-content-head">
                  <h3>Mã : F5SHOES</h3>
                  <img
                    decoding="async"
                    src="https://bizweb.dktcdn.net/100/493/370/themes/940719/assets/home_coupon_item_image_4.png?1713464283843"
                    title="Mã : F1SHOES"
                    alt="Mã : F1SHOES"
                  />
                  <p>Mã giảm 20% mua 1 sản phẩm</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      {/* Phần sản phẩm */}
      <div className="text-center" style={{ marginBottom: "50px" }}>
        <h1
          className="text-xl font-semibold text-gray-900"
          style={{
            display: "inline-block",
            borderBottom: "4px solid #b1130e",
            marginBottom: "10px",
          }}
          id="listProduct"
        >
          KHÁM PHÁ CÁC MẪU GIÀY CỦA CHÚNG TÔI
        </h1>
        <div className="advanced-search open">
          <div className="container">
            {/* Nội dung advanced search */}
            <div className="advanced-search-category">
              <span>Phân loại </span>
              <select id="advanced-search-category-select" onChange={() => {}}>
                <option>All</option>
                <option>Hãng Nike</option>
                <option>Hãng ADIDAS</option>
                <option>Hãng Puma</option>
                <option>Hãng DuyTuan</option>
                <option>Dép</option>
              </select>
            </div>
            <div className="advanced-search-price">
              <span>Giá từ</span>
              <input
                type="number"
                placeholder="tối thiểu"
                id="min-price"
                onChange={() => {}}
              />
              <span>đến</span>
              <input
                type="number"
                placeholder="tối đa"
                id="max-price"
                onChange={() => {}}
              />
              <button
                id="advanced-search-price-btn"
                onClick={() =>
                  alert("Chức năng này không khả dụng ở trang này.")
                }
              >
                <i className=" fas fa-light fa-magnifying-glass-dollar"></i>
              </button>
            </div>
            <div className="advanced-search-control">
              <button
                id="sort-ascending"
                onClick={() =>
                  alert("Chức năng này không khả dụng ở trang này.")
                }
              >
                <i className="fas fa-regular fa-arrow-up-short-wide"></i>
              </button>
              <button
                id="sort-descending"
                onClick={() =>
                  alert("Chức năng này không khả dụng ở trang này.")
                }
              >
                <i className="fas fa-regular fa-arrow-down-wide-short"></i>
              </button>
              <button
                id="reset-search"
                onClick={() =>
                  alert("Chức năng này không khả dụng ở trang này.")
                }
              >
                <i className="fas fa-light fa-arrow-rotate-right"></i>
              </button>
              <button onClick={closeSearchAdvanced}>
                <i className="fas fa-light fa-xmark"></i>
              </button>
            </div>
          </div>
        </div>
      </div>

      {/* Phần sản phẩm Converse */}
      <div
        className="container d-flex justify-content-between container-fluid align-items-center"
        style={{
          borderBottom: "1px solid black",
          padding: "20px 0px",
          marginBottom: "1%",
          maxWidth: "90%",
        }}
      >
        <div>
          <div className="title" style={{ fontSize: "12px", color: "#000" }}>
            Converse
          </div>
          <div
            className="main-text"
            style={{ fontSize: "36px", fontWeight: "bold", color: "#333" }}
          >
            Bộ sưu tập
          </div>
        </div>
        <div>
          <a
            href="Product.html"
            className="more-link"
            style={{ fontSize: "12px", color: "#333", textDecoration: "none" }}
          >
            XEM THÊM <i className="fas fa-arrow-right"></i>
          </a>
        </div>
      </div>

      {/* Phần banner và carousel */}
      <div className="container-fluid">
        <div className="row">
          <div className="col-md-3 p-0" style={{ zIndex: 1 }}>
            <div
              className="left-banner d-flex flex-column justify-content-between text-white p-3"
              style={{
                backgroundImage:
                  "url('https://bizweb.dktcdn.net/100/140/774/themes/827866/assets/bg_module_1.jpg?1730729873913')",
                backgroundSize: "cover",
                height: "600px",
                width: "90%",
                marginLeft: "60px",
              }}
            >
              <div>
                <h2 className="text-white mb-2">CLASSIC</h2>
                <p className="text-white">
                  Bộ sưu tập cổ điển
                  <br />
                  Những phiên bản bất tử từ năm 1966
                </p>
              </div>
              <div className="d-flex justify-content-center">
                <button className="btn btn-outline-light">XEM THÊM</button>
              </div>
            </div>
          </div>

          <div className="col-md-9">
            <div
              className="carousel slide"
              data-bs-ride="carousel"
              id="carouselExampleControls"
            >
              <div className="carousel-inner">
                <ProductCarousel tag="new" carouselId="carouselNew" />
              </div>

              <button
                className="carousel-control-prev"
                data-bs-slide="prev"
                data-bs-target="#carouselExampleControls"
                type="button"
              >
                <span className="carousel-control-prev-icon"></span>
                <span className="visually-hidden">Previous</span>
              </button>
              <button
                className="carousel-control-next"
                data-bs-slide="next"
                data-bs-target="#carouselExampleControls"
                type="button"
              >
                <span className="carousel-control-next-icon"></span>
                <span className="visually-hidden">Next</span>
              </button>
            </div>
          </div>
        </div>
      </div>

      {/* Phần giới thiệu phong cách */}
      <div className="container content" style={{ marginTop: "40px" }}>
        <div className="row">
          <div className="col-md-6">
            <div className="image-container">
              <img
                src="https://bizweb.dktcdn.net/100/493/370/themes/940719/assets/home_about_top.jpg?1713464283843"
                alt="Various colorful Converse shoes"
                className="image"
              />
              <img
                src="https://bizweb.dktcdn.net/100/493/370/themes/940719/assets/home_about_bot.jpg?1713464283843"
                alt="Person posing against a blue wall"
                className="top-image"
              />
            </div>
          </div>
          <div className="col-md-6 text-section">
            <p>CHO CHÚNG TÔI THẤY</p>
            <h2>
              <span>Phong cách</span> của bạn
            </h2>
            <p>
              Mở khóa phong cách và doanh số bán hàng độc quyền, giảm sản phẩm
              và những lần hợp tác mới nhất của chúng tôi với cộng đồng Converse
              - tất cả đều được gửi thẳng đến hộp thư đến của bạn.
            </p>
          </div>
        </div>
      </div>

      {/* Phần sản phẩm mới */}
      <div
        className="container d-flex justify-content-between container-fluid align-items-center"
        style={{
          borderBottom: "1px solid black",
          padding: "20px 0px",
          marginBottom: "1%",
          maxWidth: "90%",
        }}
      >
        <div>
          <div className="title" style={{ fontSize: "12px", color: "#000" }}>
            Converse
          </div>
          <div
            className="main-text"
            style={{ fontSize: "36px", fontWeight: "bold", color: "#333" }}
          >
            NEW
          </div>
        </div>
        <div>
          <a
            href="Product.html"
            className="more-link"
            style={{ fontSize: "12px", color: "#333", textDecoration: "none" }}
          >
            XEM THÊM <i className="fas fa-arrow-right"></i>
          </a>
        </div>
      </div>

      {/* Phần banner và carousel sản phẩm mới */}
      <div className="container-fluid" style={{ marginTop: "10px" }}>
        <div className="row">
          <div className="col-md-3 p-0" style={{ zIndex: 1 }}>
            <div
              className="left-banner d-flex flex-column justify-content-between text-white p-3"
              style={{
                backgroundImage:
                  "url('https://bizweb.dktcdn.net/100/140/774/themes/827866/assets/bg_module_2.jpg?1731225460181')",
                backgroundSize: "cover",
                height: "600px",
                width: "90%",
                marginLeft: "60px",
              }}
            >
              <div>
                <h2 className="text-white mb-2">NEW ARRIVALS</h2>
                <p className="text-white">Bộ sưu tập sản phẩm mới nhất</p>
              </div>
              <div className="d-flex justify-content-center">
                <button className="btn btn-outline-light">XEM THÊM</button>
              </div>
            </div>
          </div>

          <div className="col-md-9">
            <div
              className="carousel slide"
              data-bs-ride="carousel"
              id="salecontrol"
            >
              <ProductCarousel tag="top" carouselId="carouselTop" />

              <div className="carousel-inner"></div>

              <button
                className="carousel-control-prev"
                data-bs-slide="prev"
                data-bs-target="#salecontrol"
                type="button"
              >
                <span className="carousel-control-prev-icon"></span>
                <span className="visually-hidden">Previous</span>
              </button>
              <button
                className="carousel-control-next"
                data-bs-slide="next"
                data-bs-target="#salecontrol"
                type="button"
              >
                <span className="carousel-control-next-icon"></span>
                <span className="visually-hidden">Next</span>
              </button>
            </div>
          </div>
        </div>
      </div>

      <div
        className="container d-flex justify-content-between container-fluid align-items-center"
        style={{
          borderBottom: "1px solid black",
          padding: "20px 0px",
          marginBottom: "1%",
          maxWidth: "90%",
          marginTop: "5%",
        }}
      >
        <div>
          <div className="title" style={{ fontSize: "12px", color: "#000" }}>
            Converse
          </div>
          <div
            className="main-text"
            style={{ fontSize: "36px", fontWeight: "bold", color: "#333" }}
          >
            HOT-TREND
          </div>
        </div>
        <div>
          <a
            href="Product.html"
            className="more-link"
            style={{ fontSize: "12px", color: "#333", textDecoration: "none" }}
          >
            XEM THÊM <i className="fas fa-arrow-right"></i>
          </a>
        </div>
      </div>

      {/* Phần banner và carousel sản phẩm hot-trend */}
      <div className="container-fluid" style={{ marginTop: "10px" }}>
        <div className="row">
          <div className="col-md-3 p-0" style={{ zIndex: 1 }}>
            <div
              className="left-banner d-flex flex-column justify-content-between text-white p-3"
              style={{
                backgroundImage:
                  "url('https://bizweb.dktcdn.net/100/140/774/themes/827866/assets/bg_module_2.jpg?1731225460181')",
                backgroundSize: "cover",
                height: "600px",
                width: "90%",
                marginLeft: "60px",
              }}
            >
              <div>
                <h2 className="text-white mb-2">NEW ARRIVALS</h2>
                <p className="text-white">Bộ sưu tập sản phẩm mới nhất</p>
              </div>
              <div className="d-flex justify-content-center">
                <button className="btn btn-outline-light">XEM THÊM</button>
              </div>
            </div>
          </div>

          <div className="col-md-9">
            <div
              className="carousel slide"
              data-bs-ride="carousel"
              id="topcontrol"
            >
              <ProductCarousel tag="sale" carouselId="carouselSale" />

              <div className="carousel-inner"></div>

              <button
                className="carousel-control-prev"
                data-bs-slide="prev"
                data-bs-target="#topcontrol"
                type="button"
              >
                <span className="carousel-control-prev-icon"></span>
                <span className="visually-hidden">Previous</span>
              </button>
              <button
                className="carousel-control-next"
                data-bs-slide="next"
                data-bs-target="#topcontrol"
                type="button"
              >
                <span className="carousel-control-next-icon"></span>
                <span className="visually-hidden">Next</span>
              </button>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Home;
