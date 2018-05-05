<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html ">
<html>
<head>
<title>Cinemas</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<div class="wrapper">
		<div class="cinemasListing">
			<h2 class="title popcornsTitle">Избери кино</h2>
			<div class="clear"></div>

			<c:forEach items="${cinemas}" var="cinema" varStatus="loop">
				<a href="/KinoArena/cinema/${cinema.id}" title="${cinema.name}"
					class="cinemaBox">
					<figure class="featured">
						<svg class="svgMask" width="250" height="188" baseProfile="full"
							version="1.2">
                            <defs>
                                <mask id="svg_mask"
								maskUnits="userSpaceOnUse" maskContentUnits="userSpaceOnUse"
								transform="scale(1)">
                                    <polygon
								points="-0.541 0.313, 250.267 20.313, 240.267 178.750, -0.541 188.750, -0.541 0.313"
								fill="white"></polygon>
                                </mask>
                            </defs>
                                                            <polygon
								class="hoverUnderLayer"
								points="-0.541 0.313, 250.267 20.313, 240.267 178.750, -0.541 188.750, -0.541 0.313"
								fill="#000"></polygon>
                                <image mask="url(#svg_mask)"
								width="100%" height="100%" y="0" x="0"
								xlink:href="/KinoArena${cinema.cinemaCoverURL}"></image>
                                                    </svg>

						<img width="250" height="188" alt="${cinema.name}"
							class="fallbackImg" src="/KinoArena${cinema.cinemaCoverURL}">
						<div class="hoverContent">
							<div class="vAlign"></div>
						</div>
					</figure>
					<h5 class="title">${cinema.name}</h5>
					<article class="content">${cinema.address.city},
						${cinema.address.address} ${cinema.gsm}</article>
				</a>
			</c:forEach>

		</div>
	</div>
</body>
</html>