import React from "react";
import "../styles/LienHe.css";
const HomePage = () => {
  return (
    <div>
      <div className="content" style={{ marginTop: "20px" }}>
        <div className="text-section">
          <h2>
            <i className="fas fa-dragon"></i> VỀ CHÚNG TÔI
          </h2>
          <p style={{ fontFamily: "'Times New Roman', Times, serif" }}>
            F1GENZ BABIE chính là nơi hội tụ những thương hiệu uy tín, những sản
            phẩm dành cho mẹ và bé chính hãng, chất lượng hàng đầu tại Việt Nam.
            Không những thế, F1GENZ BABIE mang đến cho Ba/mẹ những trải nghiệm
            mua sắm tuyệt vời, đáng tin cậy và cam kết cung cấp các dịch vụ chăm
            sóc khách hàng, tư vấn bán hàng, tư vấn sử dụng sản phẩm và các dịch
            vụ giao nhận hàng tốt nhất.
          </p>
        </div>
        <div className="image-section">
          <img
            alt="A pair of blue and white sports shoes with black laces"
            height="400"
            src="https://bizweb.dktcdn.net/100/493/370/themes/940719/assets/page-about-new-image-1.jpg?1713464283843"
            width="600"
          />
        </div>
      </div>

      {/* Contact Form */}
      <div className="contact-form row" style={{ marginBottom: "3%" }}>
        <div className="col-md-6">
          <h2>
            <img
              src="https://img.icons8.com/?size=100&id=813&format=png&color=000000"
              loading="lazy"
              alt="Shoes"
              title="Shoes"
              width="40"
              height="40"
            />{" "}
            KẾT NỐI NGAY VỚI CHÚNG TÔI
          </h2>
          <input
            type="text"
            className="form-control"
            placeholder="Tên của bạn"
          />
          <input
            type="text"
            className="form-control"
            placeholder="Số điện thoại của bạn"
          />
          <input
            type="email"
            className="form-control"
            placeholder="Email của bạn"
          />
          <textarea
            className="form-control"
            rows="4"
            placeholder="Viết bình luận"
          ></textarea>
          <button className="btn btn-submit">GỬI THÔNG TIN</button>
          <div className="social-icons">
            <a href="#">
              <img
                width="30"
                height="30"
                title="F1GENZ Shoes - Facebook"
                src="https://file.hstatic.net/200000588277/file/facebook__6__53aaa8d352524d3eb025af5203eaa437_icon.png"
                alt="F1GENZ Shoes - Facebook"
              />
            </a>
            <a href="#">
              <img
                width="30"
                height="30"
                title="F1GENZ Shoes - Youtube"
                src="https://file.hstatic.net/200000588277/file/youtube__5__4f04522e10494557a651f53a33ad4d76_icon.png"
                alt="F1GENZ Shoes - Youtube"
              />
            </a>
            <a href="#">
              <img
                width="30"
                height="30"
                title="F1GENZ Shoes - Pinterest"
                src="https://file.hstatic.net/200000588277/file/pinterest_a1a15995132a4275845412deba5f1193_icon.png"
                alt="F1GENZ Shoes - Youtube"
              />
            </a>
            <a href="#">
              <img
                width="30"
                height="30"
                title="F1GENZ Shoes - TikTok"
                src="https://file.hstatic.net/200000588277/file/tik-tok_d85bb4e7468c43ac9ed5437649b7405c_icon.png"
                alt="F1GENZ Shoes - TikTok"
              />
            </a>
            <a href="#">
              <img
                width="30"
                height="30"
                title="F1GENZ Shoes - Instagram"
                src="https://file.hstatic.net/200000588277/file/instagram__3__7de3ebbce1f24003b516ca6c1d7c24d5_icon.png"
                alt="F1GENZ Shoes - Instagram"
              />
            </a>
          </div>
        </div>
        <div className="col-md-6 map-container">
          <iframe
            src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d964.2009072163734!2d105.96011756418277!3d20.831126950250823!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135b0a3479ca0d7%3A0xd02a8c8ca1b02cb1!2zUGjDuiBIw7JhLCBLaG_DoWkgQ2jDonUsIEjGsG5nIFnDqm4sIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1732456945883!5m2!1svi!2s"
            width="100%"
            height="300"
            style={{ border: "0" }}
            allowFullScreen=""
            loading="lazy"
          ></iframe>
        </div>
      </div>
    </div>
  );
};

export default HomePage;
