<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- css  -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/asset/css/common.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/asset/css/main.css" />
<style>
#header {
	position: fixed;
}
#comList {
	width : 50%;	
}
#comTable td {
	padding : 10px;
} 
#topCategory div {
	margin : 10px 10px 50px 10px;	
	float : left;
}
#topCategory div:hover {
	background: gray;
}
</style>
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
	function sample4_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
						// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var roadAddr = data.roadAddress; // 도로명 주소 변수
						var extraRoadAddr = ''; // 참고 항목 변수
						// 법정동명이 있을 경우 추가한다. (법정리는 제외)
						// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
						if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
							extraRoadAddr += data.bname;
						}
						// 건물명이 있고, 공동주택일 경우 추가한다.
						if (data.buildingName !== '' && data.apartment === 'Y') {
							extraRoadAddr += (extraRoadAddr !== '' ? ', '
									+ data.buildingName : data.buildingName);
						}
						// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
						if (extraRoadAddr !== '') {
							extraRoadAddr = ' (' + extraRoadAddr + ')';
						}
						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('sample4_postcode').value = data.zonecode;
						document.getElementById("sample4_roadAddress").value = roadAddr;

						// 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
						if (roadAddr !== '') {
							document.getElementById("sample4_extraAddress").value = extraRoadAddr;
						} else {
							document.getElementById("sample4_extraAddress").value = '';
						}
						var guideTextBox = document.getElementById("guide");
						// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
						if (data.autoRoadAddress) {
							var expRoadAddr = data.autoRoadAddress
									+ extraRoadAddr;
							guideTextBox.innerHTML = '(예상 도로명 주소 : '
									+ expRoadAddr + ')';
							guideTextBox.style.display = 'block';
						} else {
							guideTextBox.innerHTML = '';
							guideTextBox.style.display = 'none';
						}
					}
				}).open();
	}
</script>
</head>
<body>
	<%@ include file="/WEB-INF/view/resources/include/skipNav.jsp"%>
	<div id="wrap">
		<%@ include file="/WEB-INF/view/resources/include/header.jsp"%>
		<div id="container">
			<!-- 검색창 -->
			<div class="visual">
				<div class="inner">
					<div class="search">
						<dl>							
							<dd class="form_wrap">
								<form action="#">
									<!-- 주소 작업  -->
									<input type="text" id="sample4_postcode" placeholder="우편번호"
										hidden="hidden"> <input type="text"
										id="sample4_roadAddress" placeholder="건물명, 도로명, 지번으로 검색하세요." />
								</form>
								<button type="button" class="addrBtn" id="btn"
									onclick="location.href='javascript:sample4_execDaumPostcode()'">검색</button>
							</dd>
						</dl>
					</div>
				</div>
			</div>
			<!-- //검색창 -->
			<!-- 상단카테고리 -->
			<div id="topCategory">				
				<a href="category?category=chicken">
					<div>
						<span>치킨</span>
					</div>
				</a>
				<a href="category?category=pizza">
					<div>
						<span>피자</span>
					</div>
				</a>
				<a href="category?category=jokbo">
					<div>
						<span>족발/보쌈</span>
					</div>
				</a>
				<a href="category?category=china">
					<div>
						<span>중국집</span>
					</div>
				</a>
				<a href="category?category=hansik">
					<div>
						<span>한식</span>
					</div>
				</a>
				<a href="category?category=japan">
					<div>
						<span>일식/돈까스</span>
					</div>
				</a>
				<a href="category?category=boonsik">
					<div>
						<span>분식</span>
					</div>
				</a>
				<a href="category?category=conbini">
					<div>
						<span>편의점</span>
					</div>
				</a>
				<a href="category?category=cafe">
					<div>
						<span>디저트/카페</span>
					</div>
				</a>
				<a href="category?category=yangsik">
					<div>
						<span>양식</span>
					</div>
				</a>
				<a href="category?category=solo">
					<div>
						<span>1인분</span>
					</div>
				</a>
				<a href="#">
					<div>
						<span>그외</span>
					</div>
				</a>
			</div>
			<!-- //상단카테고리 -->
			<!-- 업체 리스트 -->
			<div id="comList">
				<table id="comTable">
					<tr>
						<c:forEach items="${lists }" var="dto" varStatus="cnt">
						<td>
							<a href="../foods/comDetail?comId=${dto.comId }">
							<table border="1">
								<tr>
									<td rowspan="3">${dto.comImg }업체사진</td>
									<td colspan="3">${dto.comName }</td>
								</tr>
								<tr>
									<td>평점</td>
									<td>리뷰</td>
									<td>사장님댓글수</td>
								</tr>
								<tr>
									<td colspan="3">${dto.minPrice }원이상 배달</td>
								</tr>
							</table>
							</a>
						</td>						
							<c:if test="${cnt.count % 2 == 0 }">
					</tr>
					<tr>
						</c:if>
						</c:forEach>
					</tr>
				</table>
			</div>
			<!-- //업체 리스트  -->
		</div>
		<%@ include file="/WEB-INF/view/resources/include/footer.jsp"%>
	</div>
</body>
</html>