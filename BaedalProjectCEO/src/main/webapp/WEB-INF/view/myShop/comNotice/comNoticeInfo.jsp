<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/sub.css" />
<style>
	.text{padding:10px; border:3px solid #efefef; box-sizing:border-box; letter-spacing:-1px;}
</style>
</head>
<body class="myShopInfo msI">
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
						<h2 class="tit">가게 공지사항</h2>
						<table>
							<caption>확인</caption>
							<colgroup>
								<col style="width:50%" />
								<col style="width:50%"/>
							</colgroup>
							<thead>
								<tr>
									<th colspan="2">등록된 내용을 확인해주세요.</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th>내용 : </th>
									<td>
										${dto.comNotice}
									</td>
								</tr>
								<tr>
									<th>첨부파일 : </th>
									<td>
										${dto.comNoticeImg}
									</td>
								</tr>
								<tr>
									<td colspan="2" class="last">
										<input type="button" value="이전으로"  onclick="javascript:history.back();"/>	
									</td>
								</tr>
							</tbody>
						</table>
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