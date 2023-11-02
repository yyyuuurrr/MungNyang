<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 프로필</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="/static/css/stylemenu.css" type="text/css">
</head>
<body>

	<div id="wrap">
		<section class="d-flex border">
			<c:import url="/WEB-INF/jsp/include/section.jsp" />		
				
			<div class="content">
				<div class="title mt-3">
					<div class="my-4">
						<h4 class="text-center font-weight-bold">내 프로필</h4>
					</div>
				</div>
				
				<div class="writer d-flex justify-content-center ml-4">
					<div class="input-box">
						<div class="d-flex justify-content-between align-item-between">
							<div class="d-flex">
								<img width="20" height="30" src="https://cdn-icons-png.flaticon.com/128/3856/3856336.png"><b class="ml-3 font-weight-bold"><p>${userName }님</p></b>
							</div>
							<div class="d-flex justify-content-between align-item-between">
								<button type="button" class="btn btn-secondary">프로필 수정</button>
							</div>
						</div>
						
						<div class="like bg-primary ml-2 font-weight-bold">
							<p class="mt-2">좋아요한 댕냥이들</p>		
							<hr>			
						</div>
						<div class="table ml-2">
							<p>내 글 목록</p>
							<table class="table text-center">
								<thead>
									<tr>
										<th>Date</th>
										<th>Title</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>10-11</td>
										<td>문의드립니다.</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>

			</div>
		</section>
		<footer>
			<div class="text-secondary text-center"><p>Copyright © mungnyang 2023</p></div>
		</footer>
	</div>
	
	
	<script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		

</body>
</html>