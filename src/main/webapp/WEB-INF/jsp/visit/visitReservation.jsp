<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>방문예약</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="/static/css/stylemenu.css" type="text/css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
</head>
<body>


	<div id="wrap">
		<section class="d-flex border">
			<c:import url="/WEB-INF/jsp/include/section.jsp" />		
				
			<div class="content">
				<div class="menu-title mt-3">
					<div class="my-4">
						<h4 class="text-center font-weight-bold">방문예약</h4>
						<div class="d-flex align-items-center justify-content-center mt-4"><p>입소 및 입양이 고민되시는 분들을 위해 시설 확인 및 동물 확인을 위한 예약 공간입니다.</p></div>
					</div>
				</div>
				
				<div class="writer d-flex justify-content-center ml-4">
					<div class="input-box">
						
						<input type="text" class="form-control col-9 my-3" placeholder="이름을 입력해주세요" id="nameInput">
						<input type="text" class="form-control col-9 my-3" placeholder="전화번호를 입력해주세요" id="numberInput">
						<input type="text" class="form-control col-9 my-3" placeholder="거주지역 ex) oo시 oo구" id="regionInput">
						<input type="text" class="form-control col-9 my-3" placeholder="방문날짜" id="datepicker">
						<input type="text" class="form-control col-9 my-3" placeholder="방문시간" id="timepicker">
						<div class="d-flex justify-content-end">
							<button type="button" class="btn btn-primary" id="reservationBtn">예약신청</button>				
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
	<script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
	<script>
		$(document).ready(function() {
			
			$("#reservationBtn").on("click", function() {
				
				let name = $("#nameInput").val();
				let phoneNumber = $("#numberInput").val();
				let region = $("#regionInput").val();
				let date = $("#datepicker").val();
				let time = $("#timepicker").val();
				
				if(name == ""){
					alert("이름을 입력하세요");
					return ;
				}
				
				if(phoneNumber == ""){
					alert("전화번호를 입력해주세요");
					return ;
				}
				
				if(region == ""){
					alert("거주지역을 입력해주세요");
					return ;
				}
				
				if(date == ""){
					alert("날짜를 선택해주세요");
					return ;
				}
				
				if(time == ""){
					alert("시간을 선택해주세요")
					return ;
				}
				
				
				$.ajax({
					type:"post"
					, url:"/visit/create"
					, data:{"name":name, "phoneNumber":phoneNumber, "region":region, "date":date, "time":time}
					, success:function(data){
						
						if(data.result == "success"){
							alert("예약신청 성공");
						} else {
							alert("예약신청 오류");
						}
						
					}
					, error:function(){
						alert("예약신청 에러");
					}
					
					
				});
				
				
			});
			
			
			$("#datepicker").datepicker({
				dateFormat: "yy-mm-dd"				
				
			})
			
			$("#timepicker").timepicker({
			    timeFormat: 'h:mm p',
			    interval: 30,
			    minTime: '10',
			    maxTime: '7:30pm',
			    defaultTime: '11',
			    startTime: '10:00',
			    dynamic: false,
			    dropdown: true,
			    scrollbar: true
			});
			
			
		});
	
	</script>
	

</body>
</html>