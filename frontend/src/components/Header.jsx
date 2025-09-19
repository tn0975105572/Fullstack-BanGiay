import { Link, useNavigate } from "react-router-dom";
import { useEffect, useState, useRef } from "react";
import "../styles/main.css";

const API_URL = import.meta.env.VITE_API_URL;

const Header = () => {
  const [searchTerm, setSearchTerm] = useState("");
  const navigate = useNavigate();

  const handleSearch = () => {
    if (searchTerm.trim() !== "") {
      navigate(`/sanpham?search=${encodeURIComponent(searchTerm)}`);
    } else {
      navigate("/sanpham");
    }
  };

  const [isCartOpen, setIsCartOpen] = useState(false);
  const cartRef = useRef(null);
  const [cartItems, setCartItems] = useState([]);
  const handleToggleCart = () => {
    setIsCartOpen((prevState) => !prevState);
  };

  useEffect(() => {
    const handleCartToggle = () => {
      handleToggleCart();
    };

    window.addEventListener("toggleCart", handleCartToggle);

    return () => {
      window.removeEventListener("toggleCart", handleCartToggle);
    };
  }, []);
  const loadCartItems = () => {
    const storedCart = JSON.parse(sessionStorage.getItem("cart")) || [];
    setCartItems(storedCart);
  };

  useEffect(() => {
    loadCartItems();
    const intervalId = setInterval(loadCartItems, 50);

    return () => clearInterval(intervalId);
  }, []);

  // Hide navbar on scroll
  useEffect(() => {
    const navbar = document.querySelector(".navbar");
    let lastScrollTop = 0;

    const handleScroll = () => {
      const scrollTop = window.scrollY || document.documentElement.scrollTop;
      navbar.classList.toggle("navbar-hidden", scrollTop > lastScrollTop);
      lastScrollTop = scrollTop <= 0 ? 0 : scrollTop;
    };

    window.addEventListener("scroll", handleScroll);
    return () => window.removeEventListener("scroll", handleScroll);
  }, []);

  const calculateTotalPrice = () => {
    return cartItems
      .reduce((total, item) => total + item.Gia * item.quantity, 0)
      .toLocaleString();
  };

  const renderCartItems = () => {
    return (
      <ul className="cart-list">
        {cartItems.map((item) => (
          <li className="cart-item" key={item.MaSanPham}>
            <img
              src={`${API_URL}/uploads/AnhSP/${item.LinkAnh.split(",")[0]}`}
              alt={item.TenSanPham}
              style={{
                height: "50px",
                width: "50px",
                objectFit: "cover",
                marginRight: "10px",
              }}
            />
            <span>
              {item.TenSanPham}{" "}
              <span className="quantity" style={{ color: "red" }}>
                X{item.quantity}
              </span>
            </span>
            <p>{item.Gia}đ</p>
            <div className="d-flex align-items-center gap-2">
              <button
                className="increase-quantity btn btn-outline-danger rounded-circle"
                onClick={() => updateQuantity(item.MaSanPham, 1)}
              >
                +
              </button>
              <button
                className="decrease-quantity btn btn-outline-danger rounded-circle"
                onClick={() => updateQuantity(item.MaSanPham, -1)}
              >
                -
              </button>
            </div>
          </li>
        ))}
      </ul>
    );
  };

  const updateQuantity = (productId, change) => {
    const updatedCart = cartItems.reduce((acc, item) => {
      const a = sessionStorage.getItem("cart");
      if (a.length > 0) {
        return;
      }
      if (item.MaSanPham === productId) {
        const newQuantity = item.quantity + change;
        if (newQuantity > 0) {
          acc.push({ ...item, quantity: newQuantity });
        }
      } else {
        acc.push(item);
      }
      return acc;
    }, []);

    setCartItems(updatedCart);
    sessionStorage.setItem("cart", JSON.stringify(updatedCart));
  };

  return (
    <header className="test">
      <nav
        className="navbar navbar-expand-lg bg-light fixed-top"
        onClick={() => setIsCartOpen(false)}
        id="navar"
      >
        <div className="container">
          <Link className="navbar-brand" to="/">
            <img
              src="src/assets/img/Remove-bg.ai_1731162030508.png"
              alt="Logo"
              style={{ height: "180px" }}
            />
          </Link>
          <button
            className="navbar-toggler"
            type="button"
            data-toggle="collapse"
            data-target="#navbarNav"
          >
            <span className="navbar-toggler-icon"></span>
          </button>

          <div className="collapse navbar-collapse" id="navbarNav">
            <div className="d-flex justify-content-center mt-5">
              <div
                className="search-container"
                style={{ height: "60px", position: "relative" }}
              >
                <input
                  type="text"
                  placeholder="Tìm kiếm sản phẩm ..."
                  value={searchTerm}
                  onChange={(e) => setSearchTerm(e.target.value)}
                />
                <i
                  className="fa-solid fa-magnifying-glass"
                  style={{
                    marginRight: "10px",
                    fontSize: "25px",
                    cursor: "pointer",
                  }}
                  onClick={handleSearch}
                ></i>

                <button className="filter-button" id="filter-button">
                  <i className="fa fa-filter"></i>
                  <span>Lọc</span>
                </button>
                <span
                  className="shop-name"
                  style={{
                    position: "absolute",
                    left: "10px",
                    transform: "translateY(-90%)",
                  }}
                >
                  SHOP SHOE
                </span>
              </div>
            </div>
            <div
              className="d-flex justify-content-end p-3"
              style={{ marginLeft: "110px" }}
            >
              <div
                className="account-section me-4"
                onClick={() => console.log("Open account")}
              >
                <i className="fa fa-user"></i>
                <div>
                  <div>Đăng nhập / Đăng ký</div>
                  <div>
                    Tài khoản <i className="fas fa-caret-down"></i>
                  </div>
                </div>
              </div>
              <div
                className="cart-section"
                onClick={(e) => {
                  e.stopPropagation();
                  setIsCartOpen(true);
                }}
              >
                <i className="fa fa-shopping-basket"></i>
                <span className="badge">{cartItems.length}</span>
                <div>Giỏ hàng</div>
              </div>
            </div>
          </div>
        </div>
      </nav>
      <div
        className={`modal-cart ${isCartOpen ? "open" : ""}`}
        ref={cartRef}
        onClick={(e) => e.stopPropagation()}
      >
        <div className="cart-container" style={{ width: "550px" }}>
          <div className="cart-header">
            <h3 className="cart-header-title">
              <i className="fa fa-shopping-basket"></i> Giỏ hàng
            </h3>
            <button className="cart-close" onClick={() => setIsCartOpen(false)}>
              <i className="fa fa-times"></i>
            </button>
          </div>
          <div className="cart-body">
            {cartItems.length === 0 ? (
              <div className="gio-hang-trong">
                <i className="fa fa-cart-plus"></i>
                <p>Không có sản phẩm nào trong giỏ hàng của bạn</p>
              </div>
            ) : (
              renderCartItems()
            )}
          </div>
          <div className="cart-footer">
            <div className="cart-total-price">
              <p className="text-tt">Tổng tiền:</p>
              <p className="text-price">{calculateTotalPrice()}đ</p>
            </div>
            <div className="cart-footer-payment">
              <a href="#listProduct" className="them-mon">
                <button
                  className="them-mon"
                  onClick={() => setIsCartOpen(false)}
                >
                  Thêm món hàng
                </button>
              </a>
              <button className="thanh-toan disabled">Chi Tiết Giỏ Hàng</button>
            </div>
          </div>
        </div>
      </div>
      <div
        className="text-center bg-white border-bottom"
        style={{ paddingTop: "200px" }}
      >
        <div className="container">
          <div className="row">
            <div className="col-lg-10">
              <div className="main-navigation">
                <nav className="header-menu">
                  <ul className="menu food-nav-menu">
                    <li>
                      <Link to="/">Home</Link>
                    </li>
                    <li>
                      <Link to="/sanpham">Sản phẩm</Link>
                    </li>
                    <li>
                      <Link to="/phukien" style={{ fontSize: "22px" }}>
                        Phụ trang
                      </Link>
                    </li>
                    <li>
                      <Link to="/giohang">Giỏ Hàng</Link>
                    </li>
                    <li>
                      <Link to="/tintuc">Tin tức</Link>
                    </li>
                    <li>
                      <Link to="/lienhe">Liên hệ</Link>
                    </li>
                    <li>
                      <Link to="/ctspctsp">Liên hệ</Link>
                    </li>
                  </ul>
                </nav>
              </div>
            </div>
          </div>
        </div>
      </div>
    </header>
  );
};

export default Header;
