<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" type="text/css" href="./css/kinoarena.css">
<link rel="stylesheet" type="text/css" href="./css/profile.css">
<link rel="stylesheet" type="text/css" href="./css/6d0ffb9.css">

</head>
<body class="loaded">
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
							<li><a href="./favorites"> <span class="icon"><i
										class="heart"></i></span> <span class="txt">Моите филми</span>
							</a></li>
							<li class="selected"> <span
									class="icon"><i class="clock"></i></span> <span class="txt">История
										на резервациите и закупените билети</span>
							</li>
							<li><a href="./logout"> <span class="icon"><i
										class="exit"></i></span> <span class="txt">Изход</span>
							</a></li>
						</ul>
					</nav>
				</aside>
				<div class="contentWrapper">
					<h5 class="title">История на резервациите и закупените билети</h5>
					<img src="/KinoArena/images/profile-history.png" alt="bg image"
						class="bgImage">
					<div class="stenikFilter bookingHistory">
						<header class="stenikTabsHeader filterHeader" data-rows="1">
							<div class="sliderWrapper">
								<div class="tabItem filter selected" data-filter-anchor="tab-0">Направени
									резервации</div>
								<div class="tabItem filter" data-filter-anchor="tab-1">Закупени
									билети</div>
								<div class="tabItem filter" data-filter-anchor="tab-2">Отказани
									резервации</div>
							</div>
						</header>
						<div class="filterContent small">
							<div class="filterItem" data-filter="tab-0">
								<p>Нямате направени резервации.</p>
							</div>
							<div class="filterItem" data-filter="tab-1">
								<p>Нямате закупени билети.</p>
							</div>
							<div class="filterItem" data-filter="tab-2">
								<p>Нямате отказани резервации.</p>
							</div>
						</div>
					</div>
				</div>
				<!-- end of .contentWrapper -->
			</div>
			<!-- end of .profilePanel -->
		</div>
		</main>
		<!-- end of #main -->
		<!-- end of #footer -->
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
</body>
</html>