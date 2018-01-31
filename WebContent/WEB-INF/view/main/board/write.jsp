<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <!-- Le styles -->
    <link href="/JDC/resource/bootstrap/css/bootstrap.css" rel="stylesheet">
    <style type="text/css">
      body {
        padding-top: 40px;
        padding-bottom: 40px;
        background-color: #f5f5f5;
      }
    </style>
    <link href="/JDC/resource/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
<div class="container" class="form-signin">
		<form action="/JDC/board/insert" id="insertForm" method="post" enctype="multipart/form-data">
			<h2 class="form-signin-heading">JDC - 질문 등록</h2>
		
			<input type="hidden" name="category_idx" value="${category_idx}" />
			<input type="hidden" name="user_idx" value="${sessionScope.user.user_idx}" />
			<input type="hidden" name="is_public"  id="is_public"/>
			<input type="hidden" name="error_type" id="error_type" />
			<input type="hidden" name="support_type" id="support_type" />
			<p>
				<h4>작성자</h4> <input class="input-block-level" type="text" value="${sessionScope.user.name}" readonly="readonly"/>
				
				<h4>질문제목</h4> <input class="input-block-level" type="text" name="title" required="required"/>
				
				<h4>개발언어</h4>
				<select name="codetype_idx">
					<c:forEach items="${codetypeList}" var="codetype">
						<option value="${codetype.codetype_idx}">${codetype.name}</option>
					</c:forEach>
				</select>
				
				<input type="text" class="input-medium bfh-phone" data-format="+1 (ddd) ddd-dddd">
				
				<div class="btn-group" data-toggle="buttons-radio" id="is_public_group">
				  <button type="button" class="btn btn-primary active" data-value="blackbox">블랙박스</button>
				  <button type="button" class="btn btn-warning"  data-value="whitebox">화이트박스</button>
				</div>
				
				<div class="btn-group" data-toggle="buttons-radio" id="error_type_group">
				  <button type="button" class="btn btn-warning active" data-value="logic">알수없음</button>
				  <button type="button" class="btn btn-primary"  data-value="syntax">구문에러</button>
				  <button type="button" class="btn btn-success"  data-value="syntax">로직에러</button>
				</div>
				
				<div class="btn-group" data-toggle="buttons-radio"  id="support_type_group">
				  <button type="button" class="btn btn-primary" data-value="remote">원격가능</button>
				  <button type="button" class="btn btn-warning active" data-value="online">원격불가능</button>
				</div>
	
			<h4>질문내용</h4>
			<textarea name="content" class="ckeditor" id="content"></textarea>
		
		
			<div class="accordion" id="accordion2">
			  <div class="accordion-group">
			    <div class="accordion-heading">
			      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">
			        코드
			      </a>
			    </div>
			    <div id="collapseOne" class="accordion-body collapse in">
			      <div class="accordion-inner">
			        <textarea name="code" id="code" style="width:100%; height:400px;"></textarea>
			      </div>
			    </div>
			  </div>
			  <div class="accordion-group">
			    <div class="accordion-heading">
			      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">
			        에러내용
			      </a>
			    </div>
			    <div id="collapseTwo" class="accordion-body collapse">
			      <div class="accordion-inner">
			        <textarea name="errorcode" style="width:100%; height:400px;"></textarea>
			      </div>
			    </div>
			  </div>
			</div>		
		
		
			<br/>
			
			<button class="btn btn-large btn-primary" type="button" onclick="onSubmit()" >질문등록</button>
		    <button class="btn btn-large btn-warning" type="button" onclick="history.back();">취소</button>
		</form>
</div>

<script>
function onSubmit(){
	$('#is_public').val($('#is_public_group > button.btn.active').data('value'));
	$('#error_type').val($('#error_type_group > button.btn.active').data('value'));
	$('#support_type').val($('#support_type_group > button.btn.active').data('value'));
	
	$('#insertForm').submit();
}
</script>
<script type="text/javascript" src="<c:url value="/resource/ckeditor/ckeditor.js"/>" charset="utf-8"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="/JDC/resource/bootstrap/js/bootstrap.min.js"></script>
