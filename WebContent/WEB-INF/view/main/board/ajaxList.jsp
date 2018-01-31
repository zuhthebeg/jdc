<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:forEach items="${articleList}" var="article">
	<tr>
		<td>${article.idx}</td>
		<td><a href="#layer" onclick="openContent('${article.idx}')">${article.title} </a></td>
		<td>${article.writer}</td>
		<td>${article.regdate}</td>
		<td>${article.count}</td> 
	</tr>
</c:forEach>
