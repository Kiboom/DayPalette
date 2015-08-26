<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!doctype html>

<html lang="en">
<head>
	<meta charset="utf-8">

	<title>The HTML5 Herald</title>
	<meta name="description" content="The HTML5 Herald">
	<meta name="author" content="SitePoint">

	<link rel="stylesheet" type="text/css" href="index.css">

<!--[if lt IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->

</head>

<body>
	<button id="replyButton">Re</button>
	<div>
		<form action="/createpost" method="post">
			<input name="contents" type="text" placeholder="이 카페 아메리카노 어때요?">		
			<button>올리기</button>
		</form>
	</div>
	<div id="replyBox">
		<form action="/createReply" method="post">
			<input name="reply" type="text" placeholder="댓글 달기...">		
			<button>등록</button>
		</form>
	</div>
	
	<script src="index.js"></script>
</body>
</html>