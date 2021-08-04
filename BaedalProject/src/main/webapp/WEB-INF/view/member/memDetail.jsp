<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- css  -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/sub.css" />
<title>Insert title here</title>
</head>
<body class="memDetail">
	<div class="wrap">
		<%@ include file="/WEB-INF/view/resources/include/header.jsp" %>
		<div id="container">
			<div class="content">
				<div class="inner">
					<div class="table_wrap">
						<h2 class="tit">나의 상세 정보</h2>
						<form action="#">
							<table>
								<colgroup>
									<col style="width:50%" />
									<col style="width:50%"/>
								</colgroup>
								<tbody>
									<tr>
										<th>아이디</th>
										<td>
											$$$
										</td>
									</tr>
									<tr>
										<th>비밀번호</th>
										<td>
											<input type="text" />
										</td>
									</tr>
									<tr>
										<th>비밀번호확인</th>
										<td>
											<input type="password" />
										</td>
									</tr>
									<tr>
										<th>
											이메일
										</th>
										<td>
											<input type="email" />
										</td>
									</tr>
									<tr>
										<th>닉네임</th>
										<td>
											<input type="text" />
										</td>
									</tr>
									<tr>
										<th>
											핸드폰번호
										</th>
										<td>
											<input type="text" />
										</td>
									</tr>
									<tr>
										<td colspan="2" class="last">
											<ul>
												<li>
													<a href="memSujung">수정</a>
												</li>
												<li>
													<a href="myPageMain">이전</a>
												</li>
											</ul>						
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