$(function(){
  const socket = new WebSocket("ws://localhost:8765");
  const sessionId = $('#loggedInUser').val()
  console.log(sessionId)

  // Connection opened
  socket.addEventListener('open', (event) => {
      console.log('Connected to server');
      socket.send(sessionId)
  });

  // Listen for messages
  socket.addEventListener('message', (event) => {
      const recommendedResults = JSON.parse(event.data);
      console.log('Received recommended results:', recommendedResults);
      // 여기서 받은 결과를 화면에 표시하거나 추가 로직 수행
      const info1 = JSON.parse(recommendedResults["info1"])
      const info2 = JSON.parse(recommendedResults["info2"])
      const info3 = JSON.parse(recommendedResults["info3"])
      console.log(info1)
      var tour_num1 = []
      var tour_num2 = []
      var tour_num3 = []
      for(let i = 0; i < 3; i++){
        tour_num1.push(info1[i]["tour_num"])
        tour_num2.push(info2[i]["tour_num"])
        tour_num3.push(info3[i]["tour_num"])
      }

      console.log(tour_num1)
      // 1순위
      $.ajax({
        type : "GET",
        url : 'preferLoc1Reco',
        contentType : 'json',
        data : {tour_num1 : tour_num1[0], tour_num2 : tour_num1[1], tour_num3 : tour_num1[2]},
        success : function(res){
          console.log("success");
          console.log(res[0])
          // 동적으로 menu-bar 추가
          const bottomBar = $('#reco1Box');
          for(let i = 0; i < 3; i++) {
              const reco1 = {
                tour_num : res[i].tour_num,
                tour_name : res[i].tour_name,
                address : res[i].tour_addr,
                imgPath: res[i].tour_img1_path
              }
             // menu-bar를 나타내는 HTML 문자열 생성
              const menuBarHTML = `
                  <div class="menu-bar">
                      <a href="touro/${'${reco1.tour_num}'}">
                          <img src="../${'${reco1.imgPath}'}" class="img-fluid blur-up lazyload" alt=""/>
                      </a>
                      <div class="content">
                          <a href="touro/${'${reco1.tour_num}'}">
                              <h5>${'${reco1.tour_name}'}</h5>
                          </a>
                          <p>${'${reco1.address}'}</p>
                      </div>
                  </div>
              `;

              // 생성한 HTML 문자열을 bottom-bar에 추가
              bottomBar.append(menuBarHTML);
          }
        }
      })// end ajax

      // 2순위
      $.ajax({
        type : "GET",
        url : 'preferLoc2Reco',
        contentType : 'json',
        data : {tour_num1 : tour_num2[0], tour_num2 : tour_num2[1], tour_num3 : tour_num2[2]},
        success : function(res){
          console.log("success");
          console.log(res[0])
          // 동적으로 menu-bar 추가
          const bottomBar = $('#reco2Box');
          for(let i = 0; i < 3; i++) {
              const reco2 = {
                tour_num : res[i].tour_num,
                tour_name : res[i].tour_name,
                address : res[i].tour_addr,
                imgPath: res[i].tour_img1_path
              }
             // menu-bar를 나타내는 HTML 문자열 생성
              const menuBarHTML = `
                  <div class="menu-bar">
                      <a href="touro/${'${reco2.tour_num}'}">
                          <img src="../${'${reco2.imgPath}'}" class="img-fluid blur-up lazyload" alt=""/>
                      </a>
                      <div class="content">
                          <a href="touro/${'${reco2.tour_num}'}">
                              <h5>${'${reco2.tour_name}'}</h5>
                          </a>
                          <p>${'${reco2.address}'}</p>
                      </div>
                  </div>
              `;

              // 생성한 HTML 문자열을 bottom-bar에 추가
              bottomBar.append(menuBarHTML);
          }
        }
      })// end ajax

      // 3순위
      $.ajax({
        type : "GET",
        url : 'preferLoc3Reco',
        contentType : 'json',
        data : {tour_num1 : tour_num3[0], tour_num2 : tour_num3[1], tour_num3 : tour_num3[2]},
        success : function(res){
          console.log("success");
          console.log(res[0])
          // 동적으로 menu-bar 추가
          const bottomBar = $('#reco3Box');
          for(let i = 0; i < 3; i++) {
              const reco3 = {
                tour_num : res[i].tour_num,
                tour_name : res[i].tour_name,
                address : res[i].tour_addr,
                imgPath: res[i].tour_img1_path
              }
             // menu-bar를 나타내는 HTML 문자열 생성
              const menuBarHTML = `
                  <div class="menu-bar">
                      <a href="touro/${'${reco3.tour_num}'}">
                          <img src="../${'${reco3.imgPath}'}" class="img-fluid blur-up lazyload" alt=""/>
                      </a>
                      <div class="content">
                          <a href="touro/${'${reco3.tour_num}'}">
                              <h5>${'${reco3.tour_name}'}</h5>
                          </a>
                          <p>${'${reco3.address}'}</p>
                      </div>
                  </div>
              `;

              // 생성한 HTML 문자열을 bottom-bar에 추가
              bottomBar.append(menuBarHTML);
          }
        }
      })// end ajax
  });

  // Connection closed
  socket.addEventListener('close', (event) => {
      console.log('Server closed connection');
  });
}); // end script