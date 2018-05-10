<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="/KinoArena/css/kinoarena.css">

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
					class="button fixedPosition favourites rippleWrapper"> <c:if
						test="${not empty inFavorites}">
						<p class="notActive">Премахни от любими</p>
					</c:if> <c:if test="${empty inFavorites}">
						<p class="active">Добави в любими</p>
					</c:if>
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
							<p>${movie.movieType}</p>
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
				<c:if test="${user.isAdmin() eq true}">
					<div>
						<div class="remove from screenings">
							<form action="/KinoArena/program" method="POST">
								<button class="red button fixedWidt">Премахни от
									прожекции</button>
							</form>
						</div>
					</div>
				</c:if>
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
		<div id="block_projectionDays" class="block projectionDays">
			<c:if test="${not empty dates}">
				<div class="clear"></div>
				<h4 class="projectionDaysTitle">Програма</h4>
				<div class="clearH"></div>
				<div class="wrapper">
					<header class="stenikTabsHeader" data-rows="2">
						<div
							class="sliderWrapper owl-carousel owl-theme owl-loaded owl-text-select-on first-slide hide-nav">
							<div class="owl-stage-outer">
								<div class="owl-stage"
									style="transform: translate3d(0px, 0px, 0px); transition: 0s; width: 980px;">
									<c:forEach items="${dates}" var="date">
										<fmt:parseDate value="${date.startTime}" pattern="yyyy-MM-dd"
											var="parsedDate" />
										<fmt:formatDate value="${parsedDate}" type="date"
											pattern="yyy-MM-dd" var="formatedDate" />
										<div class="owl-item active"
											style="width: 122.5px; margin-right: 0px;">
											<a
												onclick="getAllCinemaProgram(${movie.id},'${formatedDate}')"
												class="tabItem ">
												<div class="row">
													<fmt:formatDate value="${parsedDate}" type="date"
														pattern="dd/MM" />
												</div>
											</a>
										</div>
									</c:forEach>
									<div id="block" class="block"></div>
								</div>
							</div>
						</div>
					</header>
					<div class="clearH2"></div>
				</div>
			</c:if>
		</div>
	</div>
	<script src="/KinoArena/js/favoriteMovie.js"></script>
	<script src="/KinoArena/js/movieProgram.js"></script>

</body>
</html>