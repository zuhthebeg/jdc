<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="<c:url value="/resource/smarteditor/css/default.css"/>" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<c:url value="/resource/smarteditor/js/HuskyEZCreator.js"/>" charset="utf-8"></script>

    <!-- Le styles -->
    <link href="/JDC/resource/bootstrap/css/bootstrap.css" rel="stylesheet">
    <style type="text/css">
      body {
        padding-top: 40px;
        padding-bottom: 40px;
        background-color: #f5f5f5;
      }

      .form-signin {
        max-width: 300px;
        padding: 19px 29px 29px;
        margin: 0 auto 20px;
        background-color: #fff;
        border: 1px solid #e5e5e5;
        -webkit-border-radius: 5px;
           -moz-border-radius: 5px;
                border-radius: 5px;
        -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
           -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
                box-shadow: 0 1px 2px rgba(0,0,0,.05);
      }
      .form-signin .form-signin-heading,
      .form-signin .checkbox {
        margin-bottom: 10px;
      }
      .form-signin input[type="text"],
      .form-signin input[type="password"] {
        font-size: 16px;
        height: auto;
        margin-bottom: 15px;
        padding: 7px 9px;
      }

    </style>
    <link href="/JDC/resource/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
<div class="container" class="form-signin">
		<form action="/JDC/board/insert" method="post" enctype="multipart/form-data">
			<h2 class="form-signin-heading">JDC - 질문 등록</h2>
		
			<input type="hidden" name="category_idx" value="${category_idx}" />
			<input type="hidden" name="user_idx" value="${sessionScope.user.user_idx}" />
			<input type="hidden" name="is_public"  id="is_public"/>
			<input type="hidden" name="error_type" id="error_type" />
			<input type="hidden" name="support_type" id="support_type" />
			<p>
				<h4>작성자</h4> <input class="input-block-level" type="text" value="${sessionScope.user.name}" readonly="readonly"/>
				
				<h4>질문제목</h4> <input class="input-block-level" type="text" name="title"/>
				
				<h4>개발언어</h4>
				<select name="codetype_idx">
					<c:forEach items="${codetypeList}" var="codetype">
						<option value="${codetype.codetype_idx}">${codetype.name}</option>
					</c:forEach>
				</select>
				
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
			<textarea name="content" id="content" style="width:725px; height:300px;display:none;"></textarea>
		
		
			<div class="accordion" id="accordion2">
			  <div class="accordion-group">
			    <div class="accordion-heading">
			      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">
			        코드
			      </a>
			    </div>
			    <div id="collapseOne" class="accordion-body collapse in">
			      <div class="accordion-inner">
			        <textarea name="code" id="code" style="width:725px; height:300px;"></textarea>
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
			        <textarea name="errorcode" style="width:725px; height:300px;"></textarea>
			      </div>
			    </div>
			  </div>
			</div>		
		
		
			<br/>
			
			<button class="btn btn-large btn-primary" type="button" onclick="_onSubmit(this)" >질문등록</button>
		    <button class="btn btn-large btn-warning" type="button" onclick="history.back();">취소</button>
		</form>
</div>

<script>
var oEditors = [];
nhn.husky.EZCreator.createInIFrame({
	oAppRef: oEditors,
	elPlaceHolder: "content",
	sSkinURI: "/JDC/resource/smarteditor/SEditorSkin.html",
	fCreator: "createSEditorInIFrame"
});

// 복수개의 에디터를 생성하고자 할 경우, 아래와 같은 방식으로 호출하고 oEditors.getById["ir2"]이나 oEditors[1]을 이용해 접근하면 됩니다.

/* nhn.husky.EZCreator.createInIFrame({
	oAppRef: oEditors,
	elPlaceHolder: "content",
	sSkinURI: "/JDC/resource/smarteditor/SEditorSkin.html",
	fCreator: "createSEditorInIFrame"
}); */


function pasteHTMLDemo(){
	sHTML = "<span style='color:#FF0000'>이미지 등도 이렇게 삽입하면 됩니다.</span>";
	oEditors.getById["content"].exec("PASTE_HTML", [sHTML]);
}

function showHTML(){
	alert(oEditors.getById["content"].getIR());
}

function _onSubmit(elClicked){
	// 에디터의 내용을 에디터 생성시에 사용했던 textarea에 넣어 줍니다.
	oEditors.getById["content"].exec("UPDATE_IR_FIELD", []);
	
	// 에디터의 내용에 대한 값 검증은 이곳에서 document.getElementById("content").value를 이용해서 처리하면 됩니다.

	$('#is_public').val($('#is_public_group > button.btn.active').data('value'));
	$('#error_type').val($('#error_type_group > button.btn.active').data('value'));
	$('#support_type').val($('#support_type_group > button.btn.active').data('value'));
	
	try{
		elClicked.form.submit();
	}catch(e){}
}
</script>

<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="/JDC/resource/bootstrap/js/bootstrap.min.js"></script>
