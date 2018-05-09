<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html >
<html>
<head>

<link rel="stylesheet" type="text/css" href="./css/kinoarena.css">
<link rel="stylesheet" type="text/css" href="./css/custom.css">
<link class="jsbin"
	href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/base/jquery-ui.css"
	rel="stylesheet" type="text/css" />
<script class="jsbin"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script class="jsbin"
	src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.0/jquery-ui.min.js"></script>

</head>
<body class="loaded scrolling menu Loaded after Loaded">

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
					<img src="/KinoArena/images/content/register_pros1.png" alt="" />
					<img src="/KinoArena/images/content/register_pros2.png" alt="" />
					<img src="/KinoArena/images/content/register_pros3.png" alt="" />
				</p>
			</article>
		</section>
		<div class="wrapper">
			<div class="profilePanel">
				<aside class="sidebar left">
					<nav class="profileMenu">
						<ul class="x-navigation">

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
							<li><a href="./orders"> <span class="icon"><i
										class="clock"></i></span> <span class="txt">История на
										резервациите и закупените билети</span>
							</a></li>
							<c:if test="${sessionScope.loggedUser.isAdmin() eq true}">
								<li><a href="./addMovie"><span class="icon"><i
											class="clock"></i></span> <span class="txt">Добави филм</span></a></li>
								<li><a href="./addProjection"> <span class="icon"><i
											class="clock"></i></span> <span class="txt">Добави прожекция</span>
								</a></li>
								<li class="selected"><span class="icon"><i
										class="clock"></i></span> <span class="txt">Добави кино</span></li>
								<li><a href="./addHall"> <span class="icon"><i
											class="clock"></i></span> <span class="txt">Добави зала</span>
								</a></li>
							</c:if>
							<li><a href="./logout"> <span class="icon"><i
										class="exit"></i></span> <span class="txt">Изход</span>
							</a></li>
						</ul>
					</nav>
				</aside>

				<div class="contentWrapper">
					<span class="icon"> <i class="profile"></i>
					</span>
					<c:if test="${not empty succes} }">
						<p style="color: green;">SUCCESS</p>
					</c:if>
					<!-- ADDING IMAGE -->
					<!-- <input id = "image" name = "image" type="file" style="width:270px" > -->


					<form id="addCinemaForm" method="POST" action="./addCinema"
						enctype="multipart/form-data">

						<!-- DISPLAY UPLOADED IMAGE -->
						<input type="file" name="file" onchange="readURL(this);"
							style="width: 300px"> <img id="cinemaImg" src="#"
							alt="cinemaImg" style="width: 500px; line-height: 400px"
							border="5" />
						<!-- DISPLAY UPLOADED IMAGE -->

						<div id="myModal" class="modal">
							<span class="close">&times;</span> <img class="modal-content"
								id="img01">
							<div id="caption"></div>
						</div>
						<input type="text" name="cinemaName" id="cinemaName"
							style="width: 60%; line-height: 100%;" placeholder="Име на кино">

						<input type="text" name="email" id="email"
							style="width: 60%; line-height: 100%;" placeholder="Имейл">
						<input type="text" name="gsm" id="gsm"
							style="width: 60%; line-height: 100%;" placeholder="Телефон">
						<input type="text" name="address" id="address"
							style="width: 60%; line-height: 100%;" placeholder="Адрес">
						<input type="text" name="postcode" id="postcode"
							style="width: 60%; line-height: 100%;" placeholder="Пощенски код">
						<input type="text" name="city" id="city"
							style="width: 60%; line-height: 100%;" placeholder="Град">

						<!-- ADD CINEMA-->
						<input id="submit" type="submit" value="Добави"
							style="background-color: red;">
					</form>
					<!-- ADDING IMAGE -->
				</div>
				<div id="scroll_to_top" class="scrollToTop">
					<i class="circleUp"></i>
				</div>

				<div id="fb-root"></div>
				<noscript>

					<div style="display: inline;">

						<img height="1" width="1" style="border-style: none;" alt=""
							src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/855321203/?guid=ON&amp;script=0" />

					</div>

				</noscript>
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
	<script>
		function readURL(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();

				reader.onload = function(e) {
					$('#cinemaImg').attr('src', e.target.result).width(500)
							.height(400);
				};

				reader.readAsDataURL(input.files[0]);

			}
		}
	</script>

</body>
</html>