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
							<input type="text" placeholder="이름" class="form-control" id="nameInput">
							<label class="mt-3">나이 :</label>
							<input type="text" placeholder="견종 나이" class="form-control" id="ageInput">
							
					        <div class="d-flex align-items-center justify-content-center mt-5">
							        <select class="storeInput">
							            <option selected>--지점선택--</option>
							            <c:forEach var="store" items="${storeList }">
							            	<option>${store.store }</option>
							            </c:forEach>
							        </select>			        
					        </div>

							<div class="mt-5">
						        <input type="file" id="fileInput" onchange="addFile(this);" multiple />
						        <div class="file-list"></div>
							</div>
							    
							<button type="button" class="btn btn-primary mt-5 btn-block" id="saveBtn">등록</button>					
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
	<script>
		$(document).ready(function() {

			$("#saveBtn").on("click", function() {
				
				let name = $("#nameInput").val();
				let age = $("#ageInput").val();
				
				let file = $("#fileInput")[0];
				
				if(name == ""){
					alert("이름을 입력해주세요");
					return ;
				}
				
				if(age == ""){
					alert("나이를 입력해주세요");
					return ;
				}
				
				if(file == ""){
					alert("파일을 선택해주세요");
					return ;
				}
				
				
				
				function addFile(obj){
				    var maxFileCnt = 5;   // 첨부파일 최대 개수
				    var attFileCnt = document.querySelectorAll('.filebox').length;    // 기존 추가된 첨부파일 개수
				    var remainFileCnt = maxFileCnt - attFileCnt;    // 추가로 첨부가능한 개수
				    var curFileCnt = obj.files.length;  // 현재 선택된 첨부파일 개수

				    // 첨부파일 개수 확인
				    if (curFileCnt > remainFileCnt) {
				        alert("첨부파일은 최대 " + maxFileCnt + "개 까지 첨부 가능합니다.");
				    }

				    for (var i = 0; i < Math.min(curFileCnt, remainFileCnt); i++) {

				        const file = obj.files[i];

				        // 첨부파일 검증
				        if (validation(file)) {
				            // 파일 배열에 담기
				            var reader = new FileReader();
				            reader.onload = function () {
				                filesArr.push(file);
				            };
				            reader.readAsDataURL(file)

				            // 목록 추가
				            let htmlData = '';
				            htmlData += '<div id="file' + fileNo + '" class="filebox">';
				            htmlData += '   <p class="name">' + file.name + '</p>';
				            htmlData += '   <a class="delete" onclick="deleteFile(' + fileNo + ');"><i class="far fa-minus-square"></i></a>';
				            htmlData += '</div>';
				            $('.file-list').append(htmlData);
				            fileNo++;
				        } else {
				            continue;
				        }
				    }
				    // 초기화
				    document.querySelector("input[type=file]").value = "";
				}



				/* 첨부파일 검증 */
				function validation(obj){
				    const fileTypes = ['application/pdf', 'image/gif', 'image/jpeg', 'image/png', 'image/bmp', 'image/tif', 'application/haansofthwp', 'application/x-hwp'];
				    if (obj.name.length > 100) {
				        alert("파일명이 100자 이상인 파일은 제외되었습니다.");
				        return false;
				    } else if (obj.size > (100 * 1024 * 1024)) {
				        alert("최대 파일 용량인 100MB를 초과한 파일은 제외되었습니다.");
				        return false;
				    } else if (obj.name.lastIndexOf('.') == -1) {
				        alert("확장자가 없는 파일은 제외되었습니다.");
				        return false;
				    } else if (!fileTypes.includes(obj.type)) {
				        alert("첨부가 불가능한 파일은 제외되었습니다.");
				        return false;
				    } else {
				        return true;
				    }
				}

				/* 첨부파일 삭제 */
				function deleteFile(num) {
				    document.querySelector("#file" + num).remove();
				    filesArr[num].is_delete = true;
				}

				/* 폼 전송 */
				function submitForm() {
				    // 폼데이터 담기
				    var form = document.querySelector("form");
				    var formData = new FormData(form);
				    for (var i = 0; i < filesArr.length; i++) {
				        // 삭제되지 않은 파일만 폼데이터에 담기
				        if (!filesArr[i].is_delete) {
				            formData.append("attach_file", filesArr[i]);
				        }
				    }

				    $.ajax({
				        method: 'POST',
				        url: '/register',
				        dataType: 'json',
				        data: formData,
				        async: true,
				        timeout: 30000,
				        cache: false,
				        headers: {'cache-control': 'no-cache', 'pragma': 'no-cache'},
				        success: function () {
				            alert("파일업로드 성공");
				        },
				        error: function (xhr, desc, err) {
				            alert('에러가 발생 하였습니다.');
				            return;
				        }
				    })
				}
				
				
				
				
				
			});			

			
		});
	
	</script>
	
	

</body>
</html>