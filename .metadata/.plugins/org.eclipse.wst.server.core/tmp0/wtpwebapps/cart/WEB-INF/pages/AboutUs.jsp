
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>About us</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://www.w3schools.com/lib/w3-theme-black.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<body id="myPage" class="w3-black">

	<%@include file="Header.jsp"%>

	<div style="margin-top: 50px;">



		<!-- Image Header -->
		<div class="w3-display-container w3-animate-opacity">
			<img src="resources/images/abt.jpg" alt="boat"
				style="width: 100%; min-height: 350px; max-height: 600px;">

		</div>


		<!-- Contact Section -->
		<div class="w3-padding-64 w3-content w3-text-grey" id="contact">
			<h2 class="w3-text-light-grey">Contact Us</h2>
			<hr style="width: 200px" class="w3-opacity">

			<div class="w3-section">
				<p>
					<i
						class="fa fa-map-marker fa-fw w3-text-white w3-xxlarge w3-margin-right"></i>
					Pune, MH
				</p>
				<p>
					<i
						class="fa fa-phone fa-fw w3-text-white w3-xxlarge w3-margin-right"></i>
					Phone: 8087997515
				</p>
				<p>
					<i
						class="fa fa-envelope fa-fw w3-text-white w3-xxlarge w3-margin-right">
					</i> Email: swapnilld123@gmail.com
				</p>
			</div>
			<br>

			<!-- End Contact Section -->
		</div>


		<!-- Google Maps -->
		<div id="googleMap" style="width: 100%; height: 420px;"></div>
		<script>
			function myMap() {
				myCenter = new google.maps.LatLng(41.878114, -87.629798);
				var mapOptions = {
					center : myCenter,
					zoom : 12,
					scrollwheel : false,
					draggable : false,
					mapTypeId : google.maps.MapTypeId.ROADMAP
				};
				var map = new google.maps.Map(document
						.getElementById("googleMap"), mapOptions);

				var marker = new google.maps.Marker({
					position : myCenter,
				});
				marker.setMap(map);
			}
		</script>
		<script
			src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBu-916DdpKAjTmJNIgngS6HL_kDIKU0aU&callback=myMap"></script>
		<!--
To use this code on your website, get a free API key from Google.
Read more at: https://www.w3schools.com/graphics/google_maps_basic.asp
-->

		<!-- Footer -->
		<footer class="w3-center w3-black w3-padding-64"> <a
			href="#home" class="w3-button w3-light-grey"><i
			class="fa fa-arrow-up w3-margin-right"></i>To the top</a>
		<div class="w3-xlarge w3-section">
			<i class="fa fa-facebook-official w3-hover-opacity"></i> <i
				class="fa fa-instagram w3-hover-opacity"></i> <i
				class="fa fa-google-plus"></i> <i
				class="fa fa-twitter w3-hover-opacity"></i> <i
				class="fa fa-linkedin w3-hover-opacity"></i>
		</div>
		<p>
			Powered by <a href="http://localhost:8090/project1/homePage"
				title="W3.CSS" target="_blank" class="w3-hover-text-green">Helmet
				Store</a>
		</p>
		</footer>


	</div>
</body>
<%@include file="Footer.jsp"%>
</html>
