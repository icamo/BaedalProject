<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<div id="middle">
		<!-- 좌측메뉴 -->
		<%@ include file="/WEB-INF/view/resources/include/menu.jsp" %>
		<!-- 좌측메뉴 -->
		
		<!-- 내용 -->
		<div id="content">
			<div class="inner-content">
				<div>
				회원공지등록입니다.
					<div>
						<form id="" name="" action="#">
							<table border="1">
							<colgroup>
										<col style="width:20%;"/>
										<col style="width:80%;"/>
							</colgroup>
								<tr><th>제목</th><td><input type="text" name="" id="" size="59"/></td></tr>
								<tr><th colspan="2">내용</th></tr>
								<tr><td colspan="2"><textarea rows="20" cols="70" name=""></textarea></td></tr>
								<tr><th>파일첨부</th><td><input type="file" name=""/></td></tr>
								<tr><td colspan="2" align="center">
								<input type="submit" value="등록" />
								<input type="button" value="취소" onclick="javascript:history.back()"/></td></tr>						
							</table>
						</form>
					</div>
				</div>
			</div>
		</div>
		<!-- 내용 -->
		</div>
		<!-- footer -->
		<%@ include file="/WEB-INF/view/resources/include/footer.jsp" %>	
	</div>
</body>
</html>