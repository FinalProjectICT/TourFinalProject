const webSocket = new WebSocket("ws://118.217.203.50:8764");

webSocket.onmessage = async (event) => {
  anser = event.data;
  ansdata = JSON.parse(anser);

  divBotAns(ansdata);
  setTimeout(divBotAct(ansdata), 3000);
};

webSocket.onopen = () => {
  console.log("소캣 연결");
};

webSocket.onclose = () => {
  console.log("소캣 종료");
};

$(() => {
  // 소캣 동작

  let sessionId = "";
  let profileImg = "";

  // 사용자 로그인 값 여부로 프로필 이미지 가져오기
  if ($("#loggedInUser").val() != null && $("#loggedInUser").val() != "") {
    sessionId = $("#loggedInUser").val();

    $.ajax({
      url: "/touro/getprofileImg",
      type: "POST",
      data: { user_id: sessionId },
      success: function (respons) {
        console.log(respons);
        profileImg = "../assets/images/profile/" + respons;
      },
      error: function (err) {
        console.log(err);
      },
    });

    // 로그인 값이 없다면 기본 이미지 설정
  } else profileImg = "../assets/images/profile/default_profile.png";

  // 투어로 메인페이지 검색창 동작
  $("#mainInput").on("keyup", (e) => {
    if (e.key == "Enter" && $("#mainInput").val() != "") {
      var userText = $("#mainInput").val();

      if ($("#chatContainer").css("display") != "block") {
        openChatBot();
      }

      // 입력 내용을 보여주고 소캣으로 넘기는 작업
      divUserQus(userText, profileImg, sessionId);

      // 입력창 초기화
      $("#mainInput").val("");
    }
  });

  // 메인 - 이미지 버튼
  $("#btnCb").on("click", () => {
    var userText = $("#mainInput").val();
    if (userText != null && userText != "") {
      if ($("#chatContainer").css("display") == "none") {
        openChatBot();
      }
      divUserQus(userText, profileImg, sessionId);
      $("#mainInput").val("");
    }
  });

  // 열림 버튼 동작
  $("#chatButton").on("click", openChatBot);
  // 닫기 버튼 동작
  $("button.btn-close.forCb").on("click", openChatBot);

  // 챗봇 입력 동작
  $("#chatInput").on("keyup", (e) => {
    if (e.key == "Enter" && $("#chatInput").val() != "") {
      var userText = $("#chatInput").val();

      // 입력 내용을 보여주고 소캣으로 넘기는 작업
      divUserQus(userText, profileImg, sessionId);

      // 입력창 초기화
      $("#chatInput").val("");
    }
  });
});

// 챗봇 응답 양식
function divBotAns(ansdata) {
  if (ansdata.act == "mypage/" && $("#loggedInUser").val() == "") {
    $("#chatContent").append(
      `<div class="testimonial botq">
        <div class="row g-0 justify-content-md-start mb-3">
          <div class="left-part col-ms-4 col-xl-2">
            <img src="../assets/images/profile/chatbot2_r.png" class="img-fluid blur-up lazyloaded bg-img" alt="">
          </div>
          <div class="right-part col-lg-auto">마이페이지 확인은 로그인이 필요합니다!</div>
        </div>
        </div>`
    );
  } else {
    $("#chatContent").append(
      `<div class="testimonial botq">
      <div class="row g-0 justify-content-md-start mb-3">
        <div class="left-part col-ms-4 col-xl-2">
          <img src="../assets/images/profile/chatbot2_r.png" class="img-fluid blur-up lazyloaded bg-img" alt="">
        </div>
        <div class="right-part col-lg-auto">` +
        ansdata.say +
        `</div>
      </div>
      </div>`
    );
  }
}

function divBotAct(ansdata) {
  if (ansdata.act == "tour/") {
    $("#chatContent").append(
      `<div class="testimonial bota">
      <div class="card mb-3 style="width: 10px">
        <div class="card-body"><a href="/touro/tour" class="navi">여행지 리스트로 이동</a></div></div></div>`
    );
  } else if (ansdata.act == "touromate/") {
    $("#chatContent").append(
      `<div class="testimonial bota">
    <div class="card mb-3 style="width: 10px">
      <div class="card-body"><a href="/touromate/touromate_list" class="navi">여행 친구 찾기 이동</a></div></div></div>`
    );
  } else if (ansdata.act == "touroview/") {
    $("#chatContent").append(
      `<div class="testimonial bota">
    <div class="card mb-3 style="width: 10px">
      <div class="card-body"><a href="/touroview/touroview_list" class="navi">여행 후기로 이동</a></div></div></div>`
    );
  } else if (ansdata.act == "image/") {
    $("#chatContent").append(
      `<div class="testimonial bota">
    <div class="card mb-3 style="width: 10px">
      <div class="card-body"><a data-bs-toggle="modal" data-bs-target="#image-change" href="#" data-touro-mate-num="" class="navi">이미지 변환 열기</a></div></div></div>`
    );
  } else if (ansdata.act == "mypage/") {
    if ($("#loggedInUser").val() != null && $("#loggedInUser").val() != "") {
      $("#chatContent").append(
        `<div class="testimonial bota">
    <div class="card mb-3 style="width: 10px">
      <div class="card-body"><a href="/user/mypage" class="navi">마이페이지로 이동</a></div></div></div>`
      );
    } else {
      $("#chatContent").append(
        `<div class="testimonial bota">
    <div class="card mb-3 style="width: 10px">
      <div class="card-body"><a href="/user/login" class="navi">로그인 하러가기</a></div></div></div>`
      );
    }
  } else {
  }

  $("#chatContent").scrollTop($("#chatContent")[0].scrollHeight);
}

const openChatBot = () => {
  $("#chatContainer").toggle();
  if ($("#chatContainer").css("display") != "none") {
    $("#chatButton").hide;
    $("#chatButton").text("");
    //$("#chatButton").html(`<i class="fas fa-times"></i>`);
  } else {
    $("#chatButton").css("right", "10px");
    $("#chatButton").html("");
  }
};

const divUserQus = (userText, profileImg, sessionId) => {
  $("#chatContent").append(
    `<div class="testimonial user">
      <div class="row g-0 justify-content-md-end mb-3">
        <div class="left-part col-lg-auto col-xl-6">` +
      userText +
      `</div>
        <div class="right-part col-ms-4 col-xl-2"><img src="` +
      profileImg +
      `" class="img-fluid blur-up lazyloaded bg-img" alt=""/> 
      </div></div></div>`
  );

  var chatJson = {
    userStr: userText,
    userId: sessionId,
  };

  $.ajax({
    url: "/touro/chatBot",
    type: "POST",
    dataType: "JSON",
    timeout: 5000,
    contentType: "application/json; charset=utf-8",
    data: JSON.stringify(chatJson),
    success: function (respons) {
      webSocket.send(JSON.stringify(respons));
    },
    error: function (err) {
      console.log(err);
    },
  });
};

// 여행지
// 분류, 검색어, 지역, 별점 등 (page= range= listSize= tour_cate_code= keyword= Locs= Star=)
const tourProcess = () => {
  $.ajax({});
};

// 친구 찾기
//

// 여행 후기
//

// 문의 확인?
//

// 마이 페이지
//
