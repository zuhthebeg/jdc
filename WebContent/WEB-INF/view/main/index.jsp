<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
  <head>
    <meta charset="utf-8">
    <title>Sign in &middot; Twitter Bootstrap</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="/JDC/resource/bootstrap/css/bootstrap.css" rel="stylesheet">
    <style type="text/css">
      .form-signin {
        max-width: 400px;
        padding: 19px 29px 29px;
        margin: 50px auto 20px;
        background-color: #fff;
        border: 0px solid #e5e5e5;
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
    </head>
	<body>
	    <div class="container">
	    	
		  <form action="/JDC/main/search" method="post" id="loginForm" class="form-signin">
		     <a href="#" class="thumbnail" style="border: 0px;">
	    		<img alt="JCreative Debug Center" style="width : 308px; height : 203px;" src="/JDC/resource/image/jdc_full_logo.png"/>
	    	</a>
	    	
	        <h2 class="form-signin-heading" style="text-align: center;"><font color="red">D</font>ebugging <font color="red">C</font>enter</h2>
		        <input type="text" name="search_text" class="input-block-level" placeholder="코드를 검색하세요" >
		        <button class="btn btn-inverse pull-right" type="submit">Search</button> 
	      </form>
	
	    </div> <!-- /container --> 
	    <div class="container">
			<ul class="nav nav-pills nav-stacked">
				<c:if test="${not empty sessionScope.user}">
					<c:forEach items="${myQuestionList}" var="article" varStatus="i">
						<li>
							<a href="/JDC/board/article/${article.article_idx}" >[${article.code_name}] ${article.title} 
								<span style="float: right;">${article.regdate}</span>
								<span style="float: right; margin-right: 100px;"> ${article.reply_cnt} 개의 댓글이 달렸습니다. </span>
								<span style="float: right;"> ${article.answer_cnt} 개의 답변, </span>
							</a>
						</li>		
					</c:forEach>
				</c:if>
				<c:if test="${empty sessionScope.user}">
					<c:forEach items="${newQuestionList}" var="article" varStatus="i">
						<li>
							<a href="/JDC/board/article/${article.article_idx}" >[${article.code_name}] ${article.title} 
								<span style="float: right;">${article.regdate}</span>
								<span style="float: right; margin-right: 100px;"> ${article.reply_cnt} 개의 댓글이 달렸습니다. </span>
								<span style="float: right;"> ${article.answer_cnt} 개의 답변, </span>
							</a>
						</li>		
					</c:forEach>
				</c:if>
			</ul>
	    </div> <!-- /container -->	
	    <!-- Le javascript
	    ================================================== -->
	    <!-- Placed at the end of the document so the pages load faster -->
	    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	    <script src="/JDC/resource/bootstrap/js/bootstrap.min.js"></script>
	</body>
</html>