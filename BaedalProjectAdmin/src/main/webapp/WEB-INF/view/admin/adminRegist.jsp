<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
관리자 등록페이지입니다.
<%@ include file="/WEB-INF/view/resources/include/header.jsp" %>
	<div class="container">
		<div class="container_inner">
			<div class="content">
				<div class="inner">
					<div class="table_wrap">
						<h2 class="tit">관리자 등록</h2>
						<!-- 
							todo: 가입 작업 테이블 (id, name값 임의로 작성해 두었으니 작업시 변경하시면 됩니다~)
						 -->
						<form action="#">
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
											<input type="text" id="adminId" name="adminId" />
										</td>
									</tr>
									<tr>
										<th>
											<label for="adminPh">사원번호</label>
										</th>
										<td>
											<input type="text" id="adminPh" name="adminPh" />
										</td>
									</tr>
									<tr>
										<th>
											<label for="adminPw">
												비밀번호
											</label>
										</th>
										<td>
											<input type="password" id="adminPw" name="adminPw" />
										</td>
									</tr>
									<tr>
										<th>
											<label for="adminPwCon">비밀번호확인</label>
										</th>
										<td>
											<input type="password" id="adminPwCon" name="adminPwCon" />
										</td>
									</tr>
																		<tr>
										<th>
											<label for="Email">이메일</label>	
										</th>
										<td>
											<input type="email" id="Email" name="adminEmail" />
										</td>
									</tr>
									<tr>
										<th>
											<label for="userPh">핸드폰번호</label>
										</th>
										<td>
											<input type="tel" id="adminPh" name="adminPh" />
										</td>
									</tr>
									
									<tr>
										<th>
											<label for="adminDeptmt">부서명</label>
										</th>
										<td>
											<input type="text" id="adminDeptmt" name="adminDeptmt" />
										</td>
									</tr>
									
									<tr>
										<th>
											<label for="adminJobid">직급</label>
										</th>
										<td>
											<input type="text" id="adminJobid" name="adminJobid" />
										</td>
									</tr>
									
									<tr>
										<td colspan="2" class="last">
											<input type="submit" value="등록하기" />
										</td>
									</tr>
								</tbody>
							</table>
						</form>
					</div>
				</div>
			</div>
		</div>
		<%@ include file="/WEB-INF/view/resources/include/footer.jsp" %>
	</div>
</body>
</html>