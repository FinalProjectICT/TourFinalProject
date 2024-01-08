import React from "react";
import filterIcon from "../../assets/img/filter-icon2.svg";
import locationIcon from "../../assets/img/location.svg";
import SelectBox from "../form/SelectBox";

function SearchBar() {
  return (
    <div className="crancy-user-search mg-top-40">
      {/* <!-- Single Search --> */}
      <div className="crancy-user-search__single crancy-user-search__single--sform">
        <div className="crancy-header__form crancy-header__form--user ">
          <form className="crancy-header__form-inner" action="#">
            <button className="search-btn" type="submit">
              <svg
                width="20"
                height="20"
                viewBox="0 0 20 20"
                fill="none"
                xmlns="http://www.w3.org/2000/svg"
              >
                <circle
                  cx="9.78639"
                  cy="9.78614"
                  r="8.23951"
                  stroke="#9AA2B1"
                  strokeWidth="1.5"
                  strokeLinecap="round"
                  strokeLinejoin="round"
                />
                <path
                  d="M15.5176 15.9448L18.7479 19.1668"
                  stroke="#9AA2B1"
                  strokeWidth="1.5"
                  strokeLinecap="round"
                  strokeLinejoin="round"
                />
              </svg>
            </button>
            <input
              name="s"
              type="text"
              placeholder="검색하고 싶은 사용자의 이름, 이메일"
              style={{ marginLeft: "150px" }}
               className="form-control"
            />
          </form>
        </div>
      </div>
      {/* <!-- End Single Search --> */}
      {/* <!-- Single Search --> */}
      {/* <!-- End Single Search --> */}
      {/* <!-- Single Search --> */}
      <div className="crancy-user-search__single crancy-user-search__single--button">
          <a href="#" className="crancy-btn crancy-btn__user">
            Search
          </a>
        </div>
      {/* <!-- End Single Search --> */}
    </div>
  );
}

export default SearchBar;
