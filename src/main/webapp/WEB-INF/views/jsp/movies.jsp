<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><%@ page session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="./css/style.css">

<title>Movies</title>
</head>
<body>
	<div class="filterContent">
		<div class="clear"></div>
		<c:forEach items="${addresses}" var="address">
			<!--  <div class="filterItem movieBox filterSelected"
				data-responsive-href="#" data-filter="tab-2 tab-9 tab-1  ">
				<figure class="featured lazyLoad imgLoaded"
					data-img-url="${movie.coverURL}" data-img-width="224"
					data-img-height="336" data-img-alt="${movie.title}"
					data-img-class="poster">
					<img src=".${movie.coverURL}" alt="${movie.title}" width="224"
						height="336" class="poster">
				</figure>
				<h3 class="title">
					<a href="#">${movie.title}</a>
				</h3>
			</div>-->
			<h1>${address}</h1>
		</c:forEach>
		<!-- end of .movieBox -->
	</div>

</body>
</html>