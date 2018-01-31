<!doctype html>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
	<meta http-equiv="Page-Enter" content="blendTrans(Duration=0.15)"/>
	<meta http-equiv="Page-Exit" content="blendTrans(Duration=0.15)"/>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title><tiles:getAsString name="title" /></title>	
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width">
    <!-- Le styles -->
    <link href="/JDC/resource/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="/JDC/resource/bootstrap/assets/css/bootstrap-responsive.css" rel="stylesheet">
	<link href="/JDC/resource/bootstrap/assets/css/main.css" rel="stylesheet">
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="/JDC/resource/bootstrap/assets/js/html5shiv.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/JDC/resource/bootstrap/assets/ico/jdc.ico">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/JDC/resource/bootstrap/assets/ico/jdc.ico">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/JDC/resource/bootstrap/assets/ico/jdc.ico">
    <link rel="apple-touch-icon-precomposed" href="/JDC/resource/bootstrap/assets/ico/jdc.ico">
    <link rel="shortcut icon" href="/JDC/resource/bootstrap/assets/ico/jdc.ico"> 
  </head>
<body>
	<div id="wrapper" class="container marketing">  
	<tiles:insertAttribute name="header" />
		<div id="content">
			<tiles:insertAttribute name="content" />
		</div>
		<div id="footer">
			<tiles:insertAttribute name="footer" />
		</div>
	</div>
	<script src="http://platform.twitter.com/widgets.js"></script>
    <script src="/JDC/resource/bootstrap/assets/js/jquery.js"></script>
    <script src="/JDC/resource/bootstrap/assets/js/bootstrap-transition.js"></script>
    <script src="/JDC/resource/bootstrap/assets/js/bootstrap-alert.js"></script>
    <script src="/JDC/resource/bootstrap/assets/js/bootstrap-modal.js"></script>
    <script src="/JDC/resource/bootstrap/assets/js/bootstrap-dropdown.js"></script>
    <script src="/JDC/resource/bootstrap/assets/js/bootstrap-scrollspy.js"></script>
    <script src="/JDC/resource/bootstrap/assets/js/bootstrap-tab.js"></script>
    <script src="/JDC/resource/bootstrap/assets/js/bootstrap-tooltip.js"></script>
    <script src="/JDC/resource/bootstrap/assets/js/bootstrap-popover.js"></script>
    <script src="/JDC/resource/bootstrap/assets/js/bootstrap-button.js"></script>
    <script src="/JDC/resource/bootstrap/assets/js/bootstrap-collapse.js"></script>
    <script src="/JDC/resource/bootstrap/assets/js/bootstrap-carousel.js"></script>
    <script src="/JDC/resource/bootstrap/assets/js/bootstrap-typeahead.js"></script>
    <script>
      !function ($) {
        $(function(){
          // carousel demo
          $('#myCarousel').carousel()
        })
      }(window.jQuery)
    </script>
    <script src="/JDC/resource/bootstrap/assets/js/holder/holder.js"></script>
    <script src="/JDC/resource/bootstrap/assets/js/bootstrap-affix.js"></script>
</body>
</html>