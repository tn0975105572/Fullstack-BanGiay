import { useState } from "react";
import axios from "axios";
import { jwtDecode } from "jwt-decode";
import { useNavigate } from "react-router-dom";
import "../styles/Login.css";
const Login = () => {
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const navigate = useNavigate();

  const handleLogin = async (e) => {
    e.preventDefault();
    try {
      const response = await axios.post(
        "http://localhost:3000/api/taikhoan/login",
        {
          Email: email,
          MatKhau: password,
        },
        {
          headers: { "Content-Type": "application/json" },
        }
      );

      if (response.data && response.data.token) {
        sessionStorage.setItem("token", response.data.token);

        const decodedToken = jwtDecode(response.data.token);
        console.log("Decoded Token:", decodedToken);

        if (decodedToken.Role === "admin") {
          if (window.confirm("Vào trang admin?")) {
            navigate("/admin");
          } else {
            navigate("/menu");
          }
        } else {
          alert("Welcome User");
          navigate("/menu");
        }
      }
    } catch (error) {
      if (error.response && error.response.status === 400) {
        alert("Email hoặc mật khẩu không đúng!");
      } else {
        alert("Đã xảy ra lỗi: " + error.message);
      }
    }
  };

  return (
    <section className="login-container">
      <div className="form-box">
        <div className="form-value">
          <form onSubmit={handleLogin}>
            <h2>Login</h2>
            <div className="inputbox">
              <input
                type="email"
                value={email}
                onChange={(e) => setEmail(e.target.value)}
                required
              />
              <label>Email</label>
            </div>
            <div className="inputbox">
              <input
                type="password"
                value={password}
                onChange={(e) => setPassword(e.target.value)}
                required
              />
              <label>Password</label>
            </div>
            <div className="forget">
              <label>
                <input type="checkbox" /> Remember Me
                <a href="#"> Forget Password</a>
              </label>
            </div>
            <button className="btn123" type="submit">
              Log in
            </button>
            <div className="register">
              <p>
                Don't have an account? <a href="/SignUp">Register</a>
              </p>
            </div>
          </form>
        </div>
      </div>
    </section>
  );
};

export default Login;
