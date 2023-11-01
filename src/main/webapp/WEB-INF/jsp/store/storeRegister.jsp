<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지점등록</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="/static/css/stylemenu.css" type="text/css">
</head>
<body>
	
	<div id="wrap">
		<section class="d-flex border">
			<c:import url="/WEB-INF/jsp/include/section.jsp" />		
				
			<div class="content">
				<div class="title mt-4">
					<div class="my-4">
						<h4 class="text-center font-weight-bold">지점등록</h4>
						<div class="d-flex align-items-center justify-content-center mt-4"><p class="text-secondary">관리자만 접근가능한 페이지 입니다</p></div>
					</div>
				</div>
				
				<div class="writer d-flex justify-content-center ml-4">
					<div class="input-box">
						<div class="my-3">
							<label class="font-weight-bold">지점명 :</label>
							<input type="text" class="form-control col-9 mt-1" placeholder="이름을 입력해주세요" id="nameInput">
						</div>
						<label class="font-weight-bold mt-4">위치 :</label>
						<div id="map" style="width: 400px; height: 230px;" class="mt-3"></div>
						<div class="d-flex justify-content-end my-5">
							<button type="button" class="btn btn-primary" id="saveBtn">등록</button>
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
		
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3ed4031af67fa5d1242added2fce528f"></script>
	<script type="text/javascript">
	
		var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
		var options = { //지도를 생성할 때 필요한 기본 옵션
			center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
			level: 3 //지도의 레벨(확대, 축소 정도)
		};
	
		var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
		
	</script>
</body>
</html>