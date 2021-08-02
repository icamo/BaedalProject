<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- css  -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/main.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/swiper-bundle.min.css" />
</head>
<body>
	<div id="skipNavi">
		<a href="#header">헤더 바로가기</a>
		<a href="#container">컨텐츠 바로가기</a>
	</div>
	<div id="wrap">
		<%@ include file="/WEB-INF/view/resources/include/header.jsp" %>
		<div class="container">
			<!-- 검색창 -->
			<div class="visual">
				<div class="inner">
					<div class="search">
						<dl>
							<dt>"어디로 <span>배달</span>해 드릴까요?"</dt>
							<dd>배달 받으실 주소를 검색해주세요.</dd>
							<dd class="form_wrap">
								<form action="#">
									<!-- 주소 작업  -->
									<input type="text" value="주소 검색" placeholder="건물명, 도로명, 지번으로 검색하세요."/>
								</form>
								<button type="button" class="addrBtn" id="btn">검색</button>
							</dd>
						</dl>	
					</div>
				</div>
			</div>
			<!-- //검색창 -->
			<!-- 카테고리 -->
			<div class="content">
				<div class="inner">
					카테고리 들어갈 곳
				</div>
			</div>
			<!-- //카테고리  -->
		</div>
		<%@ include file="/WEB-INF/view/resources/include/footer.jsp" %>
	</div>
</body>
</html>