<%@ page import="java.sql.*" %>
<!DOCTYPE html>

<html>

  <head>
    <meta charset="utf-8">
    <title>Hoboken Laundry</title>

    <style> 
      html, body, #map-canvas {
        height: 100%;
        margin: 0px;
        padding: 0px
      }
      #panel {
        position: absolute;
        top: 5px;
        left: 50%;
        margin-left: -180px;
        z-index: 5;
        background-color: #fff;
        padding: 5px;
        border: 1px solid #999;
      }
    </style>
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
    <script>
// Above code is to design a style of map-canvas.





//Using latitude and longitude we show the location of the Laundry place.

 
var berlin = new google.maps.LatLng(40.744705, -74.029023);

var neighborhoods = [ 
new google.maps.LatLng(40.744705, -74.029023),
new google.maps.LatLng(40.744705, -74.029023),
];


//It will create a marker.

var markers = [];
var iterator = 0;

var map;

function initialize() {
  var mapOptions = {
    zoom: 12,
    center: berlin
  };

  map = new google.maps.Map(document.getElementById('map-canvas'),
          mapOptions);
}

function drop() {
  for (var i = 0; i < neighborhoods.length; i++) {
    setTimeout(function() {
      addMarker();
    }, i * 200);
  }
}

// This function is used to generate a marker in the map.
function addMarker() {
  markers.push(new google.maps.Marker({
    position: neighborhoods[iterator],
    map: map,
    draggable: false,
    animation: google.maps.Animation.DROP
  }));
  iterator++;
}

google.maps.event.addDomListener(window, 'load', initialize);
drop();
    </script>
  </head>
  <body>
    <div id="map-canvas"></div>
	

  </body>
</html>