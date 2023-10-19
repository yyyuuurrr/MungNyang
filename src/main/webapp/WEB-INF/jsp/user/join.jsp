<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="/static/css/style.css" type="text/css">
</head>
<body>

	<div id="wrap">
		<section class="d-flex">
			<div class="main">
				<img width="100%" alt="메인" src="/static/image/main.jpg">
			</div>
			<div class="content">
				<div class="head d-flex justify-content-center align-items-center">
					<h2 class="d-flex mt-3 mr-3"><b>멍냥멍냥</b></h2>
					<img height="50" src="https://cdn-icons-png.flaticon.com/128/4711/4711003.png">					
				</div>
				<div class="join-box">
					<h2 class="mt-3 justify-content-center text-center">SIGN IN</h2>
									
					<div class="d-flex mt-3">
						<input type="text" class="form-control mt-4" placeholder="아이디">
						<button type="button" class="btn btn-secondary btn-sm ml-2">중복확인</button>
					</div>
					<div class="text-success small">사용 가능한 아이디 입니다.</div>
					<div class="text-danger small">중복된 아이디 입니다.</div>
					
					<input type="password" placeholder="비밀번호" class="form-control">
					<input type="password" placeholder="비밀번호 확인" class="form-control mt-4">
					<input type="text" placeholder="이름" class="form-control mt-4">
					<input type="text" placeholder="이메일" class="form-control mt-4">
					<button type="button" class="btn btn-info btn-block mt-4">회원가입</button>
				</div>
				<footer class="d-flex justify-content-center align-items-center">
					<div class="text-secondary"><p>Copyright © mungnyang 2023</p></div>
				</footer>
			</div>
		</section>
	</div>





	<script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	

</body>
</html>