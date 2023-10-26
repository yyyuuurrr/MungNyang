<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
			<c:import url="/WEB-INF/jsp/include/section.jsp" />		
				
			<div class="content bg-info">
				<div class="pic d-flex bg-success">
					<img height="100%" alt="임시용" src="/static/image/main.jpg">
				</div>
				
				<div class="writer my-4 bg-primary" >
					<h3 class="ml-3">문의 게시판</h3>
					<table class="table text-center">
						<thead>
							<tr>
								<th>글쓴이</th>
								<th>제목</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>홍길동</td>
								<td>문의 드립니다~</td>
							</tr>
							<tr>
								<td>김봉석</td>
								<td>문의 드립니다</td>
							</tr>
						</tbody>
					
					</table>
				</div>
				<footer class="bg-secondary">
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