$(() => {
  // 여행지 번호
  var tour_num = $("#tour_num").val();

  // 여행지 위치
  var tour_lati = $("#tour_lati").val();
  var tour_longi = $("#tour_longi").val();

  console.log(tour_num + " / " + tour_lati + " / " + tour_longi);
  getTourGallery(tour_num);
  getTourAccommodations(tour_lati, tour_longi);
});

// 위치에 따른 주변 여행지 API 데이터
const getTourAccommodations = (tour_lati, tour_longi) => {
  var apiURI =
    "https://apis.data.go.kr/B551011/KorService1/locationBasedList1?numOfRows=7&pageNo=1&MobileOS=ETC&MobileApp=Touro&_type=json" +
    "&contentTypeId=" +
    cate +
    "&mapX=" +
    tour_lati +
    "&mapY=" +
    tour_longi +
    "&radius=20000" +
    "&serviceKey=diSO6Q1Dc2ausHMWxuu9mhBEQyHMJv4oUAFlWSytUCA9H9LU1sAfXLD6bApMVI91ZCgI86BJreDfAFF1aGa70w%3D%3D";
  console.log(apiURI);
  /*
  $.ajax({
    url: apiURI,
    dataType: "json",
    type: "GET",
    async: "false",
    success: function (result) {
      //var accData = result.response.body.items;
      //console.log(accData);
    },
  });
  */
};

// 여행지 번호에 따른 여행지 API 이미지
const getTourGallery = (tour_num) => {
  var apiURI =
    "https://apis.data.go.kr/B551011/KorService1/detailImage1?MobileOS=ETC&MobileApp=%20Touro&_type=json" +
    "&contentId=" +
    tour_num +
    "&subImageYN=Y&numOfRows=7&pageNo=1&serviceKey=diSO6Q1Dc2ausHMWxuu9mhBEQyHMJv4oUAFlWSytUCA9H9LU1sAfXLD6bApMVI91ZCgI86BJreDfAFF1aGa70w%3D%3D";
  console.log(apiURI);
};
