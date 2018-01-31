<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script>
function selectDong(dong){
	$('#dong').val(dong);
	$('#dDong').removeClass('open');
	$('#bDong').text(dong).addClass('selected');
}
</script>
<c:forEach items="${addressList}" var="address">
<li>
	<a 
		onmouseover="$(this).css('background','#999').css('color','#fff');" 
		onmouseout="$(this).css('background','#fff').css('color','#767676');" 
		href="#1" onclick="selectDong('${address.dong}');">
	${address.dong}</a>
</li>
</c:forEach>
