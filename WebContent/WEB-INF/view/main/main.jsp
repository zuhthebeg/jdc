<!doctype html>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Page-Enter" content="blendTrans(Duration=0.15)" />
<meta http-equiv="Page-Exit" content="blendTrans(Duration=0.15)" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>JCreative Debugging Center</title>
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<link href="/JDC/resource/bootstrap/css/bootstrap.css" rel="stylesheet">
<link
	href='http://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"	href="<c:url value="/resource/Meny-master/css/demo.css"/>">
<link href="/JDC/resource/bootstrap/css/bootstrap-responsive.css"	rel="stylesheet">
</head>
<body>
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<button type="button" class="btn btn-navbar" data-toggle="collapse"
					data-target=".nav-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="brand" href="#" onclick="location.reload();"><font
					color='red'>J</font>Creative <font color='red'>D</font>ebugging <font
					color='red'>C</font>enter</a>
				<div class="nav-collapse collapse">
					<ul class="nav">
						<c:forEach items="${categoryList}" var="category">
							<c:if test="${category.parent_idx eq 0}">
								<li><a href="#"
									onclick="$('#contents>iframe').attr('src','/JDC/board/category/${category.category_idx}');">${category.name}</a></li>
							</c:if>
						</c:forEach>
					</ul>
					<c:if test="${empty sessionScope.user}">
						<form action="/JDC/join/info" method="post" id="loginForm" target="mainFrame"	class="navbar-form pull-right">
							<button class="btn btn-inverse" >Join</button>
						</form>
					</c:if>
					
					<c:if test="${empty sessionScope.user}">
						<form action="/JDC/main/login" method="post" id="loginForm"
							class="navbar-form pull-right">
							<input type="text" name="email" class="span2" placeholder="email"> 
							<input type="password"	class="span2" name="passwd" placeholder="password" >
							<button class="btn btn-inverse" type="submit">Login</button>
						</form>
					</c:if>

					<c:if test="${not empty sessionScope.user}">
						<form class="navbar-search pull-left" target="mainFrame" method="post"	action="/JDC/main/category/search">
							<input type="text" class="search-query span2"	placeholder="카테고리 검색" name="search_text">
							<button class="btn btn-inverse" type="submit">검색</button>
						</form>
						<form action="/JDC/main/logout" method="post" id="loginForm"	class="navbar-form pull-right">
							<button class="btn btn-inverse">Logout</button>
						</form>
					</c:if>
				</div>
				<!--/.nav-collapse -->
			</div>
		</div>
	</div>
	<div class="meny">
		<c:forEach items="${categoryList}" var="category" varStatus="i">
			<c:if test="${category.parent_idx eq 0}">
				<c:if test="${i.count ne 1}">
					</ul>
				</c:if>
				<h2>${category.name}</h2>
				<ul>
			</c:if>
			<c:if test="${category.parent_idx ne 0}">
				<li><a href="#"
					onclick="$('#contents>iframe').attr('src','/JDC/board/${category.category_idx}');">${category.name}</a></li>
			</c:if>
		</c:forEach>
		</ul>
	</div>

	<div class="meny-arrow"></div>

	<div class="contents" id="contents">
		<!-- *****************************MainFrame************************** -->
<!-- 		<iframe name="mainFrame" src="/JDC/main/index" width="100%"
			height="95%" style="border: 0px; overflow: hidden;"> </iframe>
		<div class="sharing">
			<div class="fb-like" data-href="http://www.jcreative.co.kr/" data-send="true"
				data-width="450" data-show-faces="true"></div>
		</div> -->
	</div>

	<script src="<c:url value="/resource/Meny-master/js/meny.js"/>"></script>
	<script>
			var today = new Date();
			// Create an instance of Meny
			var meny = Meny.create({
				// The element that will be animated in from off screen
				menuElement: document.querySelector( '.meny' ),

				// The contents that gets pushed aside while Meny is active
				contentsElement: document.querySelector( '.contents' ),

				// [optional] The alignment of the menu (top/right/bottom/left)
				position: Meny.getQuery().p || (today.getMinutes()%2) == 0 ? 'left' : 'right',//'left',

				// [optional] The height of the menu (when using top/bottom position)
				height: 200,

				// [optional] The width of the menu (when using left/right position)
				width: 260,

				// [optional] Distance from mouse (in pixels) when menu should open
				threshold: 40
			});

			// API Methods:
			// meny.open();
			// meny.close();
			// meny.isOpen();

			// Events:
			// meny.addEventListener( 'open', function(){ console.log( 'open' ); } );
			// meny.addEventListener( 'close', function(){ console.log( 'close' ); } );

			// Embed an iframe if a URL is passed in
			if( Meny.getQuery().u && Meny.getQuery().u.match( /^http/gi ) ) {
				var contents = document.querySelector( '.contents' );
				contents.style.padding = '0px';
				contents.innerHTML = '<div class="cover"></div><iframe src="'+ Meny.getQuery().u +'" style="width: 100%; height: 100%; border: 0; position: absolute;"></iframe>';
			}
				var contents = document.querySelector( '.contents' );
				contents.style.padding = '0px';
				contents.innerHTML = '<div class="cover"></div><iframe id="mainFrame" src="/JDC/main/index" style="width: 100%; height: 90%; border: 0; position: absolute;"></iframe>';
		</script>
	<div id="fb-root"></div>
	<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/ko_KR/all.js#xfbml=1";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
	<script src="/JDC/resource/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>