import React, { useEffect, useRef } from "react";
import { CheckCircle } from "lucide-react";
const ModalNotification = ({ isVisible, onClose, product }) => {
  const modalRef = useRef(null);

  useEffect(() => {
    if (isVisible) {
      modalRef.current.classList.add("visible");
    } else {
      modalRef.current.classList.remove("visible");
    }
  }, [isVisible]);

  const handleCartClick = () => {
    window.dispatchEvent(new Event("toggleCart"));
  };

  return (
    <div className="overlay" ref={modalRef}>
      <div className="card">
        <div className="icon">
          <CheckCircle
            size={67}
            style={{ color: "#006600" }}
            className="animate-bounce"
          />
        </div>

        <div className="message" style={{ fontSize: "33px" }}>
          Cảm ơn bạn!
        </div>
        <div className="d-flex">
          <img
            src={
              product?.LinkAnh
                ? `http://localhost:3000/uploads/AnhSP/${decodeURIComponent(
                    product.LinkAnh.split(",")[0]
                  )}`
                : "https://placehold.co/70x60"
            }
            className="img-thumbnail me-1 "
            alt={product?.TenSanPham}
            width="70"
            height="60"
          />

          <div>
            <h6 className="card11-title mb-1 fw-bold text-start bg-white text-dark">
              {product?.TenSanPham || "Tên sản phẩm"}
            </h6>

            <p className="card-text fw-bold text-danger text-start bg-white p-1">
              {product
                ? `${Math.round(product.Gia).toLocaleString()} VND`
                : "0 VND"}
            </p>
          </div>
        </div>
        <div className="sub-message">
          Sản phẩm đã được thêm vào giỏ thành công
        </div>
        <div>
          <button className="btn btn-continue" onClick={onClose}>
            Tiếp tục mua sắm
          </button>
          <button
            className="btn btn-cart"
            onClick={() => {
              handleCartClick();
              onClose();
            }}
          >
            Đến giỏ hàng
          </button>
        </div>
      </div>
    </div>
  );
};

export default ModalNotification;
