//이전 버튼 이벤트
//5개의 인자값을 가지고 이동
//무조건 이전페이지 범위의 가장 앞 페이지로 이동
function fn_prev(page, range, rangeSize, listSize, tour_cate_code, keyword) {
  var page = (range - 2) * rangeSize + 1;
  var range = range - 1;

  var url = "/touro/tour";
  url = url + "?page=" + page;
  url = url + "&range=" + range;
  url = url + "&listSize=" + listSize;
  url = url + "&tour_cate_code=" + tour_cate_code;
  url = url + "&keyword=" + keyword;
  location.href = url;
}

//페이지 번호 클릭
function fn_pagination(
  page,
  range,
  rangeSize,
  listSize,
  tour_cate_code,
  keyword
) {
  var url = "/touro/tour";
  url = url + "?page=" + page;
  url = url + "&range=" + range;
  url = url + "&listSize=" + listSize;
  url = url + "&tour_cate_code=" + tour_cate_code;
  url = url + "&keyword=" + keyword;

  location.href = url;
}

//다음 버튼 이벤트
//다음 페이지 범위의 가장 앞 페이지로 이동
function fn_next(page, range, rangeSize, listSize, tour_cate_code, keyword) {
  var page = parseInt(range * rangeSize) + 1;
  var range = parseInt(range) + 1;
  var url = "/touro/tour";
  url = url + "?page=" + page;
  url = url + "&range=" + range;
  url = url + "&listSize=" + listSize;
  url = url + "&tour_cate_code=" + tour_cate_code;
  url = url + "&keyword=" + keyword;
  location.href = url;
}

// 검색
$(document).on("click", "#btnSearch", function (e) {
  e.preventDefault();
  var url = "/touro/tour";
  url = url + "?tour_cate_code=" + $("#tour_cate_code").val();
  url = url + "&keyword=" + $("#keyword").val();
  location.href = url;
});
