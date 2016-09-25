<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>7Peaks</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Le styles -->
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.js"></script>

    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/loader-style.css">
    <link rel="stylesheet" href="assets/css/bootstrap.css">
    <link rel="stylesheet" href="assets/css/media.css">
    <link href="assets/js/iCheck/flat/all.css" rel="stylesheet">
    <link href="assets/js/iCheck/line/all.css" rel="stylesheet">

    <link href="assets/js/colorPicker/bootstrap-colorpicker.css" rel="stylesheet">
    <link href="assets/js/switch/bootstrap-switch.css" rel="stylesheet">
    <link href="assets/js/validate/validate.css" rel="stylesheet">
    <link href="assets/js/idealform/css/jquery.idealforms.css" rel="stylesheet">
    <link href="assets/css/sweet-alert.css" rel="stylesheet">
	<style>
		.selected{
		    box-shadow:0px 12px 22px 1px #333;
		}
		
      #map {
        height: 300px;
        width:500px
      }
	</style>





    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    <!-- Fav and touch icons -->
    <link rel="shortcut icon" href="assets/ico/minus.png">
</head>

<body>
    <!-- Preloader -->
    <div id="preloader">
        <div id="status">&nbsp;</div>
    </div>
    <!-- TOP NAVBAR -->
    <nav role="navigation" class="navbar navbar-static-top">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button data-target="#bs-example-navbar-collapse-1" data-toggle="collapse" class="navbar-toggle" type="button">
                    <span class="entypo-menu"></span>
                </button>
                <button class="navbar-toggle toggle-menu-mobile toggle-left" type="button">
                    <span class="entypo-list-add"></span>
                </button>




                <div id="logo-mobile" class="visible-xs">
                    <h1>7Peaks</h1>
                    
                </div>

            </div>


            <!-- Collect the nav links, forms, and other content for toggling -->
            <div id="bs-example-navbar-collapse-1" class="collapse navbar-collapse">
                <ul class="nav navbar-nav">

                    <li class="dropdown">

                        <ul style="margin: 11px 0 0 9px;" role="menu" class="dropdown-menu dropdown-wrap">
                        </ul>
                    </li>

                </ul>
                
                <ul style="margin-right:0;" class="nav navbar-nav navbar-right">
                     <li>
                        <a href="/login">
                            <span class="icon-user"></span>&#160;&#160;Supplier Login</a>
                    </li>
                    <li>
                        <a href="/signUp">
                            <span class="icon-user"></span>&#160;&#160;Supplier Sign Up</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <!-- /END OF TOP NAVBAR -->

    <!-- SIDE MENU -->
    <div id="skin-select">
        <div id="logo">
            <h1>7Peaks</h1>
        </div>
    </div>
    <!-- END OF SIDE MENU -->

    <!--  PAPER WRAP -->
    <div class="wrap-fluid">
        <div class="container-fluid paper-wrap bevel tlbr">





            <!-- CONTENT -->
            <!--TITLE -->
            <div class="row">
                <div id="paper-top">
                    <div class="col-sm-3">
                        <h2 class="tittle-content-header">
                            <i class="entypo-basket" title="basket"></i> 
                            <span>Items
                            </span>
                        </h2>

                    </div>
                </div>
            </div>
            <!--/ TITLE -->

            <!-- BREADCRUMB -->
            <ul id="breadcrumb">
                <li>
                    <span class="entypo-home"></span>
                </li>
                <li><i class="fa fa-lg fa-angle-right"></i>
                </li>
                <li><a href="#" title="Sample page 1">Items</a>
                </li>
                <li class="pull-right">
                    <div class="input-group input-widget">

                        <input style="border-radius:15px" type="text" placeholder="Search..." class="form-control">
                    </div>
                </li>
            </ul>

            <!-- END OF BREADCRUMB -->


            <!-- MASONRY MEDIA-->



            <div class="container-fluid" style="padding:0 30px!important;margin-top:30px;">

                <div class="row-mansory">
                     <!-- PHOTO -->
                    <div class="col-md-4">
                        <div class="well-media">

                            <div class="vendor">

                                
                                    <img class="img-responsive-media fancybox" onclick="item(1)" src="assets/img/water.jpg" alt="" />
                               
                            </div>
                            <div class="video-text">
                                <h2>Water</h2>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                           <div class="video-text">
                                <i class="icon icon-location"></i><p>Location</p>
                            </div>
                            <div class="photo-category-bg">
                                <h3>Water</h3>
                                <a class="link-media pull-right" href="#">
                                    <span class="fontawesome-tint"></span>
                                </a>
                                <div class="triangle-white"></div>
                                <div class="triangle-photo-right"></div>
                            </div>

                        </div>
                    </div>

                    <!-- END OF PHOTO -->

                    <!-- PHOTO -->
                    <div class="col-md-4">
                        <div class="well-media">

                            <div class="vendor">
                              
                                    <img class="img-responsive-media fancybox" onclick='item(3)' src="assets/img/bread.jpg" alt="" />
                               
                            </div>
                            <div class="video-text">
                                <h2>Bread</h2>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                            <div class="video-text">
                                <i class="icon icon-location"></i><p>Location</p>
                            </div>
                            <div class="video-category-bg">
                                <h3>Bread</h3>
                                <a class="link-media pull-right" href="#">
                                    <span class="fontawesome-food"></span>
                                </a>
                                <div class="triangle-white"></div>
                                <div class="triangle-video-right"></div>
                            </div>

                        </div>
                    </div>

                    <!-- END OF PHOTO -->


                     <!-- PHOTO -->
                    <div class="col-md-4">
                        <div class="well-media">

                            <div class="vendor">
                            <img class="img-responsive-media fancybox" onclick='item(5)' src="assets/img/pizza.jpg" alt="" />
                               
                            </div>
                            <div class="video-text">
                                <h2>Pizza</h2>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                           <div class="video-text">
                                <i class="icon icon-location"></i><p>Location</p>
                            </div>
                            <div class="video-category-bg">
                                <h3>Pizza</h3>
                                <a class="link-media pull-right" href="#">
                                    <span class="fontawesome-food"></span>
                                </a>
                                <div class="triangle-white"></div>
                                <div class="triangle-video-right"></div>
                            </div>

                        </div>
                    </div>

                    <!-- END OF PHOTO -->

                    <!-- PHOTO -->
                    <div class="col-md-4">
                        <div class="well-media">

                            <div class="vendor">

                                
                                    <img class="img-responsive-media fancybox" onclick='item(2)' src="assets/img/milk.jpg" alt="" />
                                
                            </div>
                            <div class="video-text">
                                <h2>Milk</h2>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                            <div class="video-text">
                                <i class="icon icon-location"></i><p>Location</p>
                            </div>
                            <div class="photo-category-bg">
                                <h3>Milk</h3>
                                <a class="link-media pull-right" href="#">
                                    <span class="fontawesome-tint"></span>
                                </a>
                                <div class="triangle-white"></div>
                                <div class="triangle-photo-right"></div>
                            </div>

                        </div>
                    </div>

                    <!-- END OF PHOTO -->
                    
                    <!-- PHOTO -->
                    <div class="col-md-4">
                        <div class="well-media">

                            <div class="vendor">

                                    <img class="img-responsive-media fancybox" onclick='item(6)' src="assets/img/rice.jpg" alt="" />
                                
                            </div>
                            <div class="video-text">
                                <h2>Rice</h2>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                            <div class="video-text">
                                <i class="icon icon-location"></i><p>Location</p>
                            </div>
                            <div class="video-category-bg">
                                <h3>Rice</h3>
                                <a class="link-media pull-right" href="#">
                                    <span class="fontawesome-food"></span>
                                </a>
                                <div class="triangle-white"></div>
                                <div class="triangle-video-right"></div>
                            </div>

                        </div>
                    </div>

                    <!-- END OF PHOTO -->
                    
                    <!-- PHOTO -->
                    <div class="col-md-4">
                        <div class="well-media">

                            <div class="vendor">

                               
                                    <img class="img-responsive-media fancybox" onclick='item(4)' src="assets/img/burger.jpg" alt="" />
                                
                            </div>
                            <div class="video-text">
                                <h2>Burger</h2>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                            <div class="video-text">
                                <i class="icon icon-location"></i><p>Location</p>
                            </div>
                            <div class="video-category-bg">
                                <h3>Burger</h3>
                                <a class="link-media pull-right" href="#">
                                    <span class="fontawesome-food"></span>
                                </a>
                                <div class="triangle-white"></div>
                                <div class="triangle-video-right"></div>
                            </div>

                        </div>
                    </div>

                    <!-- END OF PHOTO -->

                </div>
                
                <div class="row">
                    <div class="col-sm-12">
                        <div class="nest" id="labelClose">
                            <div class="title-alt">
                                <h6>Order Items</h6>
                            </div>

                            <div class="body-nest" id="label">
                                <div class="row">
                                <form role="form" name="orderForm"   novalidate id="orderForm" action="/placeOrder" method="post">
                                    <div class="col-sm-2">
                                    
                                        <div class="skin skin-flat">
											<h6>Adults:</h6>
                                            <ul class="list">
                                                <li>
                                                    <input tabindex="11" type="radio" id="square-radio-1" value="1" name="adultCount" checked>
                                                    <label for="square-radio-1"> 1</label>
                                                </li>
                                                <li>
                                                    <input tabindex="12" type="radio" id="square-radio-1" value="2" name="adultCount" >
                                                    <label for="square-radio-2"> 2</label>
                                                </li>
                                                 <li>
                                                    <input tabindex="12" type="radio" id="square-radio-1" value="3" name="adultCount" >
                                                    <label for="square-radio-2"> 3</label>
                                                </li>
                                                 <li>
                                                    <input tabindex="12" type="radio" id="square-radio-1" value="4" name="adultCount" >
                                                    <label for="square-radio-2"> 4</label>
                                                </li>
                                            </ul>
                                            <div style="clear:both;"></div>
                                        </div>
                                    </div>
                                    
                                    <div class="col-sm-2">
                                        <div class="skin skin-flat">
											<h6>Children:</h6>
                                            <ul class="list">
                                                 <li>
                                                    <input tabindex="11" type="radio" id="square-radio-2" value="0" name="childrenCount" checked>
                                                    <label for="square-radio-1">None</label>
                                                </li>
                                                <li>
                                                    <input tabindex="11" type="radio" id="square-radio-2" value="1" name="childrenCount">
                                                    <label for="square-radio-1"> 1</label>
                                                </li>
                                                <li>
                                                    <input tabindex="12" type="radio" id="square-radio-2" value="2" name="childrenCount" >
                                                    <label for="square-radio-2"> 2</label>
                                                </li>
                                                 <li>
                                                    <input tabindex="12" type="radio" id="square-radio-2" value="3" name="childrenCount" >
                                                    <label for="square-radio-2"> 3</label>
                                                </li>
                                                 <li>
                                                    <input tabindex="12" type="radio" id="square-radio-2" value="4" name="childrenCount" >
                                                    <label for="square-radio-2"> 4</label>
                                                </li>
                                            </ul>
                                            <div style="clear:both;"></div>
                                        </div>
                                    </div>
                                    
                                    <div class="col-sm-2">
                                        <div class="skin skin-flat">
											<h6>Need:</h6>
                                            <ul class="list">
                                                <li>
                                                    <input tabindex="11" type="radio" id="square-radio-3" value="NEED" name="priority">
                                                    <label for="square-radio-1"> Hungry</label>
                                                </li>
                                                <li>
                                                    <input tabindex="12" type="radio" id="square-radio-3" value="VERY NEED" name="priority">
                                                    <label for="square-radio-2"> Very Hungry</label>
                                                </li>
                                            </ul>
                                            <div style="clear:both;"></div>
                                        </div>
                                    </div>
                                    <input type="hidden" name="itemCategoryId" id="itemCategoryId"/>
                                     <input type="hidden" name="orderLocation" id="orderLocation"/>
                                    </form>
                                    <div  id="map" class="col-sm-6" class="responsive">
                        
                                   </div>
                                </div>
								<button class="btn btn-danger" onclick="placeOrder()">Place Order</button>
                            </div>
                            
                        </div>
                        
                    </div>
                    
                    
                </div>
            </div>
			
           <!-- /END OF CONTENT -->

            <!-- FOOTER -->
            <!-- <div class="footer-space"></div>
            <div id="footer">
                <div class="devider-footer-left"></div>
                <div class="time">
                    <p id="spanDate"></p>
                    <p id="clock"></p>
                </div>
                <div class="copyright">Make with Love
                    <span class="entypo-heart"></span>2014 <a href="http://ndesain.com">Thesmile</a> All Rights Reserved</div>
                <div class="devider-footer"></div>

            </div> -->
            <!-- / END OF FOOTER -->


        </div>
    </div>
    <!--  END OF PAPER WRAP -->


    <!-- MAIN EFFECT -->
    <script type="text/javascript" src="assets/js/preloader.js"></script>
    <script type="text/javascript" src="assets/js/bootstrap.js"></script>
    <script type="text/javascript" src="assets/js/app.js"></script>
    <script type="text/javascript" src="assets/js/load.js"></script>
    <script type="text/javascript" src="assets/js/main.js"></script>

	<script>
		$('img').click(function(){
    //$('.selected').removeClass('selected');
    $(this).addClass('selected');
});
	</script>
	
	<!-- /MAIN EFFECT -->
    <script type="text/javascript" src="assets/js/iCheck/jquery.icheck.js"></script>
    <script type="text/javascript" src="assets/js/switch/bootstrap-switch.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/3.51/jquery.form.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyANEG-K1ZtpyJbyBiRf9jh1M7vk-6959hs&callback=initMap"
    async defer></script>
    <script type="text/javascript" src="assets/js/sweet-alert.min.js"></script>

<!--  PLUGIN -->
    <script>
    var image;
    $(document).ready(function() {
      image = 'http://www.google.com/intl/en_us/mapfiles/ms/micons/blue-dot.png';
       if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(showPosition);
         } else {
          alert("Geolocation is not supported by this browser.");
        }
        //CHECKBOX PRETTYFY
        $('.skin-flat input').iCheck({
            checkboxClass: 'icheckbox_flat-red',
            radioClass: 'iradio_flat-red'
        });
        $('.skin-line input').each(function() {
            var self = $(this),
                label = self.next(),
                label_text = label.text();

            label.remove();
            self.iCheck({
                checkboxClass: 'icheckbox_line-blue',
                radioClass: 'iradio_line-blue',
                insert: '<div class="icheck_line-icon"></div>' + label_text
            });
        });
        //Switch Button

        $('.make-switch').bootstrapSwitch('setSizeClass', 'switch-small');
    });
  function showPosition(position) {
   // alert(position.coords.latitude);
   // alert(position.coords.longitude);
    localStorage.setItem("lat",position.coords.latitude);
    localStorage.setItem("longi",position.coords.longitude);
    initMap();
    }
    
    var map;
      var count=0;
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
          $('#orderLocation').val("");
          $('#orderLocation').val(results[1].formatted_address);
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
                          $("#orderLocation").val(results[0].formatted_address);
                        }
                      });
            });

   
    }
    function moveMarker(placeName, latlng) {
      marker.setIcon(image);
      marker.setPosition(latlng);
      //infowindow.open(map, marker);
    }
    
    function placeOrder(){
    swal("Succes!", "Order Placed", "success")
    $("#orderForm").ajaxSubmit({
    success: function(response){
    count = 0;
    alert(response.message);
    },
    error:function(err){
    }
    });
    }
  
    function item(itemVal){
     if(count>0){
     var item = $("#itemCategoryId").val();
     $("#itemCategoryId").val(item+","+itemVal);
     }else{
     $("#itemCategoryId").val(itemVal);
     }
     
     count++;
    }
    </script>

</body>

</html>