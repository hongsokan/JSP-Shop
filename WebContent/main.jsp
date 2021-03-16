<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Shop Homepage</title>

<!-- Bootstrap core CSS -->
<link href="/JSP-Shop/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="/JSP-Shop/css/main.css" rel="stylesheet">


</head>

<body>

	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container">
			<a class="navbar-brand" href="#">Shop</a>

			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">

					<li class="nav-item active"><a class="nav-link" href="#">소개
							<!-- <span class="sr-only">(current)</span> -->
					</a></li>

					<li class="nav-item"><a class="nav-link" href="#">장바구니</a></li>

					<li class="nav-item"><a class="nav-link" href="#">마이페이지</a></li>

					<li class="nav-item"><a class="nav-link" href="#">로그인</a></li>

					<li class="nav-item"><a class="nav-link" href="#">회원가입</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Categories Navbar -->
	<nav class="navbar navbar-expand-lg nav-categories">
		<div class="container col-lg-12">
			<a class="nav-category-item" href="#">자켓</a> <a
				class="nav-category-item" href="#">상의</a> <a
				class="nav-category-item" href="#">하의</a> <a
				class="nav-category-item" href="#">기타</a>
			<!-- <ul class="navbar-nav ml-auto">

        <li class="nav-item active">
          <a class="nav-category-item" href="#">자켓</a>
        </li>

        <li class="nav-item">
          <a class="nav-category-item" href="#">상의</a>
        </li>

        <li class="nav-item">
          <a class="nav-category-item" href="#">하의</a>
        </li>

        <li class="nav-item">
          <a class="nav-category-item" href="#">기타</a>
        </li>
      </ul> -->

		</div>
	</nav>

	<!-- Main Page Content -->
	<div class="container">

		<div class="row">

			<div class="col-lg-12">

				<div id="carouselExampleIndicators" class="carousel slide my-4"
					data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carouselExampleIndicators" data-slide-to="0"
							class="active"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
					</ol>
					<div class="carousel-inner" role="listbox">
						<div class="carousel-item active">
							<img class="d-block img-fluid" src="http://placehold.it/1200x500"
								alt="First slide">
						</div>
						<div class="carousel-item">
							<img class="d-block img-fluid" src="http://placehold.it/1200x500"
								alt="Second slide">
						</div>
						<div class="carousel-item">
							<img class="d-block img-fluid" src="http://placehold.it/1200x500"
								alt="Third slide">
						</div>
					</div>
					<a class="carousel-control-prev" href="#carouselExampleIndicators"
						role="button" data-slide="prev"> <span
						class="carousel-control-prev-icon" aria-hidden="true"></span> <span
						class="sr-only">Previous</span>
					</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
						role="button" data-slide="next"> <span
						class="carousel-control-next-icon" aria-hidden="true"></span> <span
						class="sr-only">Next</span>
					</a>
				</div>

				<div class="row">

					<div class="col-lg-4 col-md-6 mb-4">
						<div class="card h-100">
							<a href="#"><img class="card-img-top"
								src="http://placehold.it/700x400" alt=""></a>
							<div class="card-body">
								<h4 class="card-title">
									<a href="#">상품1</a>
								</h4>
								<h5>30,000</h5>
								<!-- <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!
                </p> -->
							</div>
							<!-- <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              </div> -->
						</div>
					</div>

					<div class="col-lg-4 col-md-6 mb-4">
						<div class="card h-100">
							<a href="#"><img class="card-img-top"
								src="http://placehold.it/700x400" alt=""></a>
							<div class="card-body">
								<h4 class="card-title">
									<a href="#">상품2</a>
								</h4>
								<h5>25,000</h5>
								<!-- <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!
                  Lorem ipsum dolor sit amet.</p> -->
							</div>
							<!-- <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              </div> -->
						</div>
					</div>

					<div class="col-lg-4 col-md-6 mb-4">
						<div class="card h-100">
							<a href="#"><img class="card-img-top"
								src="http://placehold.it/700x400" alt=""></a>
							<div class="card-body">
								<h4 class="card-title">
									<a href="#">상품3</a>
								</h4>
								<h5>15,000</h5>
								<!-- <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!
                </p> -->
							</div>
							<!-- <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              </div> -->
						</div>
					</div>

					<div class="col-lg-4 col-md-6 mb-4">
						<div class="card h-100">
							<a href="#"><img class="card-img-top"
								src="http://placehold.it/700x400" alt=""></a>
							<div class="card-body">
								<h4 class="card-title">
									<a href="#">상품4</a>
								</h4>
								<h5>60,000</h5>
								<!-- <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!
                </p> -->
							</div>
							<!-- <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              </div> -->
						</div>
					</div>

					<div class="col-lg-4 col-md-6 mb-4">
						<div class="card h-100">
							<a href="#"><img class="card-img-top"
								src="http://placehold.it/700x400" alt=""></a>
							<div class="card-body">
								<h4 class="card-title">
									<a href="#">상품5</a>
								</h4>
								<h5>9,000</h5>
								<!-- <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!
                  Lorem ipsum dolor sit amet.</p> -->
							</div>
							<!-- <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              </div> -->
						</div>
					</div>

					<div class="col-lg-4 col-md-6 mb-4">
						<div class="card h-100">
							<a href="#"><img class="card-img-top"
								src="http://placehold.it/700x400" alt=""></a>
							<div class="card-body">
								<h4 class="card-title">
									<a href="#">상품6</a>
								</h4>
								<h5>6,000</h5>
								<!-- <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!
                </p> -->
							</div>
							<!-- <div class="card-footer">
                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
              </div> -->
						</div>
					</div>

				</div>
				<!-- /.row -->

			</div>

		</div>
		<!-- /.row -->

	</div>
	<!-- /.container -->


	<!-- Footer -->
	<footer class="py-5 bg-dark">

		<div class="container">
			<p class="m-0 text-center text-white">
				<span>고객센터 : XXXX-XXXX</span> <span>&emsp;</span> <span>페이스북</span>
				<span>인스타그램</span>
			</p>
		</div>

		<hr style="width: 90%; border-color: gray;">

		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Shop 2021</p>
		</div>
		<!-- /.container -->
	</footer>

	<!-- Bootstrap core JavaScript -->
	<script src="/JSP-Shop/vendor/jquery/jquery.min.js"></script>
	<script src="/JSP-Shop/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>