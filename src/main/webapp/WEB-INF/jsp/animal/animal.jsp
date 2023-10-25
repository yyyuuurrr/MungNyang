<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입양안내</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<link rel="stylesheet" href="/static/css/stylemenu.css" type="text/css">
</head>
<body>
	
		<div id="wrap" class="border">
		<section class="d-flex border">
			<c:import url="/WEB-INF/jsp/include/section.jsp" />
			
			<div class="content">
				<div class="menu-title mt-3">
					<div>
						<h4 class="text-center font-weight-bold">보호중인 아이들</h4>
						<div class="d-flex align-items-center justify-content-center mt-4"><p>현재 보호중인 사랑스러운 아이들 입니다 따뜻한 손길로<p class="text-primary">&nbsp;&nbsp;아이들의 평생가족이 되어주세요.</p></p></div>
					</div>
			        <div class="d-flex align-items-end justify-content-end mr-3 mt-2">
					        <select>
					            <option selected>--지점선택--</option>
					            <option>서울점</option>
					            <option>수원점</option>
					        </select>			        
			        </div>
				</div>
				
				<div class="writer d-flex mt-4">
				     <div class="animal1 col-4">
				     	
						<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
							 <div class="carousel-inner">
							   <div class="carousel-item active">
							     <img src="/static/image/앵두_1.jpg" class="d-block w-100">
							   </div>
							   <div class="carousel-item">
							     <img src="/static/image/앵두_2.jpg" class="d-block w-100">
							   </div>
							   <div class="carousel-item">
							     <img src="/static/image/앵두_3.jpg" class="d-block w-100">
							   </div>
							 </div>
							 
							<button class="carousel-control-prev" type="button" data-target="#carouselExampleControls" data-slide="prev">
							   <span class="carousel-control-prev-icon" aria-hidden="true"></span>
							   <span class="sr-only">Previous</span>
							 </button>
							 
							 <button class="carousel-control-next" type="button" data-target="#carouselExampleControls" data-slide="next">
							   <span class="carousel-control-next-icon" aria-hidden="true"></span>
							   <span class="sr-only">Next</span>
							 </button>						 
						</div>	
						<div class="mt-3">
							<div style="font-size:16px;" class="font-weight-bold text-center"><a href="#">서울점 길냥이 앵두</a></div>
						</div>			     
				     </div>
				     
				     <div class="animal2 col-4">
				     
						<div id="carouselExampleControls2" class="carousel slide" data-ride="carousel">
							 <div class="carousel-inner">
							   <div class="carousel-item active">
							     <img src="/static/image/빵이_3.jpg" class="d-block w-100">
							   </div>
							   <div class="carousel-item">
							     <img src="/static/image/빵이_2.jpg" class="d-block w-100">
							   </div>
							   <div class="carousel-item">
							     <img src="/static/image/빵이_1.jpg" class="d-block w-100">
							   </div>
							 </div>
							 
							<button class="carousel-control-prev" type="button" data-target="#carouselExampleControls2" data-slide="prev">
							   <span class="carousel-control-prev-icon" aria-hidden="true"></span>
							   <span class="sr-only">Previous</span>
							 </button>
							 
							 <button class="carousel-control-next" type="button" data-target="#carouselExampleControls2" data-slide="next">
							   <span class="carousel-control-next-icon" aria-hidden="true"></span>
							   <span class="sr-only">Next</span>
							 </button>						 
						</div>
						<div class="mt-3">
							<div style="font-size:16px;" class="font-weight-bold text-center">수원점 비숑 빵이</div>
						</div>	
				     
				     </div>
				     <div class="animal3 col-4">
				     
   						<div id="carouselExampleControls3" class="carousel slide" data-ride="carousel">
							 <div class="carousel-inner">
							   <div class="carousel-item active">
							     <img src="/static/image/옹심이_3.jpg" class="d-block w-100">
							   </div>
							   <div class="carousel-item">
							     <img src="/static/image/옹심이_2.jpg" class="d-block w-100">
							   </div>
							   <div class="carousel-item">
							     <img src="/static/image/옹심이_1.jpg" class="d-block w-100">
							   </div>
							 </div>
							 
							<button class="carousel-control-prev" type="button" data-target="#carouselExampleControls3" data-slide="prev">
							   <span class="carousel-control-prev-icon" aria-hidden="true"></span>
							   <span class="sr-only">Previous</span>
							 </button>
							 
							 <button class="carousel-control-next" type="button" data-target="#carouselExampleControls3" data-slide="next">
							   <span class="carousel-control-next-icon" aria-hidden="true"></span>
							   <span class="sr-only">Next</span>
							 </button>						 
						</div>
						<div class="mt-3">
							<div style="font-size:16px;" class="font-weight-bold text-center">서울점 말티숑 옹심이</div>
						</div>
				     
				     </div>	
				</div>
				
				<div>
				
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