import { useState } from "react";
import axios from "axios";
import "../styles/Login.css";

const SignupPage = () => {
  const [taikhoan, setTaikhoan] = useState("");
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [confirmPassword, setConfirmPassword] = useState("");
  const [sdt, setSdt] = useState("");

  const handleSubmit = async (e) => {
    e.preventDefault();
    if (password !== confirmPassword) {
      alert("Passwords do not match!");
      return;
    }
    const data = {
      Email: email,
      TaiKhoan: taikhoan,
      MatKhau: password,
      SDT: sdt,
      NgaySinh: new Date().toISOString().split("T")[0],
      MaNhanVien: "1",
      Role: "admin",
      LoaiTaiKhoan: "nhanvien",
      MaKhachHang: null,
    };
    try {
      const response = await axios.post(
        "http://localhost:3000/api/taikhoan/create",
        data,
        { headers: { "Content-Type": "application/json" } }
      );
      alert("Chúc mừng bạn đã đăng ký thành công!");
      console.log(response.data);
    } catch (error) {
      alert("Tài Khoản đã tồn tại trong hệ thống!");
      console.error(error);
    }
  };

  return (
    <section>
      <div className="form-box" style={{ width: "700px", height: "500px" }}>
        <div className="form-value">
          <form id="loginForm" onSubmit={handleSubmit}>
            <h2>Sign Up</h2>
            <div className="inputbox">
              <ion-icon name="mail-outline"></ion-icon>
              <input
                value={taikhoan}
                onChange={(e) => setTaikhoan(e.target.value)}
                type="text"
                id="taikhoantaikhoan"
                required
              />
              <label htmlFor="taikhoan">Tài Khoản</label>
              <div className="error-message" style={{ color: "red" }}></div>
            </div>
            <div className="inputbox">
              <ion-icon name="mail-outline"></ion-icon>
              <input
                value={email}
                onChange={(e) => setEmail(e.target.value)}
                type="email"
                id="email"
                required
              />
              <label htmlFor="email">Email</label>
              <div className="error-message" style={{ color: "red" }}></div>
            </div>
            <div className="inputbox">
              <ion-icon name="lock-closed-outline"></ion-icon>
              <input
                value={password}
                onChange={(e) => setPassword(e.target.value)}
                type="password"
                id="password"
                required
              />
              <label htmlFor="password">Password</label>
              <div className="error-message" style={{ color: "red" }}></div>
            </div>
            <div className="inputbox">
              <ion-icon name="lock-closed-outline"></ion-icon>
              <input
                value={confirmPassword}
                onChange={(e) => setConfirmPassword(e.target.value)}
                type="password"
                id="Enterthepassword"
                required
              />
              <label htmlFor="Enterthepassword">Enter the password</label>
            </div>
            <div className="inputbox">
              <input
                value={sdt}
                onChange={(e) => setSdt(e.target.value)}
                type="tel"
                id="sdt"
                required
              />
              <label htmlFor="sdt">Phone number</label>
              <div className="error-message" style={{ color: "red" }}></div>
            </div>
            <div className="forget">
              <label>
                <input type="checkbox" required />
                <a href="#">Agree to our terms</a>
              </label>
            </div>
            <button className="btn123" type="submit" style={{ height: "60px" }}>
              SIGN UP
            </button>
            <div className="register">
              <p>
                <a href="/">Return to Login</a>
              </p>
            </div>
          </form>
        </div>
      </div>
    </section>
  );
};

export default SignupPage;
