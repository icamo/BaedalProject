<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="/WEB-INF/view/resources/include/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/sub.css" />
</head>
<body class="msI">
	<div id="wrap">
		<!-- 헤더 -->
		<%@ include file="/WEB-INF/view/resources/include/header2.jsp" %>
		<div id="container">
			<div class="content">
				<!-- 좌측메뉴 -->
				<%@ include file="/WEB-INF/view/resources/include/menu2.jsp" %>
				<!-- //좌측메뉴  -->
				<!-- 내용 -->
				<div class="right_cont">
					<div class="inner">
						<h2 class="tit">내 가게 정보 변경</h2>
						<form action="shopUpdate" method="post" >
						<input type="hidden" name="comId" value="${dto.comId}" />
							<table>
								<caption>내 가게 정보 변경</caption>
								<colgroup>
									<col style="width:50%"/>
									<col style="width:50%"/>
								</colgroup>
								<tbody>
									<tr>
										<th>업체명</th>
										<td>${dto.comName}</td>
									</tr>
									<tr>
										<th>업체주소</th>
										<td>${dto.comAddress}</td>
									</tr>
									<tr>
										<th>사업자 정보</th>
										<td>${dto.ceoName}</td>
									</tr>
									<tr>
										<th>사업자 번호</th>
										<td>${dto.comNum}</td>
									</tr>
									<tr>
										<th>
											<label for="deliverypay">배달료</label>
										</th>
										<td>
											<input type="text" id="deliverypay" name="deliverypay" value="${dto.deliverypay}" />
										</td>
									</tr>
									<tr>
										<th>
											영업시간
										</th>
										<td>
											<input type="text" id="businesstime" name="businesstime"  value="${dto.businesstime}"/>
										</td>
									</tr>
									<tr>
										<th>업체 전화번호</th>
										<td>
											<input type="text" id="comPhone" name="comPhone" value="${dto.comPhone}" />
										</td>
									</tr>
									<tr>
									<td colspan="2" class="last">
										<input type="submit" value="등록" />
									</td>
								</tr>
								</tbody>
							</table>
						</form>
					</div>
				</div>
				<!-- //내용 -->
			</div>
		</div>
		<!-- footer -->
		<%@ include file="/WEB-INF/view/resources/include/footer.jsp" %>
	</div>
</body>
</html>