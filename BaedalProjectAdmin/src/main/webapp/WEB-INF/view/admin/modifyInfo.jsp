<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<script type="text/javascript">
function modifyCon(){
	var adminEmail=frm.adminEmail.value;
	var adminContact=frm.adminContact.value;
	var adminDept=frm.adminDept.value;
	var adminJob=frm.adminJob.value;
	
	if(adminEmail==''){
		alert("이메일을 입력하세요")
		frm.adminEmail.focus();
		return false;
	}else if(adminContact==''){
		alert("연락처를 입력하세요");
		frm.adminContact.focus();
		return false;
	}
	else if(adminDept==''){
		alert("부서를 입력하세요");
		frm.adminDept.focus();
		return false;
	}
	else if(adminJob==''){
		alert("직급을 입력하세요");
		frm.adminJob.focus();
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
				<form action="modifyInfoCon" method="post" name="frm">
						<table>
								<tr>
									<th>사원번호</th>
									<td>${dto.adminNum }</td>
								</tr>
								<tr>
									<th>아이디</th>
									<td>${dto.adminId }</td>
								</tr>
								<tr>
									<th>이름</th>
									<td>${dto.adminName }</td>
								</tr>
								<tr>
									<th>이메일</th>
									<td><input type="email" value="${dto.adminEmail }" name="adminEmail"/></td>
								</tr>
								<tr>
									<th>연락처</th>
									<td><input type="text" value="${dto.adminContact }" name="adminContact"/></td>
								</tr>
								<tr>
									<th>부서</th>
									<td><input type="text" value="${dto.adminDept }" name="adminDept"/></td>
								</tr>
								<tr>
									<th>직급</th>
									<td><input type="text" value="${dto.adminJob }" name="adminJob"/></td>
								</tr>
								<tr align="center">
									<td colspan="2">
										<input type="submit" value="수정하기" onclick="return modifyCon()" />&nbsp;&nbsp;
										<input type="button" value="취소" onclick="javascript:history.back()" />
									</td>
								</tr>
						</table>
						</form>
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