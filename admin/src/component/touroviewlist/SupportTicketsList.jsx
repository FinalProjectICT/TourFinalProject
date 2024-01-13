import React, { useEffect,useState } from "react";
import SelectInput from "../form/SelectInput";
import { ticketsList } from "../../data/ticketsList";
import { Link } from "react-router-dom";
import { useNavigate } from "react-router-dom";
import axios from "axios";

function SupportTicketsList() {
  const [page, setPage] = useState(1);
  const [show, setShow] = useState(25);

  const current = page * show;
  const previous = current - show;

  const [touroviews, setTouroviews] = useState([]);
  const [inputValue, setInputValue] = useState("");

  const baseUrl = "http://localhost:8080";
  const navigate = useNavigate();
  
  const detailTouroviewNum = (e,touroview_num) => {
    e.preventDefault(); // a 태그의 기본 기능 막기
    axios.get(`${baseUrl}/tour-list/touroviewNum/${touroview_num}`)
    .then((result) => {
      const tourDetails = result.data;
    })
    .catch((error) => {
      console.error('에러 발생:', error);
    }); 
    navigate(`/pricing/${touroview_num}`);
  }



  useEffect(() => {
    axios.get(baseUrl+"/touroview-list/touroviewList").then((result) => {
      const touroviews = result.data;
      console.log(touroviews);
      setTouroviews([...touroviews]);
      console.log(touroviews);
    });
  }, []);

  return (
    <div className="container-fluid p-0">
      {/* <div className="col-xxl-9 col-lg-8 col-12"> */}
        <div className="crancy-table crancy-table__support mg-top-30">
          <div className="crancy-table__heading">
            <h3 className="crancy-table__title mb-0">Touroview</h3>

            <div className="crancy-table__right">
              <form className="crancy-header__form-inner" id="dataTables_filter">
                <button className="search-btn" type="submit">
                  <svg
                    width="18"
                    height="18"
                    viewBox="0 0 18 18"
                    fill="none"
                    xmlns="http://www.w3.org/2000/svg"
                  >
                    <path
                      d="M11.1139 12.2238C7.4892 14.923 3.16075 13.4917 1.28129 10.8389C-0.69718 8.04734 -0.360234 4.26363 2.12465 1.87472C4.54242 -0.450394 8.3824 -0.627818 11.0414 1.42684C13.7204 3.49679 14.7525 7.69781 12.2702 11.0396C12.348 11.1227 12.4264 11.2111 12.5101 11.2955C13.9031 12.6896 15.2994 14.0804 16.6897 15.4772C17.2214 16.0115 17.0486 16.7923 16.3667 16.9724C15.9906 17.0714 15.7068 16.9066 15.4483 16.6474C14.1125 15.3058 12.7707 13.9701 11.4355 12.6278C11.3112 12.5042 11.2149 12.3527 11.1139 12.2238ZM1.69666 6.82731C1.69134 9.66011 3.97486 11.9547 6.81531 11.9713C9.66971 11.9879 11.9732 9.69998 11.9785 6.84392C11.9838 4.00115 9.70825 1.71258 6.86515 1.70062C4.01275 1.68866 1.70198 3.97989 1.69666 6.82731Z"
                      fill="#0A82FD"
                    ></path>
                  </svg>
                </button>
                <input
                  id="ticketinfo"
                  type="search"
                  placeholder="Search"
                  aria-controls="crancy-table__main"
                />
              </form>
              <SelectInput
                options={["Last 7 days", "Last 15 days", "Last 30 days"]}
              />
            </div>
          </div>
          <div className="tab-content" id="myTabContent">
            <div
              className="tab-pane fade show active"
              id="table_1"
              role="tabpanel"
              aria-labelledby="table_1"
            >
              {/* <!-- crancy Table --> */}
              <table
                id="crancy-table__main"
                className="crancy-table__main crancy-table__ticket"
              >
                {/* <!-- crancy Table Head --> */}
                {/* 페이지에 맞게 수정하기  */}
                <thead className="crancy-table__head">
                  <tr>
                    <th className="crancy-tab le__column-1 crancy-table__h1">
                      회원 ID
                    </th>
                    <th className="crancy-tab le__column-1 crancy-table__h1">
                      여행지
                    </th>
                    <th className="crancy-table__column-2 crancy-table__h2">
                      제목
                    </th>
                    <th className="crancy-table__column-3 crancy-table__h3">
                      내용
                    </th>
                    <th className="crancy-table__column-4 crancy-table__h4">
                      등록 및 수정 날짜
                    </th>
                    <th className="crancy-table__column-5 crancy-table__h5">
                      좋아요 수
                    </th>
                    <th className="crancy-table__column-6 crancy-table__h6">
                      신고횟수
                    </th>
                  </tr>
                </thead>
                {/* <!-- crancy Table Body --> */}
                <tbody className="crancy-table__body">
                  {touroviews?.map((touroview) => (
                        <tr key={touroview.touroview_num}>
                          <td className="crancy-table__column-1 crancy-table__data-1" onClick={(e) => detailTouroviewNum(e, touroview.touroview_num)}>
                            <div className="crancy-table__product--id">
                              <p className="crany-table__product--number">
                                <a to="/ticket-details">{touroview.user_id?.toString()}</a>
                              </p>
                            </div>
                          </td>
                          <td className="crancy-table__column-1 crancy-table__data-1" onClick={(e) => detailTouroviewNum(e, touroview.touroview_num)}>
                            <div className="crancy-table__product--id">
                              <p className="crany-table__product--number">
                                <a to="/ticket-details">{touroview.tour_name?.toString()}</a>
                              </p>
                            </div>
                          </td>
                          <td className="crancy-table__column-2 crancy-table__data-2" onClick={(e) => detailTouroviewNum(e, touroview.touroview_num)}>
                            <h5 className="crancy-table__inner--title">
                              <a to="/ticket-details">{touroview.touroview_title?.toString()}</a>
                            </h5>
                          </td>
                          <td className="crancy-table__column-3 crancy-table__data-3" onClick={(e) => detailTouroviewNum(e, touroview.touroview_num)}>
                            <p className="crancy-table__text crancy-table__time">
                              {touroview.touroview_content?.toString()}
                            </p>
                          </td>
                          <td className="crancy-table__column-4 crancy-table__data-4" onClick={(e) => detailTouroviewNum(e, touroview.touroview_num)}>
                            <h5 className="crancy-table__inner--title">
                            {touroview.touroview_update ? `${touroview.touroview_update}` : ` ${touroview.touroview_regdate}`}
                            </h5>
                          </td>
                          <td className="crancy-table__column-5 crancy-table__data-5" onClick={(e) => detailTouroviewNum(e, touroview.touroview_num)}>
                            <div
                              className={`crancy-table__status ${
                                touroview.status === "Cancel"
                                  ? "crancy-table__status--cancel"
                                  : touroview.status === "Pending"
                                  ? "crancy-table__status--pending"
                                  : ""
                              }`}
                            >
                              {touroview.like_count}
                            </div>
                          </td>
                          <td className="crancy-table__column-6 crancy-table__data-6">
                            <div className="crancy-flex-between">
                              <h5 className="crancy-table__status crancy-table__status--cancel">{touroview.report_count}</h5>
                              <div className="crancy-chatbox__toggle">
                                <svg
                                  width="6"
                                  height="25"
                                  viewBox="0 0 4 16"
                                  fill="none"
                                  xmlns="http://www.w3.org/2000/svg"
                                >
                                  <circle
                                    r="2"
                                    transform="matrix(1 0 0 -1 2 14)"
                                  ></circle>
                                  <circle
                                    r="2"
                                    transform="matrix(1 0 0 -1 2 8)"
                                  ></circle>
                                  <circle
                                    r="2"
                                    transform="matrix(1 0 0 -1 2 2)"
                                  ></circle>
                                </svg>
                              </div>
                            </div>
                          </td>
                        </tr>
                ))}
                </tbody>
                {/* <!-- End crancy Table Body --> */}
              </table>
              {/* <!-- End crancy Table --> */}
              <div className="crancy-table-bottom">
                <div id="crancy-table__main_filter" className="dataTables_filter">
                  <label>
                    Search:
                    <input
                      type="search"
                      className="form-control form-control-sm"
                      placeholder=""
                      aria-controls="crancy-table__main"
                    />
                  </label>
                </div>
                <div className="dataTables_length" id="crancy-table__main_length">
                  <label>
                    Show result:
                    <select
                      name="crancy-table__main_length"
                      aria-controls="crancy-table__main"
                      className="form-select form-select-sm"
                      onChange={(e) => setShow(e.target.value)}
                      defaultValue={25}
                    >
                      <option value="4">4</option>
                      <option value="10">10</option>
                      <option value="25">25</option>
                      <option value="50">50</option>
                    </select>
                  </label>
                </div>
                <div
                  className="dataTables_paginate paging_simple_numbers"
                  id="crancy-table__main_paginate"
                >
                  <ul className="pagination">
                    <li
                      className={`paginate_button page-item previous ${
                        page === 1 ? "disabled" : ""
                      }`}
                      id="crancy-table__main_previous"
                      onClick={() => page > 1 && setPage(page - 1)}
                    >
                      <a
                        aria-controls="crancy-table__main"
                        data-dt-idx="previous"
                        tabIndex="0"
                        className="page-link"
                      >
                        <i className="fas fa-angle-left"></i>
                      </a>
                    </li>
                    {Array.from(
                      Array(Math.ceil(touroviews.length / show)).keys("n")
                    ).map((id, index) => (
                      <li
                        className={`paginate_button page-item ${
                          page === index + 1 ? "active" : ""
                        }`}
                        onClick={() => setPage(index + 1)}
                        key={index + "key"}
                      >
                        <a
                          aria-controls="crancy-table__main"
                          data-dt-idx="0"
                          tabIndex="0"
                          className="page-link"
                        >
                          {index + 1}
                        </a>
                      </li>
                    ))}
                    <li
                      className={`paginate_button page-item next ${
                        page === touroviews.length % show < 1 ? "disabled" : ""
                      }`}
                      id="crancy-table__main_next"
                      onClick={() =>
                        page < Math.ceil(touroviews.length / show) &&
                        setPage(page + 1)
                      }
                    >
                      <a
                        aria-controls="crancy-table__main"
                        data-dt-idx="next"
                        tabIndex="0"
                        className="page-link"
                      >
                        <i className="fas fa-angle-right"></i>
                      </a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
      {/* </div> */}
    </div>
  );
}

export default SupportTicketsList;
