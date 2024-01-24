$(() => {
  const webSocket = new WebSocket("ws://175.114.130.7:8764");
  let sessionId = "";
  if ($("#loggedInUser").val() != null && $("#loggedInUser").val() != "") {
    sessionId = $("#loggedInUser").val();
  }

  webSocket.onmessage = async (event) => {
    anser = event.data;
    ansdata = JSON.parse(anser);

    divBotAns(ansdata);
    setTimeout(divBotAct(ansdata), 3000);
  };

  webSocket.onopen = () => {
    console.log("소캣 연결");
  };

  $("#mainInput").on("keyup", (e) => {
    if (e.key == "Enter" && $("#mainInput").val() != "") {
      var userText = $("#mainInput").val();
      if ($("#chatContainer").css("display") != "block") {
        openChatBot();
      }
      $("#chatContent").append(
        `<div class="testimonial user">
          <div class="row g-0 justify-content-md-end mb-2">
            <div class="left-part col-ms-4 col-xl-1">
              <img src="../assets/images/profile/default_profile.png" class="img-fluid blur-up lazyloaded bg-img" alt=""/>
            </div>
            <div class="right-part col-lg-auto">` +
          userText +
          `</div></div></div>`
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

      $("#mainInput").val("");
    }
  });

  // 버튼 동작
  $("#chatButton").on("click", openChatBot);

  $("#chatInput").on("keyup", (e) => {
    // 엔터키 입력시
    if (e.key == "Enter" && $("#chatInput").val() != "") {
      var userText = $("#chatInput").val();

      $("#chatContent").append(
        `<div class="testimonial user">
          <div class="row g-0 justify-content-md-end mb-2">
            <div class="left-part col-ms-4 col-xl-1">
              <img src="../assets/images/profile/default_profile.png" class="img-fluid blur-up lazyloaded bg-img" alt=""/>
            </div>
            <div class="right-part col-lg-auto">` +
          userText +
          `</div></div></div>`
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

      $("#chatInput").val("");
    }
  });

  webSocket.onclose = () => {
    console.log("소캣 종료");
  };
});

// 응답 양식
function divBotAns(ansdata) {
  $("#chatContent").append(
    `<div class="testimonial botq">
      <div class="row g-0 justify-content-md-start mb-2">
        <div class="left-part col-ms-4 col-xl-1">
          <img src="../assets/images/profile/default_profile.png" class="img-fluid blur-up lazyloaded bg-img" alt="">
        </div>
        <div class="right-part col-lg-auto">` +
      ansdata.say +
      `</div>
      </div>
      </div>`
  );
}

function divBotAct(ansdata) {
  if (ansdata.act == "Test") {
    $("#chatContent").append(
      `<div class="testimonial bota">
      <div class="card mb-3 style="width: 10px">
        <div class="card-body">
          <p>테스트 작업</p></div></div></div>`
    );
  } else {
    $("#chatContent").append(
      `<div class="testimonial bota">
    <div class="card mb-3 style="width: 10px">
      <div class="card-body">
        <p>` +
        ansdata.act +
        `</p></div></div></div>`
    );
  }
}

const openChatBot = () => {
  $("#chatContainer").toggle();
  if ($("#chatContainer").css("display") != "none") {
    $("#chatButton").css("right", "360px");
    $("#chatButton").text("");
    $("#chatButton").html(`<i class="fas fa-times"></i>`);
  } else {
    $("#chatButton").css("right", "-20px");
    $("#chatButton").html(`<i class="far fa-question-circle"></i>`);
  }
};
