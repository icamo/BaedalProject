<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/main.css" />
<script type="text/javascript">
function confirm(){
	var noticeSub=frm.noticeSub.value;
	var noticeCon=frm.noticeCon.value;
	
	if(noticeSub==''){
		alert("제목을 입력하세요");
		return false;
	}
	else if(noticeCon==''){
		alert("내용을 입력하세요");
		return false;
	}
	else{
		return true;
	}
}
</script>
</head>
<body>
	<div id="wrap">
			<!-- 헤더 -->
			<%@ include file="/WEB-INF/view/resources/include/header.jsp" %>
			<div id="container">
				<!-- 내용 -->
				<div class="content">
					<div class="inner">
						<!-- 좌측메뉴 -->
						<%@ include file="/WEB-INF/view/resources/include/menu.jsp" %>
						<!-- //좌측메뉴 -->
						<!-- 우측메뉴 -->
						<div class="right_cont">
							<div class="right_inner">
								<h2 class="tit">FNQ 등록하기</h2>
								<form action="memFnqResist" method="post" name="frm">
									<table>
										<colgroup>
											<col style="width:50%;" />
											<col style="width:50%;" />
										</colgroup>
										<tbody>
											<tr>
												<th>제목</th>
												<td>
													<input name="noticeSub" type="text" size="59"/>
												</td>
											</tr>
											<tr>
												<th>내용</th>
												<td>
													<textarea name="noticeCon" rows="10" cols="50"></textarea>
												</td>
											</tr>
											<tr>
												<td colspan="2" class="last">
													<input type="submit" value="등록" class="cus_input" onclick="return confirm()"/>
													<input type="button" value="취소" class="cus_input" onclick="javascript:history.back()"/>
												</td>
											</tr>
										</tbody>						
									</table>
								</form>
							</div>
						</div>
						<!-- //우측메뉴 -->
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