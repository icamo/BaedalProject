<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file= "/WEB-INF/view/resources/include/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
</head>
<body>
	<div id="wrap">
		<!-- 헤더 -->
		<%@ include file="/WEB-INF/view/resources/include/header.jsp" %>
		<div id="container">
		<!-- 내용 -->
		<div class="content">
			<div class="inner">
				<div class="table_wrap">
					<h2 class="tit">관리자 등록</h2>
					<!-- 
						todo: 가입 작업 테이블 (id, name값 임의로 작성해 두었으니 작업시 변경하시면 됩니다~)
					 -->
					<form:form action="adminJoin" method="post" name="frm" modelAttribute="adminCommand">
						<table>
							<caption>다음 내용을 모두 작성하세요</caption>
							<colgroup>
								<col style="width:50%;"/>
								<col style="width:50%;"/>
							</colgroup>
							<tbody>
								<tr>
									<th>
										<label for="adminId">
											아이디
										</label>
									</th>
									<td>
										<form:input path="adminId"/>
										<form:errors path="adminId"/>										
									</td>
								</tr>
								<tr>
									<th>
										<label for="adminNum">사원번호</label>
									</th>
									<td>
										<form:input path="adminNum"/>
										<form:errors path="adminNum"/>
									</td>
								</tr>
								<tr>
									<th>
										<label for="adminPw">
											비밀번호
										</label>
									</th>
									<td>
										<form:password path="adminPw"/>
										<form:errors path="adminPw"/>
									</td>
								</tr>
								<tr>
									<th>
										<label for="adminPwCon">비밀번호확인</label>
									</th>
									<td>
										<form:password path="adminPwCon" />
										<form:errors path="adminPwCon" />
									</td>
								</tr>
																	<tr>
									<th>
										<label for="adminName">이름</label>	
									</th>
									<td>
										<form:input path="adminName" />
										<form:errors path="adminName" />
									</td>
								</tr>
																	<tr>
									<th>
										<label for="Email">이메일</label>	
									</th>
									<td>
										<form:input path="adminEmail" />
										<form:errors path="adminEmail" />
									</td>
								</tr>
								<tr>
									<th>
										<label for="adminContact">연락처</label>
									</th>
									<td>
										<form:input path="adminContact"/>
										<form:errors path="adminContact"/>
									</td>
								</tr>
								
								<tr>
									<th>
										<label for="adminDeptmt">부서명</label>
									</th>
									<td>
										<form:input path="adminDept"/>
										<form:errors path="adminDept"/>
									</td>
								</tr>
								
								<tr>
									<th>
										<label for="adminJob">직급</label>
									</th>
									<td>
										<form:input path="adminJob" />
										<form:errors path="adminJob" />
									</td>
								</tr>
								
								<tr>
									<td colspan="2" class="last" align="center">
										<input type="submit" value="등록하기" />
										<input type="reset" value="초기화" />
									</td>
								</tr>
							</tbody>
						</table>
					</form:form>
				</div>
			</div>
		</div>
		<!-- 내용 -->
		</div>
		<!-- footer -->
		<%@ include file="/WEB-INF/view/resources/include/footer.jsp" %>	
	</div>
</body>
<script src="<%=request.getContextPath() %>/resources/asset/js/jquery-2.2.24.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/asset/js/main.js"></script>
</html>