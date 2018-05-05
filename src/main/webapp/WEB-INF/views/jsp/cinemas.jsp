<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html ">
<html>
<head>
<title>Кина</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<div class="wrapper">
		<div class="cinemasListing">
			<h2 class="title popcornsTitle">Избери кино</h2>
			<div class="clear"></div>
			<div id="block"></div>

		</div>
	</div>
<script src="/KinoArena/js/cinemaPage.js"></script>
	
</body>
</html>