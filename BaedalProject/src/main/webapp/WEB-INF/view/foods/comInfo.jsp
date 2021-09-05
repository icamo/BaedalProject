<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<table>
	<caption>가게정보</caption>
	<colgroup>
		<col style="width:50%"/>
		<col style="width:50%"/>
	</colgroup>
	<tbody>
		<tr>
			<th>사장님알림</th>
			<td>${dto.comNotice }</td>	
		</tr>
		<tr>
			<th>업체정보</th>
			<td>${dto.comName}</td>
		</tr>
		<tr>
			<th>영업시간</th>
			<td>${dto.businessTime }</td>		
		</tr>
		<tr>
			<th>전화번호</th>
			<td>${dto.comPhone }</td>
		</tr>
		<tr>
			<th>주소</th>
			<td>${dto.comAddress }</td>
		</tr>
		<tr>
			<th>최소주문금액</th>
			<td>${dto.minPrice }</td>
		</tr>
		<tr>
			<th>결제수단</th>
			<td>신용카드 , 현금 , 요기서결제</td>
		</tr>
		<tr>
			<th>사업자정보</th>
			<td>${dto.ceoName}</td>
		</tr>
		<tr>
			<th>사업자등록번호</th>
			<td>${dto.comNum }</td>
		</tr>
		<tr>
			<th>원산지정보</th>
			<td>${dto.origin }</td>	
		</tr>
	</tbody>
</table>