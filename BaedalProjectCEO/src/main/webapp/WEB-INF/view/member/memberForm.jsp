<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- css  -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/sub.css" />
<title>Insert title here</title>
<!-- js -->
<script src="<%=request.getContextPath() %>/resources/asset/js/jquery-2.2.24.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/asset/js/main.js"></script>
<style>
	.tit{margin-bottom:50px;}
	.inner{width:700px; margin:0 auto; padding:155px 0 220px;}
	.last{border:0 !important;}
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
<body class="sub">
<div id="wrap">
	<%@ include file="/WEB-INF/view/resources/include/header.jsp" %>
	<div class="container">
			<div class="content">
				<div class="inner">
					<div class="table_wrap">
						<h2 class="tit">회원 가입</h2>
						<!-- 
							todo: 회원 가입 작업 테이블 (id, name값 임의로 작성해 두었으니 작업시 변경하시면 됩니다~)
						 -->
						<form:form action="memJoin" method="post" name="frm" modelAttribute="memberCommand">
							<table>
								<caption>회원 가입해주세요.</caption>
								<colgroup>
									<col style="width:50%;"/>
									<col style="width:50%;"/>
								</colgroup>
								<tbody>
									<tr>
										<th>
											<label for="ceoId">
												아이디
											</label>
										</th>
										<td>
											<input type="text" id="ceoId" name="CeoId" />
										</td>
									</tr>
									<tr>
										<th>
											<label for="ceoPw">
												비밀번호
											</label>
										</th>
										<td>
											<input type="password" id="ceoPw" name="ceoPw" />
										</td>
									</tr>
									<tr>
										<th>
											<label for="CeoPwCon">
												비밀번호확인
											</label>
										</th>
										<td>
											<input type="password" id="ceoPwCon" name="ceoPwCon" />
										</td>
									</tr>
									<tr>
										<th>
											<label for="CeoEmail">이메일</label>	
										</th>
										<td>
											<input type="email" id="ceoEmail" name="ceoEmail" />
										</td>
									</tr>
									<tr>
										<th>
											<label for="CeoPh">핸드폰번호</label>
										</th>
										<td>
											<input type="tel" id="ceoPh" name="ceoPh" />
										</td>
									</tr>
									<tr>
										<td colspan="2" class="last">
											<input type="submit" value="가입하기" class="cus_input" />
											<input type="reset" value="취소" class="cus_input" onclick="javascript:history.back();"/>
										</td>
									</tr>
								</tbody>
							</table>
						</form:form>
					</div>
				</div>
			</div>
	</div>
	<%@ include file="/WEB-INF/view/resources/include/footer.jsp" %>
</div>
</body>
</html>