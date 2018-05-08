<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page session="false"%>
<!DOCTYPE html>

<html>
<head>
<<<<<<< HEAD
<link rel="stylesheet" type="text/css" href="/KinoArena/css/kinoarena.css">
=======

<link rel="stylesheet" type="text/css"
	href="/KinoArena/css/kinoarena.css">
>>>>>>> c9e7abaeb30ca6b31e3d6a6f9d8b9881da6a577f
</head>
<body>
	<div id="global_wrapper" class="globalWrapper">
		<jsp:include page="header.jsp"></jsp:include>

		<div class="wrapper">
			<div id="filter_bar" class="twoSidesBar filterBar">
				<div class="rightSide">
					<div class="searchForm">
						<div class="formItem">
							<input type="text" value="" name="searchphrase" id="search_input"
								placeholder="Име на филм?">
						</div>
						<button class="searchButton">
							<i class="search"></i>
						</button>
						<div id="search_list" class="searchList"></div>
					</div>
				</div>
			</div>
			<!-- end of .filterBar -->

			<div class="stenikFilter moviesHighlight">
				<header class="stenikTabsHeader filterHeader" data-rows="2">
					<div
						class="sliderWrapper owl-carousel owl-theme owl-loaded first-slide">

						<div class="owl-stage-outer">
							<div class="owl-stage"
								style="transform: translate3d(0px, 0px, 0px); transition: 0s; width: 1120px;">
								<div class="owl-item active"
									style="width: 140px; margin-right: 0px;">
									<a onclick="getActiveMovies()">
										<div class="tabItem filter" data-filter-anchor="tab-1">
											<div class="row">Всички филми</div>
											<div class="row">в продажба</div>
										</div>
									</a>
								</div>
								<div class="owl-item active"
									style="width: 140px; margin-right: 0px;">
									<a onclick="getActiveByGenre('animation')">
										<div class="tabItem filter" data-filter-anchor="tab-3">
											<div class="row">Детски</div>
											<div class="row">филми</div>
										</div>
									</a>
								</div>
								<div class="owl-item active"
									style="width: 140px; margin-right: 0px;">
									<a onclick="getActiveMoviesByHallType('imax')">

										<div class="tabItem filter hasIMGIcons"
											data-filter-anchor="tab-4">
											<div class="hoverImgToggle">

												<img title="header-imax.png" alt="imax" class="defaultImg"
													src="/KinoArena/images/imax.png"> <img
													title="header-imax-hover.png" alt="imax" class="hoverImg"
													src="/KinoArena/images/imax-hover.png">
											</div>
										</div>
									</a>
								</div>
								<div class="owl-item active"
									style="width: 140px; margin-right: 0px;">

									<div class="tabItem filter hasIMGIcons"
										data-filter-anchor="tab-5">
										<div class="hoverImgToggle">
											<a onclick="getActiveMoviesByHallType('luxe')"> <img
												title="header-luxe.png" alt="Luxe" class="defaultImg"
												src="/KinoArena/images/luxe.png"> <img
												title="header-luxe-hover.png" alt="Luxe" class="hoverImg"
												src="/KinoArena/images/luxe-hover.png">
											</a>
										</div>
									</div>

								</div>
								<div class="owl-item active"
									style="width: 140px; margin-right: 0px;">

									<div class="tabItem filter hasIMGIcons"
										data-filter-anchor="tab-6">
										<div class="hoverImgToggle">
											<a onclick="getActiveMoviesByHallType('vip')"> <img
												title="header-vip.png" alt="VIP" class="defaultImg"
												src="/KinoArena/images/vip.png"> <img
												title="header-vip-hover.png" alt="VIP" class="hoverImg"
												src="/KinoArena/images/vip-hover.png">
											</a>
										</div>
									</div>

								</div>
								<div class="owl-item active"
									style="width: 140px; margin-right: 0px;">
									<a onclick="getActiveMoviesByHallType('premium')">
										<div class="tabItem filter hasIMGIcons"
											data-filter-anchor="tab-7">
											<div class="hoverImgToggle">

												<img title="header-premium.png" alt="Premium"
													class="defaultImg" src="/KinoArena/images/premium.png">

												<img title="header-premium-hover.png" alt="Premium"
													class="hoverImg" src="/KinoArena/images/premium-hover.png">
											</div>
										</div>
									</a>
								</div>
							</div>
						</div>
						<div class="owl-controls">
							<div class="owl-nav">
								<div class="owl-prev" style=""></div>
								<div class="owl-next" style=""></div>
							</div>
							<div class="owl-dots" style="display: none;"></div>
						</div>
					</div>
				</header>

				<div id="filterContent"></div>
			</div>
			<!-- end .stenikFilter -->
			<div class="clearH"></div>
		</div>
	</div>
	<script onload="getActiveMovies()" src="/KinoArena/js/filterContent.js"></script>
	<script src="/KinoArena/js/searchbar.js"></script>

	<!-- end of #main -->
</body>
</html>
