<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- SyntaxHighlighter 시작 -->
<script type='text/javascript' src="/JDC/resource/SyntaxHighlighter/shCore.js"></script>
<script type="text/javascript" src="/JDC/resource/SyntaxHighlighter/shAutoloader.js"></script>
<script type="text/javascript" src="/JDC/resource/SyntaxHighlighter/shBrushAppleScript.js"></script>
<script type="text/javascript" src="/JDC/resource/SyntaxHighlighter/shBrushAS3.js"></script>
<script type="text/javascript" src="/JDC/resource/SyntaxHighlighter/shBrushBash.js"></script>
<script type="text/javascript" src="/JDC/resource/SyntaxHighlighter/shBrushColdFusion.js"></script>
<script type="text/javascript" src="/JDC/resource/SyntaxHighlighter/shBrushCpp.js"></script>
<script type="text/javascript" src="/JDC/resource/SyntaxHighlighter/shBrushCSharp.js"></script>
<script type="text/javascript" src="/JDC/resource/SyntaxHighlighter/shBrushCss.js"></script>
<script type="text/javascript" src="/JDC/resource/SyntaxHighlighter/shBrushDelphi.js"></script>
<script type="text/javascript" src="/JDC/resource/SyntaxHighlighter/shBrushDiff.js"></script>
<script type="text/javascript" src="/JDC/resource/SyntaxHighlighter/shBrushErlang.js"></script>
<script type="text/javascript" src="/JDC/resource/SyntaxHighlighter/shBrushGroovy.js"></script>
<script type="text/javascript" src="/JDC/resource/SyntaxHighlighter/shBrushJava.js"></script>
<script type="text/javascript" src="/JDC/resource/SyntaxHighlighter/shBrushJavaFX.js"></script>
<script type="text/javascript" src="/JDC/resource/SyntaxHighlighter/shBrushJScript.js"></script>
<script type="text/javascript" src="/JDC/resource/SyntaxHighlighter/shBrushPerl.js"></script>
<script type="text/javascript" src="/JDC/resource/SyntaxHighlighter/shBrushPhp.js"></script>
<script type="text/javascript" src="/JDC/resource/SyntaxHighlighter/shBrushPlain.js"></script>
<script type="text/javascript" src="/JDC/resource/SyntaxHighlighter/shBrushPowerShell.js"></script>
<script type="text/javascript" src="/JDC/resource/SyntaxHighlighter/shBrushPython.js"></script>
<script type="text/javascript" src="/JDC/resource/SyntaxHighlighter/shBrushRuby.js"></script>
<script type="text/javascript" src="/JDC/resource/SyntaxHighlighter/shBrushSass.js"></script>
<script type="text/javascript" src="/JDC/resource/SyntaxHighlighter/shBrushScala.js"></script>
<script type="text/javascript" src="/JDC/resource/SyntaxHighlighter/shBrushSql.js"></script>
<script type="text/javascript" src="/JDC/resource/SyntaxHighlighter/shBrushVb.js"></script>
<script type="text/javascript" src="/JDC/resource/SyntaxHighlighter/shBrushXml.js"></script>
<script type="text/javascript" src="/JDC/resource/SyntaxHighlighter/shLegacy.js"></script>
 
<link rel="stylesheet" type="text/css" href="/JDC/resource/SyntaxHighlighter/shCore.css">
<link rel="stylesheet" type="text/css" href="/JDC/resource/SyntaxHighlighter/shThemeDefault.css">
<link rel="stylesheet" type="text/css" href="/JDC/resource/SyntaxHighlighter/shCoreDjango.css">
<link rel="stylesheet" type="text/css" href="/JDC/resource/SyntaxHighlighter/shCoreEclipse.css">
<link rel="stylesheet" type="text/css" href="/JDC/resource/SyntaxHighlighter/shCoreEmacs.css">
<link rel="stylesheet" type="text/css" href="/JDC/resource/SyntaxHighlighter/shCoreFadeToGrey.css">
<link rel="stylesheet" type="text/css" href="/JDC/resource/SyntaxHighlighter/shCoreMDUltra.css">
<link rel="stylesheet" type="text/css" href="/JDC/resource/SyntaxHighlighter/shCoreMidnight.css">
<link rel="stylesheet" type="text/css" href="/JDC/resource/SyntaxHighlighter/shCoreRDark.css">
<link rel="stylesheet" type="text/css" href="/JDC/resource/SyntaxHighlighter/shThemeDefault.css">
<link rel="stylesheet" type="text/css" href="/JDC/resource/SyntaxHighlighter/shThemeDjango.css">
<link rel="stylesheet" type="text/css" href="/JDC/resource/SyntaxHighlighter/shThemeEclipse.css">
<link rel="stylesheet" type="text/css" href="/JDC/resource/SyntaxHighlighter/shThemeEmacs.css">
<link rel="stylesheet" type="text/css" href="/JDC/resource/SyntaxHighlighter/shThemeFadeToGrey.css">
<link rel="stylesheet" type="text/css" href="/JDC/resource/SyntaxHighlighter/shThemeMDUltra.css">
<link rel="stylesheet" type="text/css" href="/JDC/resource/SyntaxHighlighter/shThemeMidnight.css">
<link rel="stylesheet" type="text/css" href="/JDC/resource/SyntaxHighlighter/shThemeRDark.css">

<!-- SyntaxHighlighter 끝 -->
<script type="text/javascript">
SyntaxHighlighter.all();
</script>

    <!-- Le styles -->
    <link href="/JDC/resource/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="/JDC/resource/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
<div class="container" class="form-signin">
		<form action="/JDC/answer/insert" id="insertForm" method="post" enctype="multipart/form-data">
			<h2 class="form-signin-heading">JDC - 답변 등록</h2>
		
			<input type="hidden" name="article_idx" value="${article.article_idx}" />
			<input type="hidden" name="user_idx" value="${sessionScope.user.user_idx}" />
			
			<input type="hidden" name="is_public"  id="is_public"/>
			<input type="hidden" name="error_type" id="error_type" />
			<input type="hidden" name="support_type" id="support_type" />
			<p>
				<h4>답변자</h4> 
					<c:if test="${not empty sessionScope.user}"><input class="input-block-level" type="text" value="${sessionScope.user.name}" 	readonly="readonly" /></c:if>
					<c:if test="${empty sessionScope.user}"><a href="/JDC/join/info">anonymous</a></c:if>
				
				<h4>답변 제목</h4> <input class="input-block-level" type="text" name="title" value="[re] : ${article.title}" />
				
				<div class="btn-group" data-toggle="buttons-radio" id="is_public_group">
				  <button type="button" class="btn btn-primary <c:if test="${empty sessionScope.user}">active</c:if>" data-value="blackbox">익명</button>
				  <button type="button" class="btn btn-warning <c:if test="${not empty sessionScope.user}">active</c:if>"  data-value="whitebox">공개</button>
				</div>
				
			<h4>질문내용</h4>
			<div>${article.content}
			</div>
		
			<h4>답변내용</h4>
			<textarea name="content" class="ckeditor" id="content"></textarea>
		
			<div class="accordion" id="accordion2">
			  <div class="accordion-group">
			    <div class="accordion-heading">
			      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">
			        원본코드
			      </a>
			    </div>
			    <div id="collapseOne" class="accordion-body collapse in">
			      <div class="accordion-inner">
			        	<p>
				      		<pre class="brush: ${article.code_name};">${article.code}</pre>
				      	</p>
			      </div>
			    </div>
			  </div>
			  <div class="accordion-group">
			    <div class="accordion-heading">
			      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">
			        답변코드
			      </a>
			    </div>
			    <div id="collapseTwo" class="accordion-body collapse">
			      <div class="accordion-inner">
			        <textarea name="debug_code" style="width:100%; height:400px;"></textarea>
			      </div>
			    </div>
			  </div>
			</div>		
		
		
			<br/>
			
			<button class="btn btn-large btn-primary" type="button" onclick="onSubmit()" >답변등록</button>
		    <button class="btn btn-large btn-warning" type="button" onclick="history.back();">취소</button>
		</form>
</div>

<script>
	function onSubmit(elClicked){
		$('#is_public').val($('#is_public_group > button.btn.active').data('value'));
		$('#insertForm').submit();
	}
</script>

<script type="text/javascript" src="<c:url value="/resource/ckeditor/ckeditor.js"/>" charset="utf-8"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="/JDC/resource/bootstrap/js/bootstrap.min.js"></script>
