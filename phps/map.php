

<!DOCTYPE html>
<html>
  <head>
    <style>
       #map {
        height: 400px;
        width: 100%;
       }
    </style>
  </head>
  <body>
    <h3>My Google Maps Demo</h3>
    <div id="map"></div>
    <script>
      function initMap() {
      	var x = -25.363;
      	var  y = 131.044;
      	var map = new google.maps.Map(document.getElementById('map'), {
	          zoom: 4,
	          center: {lat: x, lng: y}
	        });
      	for(var i = 0 ; i < 5; i += 1){
	        var uluru = {lat: x, lng: y};

	        
	        var marker = new google.maps.Marker({
	          position: uluru,
	          map: map
	        });
	        x++;
    	}
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCdHJ-8xW-JUzpmpuf_TF1CsURgJTujMdM&callback=initMap">
    </script>
  </body>
</html>

