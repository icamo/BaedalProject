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
						<h2 class="tit">공지사항 등록</h2>
						<form:form action="comNoticeEn" method="post" name="frm">
						<input type="hidden" name="comId" value="${comId}"  />
							<table>
								<caption>공지사항 등록</caption>
								<thead>
									<tr>
										<th>내용을 적어주세요.</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>
											<textarea cols="100" rows="20" id="text" name="comNotice"></textarea>
										</td>
									</tr>
									<tr>
										<td>
											<input type="file" name="comNoticeImg" id="comNoticeImg" />
										</td>
									</tr>
									<tr>
										<td colspan="2" class="last">
											<input type="submit" value="등록하기" id="btn"/>
										</td>
									</tr>
								</tbody>
							</table>
						</form:form>
					</div>
				</div>
				<!-- 내용 -->
			</div>
		</div>
		<!-- footer -->
		<%@ include file="/WEB-INF/view/resources/include/footer.jsp" %>	
	</div>
</body>
<script src="<%=request.getContextPath() %>/resources/asset/js/jquery-2.2.24.min.js"></script>
<script>
	$(function(){
		$("#btn").click(function(){
			if($("#text").val() == ""){
				alert("내용을 입력해 주세요.");
				$("#text").focus();
				return false;
			};
			if($("#comNoticeImg").val() == ""){
				alert("업로드 할 파일을 올려주세요.")
				$("#comNoticeImg").focus();
				return false;
			};
		});	
	});
</script>
</html>