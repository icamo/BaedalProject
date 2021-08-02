<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- css  -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/main.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/sub.css" />
<title>Insert title here</title>
<!-- js -->
<script src="<%=request.getContextPath() %>/resources/asset/js/jquery-2.2.24.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/asset/js/main.js"></script>
<style>
	caption{display:none;}
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
<body>
	<%@ include file="/WEB-INF/view/resources/include/header.jsp" %>
	<div class="container">
		<div class="container_inner">
			<div class="content">
				<div class="inner">
					회원가입 폼
					<%-- <form:form action="memJoin" method="post" name="frm" modelAttribute="memberCommand">
						<table>
							<caption>회원가입</caption>
							<colgroup>
								<col style="width:50%" />
								<col style="width:50%" />
							</colgroup>
							<tbody>
								<tr>
									<th>아이디</th>
									<td>
										<form:input path="memId" />
										<form:errors path="memId" />
									</td>
								</tr>
								<tr>
									<th>비밀번호</th>
									<td>
										<form:password path="memPw"/>
										<form:errors path="memPw" />
									</td>
								</tr>
								<tr>
									<th>비밀번호 확인</th>
									<td>
										<form:password  path="memPwCon"/>
										<form:errors path="memPwCon" />
									</td>
								</tr>
								<tr>
									<th>이름</th>
									<td>
										<form:input path="memName" />
										<form:errors path="memName" />
									</td>
								</tr>
								<tr>
									<th>우편번호</th>
									<td>
										<form:input path="postNumber" id="sample4_postCode" readonly="readonly"/>
										<form:errors path="postNumber" />
									</td>
								</tr>
								<tr>
									<th>주소</th>
									<td>
										<form:input path="memAddress" id="sample4_roadAddress" readonly="readonly"/>
										<a href="javascript:sample4_execDaumPostCode();">주소검색</a>
									</td>
								</tr>
								<tr>
									<th>상세주소</th>
									<td>
										<form:input path="detailAdd" />
										<form:errors path="detailAdd" />
									</td>
								</tr>
								<tr>
									<th>연락처</th>
									<td>
										<form:input path="memPhone" />
										<form:errors path="memPhone" />
									</td>
								</tr>
								<tr>
									<th>이메일</th>
									<td>
										<form:input path="memEmail" />
										<form:errors path="memEmail" />
									</td>
								</tr>
								<tr>
									<th>생년월일</th>
									<td>
										<input type="date" name="memBirth" />
										<form:errors path="memBirth" />
									</td>
								</tr>
								<tr>
									<th>성별</th>
									<td>
										<label for="m1">
											<form:radiobutton path="memGender" value="M" id="m1"/> 남
										</label>
										<label for="w1">
											<form:radiobutton path="memGender" value="F" id="w1"/> 여
										</label>
									</td>
								</tr>
								<tr>
									<th>계좌번호</th>
									<td>
										<form:input path="memAccount" />
										<form:errors path="memAccount" />
									</td>
								</tr>
								<tr>
									<th>이메일 수신여부</th>
									<td>
										<label for="y1">
											<form:radiobutton path="memEmailCk" value="Y" id="y1" /> 예	
										</label>
										<label for="n1">
											<form:radiobutton path="memEmailCk" value="Y" id="n1" /> 아니오
										</label>
									</td>
								</tr>
								<tr>
									<td colspan="2">
										<input type="submit" value="가입완료" />
										<input type="reset" value="취소" />
										<input type="button" value="가입안함 " onclick="javascript:location.href='/SpringMybatisProject/main'"/>
									</td>
								</tr>
							</tbody>
						</table>
					</form:form> --%>
				</div>
			</div>
		</div>
	</div>
</body>
</html>