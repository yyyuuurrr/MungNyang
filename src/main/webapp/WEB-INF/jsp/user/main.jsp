<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인화면</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="/static/css/stylemenu.css" type="text/css">
</head>
<body>
	
	<div id="wrap" class="border">
		<section class="d-flex border">
			<div class="main">
				<div class="rogo d-flex align-items-center justify-content-center">
					<h2 class="d-flex mt-3 mr-3"><b>멍냥멍냥</b></h2>
					<img height="50" src="https://cdn-icons-png.flaticon.com/128/4711/4711003.png">
				</div>
				<div class="ml-4 d-flex justify-content-end">
						<div class="mr-3">${userloginId }님 <a href="/user/logout">로그아웃</a></div>
					</div>
				<div class="menu mt-5">
					<nav class="menu nav d-flex ml-3">
	                    <ul class="nav flex-column d-flex">
	                        <li class="nav-item mt-5"><a href="#" class="nav-link main-link"><img src=""><b class="ml-3">입양안내</b></a></li>
	                        <li class="nav-item mt-5"><a href="#" class="nav-link main-link"><img src=""><b class="ml-3">방문예약</b></a></li>
	                        <li class="nav-item mt-5"><a href="#" class="nav-link main-link"><img src=""><b class="ml-3">문의게시판</b></a></li>
	                        <li class="nav-item mt-5"><a href="#" class="nav-link main-link"><img src=""><b class="ml-3">내 프로필</b></a></li>
	                    </ul>
					</nav>
				</div>
			</div>
			
			<div class="content">
				<div class="pic d-flex bg-secondary">
					<img height="100%" alt="임시용" src="/static/image/main.jpg">
				</div>
				
				<div class="writer bg-dark">
					<div class="table">
						
					</div>
				</div>
				<footer>
					<div class="text-secondary text-center"><p>Copyright © mungnyang 2023</p></div>
				</footer>
			</div>
		</section>
	</div>




	<script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	

</body>
</html>