<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
			<div class="main border">
				<div class="rogo d-flex align-items-center justify-content-center">
					<h2 class="d-flex mt-3 mr-3"><b>멍냥멍냥</b></h2>
					<img height="50" src="https://cdn-icons-png.flaticon.com/128/4711/4711003.png">
				</div>
				<div class="ml-4 d-flex justify-content-end">
						<div class="mr-3"><ins> ${userName }님 </ins><a href="/user/logout">로그아웃</a></div>
				</div>
				<div class="menu">
					<nav class="menu nav d-flex ml-2">
	                    <ul class="nav flex-column d-flex">
	                        <li class="nav-item mt-5"><a href="/animal/animal" class="nav-link main-link text-dark"><img width="40" src="https://cdn-icons-png.flaticon.com/128/2437/2437791.png"><b class="ml-3 font-weight-bold">입양안내</b></a></li>
	                        <li class="nav-item mt-5"><a href="/visit/visit" class="nav-link main-link text-dark"><img width="40" src="https://cdn-icons-png.flaticon.com/128/1828/1828871.png"><b class="ml-3">방문예약</b></a></li>
	                        <li class="nav-item mt-5"><a href="/inquiry/inquiryList" class="nav-link main-link text-dark"><img width="40" src="https://cdn-icons-png.flaticon.com/128/5727/5727965.png"><b class="ml-3">문의게시판</b></a></li>
	                        <li class="nav-item mt-5"><a href="/profile/profile" class="nav-link main-link text-dark"><img width="40" src="https://cdn-icons-png.flaticon.com/128/5393/5393061.png"><b class="ml-3">내 프로필</b></a></li>
         		            <li class="nav-item mt-4"><a href="/profile/admin" class="nav-link main-link text-secondary"><img width="30" src="https://cdn-icons-png.flaticon.com/128/5909/5909015.png"><b class="ml-3">관리자페이지</b></a></li>
	                    </ul>
					</nav>
				</div>
			</div>