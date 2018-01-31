<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script>
	function selectGugun(gugun){
		$('#gugun').val(gugun);
		$('#dGugun').removeClass('open');
		$('#bGugun').text(gugun).addClass('selected');
		
		getDongList(gugun);
	}
	 
	function getDongList(gugun){
		var sido = $('#sido').val();
		 $.ajax({
			   type:'post',
			   url:'address/dongri',
			   data: ({sido:sido, gugun:gugun}),
			   success:function(data){
				   $('#dongList').html(data);
			   }
		});
	}
</script>
<c:forEach items="${addressList}" var="address">
<li>
	<a 
		onmouseover="$(this).css('background','#999').css('color','#fff');" 
		onmouseout="$(this).css('background','#fff').css('color','#767676');" 
		href="#1" onclick="selectGugun('${address.gugun}');">
	${address.gugun}</a>
</li>
</c:forEach>
