<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ include file="/WEB-INF/view/resources/include/taglib.jsp" %>
		<div id="header">
			<div class="header_inner">
				<h1 class="logo">
					<a href="/BaedalProjectAdmin/main">저기요 관리자페이지</a>
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
				<div class="login">
					<ul>
					<c:if test="${empty authInfo }">
						<li>
							<a href="/BaedalProjectAdmin/admin/login">로그인</a>
						</li>
						<li>
							<a href="/BaedalProjectAdmin/admin/regist">관리자 등록</a>	
						</li>
					</c:if>
					<c:if test="${!empty authInfo}">
						<li>
		 					<a href="/BaedalProjectAdmin/login/logout">로그아웃</a>
		 				</li>
		 				<li>
		 					<a href="/BaedalProjectAdmin/admins/myInfo">My Info</a>
		 				</li>
		 			</c:if>
					</ul>
				</div>
			</div>
		</div>