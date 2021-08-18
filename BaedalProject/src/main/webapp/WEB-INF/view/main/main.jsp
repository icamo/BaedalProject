<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- css  -->
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/resources/asset/css/main.css" />
<style>
#header {
	position: fixed;
}
</style>
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;                
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }
                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
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
							<dt>
								"어디로 <span>배달</span>해 드릴까요?"
							</dt>
							<dd>배달 받으실 주소를 검색해주세요.</dd>
							<dd class="form_wrap">
								<form action="#">
									<!-- 주소 작업  -->
									<input type="text" id="sample4_postcode" placeholder="우편번호" hidden="hidden">	
									<input type="text" id="sample4_roadAddress" placeholder="건물명, 도로명, 지번으로 검색하세요." />									
								</form>								
								<button type="button" class="addrBtn" id="btn" onclick="location.href='javascript:sample4_execDaumPostcode()'">검색</button>								
							</dd>
						</dl>
					</div>
				</div>
			</div>
			<!-- //검색창 -->
			<!-- 카테고리 -->
			<div class="category">
				<div class="inner">
				<a href="main/category?category=chicken">
					<div class="col col01">
						<span>치킨</span> <img
							src="<%=request.getContextPath() %>/resources/asset/image/main/category-02.png"
							alt="치킨" />
					</div>
				</a>
				<a href="main/category?category=pizza">
					<div class="col col02">
						<span>피자</span> <img
							src="<%=request.getContextPath() %>/resources/asset/image/main/category-03.png"
							alt="피자" />
					</div>
				</a>
				<a href="main/category?category=jokbo">
					<div class="col col03">
						<span>족발/보쌈</span> <img
							src="<%=request.getContextPath() %>/resources/asset/image/main/category-07.png"
							alt="" />
					</div>
				</a>
				<a href="main/category?category=china">
					<div class="col col04">
						<span>중국집</span> <img
							src="<%=request.getContextPath() %>/resources/asset/image/main/category-04.png"
							alt="" />
					</div>
				</a>
				<a href="main/category?category=hansik">
					<div class="col col05">
						<span>한식</span> <img
							src="<%=request.getContextPath() %>/resources/asset/image/main/category-05.png"
							alt="" />
					</div>
				</a>
				<a href="main/category?category=japan">
					<div class="col col06">
						<span>일식/돈까스</span> <img
							src="<%=request.getContextPath() %>/resources/asset/image/main/category-06.png"
							alt="" />
					</div>
				</a>
				<a href="main/category?category=boonsik">
					<div class="col col07">
						<span>분식</span> <img
							src="<%=request.getContextPath() %>/resources/asset/image/main/category-09.png"
							alt="" />
					</div>
				</a>
				<a href="main/category?category=conbini">
					<div class="col col08">
						<span>편의점</span> <img
							src="<%=request.getContextPath() %>/resources/asset/image/main/category-convenience-store.png"
							alt="" />
					</div>
				</a>
				<a href="main/category?category=cafe">
					<div class="col col09">
						<span>디저트/카페</span> <img
							src="<%=request.getContextPath() %>/resources/asset/image/main/category-11.png"
							alt="" />
					</div>
				</a>
				<a href="main/category?category=yangsik">
					<div class="col col10">
						<span>양식</span> <img
							src="<%=request.getContextPath() %>/resources/asset/image/main/category-10.png"
							alt="" />
					</div>
				</a>
				<a href="main/category?category=solo">
					<div class="col col11">
						<span>1인분</span> <img
							src="<%=request.getContextPath() %>/resources/asset/image/main/category-onedish.png"
							alt="" />
					</div>
				</a>
				<a href="#">
					<div class="col col12">
						<span>그외</span> <img
							src="<%=request.getContextPath() %>/resources/asset/image/main/category-01.png"
							alt="" />
					</div>
				</a>
				</div>
			</div>
			<!-- //카테고리  -->
		</div>
		<%@ include file="/WEB-INF/view/resources/include/footer.jsp"%>
	</div>
</body>
</html>