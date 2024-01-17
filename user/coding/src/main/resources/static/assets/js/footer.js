$(function () {
    // 푸터 여행지 별점 높은 6개 
    $.ajax({
        url: "/footer",
        type: "POST",
        success: function (res) {
            $('.col-4 > .place').each(function (index) {
                var tourInfo = res[index]; 
                var newElement = $(
                    `<a href="../touro/${tourInfo.tour_num}">
                        <img
                            src="../${tourInfo.tour_img1_path}"
                            class="img-fluid blur-up lazyload"
                            alt=""
                        />
                        <div class="overlay">
                            <h6>${tourInfo.tour_name}</h6>
                        </div>
                    </a>`
                );
                $(this).append(newElement);
            });
        },
        error: function (err) {
            console.log(err);
        }
    });



    // 푸터 후기 게시판 좋아요 높은 6개 (후기 게시판 해당 후기 링크 건들여야됨 )
    $.ajax({
        url: "/footerTouroview",
        type: "POST",
        success: function (res) {
            $('.footer-blog > .col-6').each(function (index) {
                var tourInfo = res[index]; 
                var newElement = $(
                    `<div class="media col-6">
                        <div class="img-part rounded5">
                          <a href="">
                            <img src="../${tourInfo.tour_img1_path}" class="img-fluid blur-up lazyload" alt="" />
                          </a>
                        </div>
                        <div class="media-body">
                          <h5>${tourInfo.touroview_title}</h5>
                          <p>${tourInfo.touroview_content}</p>
                        </div>
                    </div>`
                );
                $(this).append(newElement);
                console.log(newElement);
            });
        },
        error: function (err) {
            console.log(err);
        }
    });
    








});
