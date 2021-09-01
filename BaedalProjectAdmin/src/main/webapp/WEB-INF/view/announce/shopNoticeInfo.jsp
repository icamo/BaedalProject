<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/main.css" />
<style>
	.last li{float:left;}
</style>
<script type="text/javascript">
function delConfirm(){
	if(confirm("정말 삭제하시겠습니까?")){
		location.href='shopNoticeDel?noticeNum=${dto.noticeNum}';
	}else{
		return false;
	}
}
</script>
</head>
<body class="shop_NoticeInfo">
	<div id="wrap">
		<!-- 헤더 -->
		<%@ include file="/WEB-INF/view/resources/include/header.jsp" %>
		<div id="container">
		<!-- 내용 -->
		<div class="content">
			<div class="inner">
				<!-- 좌측메뉴 -->
				<%@ include file="/WEB-INF/view/resources/include/menu.jsp" %>
				<!-- //좌측메뉴  -->
				<div class="right_cont">
					<div class="right_inner">
						<h2 class="tit">사장님 공지사항 수정</h2>
						<form action="noticeUpdate" method="post" name="frm">
							<input type="hidden" name="noticeNum" value="${dto.noticeNum}" />
							<table>
								<colgroup>
									<col style="width:50%;"/>
									<col style="width:50%;"/>
								</colgroup>
								<tbody>
									<tr>
										<th>글번호</th>
										<td>${dto.noticeNum }</td>
									</tr>
									<tr>
										<th>등록일</th>
										<td><fmt:formatDate value="${dto.noticeDate}" pattern="yyyy-MM-dd" /></td>
									</tr>
									<tr>
										<th>작성자</th>
										<td>${dto2.adminId }</td>
									</tr>
									<tr>
										<th>제목</th>
										<td>
											<input type="text" name="noticeSub" value="${dto.noticeSub}" />
										</td>
									</tr>
									<tr>
										<th>내용</th>
										<td>
											<textarea cols="50" rows="10" name="noticeContent"></textarea>
										</td>
									</tr>
									<tr>
										<th>첨부파일</th>
										<td><a href="../resources/shopNotice/${dto.noticeFile.split(',')[0] }" download>${dto.noticeFile.split(',')[0] }</a></td>
									</tr>
									<tr>
										<td colspan="2" class="last">
											<input type="submit" value="수정" class="cus_input" />
											<input type="button" value="뒤로가기" class="cus_input" onclick="javascript:history.back();"/>
										</td>
									</tr>
								</tbody>
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
<script src="<%=request.getContextPath() %>/resources/asset/js/jquery-2.2.24.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/asset/js/main.js"></script>
</html>