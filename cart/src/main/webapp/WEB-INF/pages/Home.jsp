<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<style>
/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}

/* Add a gray background color and some padding to the footer */
footer {
	background-color: #f2f2f2;
	padding: 25px;
}

.carousel-inner img {
	width: 30%; /* Set width to 100% */
	margin: auto;
	min-height: 200px;
}

/* Hide the carousel text when the screen is less than 600 pixels wide */
@media ( max-width : 600px) {
	.carousel-caption {
		display: none;
	}
	
}
</style>
</head>
<body>
	<%@include file="Header.jsp"%>

	<div id="myCarousel" class="carousel slide" data-ride="carousel"
		style="margin-top: 50px;">

		<!-- Indicators -->
		<ol class="carousel-indicators" style="background-color: #000;">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
			<li data-target="#myCarousel" data-slide-to="3"></li>

		</ol>


		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img class="first-slide home-image" src="resources/images/v3.jpg" "firstslide">
				<div class="container">
					<div class="carousel-caption">
						<h1 style="color:black">WELCOME TO THE HELMET STORE</h1>
						<p style="color:black">Here You Can Browse And Buy Helmets.Order Now For Your
							Amazing New Arrivals</p>
					</div>
				</div>
			</div>
			<div class="item">
				<img class="second-slide home-image" src="resources/images/std4.jpg" "Secondslide" >
				<div class="container">
					<div class="carousel-caption">
			
					</div>
				</div>
			</div>
			<div class="item">
				<img class="third-slide home-image "
					src="resources/images/bicy1.jpg"  "Thirdslide">
				<div class="container" >
					<div class="carousel-caption">
						
					</div>
				</div>
			</div>
			<div class="item">
				<img class="fourth-slide home-image " src="resources/images/sf1.jpg" "Fourthslide">
				<div class="container">
					<div class="carousel-caption">			

					</div>
				</div>
			</div>

		</div>
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"></span>
			<span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>

	<div class="container text-center">
		<h3>Why we used Helmet</h3>
		<br>
		<div class="row">
			<div class="col-sm-4">
				<iframe class="embed-responsive-item"
					src="//www.youtube.com/embed/OIBTRGyv9y0"></iframe>

			</div>
			
			<div class="col-sm-4">
				<div class="well" style="background-color:orange;color:black">
					<p>If you got a head, u need a helmet!</p>
				</div>
				<div class="well" style="background-color:orange;color:black">
					<p>When you can protect your phone with a case
					   Why don't you protect your life with a helmet?					
					</p>
				</div>
			</div>

			<div class="col-sm-4">
				<iframe class="embed-responsive-item"
					src="//www.youtube.com/embed/2r_ZDvjHCA0"></iframe>
			</div>

		</div>
	</div>
	<br>

</body>

<%@include file="Footer.jsp"%>
</html>
