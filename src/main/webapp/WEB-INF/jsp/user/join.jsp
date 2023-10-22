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
				<div class="join-box">
					<h3 class="mt-3 justify-content-center text-center text-secondary mb-5">SIGN IN</h3>
					
					<div class="mt-5">
						<div class="input-group mt-4">
						  <input type="text" class="form-control" placeholder="아이디" id="loginIdInput">
						  <div class="input-group-append">
						    <button class="btn btn-secondary" type="button" id="isDuplicateBtn">중복확인</button>
						  </div>
						</div>
						
						<div class="text-success small d-none" id="avaliableText">사용 가능한 아이디 입니다.</div>
						<div class="text-danger small d-none" id="duplicateText">중복된 아이디 입니다.</div>
						
						<input type="password" placeholder="비밀번호" class="form-control" id="passwordInput">
						<input type="password" placeholder="비밀번호 확인" class="form-control mt-4" id="passwordConfirmInput">
						<input type="text" placeholder="이름" class="form-control mt-4" id="nameInput">
						<input type="text" placeholder="이메일" class="form-control mt-4" id="emailInput">
						<button type="button" class="btn btn-primary btn-block mt-4" id="joinBtn">회원가입</button>				
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
	

	<script>
		$(document).ready(function() {
			
			var isCheckDuplicate = false;
			var isDuplicate = true;
			
			$("#loginIdInput").on("click", function() {
				
				isCheckDuplicate = false;
				isDuplicate = true;
				
				$("#avaliableText").addClass("d-none");
				$("#duplicateText").addClass("d-none");
							
			});
			
			$("#joinBtn").on("click", function() {
				
				let loginId = $("#loginIdInput").val();
				let password = $("#passwordInput").val();
				let passwordConfirm = $("#passwordConfirmInput").val();
				let name = $("#nameInput").val();
				let email = $("#emailInput").val();
								
				if(loginId == ""){
					alert("아이디를 입력해주세요");
					return ;
				}
				

				
				if(isDuplicate){
					alert("중복된 아이디 입니다");
					return ;
				}
				
				if(password == ""){
					alert("비밀번호를 입력해주세요");
					return ;
				}
				
				if(password != passwordConfirm){
					alert("비밀번호가 일치하지 않습니다");
					return ;
				}
				
				if(passwordConfirm == ""){
					alert("비밀번호확인 입력해주세요");
					return ;
				}
				
				if(name == ""){
					alert("이름을 입력해주세요");
					return ;
				}
				
				if(email == ""){
					alert("이메일을 입력해주세요")
					return ;
				}
				
				$.ajax({
					type:"post"
					, url:"/user/join"
					, data:{"loginId":loginId, "password":password, "name":name, "email":email}
					, success:function(data){
						
						if(data.result == "success"){
							location.href = "/user/login-view";
						}else {
							alert("회원가입 실패");
						}
					}	
					, error:function(){
						
						alert("회원가입 에러");						
					}
				
				});
				
			});
			
		
			$("#isDuplicateBtn").on("click", function() {
				
				let loginId = $("#loginIdInput").val();
				
				if(loginId == ""){
					alert("아이디를 입력하세요");
					return ; 
				}
				
				$.ajax({
					type:"get"
					, url:"/user/duplicate-id"
					, data:{"loginId":loginId}
					, success:function(data){
						
						ischeckDuplicate = true;
						
						if(data.isDuplicate){
							
							$("#avaliableText").removeClass("d-none");
							$("#duplicateText").addClass("d-none");
							
							isDuplicate = true;
							
						} else {
							$("#avaliableText").removeClass("d-none");
							$("#duplicateText").addClass("d-none");
							
							isDuplicate = false;
						}
					}
					, error:function(){
						alert("중복확인 에러");
					}
					
					
					
				});
				
				
			});
			
			
			
			
		});
	
	</script>



</body>
</html>