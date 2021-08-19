<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.3.0/jquery.form.js"></script>
<script>
	function onClick(title){

		if(document.getElementById(title).style.display == 'none'){
			document.getElementById(title).style.display = '';
		} else{
			document.getElementById(title).style.display = 'none';
		} 

		$.ajax({
			type : "post",
			data: "title=" +  title + "&comId=" + ${dto.comId}, 
			url : "menuList",
			dataType : "html",
			success : function(result){
				$("#" + title).html(result);
			},
			error : function(){
				alert("에러입니다.");
				return;
			}
		});

	}
</script>
</head>
<body>
	<table border="1">
		<c:forEach items="${menuTitle }" var="title" varStatus="cnt">
			<tr>
				<td bgcolor="gray" onclick="onClick('${title.menuTitleNum }')">${title.menuTitleName }</td>
			</tr>
			<tbody id="${title.menuTitleNum }" style="display:none">
				<c:forEach items="${menuList }" var="menu" varStatus="cnt">
				${menu.menuName }
				</c:forEach>
			</tbody>
		</c:forEach>
	</table>

</body>
</html>