<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="./css/kinoarena.css">
<jsp:include page="header.jsp"></jsp:include>

</head>
<body>
	<div>
		<div id="register_popup" class="popup big">
			<h4 class="title">Нова регистрация</h4>
			<div class="col2 left padding formCol">

				<!-- SOCIAL LOGIN -->
				<!-- <div class="socialLogin">
					<a href="https://www.kinoarena.com/connect/twitter" class="item"><i
						class="twitter big"></i></a> <a
						href="https://www.kinoarena.com/connect/facebook" class="item"><i
						class="facebook big"></i></a> <a
						href="https://www.kinoarena.com/connect/gplus" class="item"><i
						class="gplus big"></i></a>
				</div>
				<div class="txtSeparator">
					<span class="txt">или</span>
				</div> -->
				<!-- SOCIAL LOGIN -->

				<p>
					<em>При <strong>КОРЕКТНО ПОПЪЛВАНЕ</strong> на полетата
						получаваш - 1. Бърза регистрация в томболи и промоции, 2. По-добро
						обслужване, 3. Предпочитана информация
					</em>
				</p>
				<div class="clear"></div>
				<p class="requiredInfo">
					<span class="red">*</span> Задължителни полета
				</p>
				<div class="registerForm">
					<div id="register_message"></div>
					<form name="stenik_user_registration" method="post"
						action="./register" novalidate="novalidate" class="stdForm"
						id="register_form">
						<div class="formItem">
							<input type="text" id="firstName" name="firstName"
								required="required" placeholder="Име *">
						</div>
						<div class="formItem">
							<input type="text" id="secondName" name="secondName"
								required="required" placeholder="Бащино име *">
						</div>
						<div class="formItem">
							<input type="text" id="lastName" name="lastName"
								required="required" placeholder="Фамилия *">
						</div>
						<div class="formItem">
							<input type="email" id="email" name="email" required="required"
								placeholder="E-mail *">
						</div>
						<div class="formItem">
							<input type="password" id="password" name="password"
								required="required" placeholder="Парола *">
						</div>
						<div class="formItem">
							<input type="password" id="rePassword" name="rePassword"
								required="required" placeholder="Повторете паролата *">
						</div>
						<div>

							<input id="sex" type="radio" name="sex"><br> <input
								type='button' value='Мъж' id='selectMale'> <input
								type='button' value='Жена' id='selectFemale'>
						</div>
						<div class="formItem datepicker">
							<input type="datetime" id="dateOfBirth" name="dateOfBirth"
								required="required" placeholder="ГГГГ-ММ-ДД*">
						</div>
						<div class="formItem checkbox">
							<div class="stenik-checkbox">
								<input type="checkbox" name="terms" value="0" />
								<p align="left">Запознах се с общите условия</p>
							</div>
						</div>
						<div class="clearH"></div>
						<p>
							<em>Предоставената информация не е публична и няма да бъде
								разкривана на трети лица</em>
						</p>
						<div class="clearH2"></div>
						<div>
							<button type="submit" id="stenik_user_registration__submit"
								name="stenik_user_registration[_submit]"
								class="button big col3 noMarginR disabled">Регистрирай
								се</button>
						</div>
					</form>
				</div>
			</div>
			<div class="col2 right contentCol">
				<article class="content">
					<p>
						<br> <br> <br>
					</p>
					<p style="text-align: right;">
						<img src="/KinoArena/images/register_pros1.png" alt="">
					</p>
					<p>
						<br> <br> <br>
					</p>
					<p style="text-align: right;">
						<img src="/KinoArena/images/register_pros2.png" alt="">
					</p>
					<p>
						<br> <br> <br>
					</p>
					<p style="text-align: right;">
						<img src="/KinoArena/images/register_pros3.png" alt="">
					</p>
				</article>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
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