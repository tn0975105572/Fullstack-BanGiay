const HeroBanner = () => {
  const images = [
    "src/assets/slider/slider_1.jpg",
    "src/assets/slider/slider_2.jpg",
    "src/assets/slider/slider_3.jpg",
    "src/assets/slider/slider_4.jpg",
    "src/assets/slider/slider_5.jpg",
    "src/assets/slider/slider_6.jpg",
  ];

  return (
    <div id="hero-carousel" className="carousel slide" data-bs-ride="carousel">
      <div className="carousel-indicators">
        {images.map((_, index) => (
          <button
            key={index}
            type="button"
            data-bs-target="#hero-carousel"
            data-bs-slide-to={index}
            className={index === 0 ? "active" : ""}
            aria-label={`Slide ${index + 1}`}
          ></button>
        ))}
      </div>

      <div className="carousel-inner">
        {images.map((image, index) => (
          <div
            key={index}
            className={`carousel-item ${index === 0 ? "active" : ""} c-item`}
          >
            <img
              src={image}
              className="d-block w-100 c-img"
              alt={`Slide ${index + 1}`}
            />
            <div className="carousel-caption top-0 mt-4">
              <p className="mt-5 fs-3 text-uppercase">
                Discover the hidden world
              </p>
              <h1 className="display-1 fw-bolder text-capitalize">
                The Aurora Tours
              </h1>
              <button className="btn btn-primary px-4 py-2 fs-5 mt-5">
                Book a tour
              </button>
            </div>
          </div>
        ))}
      </div>

      <button
        className="carousel-control-prev"
        type="button"
        data-bs-target="#hero-carousel"
        data-bs-slide="prev"
      >
        <span className="carousel-control-prev-icon" aria-hidden="true"></span>
        <span className="visually-hidden">Previous</span>
      </button>
      <button
        className="carousel-control-next"
        type="button"
        data-bs-target="#hero-carousel"
        data-bs-slide="next"
      >
        <span className="carousel-control-next-icon" aria-hidden="true"></span>
        <span className="visually-hidden">Next</span>
      </button>
    </div>
  );
};

export default HeroBanner;
