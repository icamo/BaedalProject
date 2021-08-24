<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.3.0/jquery.form.js"></script>
<script>	
	function addCart(){		
		var id = '<%=(String)session.getAttribute("userId")%>';
		if(id != 'null' && !!opener.document.getElementById("cartComId")){
			if(opener.document.getElementById("cartComId").value != ${dto.comId }){
				if (confirm("다른 음식점에서 이미 담은 메뉴가 있습니다. 담긴 메뉴를 취소하고 새로운 음식점에서 메뉴를 담을까요?") == false){
					return false;
				 }
			}
		}		
		
		$.ajax({
			type : "post",
			data: $("#menuDetailForm").serialize(),
			url : "addCart",
			dataType : "html",
			success : function(result){				
				opener.parent.location.reload();
				self.close();
			},
			error : function(){
				alert("로그인이 필요한 서비스입니다.");
				opener.document.location.href="../logInPage"	
				self.close();
				return;
			}
		});
	}
</script>
</head>
<body>
<form id="menuDetailForm" method="post" >
<table border="1">
	<tr>
		<td>
			${dto.menuImg }[메뉴사진]
		</td>
	</tr>
	<tr>
		<td>
			${dto.menuName }
		</td>
	</tr>
	<tr>
		<td>
			<input type="number" name="menuCount" min="1" step="1"/>
		</td>
	</tr>
	<tr>
		<td>
			${dto.menuPrice } 원			
		</td>
	</tr>
</table>
<input type="hidden" name="comId" value="${dto.comId }">
<input type="hidden" name="menuId" value="${dto.menuId }">
<input type="hidden" name="menuPrice" value="${dto.menuPrice }">
<input type="button" value="주문표에 추가" onclick="addCart()"><input type="submit" value="주문하기" formaction="order">
</form>
</body>
</html>