<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="/static/css/stylemain.css" type="text/css">
</head>
<body>
	
	<div id="wrap" class="border">
		<section class="d-flex">
			<div class="main mt-4">
				<img width="100%" alt="메인" src="/static/image/main.jpg">
			</div>
			
			<div class="content">
				<div class="head d-flex justify-content-center align-items-center">
					<h2 class="d-flex mt-3 mr-3"><b>멍냥멍냥</b></h2>
					<img height="50" src="https://cdn-icons-png.flaticon.com/128/4711/4711003.png">
				</div>
				
				<div class="login-box">
					<h2 class="mt-3 justify-content-center text-center my-5">Login</h2>
									
					<div class="my-5">
						<input type="password" placeholder="아이디" class="form-control" id="passwordInput">
						<input type="password" placeholder="비밀번호" class="form-control mt-4" id="passwordConfirmInput">
						<p class="text-center mt-3">회원이 아니신가요? <a href="/user/join.jsp">회원가입</a></p>
						<button type="button" class="btn btn-primary btn-block mt-4" id="joinBtn">로그인</button>					
					</div>
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