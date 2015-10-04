<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="cafein.post.Post"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!doctype html>

<html lang="en">
<head>
	<meta charset="utf-8">
	<title>cafe in</title>
	<link rel="stylesheet" type="text/css" href="/css/index.css">
</head>
<body>
	<header class="header">
		<div class="logo"></div>
	</header>
	<main class="main">
		<ul class="previous-colors styleme">
			<c:forEach items="${posts}" var="post">
				<li class="post">
					<div class="time-contents">
						<c:set var="date" value="${fn:split(post.creattime, ' ')}" />
						<div class="time">${date[0]}</div>
						<span class="contents">${post.contents}</span>
					</div>
					<img class="post-color" src="${post.colorUrl}">
				</li>
			</c:forEach>
		</ul>
		<div class="today-color">
			<div class="today-color-top">Today's Color</div>
			<div class="today-color-img-desc">
				<img class="today-color-img" src="">
			</div>
			<form class="today-color-form" method="post" action="/createpost">
				<input type="text" name="contents" id="today-color-desc" placeholder="지금 당신에게 이 색의 의미는 뭔가요?">
				<input type="hidden" name="cid" value="${param.cid}">
				<input type="hidden" name="colorname" id="colorName" value="">
				<button class="button" id="send">마음<br>그리기</button>
			</form>
		</div>
		<div class="palette">
			<div class="colors">
				<img class="color" id="red" src="http://i62.tinypic.com/aljjo1.png">
				<img class="color" id="pink" src="http://oi61.tinypic.com/r9ptv5.jpg">
				<img class="color" id="orange" src="http://i61.tinypic.com/qn2ue0.jpg">
				<img class="color" id="yellow" src="http://i57.tinypic.com/n5fsqa.png">
				<img class="color" id="yellowgreen" src="http://i57.tinypic.com/2cqmwdd.jpg">
				<img class="color" id="green" src="http://i59.tinypic.com/2pt86ew.jpg">
				<img class="color" id="skyblue" src="http://i62.tinypic.com/11r669v.png">
				<img class="color" id="blue" src="http://i61.tinypic.com/nyg4nb.jpg">
				<img class="color" id="darkblue" src="http://i59.tinypic.com/1zef500.jpg">
				<img class="color" id="purple" src="http://i59.tinypic.com/6s4aoo.png">
			</div>
		</div>
		<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="/js/index.js"></script>
	</main>
</body>
</html>