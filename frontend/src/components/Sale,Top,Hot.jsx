import React, { useEffect, useState } from "react";
import axios from "axios";
import ModalNotification from "./ModalNotification";
import "bootstrap/dist/css/bootstrap.min.css";
import "bootstrap/dist/js/bootstrap.bundle.min";
import "@fortawesome/fontawesome-free/css/all.min.css";

const API_URL = import.meta.env.VITE_API_URL;

const ProductCarousel = ({ tag, carouselId }) => {
  const [modalVisible, setModalVisible] = useState(false);
  const [products, setProducts] = useState([]);
  const [cartItems, setCartItems] = useState([]);
  //hàm thong báobáo
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

    // Lưu sản phẩm hiện tại và hiển thị modal
    setCurrentProduct(product);
    setModalVisible(true);
  };

  const closeModal = () => {
    setModalVisible(false);
  };

  useEffect(() => {
    const savedCart = sessionStorage.getItem("cart");
    if (savedCart) {
      setCartItems(JSON.parse(savedCart));
    }
  }, []);

  useEffect(() => {
    sessionStorage.setItem("cart", JSON.stringify(cartItems));
  }, [cartItems]);

  useEffect(() => {
    axios
      .get(`${API_URL}/api/sanpham/random?tag=${tag}`)
      .then((response) => {
        if (Array.isArray(response.data)) {
          setProducts(response.data);
        }
      })
      .catch((error) =>
        console.error(`Error fetching products for tag ${tag}:`, error)
      );
  }, [tag]);

  const chunkArray = (arr, size) => {
    return Array.from({ length: Math.ceil(arr.length / size) }, (_, i) =>
      arr.slice(i * size, i * size + size)
    );
  };

  const processImageUrl = (url) => {
    if (!url) return "";
    return `${API_URL}/uploads/AnhSP/${url.replace(/\\/g, "/")}`;
  };

  const productGroups = chunkArray(products, 4);

  return (
    <div
      id={carouselId}
      className="carousel slide"
      data-bs-ride="carousel"
      data-bs-wrap="true"
    >
      <ModalNotification
        isVisible={modalVisible}
        onClose={closeModal}
        product={currentProduct}
      />
      <div className="carousel-inner">
        {productGroups.map((group, index) => (
          <div
            key={index}
            className={`carousel-item ${index === 0 ? "active" : ""}`}
          >
            <div className="row">
              {group.map((product, j) => {
                const imagePaths =
                  product.LinkAnh.split(",").map(processImageUrl);
                const formattedPrice = new Intl.NumberFormat("vi-VN", {
                  style: "currency",
                  currency: "VND",
                }).format(product.Gia);

                return (
                  <div key={j} className="col-md-3">
                    <div className="product-image">
                      {product.Tag?.toLowerCase() === "top" && (
                        <div className="flash"></div>
                      )}

                      <img
                        alt={product.TenSanPham}
                        className="img-fluid"
                        style={{
                          height: "225px",
                          width: "100%",
                          objectFit: "cover",
                        }}
                        src={imagePaths[0] || ""}
                      />

                      <div
                        className="thumbnail-images"
                        style={{ marginTop: 10 }}
                      >
                        {imagePaths.slice(1, 4).map((imgPath, k) => (
                          <img
                            key={k}
                            alt="Thumbnail"
                            height="100px"
                            src={imgPath}
                            width="200px"
                          />
                        ))}
                      </div>
                      <div className="discount-badge">-{product.GiamGia}%</div>
                      <button
                        className="choose-button them"
                        onClick={() => handleAddToCart(product)}
                      >
                        TÙY CHỌN
                      </button>
                    </div>
                    <div className="text-center mt-3">
                      <div
                        className="product-title"
                        style={{
                          fontFamily:
                            "Georgia, 'Times New Roman', Times, serif",
                          marginTop: "60px",
                        }}
                      >
                        {product.TenSanPham}
                      </div>
                      <div className="product-brand">{product.Hang}</div>
                      <div className="price">{formattedPrice}</div>
                      <div className="original-price">
                        {new Intl.NumberFormat("vi-VN", {
                          style: "currency",
                          currency: "VND",
                        }).format(product.Gia * (1 + product.GiamGia / 100))}
                      </div>
                    </div>
                  </div>
                );
              })}
            </div>
          </div>
        ))}
      </div>
      {/* Controls */}
      <button
        className="carousel-control-prev"
        type="button"
        data-bs-target={`#${carouselId}`}
        data-bs-slide="prev"
      >
        <span className="carousel-control-prev-icon" aria-hidden="true"></span>
      </button>
      <button
        className="carousel-control-next"
        type="button"
        data-bs-target={`#${carouselId}`}
        data-bs-slide="next"
      >
        <span className="carousel-control-next-icon" aria-hidden="true"></span>
      </button>
    </div>
  );
};

export default ProductCarousel;
