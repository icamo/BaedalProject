<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- css  -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/asset/css/common.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/asset/css/sub.css" />
<!-- js -->
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.3.0/jquery.form.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	
	window.onload = function(){
		onClick('Menu');
	}
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
	
	function onClick(page){
		
		$.ajax({
			type : "post",
			data: "page=" +  page + "&comId=" + ${dto.comId}, 
			url : "onClick",
			dataType : "html",
			success : function(result){
				$("#content").html(result);
			},
			error : function(){
				alert("오류가 발생하였습니다.");
				return;
			}
		});
	}
	
	function cartOneDel(menuId){		
		
		$.ajax({
			type : "post",
			data: "menuId=" + menuId, 
			url : "cartOneDel",
			dataType : "html",
			success : function(result){
				window.location.reload();
			},
			error : function(){
				alert("오류가 발생하였습니다.");
				return;
			}
		});
	}
	
	function cartAllDel(){
		$.ajax({
			type : "post",
			url : "cartAllDel",
			dataType : "html",
			success : function(result){
				window.location.reload();
			},
			error : function(){
				alert("오류가 발생하였습니다.");
				return;
			}
		});
	}
	
	function like(comId){
		$.ajax({
			type : "post",
			data : "comId=" + comId,
			url : "storeLike",
			dataType : "html",
			success : function(result){
				if(result.trim() == "0"){
					$("#wish").html("♡");
				}else{
					$("#wish").html("♥");
				}
			},
			error : function(){
				alert("오류가 발생하였습니다.");
				return;
			}
		});
	}
	
	function payMent(){		
		window.open("/BaedalProject/order/foodsOrder?comId=" + ${dto.comId},'payment','width=500,height=800');
	}
	
</script>
<style>
	.visual{padding-top:0;}
</style>
</head>
<body class="com_detail">
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
			<!-- 상단카테고리 -->
			<%@ include file="/WEB-INF/view/resources/include/top_category.jsp"%>
			<!-- //상단카테고리 -->
			<div class="detail_area">
				<!-- 장바구니 -->
				<div class="cart">
					<table>
						<caption>주문해주세요.</caption>
						<colgroup>
							<col style="width:50%;"/>
							<col style="width:50%;"/>
						</colgroup>
						<tbody>
							<tr>
								<td>주문표</td>
								<td>
									<a href="javascript:cartAllDel()">전체삭제</a>
								</td>
							</tr>
							<c:set var="total" value="0"/>
							<c:forEach items="${cartList }" var="cartList">
								<input type="hidden" id="cartComId" value="${cartList.comId }">
									<tr>
										<td>${cartList.menuName }</td>
									</tr>
									<tr>
										<td>${cartList.totalPrice }원</td>
									</tr>
									<tr>
										<td>${cartList.menuCount }개</td>
									</tr>
									<tr>
										<td>
											<a href="javascript:cartOneDel('${cartList.menuId }')">삭제</a>
										</td>
									</tr>
								<c:set var="total" value="${total + cartList.totalPrice}"/>
							</c:forEach>
							<tr>
								<td>배달요금 ${dto.deliveryPay }원 별도</td>
								<td>합계 : <c:out value="${total }"/>원</td>
							</tr>
						</tbody>
					</table>
					<a href="/BaedalProject/order/foodsOrder?comId=${dto.comId}">
						<input type="button" value="결제하기"/>
					</a>
				</div>
				<!-- //장바구니 -->
				<!-- 업체상세 -->
				<div class="comDetail">
					<table>
						<tbody>
							<tr>
								<th colspan="2">${dto.comName }</th>
							</tr>
							<tr>
								<td>업체사진
								<img src="<%=request.getContextPath() %>/../BaedalProjectCEO/myShop/comImg/${dto.comImg }" />
								</td>
								<td>
									<ul>
										<li>평점</li>
										<li>최소주문금액 ${dto.minPrice }원</li>
										<li>배달시간 ${dto.businessTime }</li>
										<li>
											<!-- 찜 기능 -->
											<c:if test="${not empty authInfo && dto.comLike == false}">	
												<a href="javascript:like('${dto.comId}')">찜 <span id="wish">♡</span></a>					
											</c:if>
											<c:if test="${not empty authInfo && dto.comLike == true}">
												<a href="javascript:like('${dto.comId}')">찜 <span id="wish">♥</span></a>										
											</c:if>
											<!-- //찜 기능 -->
										</li>
									</ul>
								</td>
							</tr>
						</tbody>
					</table>
					<table>
						<colgroup>
							<col style="width:33.3%"/>
							<col style="width:33.3%"/>
							<col style="width:33.3%"/>
						</colgroup>
						<tbody>
							<tr>
								<td>
									<button type="button" onclick="onClick('Menu')">메뉴</button>
								</td>
								<td>
									<button type="button" onclick="onClick('Review')">리뷰</button>
								</td>
								<td>
									<button type="button"  onclick="onClick('Info')">정보</button>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<div id="content"></div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- //업체상세  -->	
			</div>		
		</div>
		<%@ include file="/WEB-INF/view/resources/include/footer.jsp"%>
	</div>
</body>
</html>