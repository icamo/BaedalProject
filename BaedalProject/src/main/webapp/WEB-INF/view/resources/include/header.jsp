<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		<c:if test="${empty authInfo}">
		<div class="login">
			<ul>
				<li><a href="/BaedalProject/logInPage">로그인</a></li>
				<li><a href="/BaedalProject/register/memRegist">회원가입</a></li>
			</ul>
		</div>
		</c:if>
		<!-- //로그인 안되었을때 -->
		<!-- 로그인 되었을 때 -->
		<c:if test="${not empty authInfo}">
		<div class="login">
			<ul>
				<li><a href="/BaedalProject/logOut" style="font-size : 18px">로그아웃</a></li>
				<li><a href="/BaedalProject/edit/myPageMain" style="font-size : 18px">마이페이지</a></li>
			</ul>
		</div>
		</c:if>
		<!-- //로그인 되었을 때  -->
	</div>
</div>