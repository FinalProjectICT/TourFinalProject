$(() => {
  var tour_lati = $("#tour_lati").val();
  var tour_longi = $("#tour_longi").val();

  var apiURI =
    "https://pro.openweathermap.org/data/2.5/forecast/hourly?lat=" +
    tour_lati +
    "&lon=" +
    tour_longi +
    "&appid=" +
    "{API key}";
  console.log(apiURI);

  const tourWeather = (city) => {
    var apiURI =
      "https://pro.openweathermap.org/data/2.5/forecast/hourly?lat=" +
      tour_lati +
      "&lon=" +
      tour_longi +
      "&appid=" +
      "{API key}";

    console.log(apiURI);

    $.ajax({
      url: apiURI,
      dataType: "json",
      type: "GET",
      async: "false",
      success: function (resp) {
        var $Icon = resp.weather[0].icon.substr(0, 2);
        var $weather_description = resp.weather[0].main;
        var $Temp = Math.floor(resp.main.temp - 273.15) + "º";
        var $humidity =
          "습도&nbsp;&nbsp;&nbsp;&nbsp;" + resp.main.humidity + " %";
        var $wind = "바람&nbsp;&nbsp;&nbsp;&nbsp;" + resp.wind.speed + " m/s";
        var $city = resp.name;
        var $cloud = "구름&nbsp;&nbsp;&nbsp;&nbsp;" + resp.clouds.all + "%";
        var $temp_min =
          "최저 온도&nbsp;&nbsp;&nbsp;&nbsp;" +
          Math.floor(resp.main.temp_min - 273.15) +
          "º";
        var $temp_max =
          "최고 온도&nbsp;&nbsp;&nbsp;&nbsp;" +
          Math.floor(resp.main.temp_max - 273.15) +
          "º";

        $(".weather_icon").append(
          '<i class="' +
            weatherIcon[$Icon] +
            ' fa-5x" style="height : 150px; width : 150px;"></i>'
        );
        $(".weather_description").prepend($weather_description);
        $(".current_temp").prepend($Temp);
        $(".humidity").prepend($humidity);
        $(".wind").prepend($wind);
        $(".city").append($city);
        $(".cloud").append($cloud);
        $(".temp_min").append($temp_min);
        $(".temp_max").append($temp_max);
      },
    });
  };
});
