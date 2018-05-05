<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>
<head>
<link rel="stylesheet" type="text/css"
	href="/KinoArena/css/kinoarena.css">
</head>
<body
	class="loaded homepage hasTopSlider menuLoaded afterLoaded scrolling">

	<header id="header">
		<div class="wrapper">
			<figure class="item logoWrapper center">
				<a href="/KinoArena/" class="logo bg"> <img
					src="/KinoArena/images/kino-arena-logo.png" alt="Kino Arena logo">
				</a>
				<span class="bottomBar"></span>
			</figure>
			<nav class="item menu right en ">
				<div id="global_responsive_menu_toggle"
					class="hideOnDesktop globalResponsiveMenuToggle">
					<span class="menuIcon inactive"></span>
				</div>
				<ul class="hideOnResponsive">
					<li class="txtItem"><a href="/KinoArena/cinemas">Кина</a></li>
					<li class="txtItem"><a href="/KinoArena/program">Програма</a></li>

					<c:if test="${empty sessionScope.loggedUser}">
						<li class="txtItem"><a href="/KinoArena/login"
							class="loginPopupLink">Вход</a></li>
					</c:if>

					<c:if test="${not empty sessionScope.loggedUser }">
						<li class="txtItem"><a href="/KinoArena/userProfile"
							class="loginPopupLink">Профил</a></li>
					</c:if>
				</ul>
				<ul class="hideOnDesktop">
					<li class="imgItem"><a href="#" class="loginPopupLink"><i
							class="user"></i></a></li>
					<li class="imgItem"><a href="#" id="responsive_filter_handle"
						class="responsiveFilterHandle"><i class="search big"></i></a></li>
				</ul>
			</nav>

			<nav class="responsiveMenu">
				<ul>
					<li><a href="#">Кина</a></li>
					<li><a href="#">Програма</a></li>
				</ul>
			</nav>
		</div>
	</header>

</body>
</html>

