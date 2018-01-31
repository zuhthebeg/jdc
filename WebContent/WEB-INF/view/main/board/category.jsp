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
  </head>

  <body>
    <div class="container">
    		<h2>
			<a href="#" onclick="location.href='/JDC/main/home';" style="border: 0px;">
		    	메인으로
		    </a>
			 > ${category.name}
			 </h2>
		<ul class="thumbnails bootstrap-examples">
			<c:forEach items="${categoryList}" var="category">
	            <li class="span3">
	              <a class="thumbnail" href="/JDC/board/${category.category_idx}" style="height:220px;">
	                <img src="${category.thumbnail}" alt="${category.name}" >
	              </a>
	              <h4>${category.name}</h4>
	              <p>${category.description}</p>
	            </li>
	         </c:forEach>
          </ul>
    </div> <!-- /container -->
   <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script src="/JDC/resource/bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>
