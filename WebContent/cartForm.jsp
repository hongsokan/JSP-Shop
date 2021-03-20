<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Cart</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">

<!-- Custom styles for this template -->
<link href="/JSP-Shop/css/main.css" rel="stylesheet">


</head>

<body>
	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container">
			<a class="navbar-brand" href="main.jsp"">Shop</a>

			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">

					<li class="nav-item"><a class="nav-link" href="#">소개
							<!-- <span class="sr-only">(current)</span> -->
					</a></li>

					<li class="nav-item"><a class="nav-link" href="cartForm.jsp">장바구니</a></li>

					<li class="nav-item"><a class="nav-link" href="mypageForm.jsp">마이페이지</a></li>

					<li class="nav-item"><a class="nav-link" href="loginForm.jsp">로그인</a></li>

					<li class="nav-item"><a class="nav-link" href="joinForm.jsp">회원가입</a></li>
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
		</div>
	</nav>




	<!-- Cart Content -->
	<h3 class="mt-3 mb-3 text-center">장바구니</h3>
	
	<div class="container-md p-3 col-8 mb-5 mx-auto text-center">
	
		<table class="table table-bordered">
			<tr>
				<th scope="col" colspan="8">일반상품</th>
			</tr>
			
			<tr>
				<th scope="col">번호</th>
				<th scope="col">이미지</th>
				<th scope="col">상품정보</th>
				<th scope="col">수량</th>
				<th scope="col">판매가</th>
				<th scope="col">적립금</th>
				<th scope="col">배송비</th>
				<th scope="col">선택</th>
			</tr>
			
			<tr>
				<td scope="col">1</td>
				<td scope="col">image</td>
				<td scope="col">상품1</td>
				<td scope="col">1</td>
				<td scope="col">3,000</td>
				<td scope="col">300</td>
				<td scope="col">2,500</td>
				<td scope="col">삭제</td>
			</tr>
			
			<tr>
				<td scope="col" colspan="8">
					(상품금액) + (배송비) = (합계)
				</td>
			</tr>
			
			<tr>
				<th scope="col" colspan="2">총 상품금액</th>
				<th scope="col" colspan="2">적립 예정 금액</th>
				<th scope="col" colspan="4">결제 예정 금액</th>
			</tr>
			
			<tr>
				<td scope="col" colspan="2">0원</td>
				<td scope="col" colspan="2">0원</td>
				<td scope="col" colspan="4">0원</td>
			</tr>
		</table>

		<div class="btn-group">
			<a href="#" class="btn btn-primary" aria-current="page">상품결제</a> 
			<a href="#" class="btn btn-primary">장바구니 비우기</a> 
			<a href="#" class="btn btn-primary">쇼핑 계속하기</a>
		</div>

	</div>




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
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns"
		crossorigin="anonymous"></script>

</body>

</html>