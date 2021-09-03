<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- css  -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/main.css" />
<title>Insert title here</title>
<!-- js -->
<script src="<%=request.getContextPath() %>/resources/asset/js/jquery-2.2.24.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/asset/js/main.js"></script>

<style>
.content {margin-bottom:100px;}
.content .inner {padding:100px 0;}
.content .tit {padding-top: 0;}
.last input {height: 50px; font-size: 16px; letter-spacing: -1.5px;}
</style>

</head>
<body>
	<%@ include file="/WEB-INF/view/resources/include/skipNav.jsp"%>
	<div id="wrap">
		<%@ include file="/WEB-INF/view/resources/include/header.jsp"%>
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
									<col style="width: 50%;" />
									<col style="width: 50%;" />
								</colgroup>
								<tbody>
									<tr>
										<th>
											<label for="memId"> 아이디 </label>
										</th>
										<td>
											<form:input path="memId" id="memId"/>
											<form:errors path="memId"/>
										</td>
									</tr>
									<tr>
										<th>
											<label for="memPw"> 비밀번호 </label>
										</th>
										<td>
											<form:password path="memPw" id="memPw"/>
											<form:errors path="memPw"/>
										</td>
									</tr>
									<tr>
										<th>
											<label for="memPwCon">비밀번호확인</label>
										</th>
										<td>
											<form:password path="memPwCon" id="memPwCon"/>
											<form:errors path="memPwCon"/>
										</td>
									</tr>
									<tr>
										<th>
											<label for="memNickName">닉네임</label>
										</th>
										<td>
											<form:input path="memNickName" id="memNickName"/>
											<form:errors path="memNickName"/>
										</td>
									</tr>
									<tr>
										<th>
											<label for="memEmail">이메일</label>
										</th>
										<td>
											<form:input path="memEmail" type="email" id="memEmail"/>
											<form:errors path="memEmail"/>
										</td>
										
									</tr>
									<tr>
										<th>
											<label for="memPhone">핸드폰번호</label>
										</th>
										<td>
											<form:input path="memPhone" type="tel" id="memPhone"/>
											<form:errors path="memPhone"/>
										</td>										
									</tr>
									<tr>
										<td colspan="2" class="last">
											<input type="submit"value="가입하기" />
										</td>
									</tr>
								</tbody>
							</table>
						</form:form>
					</div>
				</div>
			</div>
		</div>
		<%@ include file="/WEB-INF/view/resources/include/footer.jsp"%>
	</div>
</body>
</html>