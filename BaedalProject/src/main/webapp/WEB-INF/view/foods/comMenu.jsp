<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.3.0/jquery.form.js"></script>
<script>
	function menuList(title){
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
				alert("메뉴목록 호출을 실패하였습니다");
				return;
			}
		});

	}
	
	function menuChoice(menuId) {
		var url = "menuDetail?menuId=" + menuId;
		var width = '500';
	    var height = '800';
	    var left = Math.ceil(( window.screen.width - width )/2);
	    var top = Math.ceil(( window.screen.height - height )/2); 
	    window.open(url, 'popUp', 'width=' + width + ', height=' + height + ', left=' + left + ', top=' + top );
	}
	
</script>
<table>
	<tbody>
		<c:forEach items="${menuTitle }" var="title">
			<tr>
				<td colspan="2" onclick="menuList('${title.menuTitleNum }')">${title.menuTitleName }</td>
			</tr>
			<!-- 메뉴리스트 작업 시 style="display:none" 삭제해주세요~ -->
			<div id="${title.menuTitleNum }" style="display:none"></div>
		</c:forEach>
	</tbody>
</table>

