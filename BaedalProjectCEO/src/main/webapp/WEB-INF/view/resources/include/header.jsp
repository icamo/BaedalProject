<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

		<div id="header">
			<div class="header_inner">
				<h1 class="logo">
					<a href="/BaedalProjectCEO/main">저기요 사장님페이지</a>
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
				
				<!-- 로그인 되었을 때 등장  -->
					<div class="login">
						<ul>
							<c:if test="${!empty authInfo}">
								<c:if test="${authInfo.grade == 1}">
									<li>
										<a href="/BaedalProjectCEO/ceologin/logOut">로그아웃</a>
									</li>
								</c:if>
							</c:if>
							<c:if test="${empty authInfo}">
								<li class="last">
									<a href="/BaedalProjectCEO/register/memRegist">회원가입</a>	
								</li>
							</c:if>
						</ul>
					</div>
				<!-- //로그인 되었을 때 등장  -->
			</div>
		</div>