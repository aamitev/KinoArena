<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="http://www.thymeleaf.org"
	xmlns:sec="http://www.thymeleaf.org">
<head>
<link rel="stylesheet" type="text/css" href="./css/kinoarena.css">
<jsp:include page="header.jsp"></jsp:include>

</head>
<body>
	<div id="colorbox" class="" role="dialog" tabindex="-1"
		style="display: block; visibility: visible; top: 150px; left: 38%; position: fixed; width: 455px; height: 643px; opacity: 1; transform: matrix(1, 0, 0, 1, 0, 0);">
		<div id="cboxWrapper" style="height: 643px; width: 455px;">
			<div>
				<div id="cboxTopLeft" style="float: left;"></div>
				<div id="cboxTopCenter" style="float: left; width: 455px;"></div>
				<div id="cboxTopRight" style="float: left;"></div>
			</div>
			<div style="clear: left;">
				<div id="cboxMiddleLeft" style="float: left; height: 643px;"></div>
				<div id="cboxContent"
					style="float: left; width: 455px; height: 643px;">
					<div id="cboxLoadedContent"
						style="width: 455px; overflow: auto; height: 643px;">
						<div id="login_popup" class="popup">
							<h4 class="title">Влез</h4>

							<div class="loginForm">
								<div id="login_message"></div>
								<%-- <p th:if="${error}" th:text="${error}" style = "color: red">Invalid username or password</p> --%>

								<c:if test="${not empty error}">
									<p style="color: red">Invalid username or password</p>
								</c:if>
								<form method="POST" class="stdForm" id="login_form"
									action="./login">
									<input type="hidden" name="_csrf_token"
										value="d4MYDQPOhxvjLSe0WFQCXoodUvYc0VRrkSgiT__jbvE">
									<div class="formItem">
										<input type="email" id="email" name="email" value=""
											required="required" placeholder="E-mail">
									</div>
									<div class="formItem">
										<input type="password" id="password" name="password"
											required="required" placeholder="Парола">
									</div>
									<!-- 									<a href="/KinoArena/forgottenPassword"
										class="forgottenPassword forgottenPasswordPopupLink"><i
										class="questionMark"></i>Забравена парола</a> -->
									<div class="clear hideOnDesktop hideOnTablet hideOnPhablet"></div>
									<div class="formItem checkbox rememberMe">
										<div class="stenik-checkbox">
											<div class="inputWrapper">
												<input type="checkbox" id="remember_me" name="_remember_me"
													checked="checked">
											</div>
										</div>
									</div>
									<div class="clearH"></div>
									<button type="submit" class="button fixedWidth">Вход</button>
									<div class="clearH2"></div>
									<div class="txtSeparator">
										<span class="txt">или</span>
									</div>
									<div class="clearH2"></div>
									<input type="hidden" name="next_url"
										value="https://www.kinoarena.com/bg/"> <a
										href="./register" class="registerPopupLink button small">Нова
										регистрация</a>
								</form>
							</div>
						</div>

					</div>
					<div id="cboxTitle" style="float: left; display: block;"></div>
					<div id="cboxCurrent" style="float: left; display: none;"></div>
					<button type="button" id="cboxPrevious" style="display: none;"></button>
					<button type="button" id="cboxNext" style="display: none;"></button>
					<button id="cboxSlideshow" style="display: none;"></button>
					<div id="cboxLoadingOverlay" style="float: left; display: none;"></div>
					<div id="cboxLoadingGraphic" style="float: left; display: none;"></div>
					<button type="button" id="cboxClose">close</button>
				</div>
				<div id="cboxMiddleRight" style="float: left; height: 643px;"></div>
			</div>
			<div style="clear: left;">
				<div id="cboxBottomLeft" style="float: left;"></div>
				<div id="cboxBottomCenter" style="float: left; width: 455px;"></div>
				<div id="cboxBottomRight" style="float: left;"></div>
			</div>
		</div>
		<div
			style="position: absolute; width: 9999px; visibility: hidden; max-width: none; display: none;"></div>
	</div>
</body>
</html>