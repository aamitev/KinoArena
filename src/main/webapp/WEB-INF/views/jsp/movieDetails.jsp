<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/KinoArena/css/kinoarena.css">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<title>${movie.title}</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<div class="wrapper">
		<section class="movieDesc sliderStick ">
			<header class="descHeader">
				<h1 class="title">${movie.title}</h1>
				<a id="favoriteButton" onclick="favoritesControler(${movie.id})"
					class="button fixedPosition favourites rippleWrapper">
				</a>
			</header>
			<article class="descContent mobileStyles">
				<figure class="featured">

					<img title="${movie.title}" width="224" height="336"
						alt="${movie.title}" src="/KinoArena/${movie.coverURL}">
				</figure>
				<c:if test="${not empty movie.description}">

					<div class="synopsis">
						<article class="content">
							<p>${movie.description}</p>

							<p>ФИЛМЪТ СЕ РАЗПРОСТРАНЯВА ВЪВ ФОРМАТ:</p>
							<p>${movie.movieType.value}</p>
						</article>
					</div>
				</c:if>

				<div class="report">
					<c:if test="${movie.duration > 0}">

						<div class="item">
							<div class="name">Времетраене</div>
							<div class="value">${movie.duration}</div>
						</div>
					</c:if>
					<c:if test="${not empty movie.primiere}">

						<div class="item">

							<div class="name">Премиера</div>
							<div class="value">${movie.primiere}</div>
						</div>
					</c:if>
					<c:if test="${not empty movie.director}">

						<div class="item">
							<div class="name">Режисьор</div>
							<div class="value">${movie.director}</div>
						</div>
					</c:if>
					<c:if test="${not empty movie.primiere}">

						<div class="item">
							<div class="name">Жанр</div>
							<div class="value">${movie.genre.genre}</div>
						</div>
					</c:if>
					<%-- 			TODO		<c:if test="${not empty movie.actors}">

						<div class="item">
							<div class="name">Актьори</div>
							<div class="value"></div>
						</div>
					</c:if> --%>
				</div>
				<div class="meta fixedBottom">
					<div class="attr">
						<div class="item ratingWrapper">
							<div class="rating">
								<div class="stenikRating">
									<div class="inputWrapper">
										<input type="text" name="" value="" data-rating="4.42"
											readonly="readonly" data-movie="703">
									</div>
									<div class="handlesWrapper">
										<span class="ratingHandle rating-1" data-rating="1"></span><span
											class="ratingHandle rating-2" data-rating="2"></span><span
											class="ratingHandle rating-3" data-rating="3"></span><span
											class="ratingHandle rating-4" data-rating="4"></span><span
											class="ratingHandle rating-5" data-rating="5"></span>
									</div>
									<div class="ratingSummary" style="width: 95px;">
										<span class="bar" style="width: 88.4%;"></span>
									</div>
								</div>
							</div>
						</div>
						<div class="item normalAttr tooltip_0"
							data-tooltip="<p>Не се препоръчва за деца&amp;nbsp;под ${movie.ageLimitation}</p>">
						</div>
					</div>
				</div>
			</article>
		</section>
		<!-- end of .movieDesc -->
		<div id="block_projectionDays" class="block projectionDays"></div>
	</div>
	<script onload="getProgramDates(${movie.id})"
		src="/KinoArena/js/movieProgram.js"></script>
	<script src="/KinoArena/js/favoriteMovie.js"></script>
</body>
</html>