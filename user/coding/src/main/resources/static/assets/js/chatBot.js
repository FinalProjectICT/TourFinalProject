$(() => {
  // 로그인 값 저장
  let sessionId = "";
  if ($("#loggedInUser").val() != null && $("#loggedInUser").val() != "") {
    sessionId = $("#loggedInUser").val();
  }

  // 버튼 동작
  console.log($("#chatContainer").css("display"));
  $("#chatButton").on("click", () => {
    $("#chatContainer").toggle();
    if ($("#chatContainer").css("display") != "none") {
      $("#chatButton").css("right", "360px");
      $("#chatButton").text("");
      $("#chatButton").html(`<i class="fas fa-times"></i>`);
    } else {
      $("#chatButton").css("right", "-20px");
      $("#chatButton").html(`<i class="far fa-question-circle"></i>`);
    }
  });

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
        async: false,
        timeout: 5000,
        contentType: "application/json; charset=utf-8",
        data: JSON.stringify(chatJson),
        success: function (respons) {
          var res = JSON.parse(JSON.stringify(respons));
          console.log(res.botStr);

          $("#chatContent").append(
            `<div class="testimonial user">
              <div class="row g-0 justify-content-md-start mb-2">
                <div class="left-part col-ms-4 col-xl-1">
                  <img src="../assets/images/profile/default_profile.png" class="img-fluid blur-up lazyloaded bg-img" alt="">
                </div>
                <div class="right-part col-lg-auto">` +
              res.botStr +
              `</div></div>
              <div class="card mb-3 style="width: 10px">
                <div class="card-body">
                  <p>` +
              res.botAct +
              `</p></div></div></div>`
          );
        },
        error: function (err) {
          console.log(err);
        },
      });

      //응답 전까지 엔터 동작 막기

      $("#chatInput").val("");
    }
  });
});
