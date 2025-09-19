import React from "react";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import {
  faTruck,
  faShieldAlt,
  faHeadset,
  faDollarSign,
} from "@fortawesome/free-solid-svg-icons";
import "../styles/main.css";
const Services = () => {
  return (
    <div className="container text-center my-5">
      <div className="row">
        {/* Dịch vụ 1: Giao hàng nhanh */}
        <div className="col-md-3">
          <div className="card2 border-0 shadow-sm">
            <div className="card-body">
              <FontAwesomeIcon icon={faTruck} className="fa-3x text-danger" />
              <h5 className="card-title mt-3">GIAO HÀNG NHANH</h5>
              <p className="card-text">Cho tất cả đơn hàng</p>
            </div>
          </div>
        </div>

        {/* Dịch vụ 2: Sản phẩm an toàn */}
        <div className="col-md-3">
          <div className="card2 border-0 shadow-sm">
            <div className="card-body">
              <FontAwesomeIcon
                icon={faShieldAlt}
                className="fa-3x text-danger"
              />
              <h5 className="card-title mt-3">SẢN PHẨM AN TOÀN</h5>
              <p className="card-text">Cam kết chất lượng</p>
            </div>
          </div>
        </div>

        {/* Dịch vụ 3: Hỗ trợ 24/7 */}
        <div className="col-md-3">
          <div className="card2 border-0 shadow-sm">
            <div className="card-body">
              <FontAwesomeIcon icon={faHeadset} className="fa-3x text-danger" />
              <h5 className="card-title mt-3">HỖ TRỢ 24/7</h5>
              <p className="card-text">Tất cả ngày trong tuần</p>
            </div>
          </div>
        </div>

        {/* Dịch vụ 4: Hoàn lại tiền */}
        <div className="col-md-3">
          <div className="card2 border-0 shadow-sm">
            <div className="card-body">
              <FontAwesomeIcon
                icon={faDollarSign}
                className="fa-3x text-danger"
              />
              <h5 className="card-title mt-3">HOÀN LẠI TIỀN</h5>
              <p className="card-text">Nếu không hài lòng</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Services;
