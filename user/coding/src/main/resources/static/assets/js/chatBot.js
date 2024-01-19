$(() => {
  console.log($("#chatContainer").css("display"));
  $("#chatButton").on("click", () => {
    $("#chatContainer").toggle();
    if ($("#chatContainer").css("display") != "none") {
      $("#chatButton").css("right", "260px");
      $("#chatButton").text("");
      $("#chatButton").html(`<i class="fas fa-times"></i>`);
    } else {
      $("#chatButton").css("right", "-20px");
      $("#chatButton").html(`<i class="far fa-question-circle"></i>`);
    }
  });

  $("#chatInput").on("keyup", (e) => {
    console.log(e.key);
    if (e.key == "Enter" && $("#chatInput").val() != "") {
      console.log($("#chatInput").val());
      $("#chatContent").append(
        `<div class="testimonial user row">
          <div class="left-part col-xl-5">
            <img src="../assets/images/profile/default_profile.png" class="img-fluid blur-up lazyloaded bg-img" alt="">
          </div>
          <div class="right-part col-xl-5">` +
          $("#chatInput").val() +
          `</div></div>`
      );
      $("#chatInput").val("");
      // 응답 소켓으로 넘기고 처리 후 응답 전까지 엔터 동작 막기
    }
  });
});
