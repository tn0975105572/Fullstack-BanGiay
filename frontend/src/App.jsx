import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import Home from "./components/Home";
import SanPham from "./components/SanPham";
import PhuKien from "./components/PhuKien";
import GioHang from "./components/CTDH";
import TinTuc from "./components/TinTuc";
import LienHe from "./components/LienHe";
import CTSP from "./components/CTSP";
import Login from "./pages/Login";
import SignUp from "./pages/SignUp";
import Menu from "./pages/Menu";

function App() {
  return (
    <Router>
      <Routes>
        <Route path="/" element={<Menu />}>
          <Route index element={<Home />} />
          <Route path="/sanpham" element={<SanPham />} />
          <Route path="/phukien" element={<PhuKien />} />
          <Route path="/giohang" element={<GioHang />} />
          <Route path="/tintuc" element={<TinTuc />} />
          <Route path="/lienhe" element={<LienHe />} />
          <Route path="/ctsp/:id" element={<CTSP />} />
        </Route>
        <Route path="/login" element={<Login />} />
        <Route path="/signup" element={<SignUp />} />
      </Routes>
    </Router>
  );
}

export default App;
