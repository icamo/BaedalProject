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
<style>
	#header{position:fixed;}
</style>
</head>
<body>
<%@ include file="/WEB-INF/view/resources/include/skipNav.jsp" %>
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
					<div class="col col01">
						<span>치킨</span>
						<img src="<%=request.getContextPath() %>/resources/asset/image/main/category-02.png" alt="치킨" />
					</div>
					<div class="col col02">
						<span>피자</span>
						<img src="<%=request.getContextPath() %>/resources/asset/image/main/category-03.png" alt="피자" />
					</div>
					<div class="col col03">
						<span>족발/보쌈</span>
						<img src="<%=request.getContextPath() %>/resources/asset/image/main/category-07.png" alt="" />
					</div>
					<div class="col col04">
						<span>중국집</span>
						<img src="<%=request.getContextPath() %>/resources/asset/image/main/category-04.png" alt="" />
					</div>
					<div class="col col05">
						<span>한식</span>
						<img src="<%=request.getContextPath() %>/resources/asset/image/main/category-05.png" alt="" />
					</div>
					<div class="col col06">
						<span>일식/돈까스</span>
						<img src="<%=request.getContextPath() %>/resources/asset/image/main/category-06.png" alt="" />
					</div>
					<div class="col col07">
						<span>분식</span>
						<img src="<%=request.getContextPath() %>/resources/asset/image/main/category-09.png" alt="" />
					</div>
					<div class="col col08">
						<span>편의점</span>
						<img src="<%=request.getContextPath() %>/resources/asset/image/main/category-convenience-store.png" alt="" />
					</div>
					<div class="col col09">
						<span>디저트/카페</span>
						<img src="<%=request.getContextPath() %>/resources/asset/image/main/category-11.png" alt="" />
					</div>
					<div class="col col10">
						<span>양식</span>
						<img src="<%=request.getContextPath() %>/resources/asset/image/main/category-10.png" alt="" />
					</div>
					<div class="col col11">
						<span>1인분</span>
						<img src="<%=request.getContextPath() %>/resources/asset/image/main/category-onedish.png" alt="" />
					</div>
					<div class="col col12">
						<span>그외</span>
						<img src="<%=request.getContextPath() %>/resources/asset/image/main/category-01.png" alt="" />
					</div>	
				</div>
			</div>
			<!-- //카테고리  -->
		</div>
		<%@ include file="/WEB-INF/view/resources/include/footer.jsp" %>
	</div>
</body>
</html>