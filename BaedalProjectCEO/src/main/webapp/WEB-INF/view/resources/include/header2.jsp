<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="/WEB-INF/view/resources/include/taglib.jsp" %>
		<div id="header" class="header2">
			<div class="header_inner">
				<h1 class="logo">
					<a href="/BaedalProjectCEO/myShop/main?comId=${authInfo.comId}">저기요 ${authInfo.comName }</a>
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
									<li>
										<a href="/BaedalProjectCEO/main">메인으로</a>
									</li>
								</c:if>
							</c:if>
						</ul>
					</div>
				<!-- //로그인 되었을 때 등장  -->
			</div>
		</div>