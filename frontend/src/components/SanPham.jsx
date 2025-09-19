import React, { useState, useEffect } from "react";
import axios from "axios";
import { useLocation, useNavigate } from "react-router-dom";
import "bootstrap/dist/css/bootstrap.min.css";
import "bootstrap/dist/js/bootstrap.bundle.min";
import "@fortawesome/fontawesome-free/css/all.min.css";
import { ToastContainer, toast } from "react-toastify";
import "react-toastify/dist/ReactToastify.css";
import ModalNotification from "./ModalNotification";
import "../styles/main.css";

const API_URL = import.meta.env.VITE_API_URL;

const SanPham = () => {
  const [products, setProducts] = useState([]);
  const [currentPage, setCurrentPage] = useState(1);
  const productsPerPage = 8;
  const [cartItems, setCartItems] = useState([]);
  const [minPrice, setMinPrice] = useState("");
  const [maxPrice, setMaxPrice] = useState("");
  const location = useLocation();
  const navigate = useNavigate();

  // Tải giỏ hàng từ ses
  useEffect(() => {
    const savedCart = sessionStorage.getItem("cart");
    if (savedCart) {
      setCartItems(JSON.parse(savedCart));
    }
  }, []);

  useEffect(() => {
    sessionStorage.setItem("cart", JSON.stringify(cartItems));
  }, [cartItems]);
  //hàm thong báo
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
  const closeSearchAdvanced = () => {
    document.querySelector(".advanced-search").style.display = "none";
  };

  // Xử lý  search
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

  // Lấy sản phẩm từ API
  useEffect(() => {
    const queryParams = new URLSearchParams(location.search);
    const searchQuery = queryParams.get("search") || "";
    const brandFilter = queryParams.get("brand") || "";
    const sortOrder = queryParams.get("order") || "";
    const minPriceParam = queryParams.get("minPrice") || "";
    const maxPriceParam = queryParams.get("maxPrice") || "";

    const fetchProducts = async () => {
      try {
        let url = `${API_URL}/api/sanpham/getAll`;
        if (searchQuery) {
          url = `${API_URL}/api/sanpham/search?data=${searchQuery}`;
        }
        if (brandFilter) {
          url = `${API_URL}/api/sanpham/filterByBrand?brand=${brandFilter}`;
        }
        if (sortOrder) {
          url = `${API_URL}/api/sanpham/sortByPrice?order=${sortOrder}`;
        }
        if (minPriceParam && maxPriceParam) {
          url = `${API_URL}/api/sanpham/filterByPriceRange?minPrice=${minPriceParam}&maxPrice=${maxPriceParam}`;
        }

        const response = await axios.get(url);
        setProducts(response.data.length ? response.data : []);
        if (response.data.length === 0) {
          toast.error("Không tìm thấy sản phẩm nào.");
        }
      } catch (error) {
        console.error("Lỗi tải sản phẩm:", error);
        toast.error("Có lỗi xảy ra khi tải sản phẩm.");
      }
    };

    fetchProducts();
  }, [location.search]);

  // Hàm xử lý sắp xếp
  const handleSort = (order) => {
    const queryParams = new URLSearchParams(location.search);
    queryParams.set("order", order);
    navigate(`/sanpham?${queryParams.toString()}`);
  };

  // Hàm xử lý lọc theo thương hiệu
  const handleBrandFilter = (event) => {
    const brand = event.target.value;
    const queryParams = new URLSearchParams(location.search);

    if (brand === "all") {
      queryParams.delete("brand");
    } else {
      queryParams.set("brand", brand);
    }

    navigate(`/sanpham?${queryParams.toString()}`);
  };

  // Hàm xử lý khoảng giá
  const handlePriceRange = () => {
    const queryParams = new URLSearchParams(location.search);
    if (minPrice) {
      queryParams.set("minPrice", minPrice);
    } else {
      queryParams.delete("minPrice");
    }
    if (maxPrice) {
      queryParams.set("maxPrice", maxPrice);
    } else {
      queryParams.delete("maxPrice");
    }

    navigate(`/sanpham?${queryParams.toString()}`);
  };

  const uniqueBrands = [...new Set(products.map((product) => product.Hang))];

  // Render sản phẩm
  const renderProducts = () => {
    const start = (currentPage - 1) * productsPerPage;
    const end = start + productsPerPage;
    const productsToDisplay = products.slice(start, end);

    return productsToDisplay.map((product) => {
      const imageUrls = product.LinkAnh?.split(",") || [];
      const mainImage = imageUrls[0]
        ? `${import.meta.env.VITE_API_URL}/uploads/AnhSP/${decodeURIComponent(
            imageUrls[0].replace(/\\/g, "/")
          )}`
        : "https://via.placeholder.com/200"; // Hình ảnh mặc định

      return (
        <div className="col-lg-3 col-sm-5 dish-box-wp" key={product.MaSanPham}>
          <div className="dish-box text-center">
            <div
              className="dist-img"
              onClick={() =>
                (window.location.href = `CTSP.html?id=${product.MaSanPham}`)
              }
            >
              <img src={mainImage} alt={product.TenSanPham} />
            </div>
            <div className="dish-rating">
              {product.Sao || "No rating"}
              <i className="uil uil-star"></i>
            </div>
            <div className="dish-title">
              <h3 className="h3-title">{product.TenSanPham}</h3>
            </div>
            <div className="dish-info">
              <ul>
                <li>
                  <p>Hãng</p>
                  <b>{product.Hang}</b>
                </li>
                <li>
                  <p>Số lượng</p>
                  <b>{product.SoLuong}</b>
                </li>
              </ul>
            </div>
            <div className="dist-bottom-row">
              <ul>
                <li>
                  <b>{product.Gia}</b>
                </li>
                <li>
                  <button
                    className="dish-add-btn"
                    onClick={() => handleAddToCart(product)}
                  >
                    <i className="uil uil-plus"></i>
                  </button>
                </li>
              </ul>
            </div>
          </div>
        </div>
      );
    });
  };

  const totalPages = Math.ceil(products.length / productsPerPage);

  return (
    <div>
      <ToastContainer
        position="top-right"
        autoClose={5000}
        hideProgressBar={false}
        newestOnTop={false}
        closeOnClick
        rtl={false}
        pauseOnFocusLoss
        draggable
        pauseOnHover
      />
      <div className="text-center" style={{ marginBottom: "50px" }}>
        <ModalNotification
          isVisible={modalVisible}
          onClose={closeModal}
          product={currentProduct}
        />
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
            <div className="advanced-search-category">
              <span>Phân loại </span>
              <select
                id="advanced-search-category-select"
                onChange={handleBrandFilter}
              >
                <option value="all">All</option>
                {uniqueBrands.map((brand, index) => (
                  <option key={index} value={brand}>
                    {brand}
                  </option>
                ))}
              </select>
            </div>

            <div className="advanced-search-price">
              <span>Giá từ</span>
              <input
                type="number"
                placeholder="tối thiểu"
                id="min-price"
                value={minPrice}
                onChange={(e) => setMinPrice(e.target.value)}
              />
              <span>đến</span>
              <input
                type="number"
                placeholder="tối đa"
                id="max-price"
                value={maxPrice}
                onChange={(e) => setMaxPrice(e.target.value)}
              />
              <button id="advanced-search-price-btn" onClick={handlePriceRange}>
                <i className="fas fa-light fa-magnifying-glass-dollar"></i>
              </button>
            </div>
            <div className="advanced-search-control">
              <button id="sort-ascending" onClick={() => handleSort("ASC")}>
                <i className="fas fa-regular fa-arrow-up-short-wide"></i>
              </button>
              <button id="sort-descending" onClick={() => handleSort("DESC")}>
                <i className="fas fa-regular fa-arrow-down-wide-short"></i>
              </button>
              <button id="reset-search" onClick={() => navigate("/sanpham")}>
                <i className="fas fa-light fa-arrow-rotate-right"></i>
              </button>
              <button onClick={closeSearchAdvanced}>
                <i className="fas fa-light fa-xmark"></i>
              </button>
            </div>
          </div>
        </div>
      </div>
      <div id="viewport">
        <div id="js-scroll-content">
          <section
            style={{ backgroundImage: "url(assets/images/menu-bg.png)" }}
            className="our-menu section bg-light repeat-img"
            id="menu"
          >
            <div className="sec-wp">
              <p
                style={{
                  fontSize: "50px",
                  fontFamily: "'Times New Roman', Times, serif",
                  color: "#b1130e",
                }}
              >
                VIEW-ALL
              </p>
              <div
                className="menu-list-row"
                style={{ marginLeft: "5%", marginRight: "5%" }}
              >
                <div className="row g-xxl-5 bydefault_show" id="menu-dish">
                  {renderProducts()}
                </div>
              </div>
            </div>
          </section>
          <div className="stt">
            <ul>
              <i
                style={{ fontSize: "30px", color: "rgb(128, 23, 23)" }}
                className="ri-arrow-left-double-line"
                id="prev"
                onClick={() => setCurrentPage((prev) => Math.max(prev - 1, 1))}
              ></i>
              {Array.from({ length: totalPages }, (_, index) => (
                <li
                  key={index}
                  className={currentPage === index + 1 ? "active" : ""}
                  onClick={() => setCurrentPage(index + 1)}
                >
                  {index + 1}
                </li>
              ))}
              <i
                style={{ fontSize: "30px", color: "rgb(128, 23, 23)" }}
                className="ri-arrow-right-double-fill"
                id="next"
                onClick={() =>
                  setCurrentPage((prev) => Math.min(prev + 1, totalPages))
                }
              ></i>
            </ul>
          </div>
        </div>
      </div>
    </div>
  );
};

export default SanPham;
