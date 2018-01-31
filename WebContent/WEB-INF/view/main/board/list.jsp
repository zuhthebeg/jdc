<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Bootstrap, from Twitter</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="/JDC/resource/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="/JDC/resource/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="../assets/js/html5shiv.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
  </head>

  <body>
    <div class="container">
		<h2>
			<a href="/JDC/board/category/${category.parent_idx}" style="border: 0px;">
		    	상위로
		    </a>
			 > ${category.name}
			<c:if test="${not empty sessionScope.user}">
				<button type="button" class="btn btn-primary pull-right" onclick="location.href='/JDC/board/write/${category_idx}';" >질문등록</button> 
			</c:if> 
		</h2> 
		<br/><br/>
		<ul class="nav nav-pills nav-stacked" style="">
			<c:if test="${empty articleList}">
				<li>등록한 버그가 존재하지 않습니다!</li>
			</c:if>
			<c:forEach items="${articleList}" var="article" varStatus="i">
				<li>
					<a href="/JDC/board/article/${article.article_idx}" >[${article.code_name}] ${article.title} 
						<span style="float: right;">${article.regdate}</span>
						<span style="float: right; margin-right: 100px;"> ${article.reply_cnt} 개의 댓글이 달렸습니다. </span>
						<span style="float: right;"> ${article.answer_cnt} 개의 답변, </span>
					</a>
				</li>		
			</c:forEach>
		</ul>

    </div> <!-- /container -->
   <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script src="/JDC/resource/bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>
