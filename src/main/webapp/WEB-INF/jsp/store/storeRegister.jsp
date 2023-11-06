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
				<div class="title mt-3">
					<div class="my-4">
						<h4 class="text-center font-weight-bold">지점등록</h4>
						<div class="d-flex align-items-center justify-content-center mt-4"><p class="text-secondary">관리자만 접근가능한 페이지 입니다</p></div>
					</div>
				</div>
				
				<div class="writer d-flex justify-content-center ml-4">
					<div class="input-box">
						<div class="my-2">
							<label class="font-weight-bold">지점명 :</label>
							<input type="text" class="form-control col-9 mt-1" placeholder="지점명을 입력해주세요" id="storeNameInput">
						</div>
						<div class="my-2">
							<label class="font-weight-bold">지점설명 :</label>
							<input type="text" class="form-control col-9 mt-1" placeholder="지점설명" id="explanationInput">
						</div>
						<label class="font-weight-bold mt-4">위치 :</label>
						<div id="map" style="width: 340px; height: 220px;" class="mt-2"></div>
						<div id="clickLatlng"></div>
						<div class="d-flex justify-content-end my-2">
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
	<script>
		$(document).ready(function() {
			
			$("#saveBtn").on("click", function() {
				
				let storeName = $("#storeNameInput").val();
				let explanation = $("#explanationInput").val();
				
				if(storeName == ""){
					alert("지점명을 입력해주세요");
					return ;
				}
				
				if(explanation == ""){
					alert("지점설명을 입력해주세요");
					return ;
				}
				
				
				
				$.ajax({
					type:"post"
					, url:"/store/register"
					, data:{"store":store, "explanation":explanation}
					, success:function(data){
						
						if(data.result == "success"){
							alert("지점등록 완료");
						} else {
							alert("지점등록 오류");
						}
						
					}
					, error:function(){
						alert("지점등록 에러");
					}
					
					
					
				})
				
				
			});
			
			
			
		});
	</script>
	<!-- 카카오맵 -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3ed4031af67fa5d1242added2fce528f"></script>
	<script type="text/javascript">
	
		var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
		var options = { //지도를 생성할 때 필요한 기본 옵션
			center: new kakao.maps.LatLng(37.51824516429611, 126.95631415771744), //지도의 중심좌표.
			level: 3 //지도의 레벨(확대, 축소 정도)
		};
	
		var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴

		
		// 지도를 클릭한 위치에 표출할 마커입니다
		var marker = new kakao.maps.Marker({ 
		    // 지도 중심좌표에 마커를 생성합니다 
		    position: map.getCenter() 
		}); 
		// 지도에 마커를 표시합니다
		marker.setMap(map);
		
		
		<!--여러개 마커 이벤트 등록-->
		var positions = [
		    {
		        content: '<div>서울점</div>', 
		        latlng: new kakao.maps.LatLng(37.51824516429611, 126.95631415771744)
		    },
		    {
		        content: '<div>제주점</div>', 
		        latlng: new kakao.maps.LatLng(33.450936, 126.569477)
		    },


		];

		for (var i = 0; i < positions.length; i ++) {
		    // 마커를 생성합니다
		    var marker = new kakao.maps.Marker({
		        map: map, // 마커를 표시할 지도
		        position: positions[i].latlng // 마커의 위치
		    });

		    // 마커에 표시할 인포윈도우를 생성합니다 
		    var infowindow = new kakao.maps.InfoWindow({
		        content: positions[i].content // 인포윈도우에 표시할 내용
		    });

		    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
		    // 이벤트 리스너로는 클로저를 만들어 등록합니다 
		    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
		    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
		    kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
		}

		// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
		function makeOverListener(map, marker, infowindow) {
		    return function() {
		        infowindow.open(map, marker);
		    };
		}

		// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
		function makeOutListener(infowindow) {
		    return function() {
		        infowindow.close();
		    };
		}

		/* 아래와 같이도 할 수 있습니다 */
		/*
		for (var i = 0; i < positions.length; i ++) {
		    // 마커를 생성합니다
		    var marker = new kakao.maps.Marker({
		        map: map, // 마커를 표시할 지도
		        position: positions[i].latlng // 마커의 위치
		    });

		    // 마커에 표시할 인포윈도우를 생성합니다 
		    var infowindow = new kakao.maps.InfoWindow({
		        content: positions[i].content // 인포윈도우에 표시할 내용
		    });

		    // 마커에 이벤트를 등록하는 함수 만들고 즉시 호출하여 클로저를 만듭니다
		    // 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
		    (function(marker, infowindow) {
		        // 마커에 mouseover 이벤트를 등록하고 마우스 오버 시 인포윈도우를 표시합니다 
		        kakao.maps.event.addListener(marker, 'mouseover', function() {
		            infowindow.open(map, marker);
		        });

		        // 마커에 mouseout 이벤트를 등록하고 마우스 아웃 시 인포윈도우를 닫습니다
		        kakao.maps.event.addListener(marker, 'mouseout', function() {
		            infowindow.close();
		        });
		    })(marker, infowindow);
		}
		*/
		
	</script>
</body>
</html>