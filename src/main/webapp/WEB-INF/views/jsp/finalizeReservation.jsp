<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>Complete</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section class="pageDesc">
		<h1 class="title">Complete</h1>
	</section>
	<div class="bookingSteps">
		<div class="step passed" data-triangles="1">
			<span class="number">1</span> <span class="txt">Choose
				ticket's</span> <span class="triangle-set item-1"></span>
		</div>
		<div class="separator">.....</div>
		<div class="step passed" data-triangles="2">
			<span class="number">2</span> <span class="txt">Choose seat's</span>
			<span class="triangle-set item-1"></span><span
				class="triangle-set item-2"></span>
		</div>
		<div class="separator">.....</div>
		<div class="step current" data-triangles="4">
			<span class="number">3</span> <span class="txt">Complete</span> <span
				class="triangle-set item-1"></span><span class="triangle-set item-2"></span><span
				class="triangle-set item-3"></span><span class="triangle-set item-4"></span>
		</div>
	</div>
</body>
</html>