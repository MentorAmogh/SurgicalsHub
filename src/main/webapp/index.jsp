<%@ include file="/WEB-INF/views/CommonHeader.jsp"%>
 <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.min.js"></script>   
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }






.carousel {
	background: #2f4357;
	margin-top: 120px;
}

.carousel .item img {
	margin: 0 auto; /* Align slide image horizontally center */
}

.bs-example {
	margin: 20px;
}
</style>
	<style>
h1 {
	color: #fff;
	font-face: Rio Grande Striped;
	
background-color: #333;
text-shadow: #fff 0 -1px 24px, #ff0 0 -2px 30px, #ff8000 0 -10px 20px, red 0 -18px 40px;
}
</style>
		
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="resources/images/image2.jpg" alt="Chania">
    </div>

    <div class="item">
      <img src="resources/images/image1.jpg" alt="Chania">
    </div>

    <div class="item">
      <img src="resources/images/image2.jpg" alt="Flower">
    </div>

    <div class="item">
      <img src="resources/images/image3.jpg" alt="Flower">
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
	<table>
	<tr>
	<td><div>
		<figure class="figure">
  <img src="resources/images/ethicon.png" height="40%" width="40%" class="figure-img img-fluid img-rounded" alt="A generic square placeholder image with rounded corners in a figure.">
  <figcaption class="figure-caption text-xs-right">A caption for the above image.</figcaption>
</figure>
		
		</div></td>
		<td><div>
		<figure class="figure">
  <img src="resources/images/BRAUN.jpg" height="40%" width="40%" class="figure-img img-fluid img-rounded" alt="A generic square placeholder image with rounded corners in a figure.">
  <figcaption class="figure-caption text-xs-right">A caption for the above image.</figcaption>
</figure>
		
		</div></td>
		<td><div>
		<figure class="figure">
  <img src="resources/images/novo.png" height="40%" width="40%" class="figure-img img-fluid img-rounded" alt="A generic square placeholder image with rounded corners in a figure.">
  <figcaption class="figure-caption text-xs-right">A caption for the above image.</figcaption>
</figure>
		
		</div></td>
		
			</tr>
	<tr>
	<td><div>
		<figure class="figure">
  <img src="resources/images/JMS.png" height="40%" width="40%" class="figure-img img-fluid img-rounded" alt="A generic square placeholder image with rounded corners in a figure.">
  <figcaption class="figure-caption text-xs-right">A caption for the above image.</figcaption>
</figure>
		
		</div></td>
		<td><div>
		<figure class="figure">
  <img src="resources/images/larsmedi.jpg" height="40%" width="40%" class="figure-img img-fluid img-rounded" alt="A generic square placeholder image with rounded corners in a figure.">
  <figcaption class="figure-caption text-xs-right">A caption for the above image.</figcaption>
</figure>
		
		</div></td>
		<td><div>
		<figure class="figure">
  <img src="resources/images/nulife.jpg" height="40%" width="40%" class="figure-img img-fluid img-rounded" alt="A generic square placeholder image with rounded corners in a figure.">
  <figcaption class="figure-caption text-xs-right">A caption for the above image.</figcaption>
</figure>
		
		</div></td>
		
			</tr>
	<tr>
	<td><div>
		<figure class="figure">
  <img src="resources/images/polymed.png" height="20%" width="40%" class="figure-img img-fluid img-rounded" alt="A generic square placeholder image with rounded corners in a figure.">
  <figcaption class="figure-caption text-xs-right">A caption for the above image.</figcaption>
</figure>
		
		</div></td>
		<td><div>
		<figure class="figure">
  <img src="resources/images/romsons.png" height="20%" width="40%" class="figure-img img-fluid img-rounded" alt="A generic square placeholder image with rounded corners in a figure.">
  <figcaption class="figure-caption text-xs-right">A caption for the above image.</figcaption>
</figure>
		
		</div></td>
		<td><div>
		<figure class="figure">
  <img src="resources/images/jandj.jpg" height="20%" width="40%" class="figure-img img-fluid img-rounded" alt="A generic square placeholder image with rounded corners in a figure.">
  <figcaption class="figure-caption text-xs-right">A caption for the above image.</figcaption>
</figure>
		
		</div></td>
		
			</tr>
	
	</table>		
</body>
