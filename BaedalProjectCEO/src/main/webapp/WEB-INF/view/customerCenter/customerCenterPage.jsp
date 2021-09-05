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
<body class="cus_notice">
	<div id="wrap">
		<!-- 헤더 -->
		<%@ include file="/WEB-INF/view/resources/include/header.jsp" %>
		<div id="container">
			<div class="content">
				<!-- 좌측메뉴 -->
				<%@ include file="/WEB-INF/view/resources/include/menu.jsp" %>
				<!-- //좌측메뉴  -->
				
				<!-- 내용 -->
				<div class="right_cont">
					<div class="inner">						
						<div class="ceo_notice">
							<h2 class="notice_tit">사장님들 공지사항</h2>
							<table>
								<caption>공지사항 확인하기</caption>
								<colgroup>
									<col style="width:33.333%"/>
									<col style="width:33.333%"/>
									<col style="width:33.333%"/>
								</colgroup>
								<thead>
									<tr>
										<th>
											등록 날짜
										</th>
										<th>
											제목
										</th>
										<th>
											확인
										</th>
									</tr>
								</thead>
								<c:forEach items="${lists}" var="dto">
									<tbody>
										<tr>
											<td>
												<fmt:formatDate value="${dto.ceoNoticeDate}" type="date" pattern="yyyy-MM-dd" />
											</td>
											<td>
												${dto.ceoNoticeSub}
											</td>
											<td>
												<a href="centerInfo?ceoNoticeNum=${dto.ceoNoticeNum}">바로가기</a>
											</td>
										</tr>
									</tbody>
								</c:forEach>
							</table>
						</div>
						<div class="que_area">
							<h2 class="tit">자주묻는 질문</h2>
							<div class="que_cont">
								<ul>
								<c:forEach items="${list2 }" var="dto2">
									<li class="cont cont01">
										<a href="#" class="btn">${dto2.noticeSub }</a>
										<div class="hide_menu">											
											<a href="#">${dto2.noticeContent}</a>
										</div>
									</li>
								</c:forEach>	
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!-- //내용 -->
			</div>
		</div>
		<!-- footer -->
		<%@ include file="/WEB-INF/view/resources/include/footer.jsp" %>	
	</div>
</body>
<script src="<%=request.getContextPath() %>/resources/asset/js/jquery-2.2.24.min.js"></script>
<script>
	$(function(){
		$(".btn").click(function(){
			if($(this).next().is(':hidden')){
				$(".hide_menu").slideUp();
				$(this).next().slideDown();
			} else{
				$('.hide_menu').slideUp();
			}
		});		
	})
</script>
</html>