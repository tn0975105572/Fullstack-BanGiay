import React, { useState } from "react";
import "../styles/Phukien.css";
const PhuKien = () => {
  const [category, setCategory] = useState("all");
  const [minPrice, setMinPrice] = useState("");
  const [maxPrice, setMaxPrice] = useState("");

  const closeSearchAdvanced = () => {
    // Logic để đóng tìm kiếm nâng cao
    console.log("Closing advanced search");
  };

  return (
    <div>
      {/* Phần tìm kiếm nâng cao */}
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
            {/* Phân loại */}
            <div className="advanced-search-category">
              <span>Phân loại </span>
              <select
                id="advanced-search-category-select"
                value={category}
                onChange={(e) => {
                  setCategory(e.target.value);
                }}
              >
                <option value="all">All</option>
                <option value="Nike">Hãng Nike</option>
                <option value="ADIDAS">Hãng ADIDAS</option>
                <option value="Puma">Hãng Puma</option>
                <option value="Converse">Hãng Converse</option>
                <option value="Vans">Hãng Vans</option>
                <option value="New Balance">New Balance</option>
              </select>
            </div>

            {/* Giá từ */}
            <div className="advanced-search-price">
              <span>Giá từ</span>
              <input
                type="number"
                placeholder="tối thiểu"
                id="min-price"
                value={minPrice}
                onChange={(e) => {
                  setMinPrice(e.target.value);
                }}
              />
              <span>đến</span>
              <input
                type="number"
                placeholder="tối đa"
                id="max-price"
                value={maxPrice}
                onChange={(e) => {
                  setMaxPrice(e.target.value);
                }}
              />
              <button id="advanced-search-price-btn">
                <i className="fa-light fa-magnifying-glass-dollar"></i>
              </button>
            </div>

            {/* Điều khiển tìm kiếm */}
            <div className="advanced-search-control">
              <button id="sort-ascending">
                <i className="fa-regular fa-arrow-up-short-wide"></i>
              </button>
              <button id="sort-descending">
                <i className="fa-regular fa-arrow-down-wide-short"></i>
              </button>
              <button id="reset-search">
                <i className="fa-light fa-arrow-rotate-right"></i>
              </button>
              <button onClick={closeSearchAdvanced}>
                <i className="fa-light fa-xmark"></i>
              </button>
            </div>
          </div>
        </div>
      </div>

      {/* Phần danh sách sản phẩm */}
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
                <div
                  className="row g-xxl-5 bydefault_show"
                  id="menu-dish"
                ></div>
              </div>
            </div>
          </section>
          <div className="stt">
            <ul>
              <i
                style={{ fontSize: "30px", color: "rgb(128, 23, 23)" }}
                className="ri-arrow-left-double-line"
                id="prev"
                href="#listProduct"
              ></i>
              <li id="li1" className="active">
                1
              </li>
              <li id="li2">2</li>
              <li id="li3">3</li>
              <li id="li4">4</li>
              <li id="li5">5</li>
              <li id="li6">6</li>
              <li id="li7">7</li>
              <i
                style={{ fontSize: "30px", color: "rgb(128, 23, 23)" }}
                className="ri-arrow-right-double-fill"
                id="next"
                href="#listProduct"
              ></i>
            </ul>
          </div>
        </div>
      </div>
    </div>
  );
};

export default PhuKien;
