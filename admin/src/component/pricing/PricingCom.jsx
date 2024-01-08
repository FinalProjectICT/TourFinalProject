import React from "react";
import PricingCard from "../cards/PricingCard";

function PricingCom() {
  return (
    <>
      <div className="row">
        <div className="col-lg-6 offset-lg-3 col-md-8 offset-md-2 col-12">
        </div>
      </div>
      <div className="row">
        <div class="container-fluid">
          <div class="row">
            <div class="col-12">
              <div class="row">
                <div class="col-sm-12">
                  <div class="card">
                    <div class="card-header">
                      <h5>상세 페이지</h5>
                    </div>
                    <div class="card-body">
                      <form class="theme-form mega-form">
                        <div class="mb-3">
                          <label class="form-label-title">제목</label>
                          <input
                            class="form-control"
                            type="text"
                            placeholder="게시글 제목"
                          />
                        </div>

                        <br />

                        <div class="mb-3">
                          <input
                            class="form-control"
                            type="text"
                            placeholder="작성자"
                          />
                        </div>

                        <br />

                        <div className="row">
                          <div className="col-md-12">
                            <div className="mb-3">
                              <label className="form-label-title ">
                                여행지 설명
                              </label>
                              <input
                                style={{ height:'200px' }}
                                class="form-control"
                                type="text"
                                placeholder="여행지 설명"
                              />
                            </div>
                          </div>
                        </div>

                        <br />

                        <div className="row">
                          <label className="form-label-title ">
                            여행지 이미지
                          </label>
                          <div className="col-md-6">
                            <div className="mb-3">
                              <input
                                style={{ height:'400px' }}
                                type="text"
                                className="form-control"
                              />
                            </div>
                          </div>

                          <div className="col-md-6">
                            <div className="mb-3">
                              <input
                                style={{ height:'192px' }}
                                type="text"
                                className="form-control"
                              />
                            </div>
                            <div className="mb-3">
                              <input
                                style={{ height:'192px' }}
                                type="text"
                                className="form-control"
                              />
                            </div>
                          </div>
                        </div>
                      </form>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </>
  );
}

export default PricingCom;
