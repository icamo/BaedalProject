<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
		<div id="header">
			<div class="header_inner">
				<h1 class="logo">
					<a href="/BaedalProject/main">저기요</a>
				</h1>
				<!-- <ul id="gnb">
					<li class="depth01">
						<a href="#">제목1</a>
					</li>
					<li class="depth01">
						<a href="#">제목2</a>
					</li>
					<li class="depth01">
						<a href="#">제목3</a>
					</li>
					<li class="depth01">
						<a href="#">제목4</a>
					</li>
					<li class="depth01">
						<a href="#">제목5</a>
					</li>
				</ul> -->
				<!-- todo : ul 밖에다 작업해주시면 됩니다. 햇갈리시면 아무데나 적어주세요. -->
				<!-- 로그인 안되었을 때 -->
				<div class="login">
					<ul>
						<li>
							<a href="/BaedalProject/Login">로그인</a>
						</li>
						<li>
							<a href="/BaedalProject/register/memRegist">회원가입</a>	
						</li>
					</ul>
				</div>
				<!-- //로그인 안되었을때 -->
				<!-- 로그인 되었을 때 -->
				<div class="login" style="display:none;">
					<ul>
						<li><a href="#">로그아웃</a></li>
						<li><a href="#">마이페이지</a></li>
					</ul>
				</div>
				<!-- //로그인 되었을 때  -->
			</div>
		</div>