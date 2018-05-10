<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
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
								<li class="selected"><span class="icon"><i
										class="clock"></i></span> <span class="txt">Добави филм</span></li>
								<li><a href="./addProjection"> <span class="icon"><i
											class="clock"></i></span> <span class="txt">Добави прожекция</span>
								</a></li>
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

				<div class="contentWrapper" style="height: auto;">
					<c:if test="${not empty succes} }">
						<p style="color: green; margin: 3%;">SUCCESS</p>
					</c:if>
					<span class="icon"> <i class="profile"></i>
					</span>
					<!-- ADDING IMAGE -->
					<!-- <input id = "image" name = "image" type="file" style="width:270px" > -->



					<form id="addMovieForm" method="POST" action="./addMovie"
						enctype="multipart/form-data">

						<!-- DISPLAY UPLOADED IMAGE -->
						<input type="file" name="file" onchange="readURL(this);"
							style="width: 300px"> <img id="movie" src="#" alt="movie"
							style="width: 500px; line-height: 400px" border="5" />
						<!-- DISPLAY UPLOADED IMAGE -->

						<div id="myModal" class="modal">
							<span class="close">&times;</span> <img class="modal-content"
								id="img01">
							<div id="caption"></div>
						</div>
						<!--  'testTitle', 'C://testCover', 'testDescription', 'testDirector', 90, '2018-12-12', 0, 'animation', 2 -->
						<!-- ADD DESCRIPTION -->
						<input type="text" name="title" id="title"
							style="width: 60%; line-height: 100%;" placeholder="Заглавие">

						<input type="text" name="description" id="desscription"
							style="width: 60%; line-height: 500%;" placeholder="Описание">
						<input type="text" name="director" id="director"
							style="width: 60%; line-height: 100%;" placeholder="Режисьор">
						<input type="text" name="length" id="length"
							style="width: 60%; line-height: 100%;" placeholder="Времетраене">


						<input type="date" id="premiere" name="premiere" value=""
							class="date" placeholder="Премиера" /> <input type="text"
							name="ageLimitation" id="ageLimitation"
							style="width: 60%; line-height: 100%;"
							placeholder="Възрастово ограничение">

						<!-- <input type="text" name="movieType" id="movieType"
							style="width: 60%; line-height: 100%;" placeholder = "Вид прожекция"> -->
						<select id="projectionType" name="projectionType">
							<option value="" myTag="Вид прожекция" selected disabled>Вид
								прожекция</option>
							<option value="2D" myTag="2D">2D</option>
							<option value="3D" myTag="3D">3D</option>
							<option value="4D" myTag="4D">4D</option>
						</select>
						<!-- <input type="hidden" id="setMyTag" /> <input type="text"
							name="genre" id="genre" style="width: 60%; line-height: 100%;"
							placeholder="Жанр">  -->
						<select id="genre" name="genre">
							<option value="" myTag="chooseGenre" selected disabled>Избери
								жанр</option>
							<c:forEach var="genre" items="${allGenres}">
								<option id="genre" value="${genre.genre}" myTag="${genre.genre}"><c:out
										value="${genre.genre}" /></option>
							</c:forEach>
						</select> <input type="hidden" id="chosenGenre" name="chosenGenre" />
						<!-- ADD DESCRIPTION -->
						<input id="submit" type="submit" value="Upload"
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
					$('#movie').attr('src', e.target.result).width(500).height(
							400);
				};

				reader.readAsDataURL(input.files[0]);

			}
		}
	</script>
	<script>
		$(function() {
			$("#projectionType").change(function() {
				var element = $(this).find('option:selected');
				var myTag = element.attr("myTag");

				$('#setMyTag').val(myTag);
			});
		});
	</script>

	<script>
		$(function() {
			$("#genre").change(function() {
				var element = $(this).find('option:selected');
				var myTag = element.attr("myTag");

				$('#chosenGenre').val(myTag);
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
			$("#premiere").attr("value", today);
		});
	</script>
	<!-- <script>
		document
				.getElementById('submit')
				.addEventListener(
						'click',
						function() {
							var imageSrc = document.getElementById("movie").src;
							document.getElementById('addMovieForm').action = '/addMovie?imgURL='
									+ imageSrc;
						});
	</script> -->
	<!-- <script>
		// Get the modal
		var modal = document.getElementById('myModal');

		// Get the image and insert it inside the modal - use its "alt" text as a caption
		var img = document.getElementById('movie');
		var modalImg = document.getElementById("img01");
		var captionText = document.getElementById("caption");
		img.onclick = function() {
			modal.style.display = "block";
			modalImg.src = this.src;
			captionText.innerHTML = this.alt;
		}

		// Get the <span> element that closes the modal
		var span = document.getElementsByClassName("close")[0];

		// When the user clicks on <span> (x), close the modal
		span.onclick = function() {
			modal.style.display = "none";
		}
	</script> -->

</body>
</html>