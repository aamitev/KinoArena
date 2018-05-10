<%@page import="java.time.LocalDate"%>
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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body class="loaded  scrolling menuLoaded afterLoaded">

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
										резервациите</span>
							</a></li>
							<c:if test="${sessionScope.loggedUser.isAdmin() eq true}">
								<li><a href="./addMovie"> <span class="icon"><i
											class="clock"></i></span> <span class="txt">Добави филм</span>
								</a></li>
								<li class="selected"><span class="icon"><i
										class="clock"></i></span> <span class="txt">Добави прожекция</span></li>
								<li><a href="./addCinema"> <span class="icon"><i
											class="clock"></i></span> <span class="txt">Добави кино</span>
								</a></li>
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
				<c:if test="${not empty success} ">
					<p style="color: green;">SUCCESS</p>
				</c:if>
				<div class="contentWrapper">

					<form action="./addProjection" method="POST">
						<span class="icon"> <i class="profile"></i>

						</span>
						<div>
							<label for="movieTitle">Филм</label> <select id="movieTitle"
								name="movieTitle" style="margin: 3%;">
								<option value="" myTag="Избери заглавие" selected disabled>Име
									на прожекция</option>
								<c:forEach var="movie" items="${allMovies}">
									<option value="${movie.title}" myTag="${movie.title}"><c:out
											value="${movie.title}" /></option>
								</c:forEach>
							</select> <input type="hidden" id="projectionVal" name="projectionVal" />
						</div>
						<div>
							<label for="datePicker">Дата</label> <input type="date"
								id="datePicker" name="datePicker" value="" class="date"
								style="margin: 3%;" />
						</div>
						<div>
							<label for="hourPicker">час</label> <input min='1' max='24'
								type="number" id="hourPicker" name="hourPicker" class="time"
								style="margin: 3%;">
						</div>
						<div>
							<label for="minutesPicker">минута</label> <input min='0' max='59'
								type="number" id="minutesPicker" name="minutesPicker"
								class="time" style="margin: 3%;">
						</div>
						<div>
							<label for="minutesPicker">Избери зала</label><select id="hall"
								name="hall" style="margin: 3%;">
								<option value="" myTag="Избери зала" selected disabled>Номер
									на зала</option>
								<c:forEach var="hall" items="${allHalls}">
									<option id="hall" value="${hall.hallNumber}"
										myTag="${hall.hallNumber}" otherTag="${hall.cinema.name}"><c:out
											value="Зала ${hall.hallNumber} ${hall.hallType} ${hall.cinema.name}" /></option>
								</c:forEach>
							</select> <input type="hidden" id="hallName" name="hallName" /> <input
								type="hidden" id="cinemaName" name="cinemaName" />
						</div>
						<button class="button red" style="float: right;">Добави
							прожекция</button>
					</form>
				</div>
			</div>

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
		$(function() {
			$("#movieTitle").change(function() {
				var element = $(this).find('option:selected');
				var myTag = element.attr("myTag");

				$('#projectionVal').val(myTag);
			});
		});
	</script>

	<script>
		$(function() {
			$("#hall").change(function() {
				var element = $(this).find('option:selected');
				var myTag = element.attr("myTag");
				var otherTag = element.attr("otherTag");

				$('#cinemaName').val(otherTag);
				$('#hallName').val(myTag);
			});
		});
	</script>


	<script>
		$(document).ready(function() {
			var date = new Date();

			var day = date.getDate();
			var month = date.getMonth() + 1;
			var year = date.getFullYear();

			if (month < 10)
				month = "0" + month;
			if (day < 10)
				day = "0" + day;

			var today = year + "-" + month + "-" + day;
			$("#datePicker").attr("value", today);
		});
	</script>
</body>
</html>