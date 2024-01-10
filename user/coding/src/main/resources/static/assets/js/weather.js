const button = document.querySelector('.button');
const API_KEY = '0846679e999ecbe4f288dc161ac8272a';

button.addEventListener('click', () => {
  navigator.geolocation.getCurrentPosition(success, fail);
});


const fail = () => {
  alert("좌표를 받아올 수 없음");
}

const success = (position) => {
  const latitude = position.coords.latitude;
  const longitude = position.coords.longitude;

  getWeather(latitude, longitude);
};

const getWeather = (lat, lon) => {
  fetch(
    `https://api.openweathermap.org/data/3.0/weather?lat=${lat}&lon=${lon}&appid=${API_KEY}&units=metric&lang=kr`
  )
  .then((json) => {
    console.log(json)
    const temperature = json.main.temp;
    const place = json.name;
    const description = json.weather[0].description;

    tempSection.innerText = temperature;
    placeSection.innerText = place;
    descSection.innerText = description;
  })
  .catch((error) => {
    alert(error);
  })
}