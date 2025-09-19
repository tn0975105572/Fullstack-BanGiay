import React from "react";
const Blog = () => {
  return (
    <div>
      {/* Phần banner */}
      <div
        className="main-cart-breadcrumb"
        title="Giỏ hàng"
        style={{
          backgroundImage:
            "url('https://bizweb.dktcdn.net/100/493/370/themes/940719/assets/main_blog_breadcrumb_bg.jpg?1713464283843')",
          backgroundSize: "cover",
          backgroundPosition: "center 92.5%",
          backgroundRepeat: "no-repeat",
          height: "428px",
          display: "flex",
          justifyContent: "center",
          alignItems: "center",
        }}
      >
        <div className="container">
          <div className="section-title-all">
            <h1 style={{ fontSize: "80px", color: "#aa042b" }}>Tin tức</h1>
          </div>
          <div className="breadcrumb-wrap">
            <ol className="breadcrumb">
              <li className="breadcrumb-item">
                <a
                  href="/"
                  aria-label="Trang chủ"
                  title="Trang chủ"
                  style={{ marginTop: "100px" }}
                >
                  Trang chủ
                </a>
              </li>
              <li className="breadcrumb-item active">
                <span style={{ color: "#aa042b" }}>Blog-Tin Tức</span>
              </li>
            </ol>
          </div>
        </div>
      </div>

      {/* Phần nội dung chính */}
      <div className="container">
        <div className="row">
          {/* Main Content */}
          <div className="col-md-8">
            <div className="row">
              {/* Các bài viết blog */}
              {[
                {
                  image:
                    "https://bizweb.dktcdn.net/thumb/grande/100/493/370/articles/chuck-70-beat-the-world-ig-2-7df-abea22e0824c4c09a6fd5ed757bd85f7.jpg?v=1697785028300",
                  title:
                    "CONVERSE RENEW CRATER VÀ SỰ CHUYỂN ĐỔI PHÁT TRIỂN VỚI BỀN VỮNG",
                  date: "04.11.2021",
                  author: "Công Ty TNHH KTCN FIGENZ",
                  description:
                    "Chuck Taylor Classic là dòng giày truyền thống của Converse được giữ đúng với nguyên bản ban đầu. Từ lúc xuất hiện cho đến nay dòng Classic vẫn nhận được sự quan tâm của nhiều khách hàng trên thế...",
                },
                {
                  image:
                    "https://bizweb.dktcdn.net/thumb/grande/100/493/370/articles/fila-ray-white-pink-fs1sia3063x-401996e480134a9b82dd56e0012283e8.jpg?v=1697785029287",
                  title: "CONVERSE X KIM JONES",
                  date: "04.11.2021",
                  author: "Công Ty TNHH KTCN FIGENZ",
                  description:
                    "Chuck Taylor Classic là dòng giày truyền thống của Converse được giữ đúng với nguyên bản ban đầu. Từ lúc xuất hiện cho đến nay dòng Classic vẫn nhận được sự quan tâm của nhiều khách hàng trên thế...",
                },
                // Thêm các bài viết khác tại đây
              ].map((post, index) => (
                <div className="col-md-6 blog-post" key={index}>
                  <div className="card" style={{ marginBottom: "30%" }}>
                    <img
                      alt={post.title}
                      height="400"
                      src={post.image}
                      width="600"
                    />
                    <div className="card-body" style={{ bottom: "-125px" }}>
                      <h5>{post.title}</h5>
                      <p>
                        <i className="fas fa-calendar-alt"></i> {post.date}{" "}
                        <i className="fas fa-building"></i> {post.author}
                      </p>
                      <p>{post.description}</p>
                    </div>
                  </div>
                </div>
              ))}
            </div>

            {/* Phân trang */}
            <nav aria-label="Page navigation example">
              <ul className="pagination">
                {[1, 2, 3].map((page) => (
                  <li className="page-item" key={page}>
                    <a className="page-link" href="#">
                      {page}
                    </a>
                  </li>
                ))}
              </ul>
            </nav>
          </div>

          {/* Sidebar */}
          <div className="col-md-4">
            <div className="sidebar">
              <h5 className="text-danger">
                <i className="fas fa-exclamation-circle"></i> ĐỪNG BỎ LỠ.
              </h5>
              <div className="list-group">
                {[
                  {
                    image:
                      "https://bizweb.dktcdn.net/thumb/grande/100/493/370/articles/chuck-70-beat-the-world-ig-2-7df-abea22e0824c4c09a6fd5ed757bd85f7.jpg?v=1697785028300",
                    title:
                      "CONVERSE RENEW CRATER VÀ SỰ CHUYỂN ĐỔI PHÁT TRIỂN VỚI BỀN VỮNG",
                    date: "04.11.2021",
                    author: "Công Ty TNHH KTCN FIGENZ",
                  },
                  // Thêm các mục khác tại đây
                ].map((item, index) => (
                  <div className="container mt-3" key={index}>
                    <div className="news-item">
                      <div className="position-relative">
                        <img
                          alt={item.title}
                          height="70"
                          src={item.image}
                          width="70"
                        />
                        <div className="number">{index + 1}</div>
                      </div>
                      <div className="news-content">
                        <h5>{item.title}</h5>
                        <div className="meta">
                          <div className="date">
                            <i className="fas fa-calendar-alt"></i> {item.date}
                          </div>
                          <div className="author">
                            <i className="fas fa-building"></i> {item.author}
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                ))}
              </div>

              <h5 className="text-warning mt-4">
                <i className="fas fa-list"></i> DANH MỤC BLOG
              </h5>
              <div className="list-group">
                {[
                  "Trang chủ",
                  "Converse All",
                  "Classic",
                  "Accessories - Phụ trang",
                  "Tin tức",
                  "Liên hệ",
                ].map((item, index) => (
                  <div className="list-group-item" key={index}>
                    <a href="#">{item}</a>
                  </div>
                ))}
              </div>

              <h5 className="text-danger mt-4">
                <i className="fas fa-question-circle"></i> BẠN CẦN TƯ VẤN?
              </h5>
              <div className="ad">
                <img
                  alt="Ad for exclusive shoes with 50% discount"
                  height="250"
                  src="https://bizweb.dktcdn.net/thumb/large/100/493/370/themes/940719/assets/shop_modal_contact_image.png?1713464283843"
                  width="300"
                />
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Blog;
