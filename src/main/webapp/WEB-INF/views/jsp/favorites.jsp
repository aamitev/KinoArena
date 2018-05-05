<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" type="text/css" href="./css/kinoarena.css">
<link rel="stylesheet" type="text/css" href="./css/profile.css">
<link rel="stylesheet" type="text/css" href="./css/6d0ffb9.css">
</head>
<body>
	<div class="page_bg"
		style="background-image: url('/images/frontend/bg-items/bg-15years.jpg');"></div>


	<div id="page_link_loader" class="pageLinkLoader">
		<span class="loopDisk"></span>
	</div>

	<div id="global_wrapper" class="globalWrapper">
		<jsp:include page="header.jsp"></jsp:include>
		<div class="videoBox" id="video_box">
			<div id="player_holder" class="playerHolder">
				<span class="videoClose"><i class="close"></i></span>
				<div class="videoWrapper"></div>
			</div>
		</div>
		<main id="main">
		<section class="pageDesc profile">
			<h1 class="title">Моят профил</h1>
			<article class="content">
				<p>
					<img src="/images/frontend/content/register_pros1.png" alt="" /> <img
						src="/images/frontend/content/register_pros2.png" alt="" /> <img
						src="/images/frontend/content/register_pros3.png" alt="" />
				</p>
			</article>
		</section>
		<div class="wrapper">
			<div class="profilePanel">
				<aside class="sidebar left">
					<nav class="profileMenu">
						<ul>
							<li><a href="./userProfile"> <span class="icon"><i
										class="profile"></i></span> <span class="txt">Персонална
										информация</span>
							</a></li>
							<li><a href="./changePassword"> <span class="icon"><i
										class="password"></i></span> <span class="txt">Промяна на
										парола</span>
							</a></li>
							<li class="selected"><span class="icon"><i
									class="heart"></i></span> <span class="txt">Моите филми</span></li>
							<li><a href="./orders"> <span class="icon"><i
										class="clock"></i></span> <span class="txt">История на
										резервациите и закупените билети</span>
							</a></li>
							<c:if test="${sessionScope.loggedUser.isAdmin() eq true}">
								<li><a href="./orders"> <span class="icon"><i
											class="clock"></i></span> <span class="txt">Добави филм</span>
								</a></li>
							</c:if>
							<li><a href="./logout"> <span class="icon"><i
										class="exit"></i></span> <span class="txt">Изход</span>
							</a></li>
						</ul>
					</nav>
				</aside>

				<div class="contentWrapper stenikFilter">
					<h5 class="title">Моите филми</h5>
					<img src="/KinoArena/images/profile-favourites.png" alt="bg image"
						class="bgImage">
					<header class="stenikTabsHeader filterHeader" data-rows="1">
						<div
							class="sliderWrapper owl-carousel owl-theme owl-loaded owl-text-select-on first-slide hide-nav">
							<div class="owl-controls">
								<div class="owl-nav">
									<div class="owl-prev" style=""></div>
									<div class="owl-next" style=""></div>
								</div>
								<div class="owl-dots" style="display: none;"></div>
							</div>
						</div>
					</header>
					<div id="favorites" class="filterContent small"></div>
				</div>
			</div>
			<!-- end of .profilePanel -->
		</div>
		</main>
		<!-- end of #main -->
	</div>
		<div id="scroll_to_top" class="scrollToTop">
			<i class="circleUp"></i>
		</div>

		<div id="fb-root"></div>
	</div>
	
	<noscript>

		<div style="display: inline;">

			<img height="1" width="1" style="border-style: none;" alt=""
				src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/855321203/?guid=ON&amp;script=0" />

		</div>

	</noscript>
		<script onload="getFavoriteMovies()" type="text/javascript"
		src="./js/getFavorites.js"></script>
</body>
</html>