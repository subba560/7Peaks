<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Supplier</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <script type="text/javascript" src="assets/js/jquery.min.js"></script>

   <!--  <link rel="stylesheet" href="assets/css/style.css"> -->
    <link rel="stylesheet" href="assets/css/loader-style.css">
    <link rel="stylesheet" href="assets/css/bootstrap.css">
    <link rel="stylesheet" href="assets/css/signin.css">


    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    <!-- Fav and touch icons -->
    <link rel="shortcut icon" href="assets/ico/minus.png">
    <style>
    
      #map {
        height: 200px;
        width:320px
      }
    </style>
</head>

<body>
    <!-- Preloader -->
    <div id="preloader">
        <div id="status">&nbsp;</div>
    </div>
    <div class="container">



        <div class="" id="login-wrapper">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div id="logo-login">
                        <h1>Supplier Sign Up
                        </h1>
                    </div>
                </div>

            </div>

            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="account-box">

                        <form role="form" name="signUpForm"   novalidate id="signUpForm" action="/signUp" method="post">
                            <div class="form-group">
                                <label for="inputUsernameEmail">User Name</label>
                                <input type="text" id="inputUsernameEmail" name="userName" class="form-control">
                            </div>
                             <div class="form-group">
                                <label for="inputUsernameEmail">Email Address</label>
                                <input type="text" id="inputUsernameEmail" name="emailAddress" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="inputPassword">Mobile Number</label>
                                <input type="text" id="inputMobileNo" name="mobileNumber" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="inputPassword">Location</label>
                                <input type="text" id="location" name="location"  class="form-control">
                            </div>
							<div class="form-group">
                                <label for="inputPassword">Locate YourSelf</label>
							<div id="map"></div>
                            </div>
                            <div class="form-group">
                                <label for="inputPassword">Password</label>
                                <input type="password" id="inputPassword" name="password" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="inputPassword">Confirm Password</label>
                                <input type="password" id="inputPassword" name="confirmPassword" class="form-control">
                            </div>
                            <button class="btn btn btn-primary pull-right" type="submit">
                                Sign Up
                            </button>
                        </form>
                        <div class="or-box">
                          
                            <center><span class="text-center login-with">Sign Up or <b><a href="/login" >Login</a></b></span></center>
                            <div class="row">
                                <div class="col-md-12 row-block">
                                    <a href="/orderItems" class="btn btn-primary btn-block">Order Items</a>
                                </div>
                            </div>
                                <!-- <div class="col-md-6 row-block">
                                    <a href="index.html" class="btn btn-twitter btn-block">
                                        <span class="entypo-twitter space-icon"></span>Twitter</a>
                                        
                                </div> -->

                            </div>
                          <!-- <div style="margin-top:25px" class="row">
                                <div class="col-md-6 row-block">
                                    <a href="index.html" class="btn btn-google btn-block"><span class="entypo-gplus space-icon"></span>Google +</a>
                                </div>
                                <div class="col-md-6 row-block">
                                    <a href="index.html" class="btn btn-instagram btn-block"><span class="entypo-instagrem space-icon"></span>Instagram</a>
                                </div>

                            </div> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>

                                
    </div>
    <div id="map"></div>



    <!--  END OF PAPER WRAP -->




    <!-- MAIN EFFECT -->
    <script type="text/javascript" src="assets/js/preloader.js"></script>
    <script type="text/javascript" src="assets/js/bootstrap.js"></script>
    <script type="text/javascript" src="assets/js/app.js"></script>
    <script type="text/javascript" src="assets/js/load.js"></script>
    <script type="text/javascript" src="assets/js/main.js"></script>

    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyANEG-K1ZtpyJbyBiRf9jh1M7vk-6959hs&callback=initMap"
    async defer></script>
    
    <script type="text/javascript" src="assets/js/map/gmap3.js"></script>
    <script type="text/javascript">
    var image;
    $(function() {
        image = 'http://www.google.com/intl/en_us/mapfiles/ms/micons/blue-dot.png';
       if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(showPosition);
         } else {
          alert("Geolocation is not supported by this browser.");
        }

    });
   
    function showPosition(position) {
   // alert(position.coords.latitude);
   // alert(position.coords.longitude);
    localStorage.setItem("lat",position.coords.latitude);
    localStorage.setItem("longi",position.coords.longitude);
    }
    
    var map;
      function initMap() {
      
      var lati=  localStorage.getItem("lat");
      var longi= localStorage.getItem("longi");
        map = new google.maps.Map(document.getElementById('map'), {
          center: {lat: parseFloat(lati), lng: parseFloat(longi)},
          zoom: 8
        });
      
         var geocoder = new google.maps.Geocoder;
        var latlng = {lat: parseFloat(lati), lng: parseFloat(longi)};
        geocoder.geocode({'location': latlng}, function(results, status) {
          if (status === 'OK') {
          if (results[1]) {
          $('#location').val("");
          $('#location').val(results[1].formatted_address);
             // alert(results[1].formatted_address);
              }
             }
             marker = new google.maps.Marker({
      		 position : latlng,
      		 map : map,
             icon : image
           });
        });
        google.maps.event
        .addListener(
            map,
            'click',
            function(event) {
              var geocoder = new google.maps.Geocoder();
              geocoder
                  .geocode(
                      {
                        "latLng" : event.latLng
                      },
                      function(results, status) {
                        console.log(results, status);
                        if (status == google.maps.GeocoderStatus.OK) {
                          console.log(results);
                          var lat = results[0].geometry.location
                              .lat(), lng = results[0].geometry.location
                              .lng(), placeName = results[0].address_components[0].long_name, latlng = new google.maps.LatLng(
                              lat, lng);

                          moveMarker(placeName,latlng);
                          $("#location").val(results[0].formatted_address);
                        }
                      });
            });

   
    }
    function moveMarker(placeName, latlng) {
      marker.setIcon(image);
      marker.setPosition(latlng);
      //infowindow.open(map, marker);
    }
    </script>




</body>

</html>
