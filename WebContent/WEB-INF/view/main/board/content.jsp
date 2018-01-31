<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<link href="/JDC/resource/bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="/JDC/resource/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
    
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
<script type="text/javascript">
<!--
function openDialog(msg) {
	$('#popup-text').text(msg);
	Avgrund.show( "#default-popup" );
}
function closeDialog() {
	Avgrund.hide();
}

function recommendArticle(article_idx){
	var url = "/JDC/board/recommend.json";
	 $.ajax({
		   type:'post',
		   url:url,
		   data: ({article_idx:article_idx}),
		   success:function(data){
			   if(data.status == 'success'){
					var count = $('#recommendArticle'+article_idx).text();
					$('#recommendArticle'+article_idx).text(++count);
					openDialog("추천하였습니다.");
			   }else{
				   openDialog("이미 추천하셨습니다.");
			   }
		   }
	});
}

function recommendAnswer(answer_idx){
	var url = "/JDC/answer/recommend.json";
	 $.ajax({
		   type:'post',
		   url:url,
		   data: ({answer_idx:answer_idx}),
		   success:function(data){
			   if(data.status == 'success'){
					var count = $('#recommendAnswer'+answer_idx).text();
					$('#recommendAnswer'+answer_idx).text(++count);
					openDialog("추천하였습니다.");
			   }else{
				   openDialog("이미 추천하셨습니다.");
			   }
		   }
	});
	
}
 
function choiceAnswer(answer_idx){
	var url = "/JDC/answer/choice.json";
	var satisfy = 8;
	var writer_comment = '감사여';
	
	 $.ajax({
		   type:'post',
		   url:url,
		   data: ({answer_idx:answer_idx,satisfy:satisfy,writer_comment:writer_comment}),
		   success:function(data){
			   if(data.status == 'success'){
				   openDialog("답변이 채택되었습니다.");
				$('#answerTitle'+answer_idx).append("[ 질문자 채택 ]");
			   }else
				   openDialog("답변 채택 실패");
		   }
	});	
}
//-->
</script>

<link rel="stylesheet" href="/JDC/resource/Meny-master/css/avgrund.css">
	<div class="container">
		<br/>
		<h2>${article.title} [ ${article.code_name} ]
			<c:if test="${sessionScope.user.user_idx ne article.user_idx}">
				<button type="button" class="btn btn-primary" onclick="recommendArticle(${article.article_idx});">추천하기</button> 
			</c:if>
		</h2>
		<table class="table table-bordered table-striped">
				<tr>
					<th style="width: 100px;">글번호</th>
					<th style="width: 100px;">작성자</th>
					<th style="width: 100px;">조회수</th>
					<th style="width: 100px;">추천수</th>
					<th>등록일</th>
				</tr>
				<tr>
					<td>${article.article_idx}</td>
					<td>${article.user_name}</td>
					<td>${article.cnt}</td>
					<td>
						<span id="recommendArticle${article.article_idx}">${article.recommend}</span>
					</td>
					<td>${article.regdate}</td>
				</tr>
				<tr>
					<th>에러타입</th>
					<td>${article.error_type}</td>
					<th>디버깅 방식</th>
					<td>${article.support_type}</td>
					<td>${article.code_name}</td>
				</tr>
				<tr>
					<th colspan="5">질문내용(총 ${article.answer_cnt}개의 답변이 있습니다.)</th>
				</tr>
				<tr>
					<td colspan="5">
						${article.content}
					</td>
				</tr>
			</table>
			
			<div class="tabbable tabs-right"> <!-- Only required for left/right tabs -->
			  <ul class="nav nav-tabs">
			    <li class="active"><a href="#tab1" data-toggle="tab">소스코드</a></li>
			    <li><a href="#tab2" data-toggle="tab">에러코드</a></li>
			  </ul>
			  <div class="tab-content">
			    <div class="tab-pane active" id="tab1">
		      		<pre class="brush: ${article.code_name};">${article.code}</pre>
			    </div>
			    <div class="tab-pane" id="tab2">
		      		<pre class="brush: text;">${article.errorcode}</pre>
			    </div>
			  </div>
			</div>
	
	</div>
	<div class="container" style="margin-top: 50px;">
		<table class="table table-bordered table-striped">
			<c:forEach items="${answerList}" var="answer">
				<tr>
					<td colspan="100%">
						<h3 id="answerTitle${answer.answer_idx}">${answer.title}
							<c:if test="${answer.is_choice eq 1}" > [ 질문자 채택 ]</c:if>
						</h3>
						
					</td>
				</tr>
				<tr>
					<td>
						추천수 : <span id="recommendAnswer${answer.answer_idx}">${answer.recommend}</span>
					</td>
					<td>
						작성자 : ${answer.user_name}
					</td>
					<td>
						<c:if test="${sessionScope.user.user_idx ne article.user_idx}">
							<button type="button" class="btn btn-primary" onclick="recommendAnswer(${answer.answer_idx});">추천하기</button> 
						</c:if>
						<c:if test="${sessionScope.user.user_idx eq article.user_idx}">
							<button type="button" class="btn btn-warning" onclick="choiceAnswer(${answer.answer_idx});">답변채택</button> 
						</c:if>
					</td>
					<td  colspan="100%">
						등록일 : ${answer.regdate}
					</td>
				</tr>
				<c:if test="${answer.is_choice eq 1}" >
				 	<td colspan="100%">
						 [
						<c:forEach begin="1" end="10" varStatus="i">
							<c:if test="${answer.satisfy >= i.count}"> ★ </c:if>
							<c:if test="${answer.satisfy < i.count}"> ☆ </c:if>
						</c:forEach> 
						 ] 작성자 인사말: ${answer.writer_comment}
					</td>
				</c:if>
				<tr>
					<td colspan="100%">
						<div class="tabbable tabs-right"> <!-- Only required for left/right tabs -->
						  <ul class="nav nav-tabs">
						    <li class="active"><a href="#tab${answer.answer_idx}_1" data-toggle="tab">답변내용</a></li>
						    <li><a href="#tab${answer.answer_idx}_2" data-toggle="tab">답변코드</a></li>
						  </ul>
						  <div class="tab-content">
						    <div class="tab-pane active" id="tab${answer.answer_idx}_1">
						    	<p>
						      		${answer.content}
						      	</p>
						    </div>
						    <div class="tab-pane" id="tab${answer.answer_idx}_2">
						      <p>
						      	<pre class="brush: ${answer.code_type};">${answer.debug_code}</pre>
						      </p>
						    </div>
						  </div>
						</div>
					</td>
				</tr>
			</c:forEach> 
		</table>
		
		<button type="button" class="btn btn-primary pull-right" onclick="location.href='/JDC/answer/regist/${article.article_idx}';">답변등록</button> &nbsp;
		<button type="button" style="margin-right: 10px;" class="btn btn-primary pull-right" onclick="location.href='/JDC/board/${article.category_idx}';">목록으로</button> &nbsp;
	</div>

<div class="avgrund-cover"></div>
<aside id="default-popup" class="avgrund-popup">
	<h2>Message</h2>
	<p id="popup-text">
	</p>
	<button type="button" class="btn btn-primary pull-right" onclick="javascript:closeDialog();">닫기</button>
</aside> 

<script type="text/javascript" src="/JDC/resource/Meny-master/js/avgrund.js"></script>
<script src="/JDC/resource/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/JDC/resource/Meny-master/js/zoom.js"></script>
<script>
	$('.tab-content' ).bind( 'click', function( event ) {
		event.preventDefault();
		zoom.to({ element: event.target });
	} );
</script>
