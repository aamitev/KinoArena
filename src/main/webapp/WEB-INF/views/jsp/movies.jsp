<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%><%@ page session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Movies</title>
</head>
<body>
	<ul>
		<c:forEach items="${movies}" var="movie" varStatus="loop">
			<li>${movie.getTitle()} ${movie.getDirector()}</li>
		</c:forEach>
	</ul>
</body>
</html>