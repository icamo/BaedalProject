<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>

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
	
	function foodsOrder(){
		
		$.ajax({
			type : "post",
			url : "foodsOrder",
			data: $("#menuDetailForm").serialize(),
			dataType : "html",
			success : function(result){
				opener.document.location.href="../order/foodsOrder?comId=" + ${dto.comId}
				self.close();
				
			},
			error : function(){
				alert("오류가 발생하였습니다.");
				return;
			}
		});

		}
</script>
</head>
<body>
<form id="menuDetailForm" method="post" action="#" >
	<table>
		<tbody>
			<tr>
				<td>					
					<img src="<%=request.getContextPath() %>/../BaedalProjectCEO/myShop/menuImg/${dto.menuImg }" />
				</td>
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
		</tbody>
	</table>
	<input type="hidden" name="comId" value="${dto.comId }" />
	<input type="hidden" name="menuId" value="${dto.menuId }" />
	<input type="hidden" name="menuPrice" value="${dto.menuPrice }" />
	<input type="button" value="주문표에 추가" onclick="addCart()" />
	<input type="button" value="주문하기" onclick="foodsOrder()" />
</form>
