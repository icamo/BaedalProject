<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
   <%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/sub.css" />
<style>
	.menu{height:835px;}
</style>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
<body class="shopResist">
	<div id="wrap">
		<!-- 헤더 -->
		<%@ include file="/WEB-INF/view/resources/include/header.jsp" %>
		<div id="container">
			<div class="content">
				<!-- 좌측메뉴 -->
				<%@ include file="/WEB-INF/view/resources/include/menu.jsp" %>
				<!-- //좌측메뉴  -->
				<!-- 내용 -->
				<div class="right_cont">
					<div class="inner">
						<h2 class="tit">입점 신청</h2>
						<form:form action="/BaedalProjectCEO/shop/shopJoin" method="post" name="frm" modelAttribute="companyCommand">
							<table>
								<caption>입점 신청</caption>
								<colgroup>
									<col style="width:50%"/>
									<col style="width:auto"/>
								</colgroup>
								<tbody>
									<tr>
										<th>
											<label for="ceoName">대표명</label>
										</th>
										<td>
											<form:input path="ceoName" id="ceoName" />
											<form:errors path="ceoName" />
										</td>
									</tr>
									<tr>
										<th>
											<label for="conNum">사업자 번호</label>
										</th>
										<td>
											<form:input path="comNum" id="conNum" />
											<form:errors path="comNum" />
										</td>
									</tr>
									 <tr>
										<th>
											<label for="comName">업체명</label>
										</th>
										<td>
											<form:input path="comName" />
											<form:errors path="comName" />
										</td>
									</tr>
									<tr style="display:none">
										<td><input type="hidden" value="우편번호"/></td>
										<td>
											<form:input type="hidden" path="postNumber" id="sample4_postcode" readonly="readonly" />
										</td>
									</tr>
									<tr>
										<th>
											가게 주소
										</th>
										<td>
											<form:input path="comAddress" id="sample4_roadAddress" readonly="readonly"/>
											<a href="javascript:sample4_execDaumPostcode();" id="addr_sea" class="addr_sea">주소 검색</a>
										</td>
									</tr>
									<tr>
										<th>업종카테고리</th>
										<td>
											<form:select path="comCateGory" >
												<option value="chicken">chicken</option>
												<option value="yangsik">yangsik</option>
												<option value="hansik">hansik</option>
												<option value="china">china</option>
												<option value="japan">japan</option>
												<option value="boonsik">boonsik</option>
											</form:select>
											<form:errors path="comCateGory" />
										</td>
									</tr>
									<tr>
										<th>
											<label for="minPrice">최소금액</label>
										</th>
										<td>
											<form:input path="minPrice" id="minPrice"  type="number"/>
											<form:errors path="minPrice" />
										</td>
									</tr>
									<tr>
										<th>
											<label for="deliverypay">배달료</label>
										</th>
										<td>
											<form:input path="deliverypay" id="deliverypay" />
											<form:errors path="deliverypay" />
										</td>
									</tr>
									<tr>
										<th>
											<label for="freeDelivery">무료배달료</label>
										</th>
										<td>
											<form:input path="freeDelivery" id="freeDelivery" />
											<form:errors path="freeDelivery" />
										</td>
									</tr>
									<tr>
										<th>
											<label for="businesstime">영업시간</label>
										</th>
										<td>
											<form:input path="businesstime" id="businesstime" />
											<form:errors path="businesstime" />
										</td>
									</tr>
									<tr>
										<th>
											<label for="deliveryZone">배달가능지역</label>
										</th>
										<td>
											<form:input path="deliveryZone" id="deliveryZone"/>
											<form:errors path="deliveryZone"/>
										</td>
									</tr>
									<%-- <tr>
										<th>
											<label for="comPhone">가게전화번호</label>
										</th>
										<td>
											<form:input path="comPhone" id="comPhone"/>
											<form:errors path="comPhone"/>
										</td>
									</tr> --%>
									<tr>
										<td colspan="2" class="last">
											<input type="submit" value="신청하기" />
											<input type="button" value="이전으로" onclick="javascript:history.back();" />
										</td>
									</tr>
								</tbody>
							</table>
						</form:form>
					</div>
				</div>
				<!-- 내용 -->
			</div>
		</div>
		<!-- footer -->
		<%@ include file="/WEB-INF/view/resources/include/footer.jsp" %>	
	</div>
</body>
</html>