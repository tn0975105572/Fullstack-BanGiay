import React from "react";
import Header from "../components/Header";
import Footer from "../components/Footer.jsx";
import HeroBanner from "../components/Hero Banner.jsx";
import ProductSection from "../components/ProductSection.jsx";
import Services from "../components/Services.jsx";
import { Outlet } from "react-router-dom";
import "bootstrap/dist/css/bootstrap.min.css";
import "bootstrap/dist/js/bootstrap.bundle.min";

const Menu = ({ cartItems }) => {
  return (
    <div style={{ backgroundColor: "white" }}>
      <Header cartItems={cartItems} />

      <HeroBanner />
      <ProductSection />
      <Services />
      <Outlet />
      <Footer />
    </div>
  );
};

export default Menu;
