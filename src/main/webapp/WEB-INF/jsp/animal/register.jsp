<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유기견 등록</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="/static/css/stylemenu.css" type="text/css">
</head>
<body>
	
	<div id="wrap">
		<section class="d-flex border">
			<c:import url="/WEB-INF/jsp/include/section.jsp" />		
				
			<div class="content">
				<div class="menu-title mt-3">
					<div>
						<h4 class="text-center font-weight-bold">보호중인 아이들</h4>
						<div class="d-flex align-items-center justify-content-center mt-4"><p>현재 보호중인 사랑스러운 아이들 입니다 따뜻한 손길로<p class="text-primary">&nbsp;&nbsp;아이들의 평생가족이 되어주세요.</p></p></div>
					</div>
				</div>
				
				<div class="writer d-flex justify-content-center">
					<div class="input-box">
						
						<div id="loginForm">
							<label>이름 : </label>
							<input type="text" placeholder="이름" class="form-control">
							<label class="mt-3">나이 :</label>
							<input type="text" placeholder="이름" class="form-control">
							
					        <div class="d-flex align-items-center justify-content-center mt-4">
							        <select>
							            <option selected>--지점선택--</option>
							            <c:forEach var="store" items="${storeList }">
							            <option>${store.store }</option>
							            </c:forEach>
							        </select>			        
					        </div>
					        
	        				<input type="file" class="mt-4" id="fileInput">
							<button type="button" class="btn btn-primary mt-4 btn-block">등록</button>					
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
	

</body>
</html>