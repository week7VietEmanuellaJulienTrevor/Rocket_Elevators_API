console.log('"lat + " " + lng"')

function initMap(lat, lng) {
    console.log(lat + " " + lng)
    var myCoords = new google.maps.LatLng(lat, lng);
    var mapOptions = {
    center: myCoords,
    zoom: 14
    };
    var map = new google.maps.Map(document.getElementById('map'), mapOptions);
}