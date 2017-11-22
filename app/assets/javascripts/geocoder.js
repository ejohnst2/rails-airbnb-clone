//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .

// $("#slideshow > div:gt(0)").hide();

// setInterval(function() {
//   $('#slideshow > div:first')
//     .fadeOut(1000)
//     .next()
//     .fadeIn(1000)
//     .end()
//     .appendTo('#slideshow');
// }, 3000);

const submit = document.getElementById("submit");
const result = document.getElementById('result');
const container = document.querySelector(".container");

function parse() {
  const string = document.getElementById("address").value;
  return encodeURIComponent(string.trim());
}

function coordsCalc(data) {
  return data.results[0].geometry.location;
}

function buildHTML(coords) {
  const li = `<li>${coords.lat}, ${coords.lng}</li>`;
  result.insertAdjacentHTML("beforeend", li);
}

function buildMap(coords) {
  const mapHTML = `<div id="map" style="height: calc(100vh - 200px)"></div>`;
  container.insertAdjacentHTML("beforeend", mapHTML);
  const map = new google.maps.Map(document.getElementById('map'), {
    center: { lat: coords.lat, lng: coords.lng },
    zoom: 18 // Change this value from 0 to 18
  });
  const marker = new google.maps.Marker({
    map: map,
    position: { lat: coords.lat, lng: coords.lng }
  });
}

function buildResult(data) {
  const coords = coordsCalc(data);
  const HTML = buildHTML(coords);
  buildMap(coords);
}

function search() {
  const params = parse();
  const url = `https://maps.googleapis.com/maps/api/geocode/json?address=${params}`;
  fetch(url).then(response => response.json())
    .then(buildResult);
}

// submit.addEventListener("click", search);
