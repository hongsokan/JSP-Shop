<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- Header -->
<%@ include file="common/header.jsp"%>

<!-- Navbar -->
<%@ include file="common/navbar.jsp"%>

<!-- Categories Navbar -->
<%@ include file="common/categories.jsp"%>


<!-- Join Content -->
<div class="container join-form">
	<h3 class="text-center">회원가입</h3>

	<form class="row g-3" action="/shop/views/join.jsp" name="f"
		method="post">

		<div class="col-12 mb-3">
			<label for="inputID" class="form-label">아이디</label> <input
				type="text" class="form-control" id="inputID"
				placeholder="아이디 입력 (5~11자)">
		</div>

		<div class="col-12 mb-3">
			<label for="inputPass" class="form-label">비밀번호</label> <input
				type="text" class="form-control" id="inputPass"
				placeholder="비밀번호 (숫자,영문,특수문자 조합 최소 8자)">
		</div>

		<div class="col-12 mb-3">
			<label for="inputPassCheck" class="form-label">비밀번호 확인</label> <input
				type="text" class="form-control" id="inputPassCheck"
				placeholder="비밀번호 확인">
		</div>

		<div class="col-12 mb-3">
			<label for="inputBirth" class="form-label">생년월일</label> <input
				type="text" class="form-control" id="inputBirth"
				placeholder="생년월일 입력 (yymmdd)">
		</div>

		<div class="col-md-12 mb-3">
			<label for="inputEmail" class="form-label">이메일</label> <input
				type="email" class="form-control" id="inputEmail" placeholder="이메일">
		</div>

		<div class="col-md-12 mb-3">
			<label for="inputPhone" class="form-label">전화번호</label> <input
				type="text" class="form-control" id="inputPhone"
				placeholder="전화번호 입력(010XXXXXXXX)">
		</div>

		<div class="col-md-12 mb-5">
			<label for="inputRecommender" class="form-label">추천인</label> <input
				type="text" class="form-control" id="inputRecommender"
				placeholder="추천인 아이디 입력">
		</div>

		<div class="col-md-10 mb-3">
			<div class="form-check">
				<input class="form-check-input" type="checkbox" value=""
					id="flexCheckDefault"> <label class="form-check-label"
					for="flexCheckDefault"> 약관 모두 동의 </label>
			</div>
		</div>

		<div class="container-sm border p-3 col-md-10 mb-5">
			<div class="col-md-6 mb-2">
				<div class="form-check">
					<input class="form-check-input" type="checkbox" value=""
						id="flexCheckDefault"> <label class="form-check-label"
						for="flexCheckDefault"> 만 14세 이상입니다 </label>
				</div>
			</div>

			<div class="col-md-6 mb-2">
				<div class="form-check">
					<input class="form-check-input" type="checkbox" value=""
						id="flexCheckDefault"> <label class="form-check-label"
						for="flexCheckDefault"> 약관 동의 </label>
				</div>
			</div>

			<div class="col-md-6 mb-2">
				<div class="form-check">
					<input class="form-check-input" type="checkbox" value=""
						id="flexCheckDefault"> <label class="form-check-label"
						for="flexCheckDefault"> 개인정보수집 및 이용에 대한 안내 </label>
				</div>
			</div>

			<div class="col-md-6 mb-2">
				<div class="form-check">
					<input class="form-check-input" type="checkbox" value=""
						id="flexCheckDefault"> <label class="form-check-label"
						for="flexCheckDefault"> 이벤트/마케팅 수신 동의 </label>
				</div>
			</div>

			<div class="col-md-10 mb-2">
				<div class="form-check">
					<input class="form-check-input" type="checkbox" value=""
						id="flexCheckDefault"> <label class="form-check-label"
						for="flexCheckDefault"> 야간 혜택 알림 수신 동의 </label>
				</div>
			</div>
		</div>
		
		<div class="col-md-12 mb-3">
			<button type="button" class="btn btn-dark" style="width:100%; border: none">가입하기</button>
		</div>
	</form>
</div>

<!-- Footer -->
<%@include file="common/footer.jsp"%>