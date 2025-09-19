const products = [
  {
    img: "https://theme.hstatic.net/1000361048/1000460005/14/block_home_category1.jpg?v=1200",
    label: "FLASH DEAL",
    title: "FULL FORCE LOW CHỈ",
    price: "1590K",
  },
  {
    img: "https://theme.hstatic.net/1000361048/1000460005/14/block_home_category2.jpg?v=1200",
    label: "GIÁ TỐT",
    title: "MERCH OSS GIẢM CÒN",
    price: "266K",
  },
  {
    img: "https://theme.hstatic.net/1000361048/1000460005/14/block_home_category3.jpg?v=1200",
    label: "TRADITION SINCE 1774",
    title: "",
    price: "",
  },
];

const ProductSection = () => {
  return (
    <div className="container-fluid">
      <div className="row">
        {products.map((product, index) => (
          <div className="col-md-4" key={index}>
            <div className="product-card1">
              <img
                src={product.img}
                alt={product.title}
                height="600"
                width="400"
              />
              <div className="product-info">
                <p style={{ fontSize: "15px" }}>{product.label}</p>
                <h2>{product.title}</h2>
                <div className="price-tag">{product.price}</div>
              </div>
            </div>
          </div>
        ))}
      </div>
    </div>
  );
};

export default ProductSection;
