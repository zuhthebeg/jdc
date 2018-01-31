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
    </head>
	<body>
	
	    <div class="container">
		  <form action="/JDC/join/regist" method="post" id="loginForm" class="form-signin">
	        <h2 class="form-signin-heading">JDC - 회원가입</h2>
		        <input type="text" name="email" class="input-block-level" placeholder="email" value="${user.email}">
		        <input type="password" class="input-block-level" name="passwd" placeholder="password" >	
		        <input type="text" class="input-block-level" name="name" placeholder="nickname" value="${user.name}"/>
		        <label class="checkbox">
		          <input type="checkbox" value="remember-me"> 약관에 동의합니다.
		        </label>
		        <button class="btn btn-large btn-primary" type="submit">join</button>
		        <button class="btn btn-large btn-warning" formaction="/JDC/main/index">back</button>
	      </form>
	
	    </div> <!-- /container -->
	
	    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	    <script src="/JDC/resource/bootstrap/js/bootstrap.min.js"></script>
	</body>
</html>