import React, { useState } from "react";
import HistoryCard from "../cards/HistoryCard";
import sales from "../../assets/img/sales-graph-1.svg";
import visit from "../../assets/img/sales-graph-2.svg";
import click from "../../assets/img/sales-graph-3.svg";
import inspirations from "../../assets/img/sales-graph-4.svg";
import axios from "axios";

import {
  myChart_eight,
  myChart_nine,
  myChart_seven,
  myChart_ten,
} from "../../data/chartSettings";

function History() {

  const baseUrl = "http://localhost:8080";
  const [userCount, setUserCount] = useState(0);
  const [touroviewCount, setTouroviewCount] = useState(0);
  const [reviewCount, setReveiwCount] = useState(0);
  const [receiptReviewCount, setReceiptReveiwCount] = useState(0);

  // 회원 수 가져오기
  axios.get(baseUrl + '/dashboard/userCount').then((result) => {
    // console.log(result)
    setUserCount(result.data);
  })
  // 여행친구찾기 게시글 수 가져오기
  axios.get(baseUrl + '/dashboard/touroviewCount').then((result) => {
    // console.log(result)
    setTouroviewCount(result.data);
  })
  // 후기 게시글 수 가져오기
  axios.get(baseUrl + '/dashboard/reviewCount').then((result) => {
    // console.log(result)
    setReveiwCount(result.data);
  })
  // 영수증 리뷰 수 가져오기
  axios.get(baseUrl + '/dashboard/receiptReviewCount').then((result) => {
    // console.log(result)
    setReceiptReveiwCount(result.data);
  })


  return (
    <div className="row crancy-gap-30">
      <HistoryCard
        title="회원 수"
        count={userCount}
        img={sales}
        color="#0A82FD"
        chartData={myChart_seven}
        gradientColor={["rgba(10, 130, 253, 0.18) ", "rgba(10, 130, 253, 0) "]}
      />
      <HistoryCard
        title="여행친구 찾기"
        count={touroviewCount}
        img={visit}
        color="#EF5DA8"
        chartData={myChart_eight}
        gradientColor={["rgba(239, 93, 168, 0.40)", "rgba(239, 93, 168, 0.00)"]}
      />
      <HistoryCard
        title="여행 후기"
        count={reviewCount}
        img={click}
        color="#27AE60"
        chartData={myChart_nine}
        gradientColor={["rgba(89, 190, 89, 0.40)", "rgba(89, 190, 89, 0.00)"]}
      />
      <HistoryCard
        title="영수증 리뷰 수"
        count={receiptReviewCount}
        img={inspirations}
        color="#9B51E0"
        chartData={myChart_ten}
        gradientColor={["rgba(155, 81, 224, 0.40)", "rgba(155, 81, 224, 0.00)"]}
      />
    </div>
  );
}

export default History;
