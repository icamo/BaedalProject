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
</head>
<body>
	<div id="skipNavi">
		<a href="#header">헤더 바로가기</a>
		<a href="#container">컨텐츠 바로가기</a>
	</div>
	<div id="wrap">
		<%@ include file="/WEB-INF/view/resources/include/header.jsp" %>
		<div id="container">
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
									<input type="text" placeholder="건물명, 도로명, 지번으로 검색하세요."/>
								</form>
								<button type="button" class="addrBtn" id="btn">검색</button>
							</dd>
						</dl>	
					</div>
				</div>
			</div>
			<!-- //검색창 -->
			<!-- 카테고리 -->
			<div class="category">
				<div class="inner">
					<div class="col col1">
						<ul>
							<li>치킨</li>
							<li>피자</li>
							<li>족발/보쌈</li>
							<li>중국집</li>
						</ul>
					</div>
					<div class="col col2">
						<ul>
							<li>한식</li>
							<li>일식/돈까스</li>
							<li>분식</li>
							<li>편의점</li>
						</ul>
					</div>
					<div class="col col3">
						<ul>
							<li>디저트/카페</li>
							<li>양식</li>
							<li>1인분</li>
							<li>그외</li>
						</ul>
					</div>
				</div>
			</div>
			<!-- //카테고리  -->
		</div>
		<%@ include file="/WEB-INF/view/resources/include/footer.jsp" %>
	</div>
</body>
</html>