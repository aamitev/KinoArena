<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<META http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="./css/kinoarena.css">
<link rel="stylesheet" type="text/css" href="./css/profile.css">
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

		<div class="wrapper">
			<div class="profilePanel">
				<aside class="sidebar left">
					<nav class="profileMenu">
						<ul>

							<li class="selected"><span class="icon"><i
									class="profile"></i></span> <span class="txt">Персонална
									информация</span></li>

							<li><a href="./changePassword"> <span class="icon"><i
										class="password"></i></span> <span class="txt">Промяна на
										паролата</span>
							</a></li>
							<li><a href="./favorites"> <span class="icon"><i
										class="heart"></i></span> <span class="txt">Моите филми</span>
							</a></li>
							<li><a href="./orders"> <span class="icon"><i
										class="clock"></i></span> <span class="txt">История на
										резервациите и закупени билети</span>
							</a></li>
							<c:if test="${sessionScope.loggedUser.isAdmin() eq true}">
								<li><a href="./addMovie"> <span class="icon"><i
											class="clock"></i></span> <span class="txt">Добави филм</span>
								</a></li>
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
				<div class="contentWrapper">
					<span class="icon"> <i class="profile"></i>
					</span>
					<h5 class="txt">Персонална информация</h5>
					<img src="/KinoArena/images/profile-info.png" alt="bg image"
						class="bgImage">


					<hr class="red">

					<form method="POST" action="./editProfile"
						name="stenik_user_personal_information">

						<div class="formName">
							<span class="groupLabel">Пол *</span>
							<div>
								<input type="radio" name="sex" id="sex" hidden="hidden">
								<br> <input type="button" value="Мъж" id="selectMale">
								<input type="button" value="Жена" id="selectFemale">
							</div>
							<div class="clear"></div>
							<div class="formItem col2 left">
								<input type="text" id="firstName" name="firstName"
									required="required" placeholder="Име *"
									value="${sessionScope.loggedUser.getFirstName()}">
							</div>
							<div class="clear"></div>
							<div class="formItem col2 left">
								<input type="text" id="secondName" name="secondName"
									required="required" placeholder="Башино име *"
									value="${sessionScope.loggedUser.getSecondName()}">
							</div>
							<div class="clear"></div>
							<div class="formItem col2 left">
								<input type="text" id="lastName" name="lastName"
									required="required" placeholder="Фамилия *"
									value="${sessionScope.loggedUser.getLastName()}">
							</div>
							<div class="clear"></div>
							<div class="formItem col2 left">
								<input type="text" id="email" name="email" required="required"
									placeholder="Имейл *" readonly
									value="${sessionScope.loggedUser.getEmail()}">
							</div>
							<div class="clear"></div>
							<div class="formItem col2 left">
								<input type="text" id="gsm" name="gsm" required="required"
									placeholder="Телефон *"
									value="${sessionScope.loggedUser.getGsm()}">
							</div>
							<div class="clear"></div>
							<div class="formItem col2 left">
								<input type="text" id="city" name="city" required="required"
									placeholder="Град *"
									value="${sessionScope.loggedUser.address.city}">
							</div>
							<div class="formItem col2 left">
								<input type="text" id="postcode" name="postcode"
									required="required" placeholder="Пощенски код *"
									value="${sessionScope.loggedUser.getAddress().getPostcode()}">
							</div>
							<div class="clear"></div>
							<div class="formItem col2 left">
								<input type="text" id="streetAddress" name="streetAddress"
									required="required" placeholder="Адрес *"
									value="${sessionScope.loggedUser.getAddress().getAddress()}">
							</div>
							<div class="clear"></div>
							<div class="formItem col2 left">
								<input type="datetime" id="dateOfBirth" name="dateOfBirth"
									required="required" placeholder="Дата на раждане *"
									value="${sessionScope.loggedUser.getBirthday()}">
							</div>
							<div class="clear"></div>
							<div class="formItem col2 left">
								<input type="text" id="education" name="education"
									required="required" placeholder="Образование *"
									value="${sessionScope.loggedUser.getEducation()}">
							</div>
							<div class="clear"></div>
							<div class="formItem col2 left">
								<input type="text" id="job" name="job" required="required"
									placeholder="Работа *"
									value="${sessionScope.loggedUser.getJob()}">
							</div>
							<div class="clear"></div>
							<button class="button big red fixWidth">Запиши</button>
							<div class="clear"></div>
						</div>
					</form>
					<form action="./makeAdmin" name="makeAdmin" method="post"
						novalidate="novalidate" class="stdForm">

						<c:if test="${sessionScope.loggedUser.isAdmin() eq true}">
							<div>
								<select id="makeAdmin" name="makeAdmin">
									<option value="" myTag="choseAdmin" selected disabled>Избери
										имейл</option>
									<c:forEach var="user" items="${allUsers}">
										<option id="user" value="${user.email}" myTag="${user.email}""><c:out
												value="${user.email}}" /></option>
									</c:forEach>
								</select>
							</div>
							<div>
								<button class="button red fixedWidth">Направи Админ</button>
							</div>
						</c:if>
					</form>
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

		<div style="display: inline;"></div>

	</noscript>
	<script>
		$(function() {
			$("#city").change(function() {
				var element = $(this).find('option:selected');
				var myTag = element.attr("myTag");

				$('#chosenCity').val(myTag);
			});
		});
	</script>

	<script type="text/javascript">
		$(document).ready(function() {

			$("#isSelect").click(function() {

				alert($('input:radio[name=sex]:checked').val());

			});

			$("#selectMale").click(function() {
				$('input:radio[name=sex]:nth(0)').attr('value', true);
				$('input:radio[name=sex]:nth(0)').attr('checked', true);
				$('input:radio[name=sex]')[0].checked = true;

			});

			$("#selectFemale").click(function() {
				$('input:radio[name=sex]:nth(0)').attr('value', false);
				$('input:radio[name=sex]:nth(0)').attr('checked', true);
				$('input:radio[name=sex]')[0].checked = true;

			});

			$("#reset").click(function() {

				$('input:radio[name=sex]').attr('checked', false);

			});

		});
	</script>
</body>
</html>