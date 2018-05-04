<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="./css/kinoarena.css">
<jsp:include page="header.jsp"></jsp:include>
</head>
<body>
	<div id="colorbox" class="" role="dialog" tabindex="-1"
		style="display: block; visibility: visible; top: 0px; left: 447px; position: fixed; width: 455px; height: 643px; opacity: 1; transform: matrix(1, 0, 0, 1, 0, 0);">
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
									<a href="/KinoArena/forgottenPassword"
										class="forgottenPassword forgottenPasswordPopupLink"><i
										class="questionMark"></i>Забравена парола</a>
									<div class="clear hideOnDesktop hideOnTablet hideOnPhablet"></div>
									<div class="formItem checkbox rememberMe">
										<div class="stenik-checkbox">
											<div class="inputWrapper">
												<input type="checkbox" id="remember_me" name="_remember_me"
													cheched="checked">
											</div>
											<label for="remember_me"><div class="labelContent">Запомни
													ме</div></label>
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

						<script>
							jQuery(function($) {
								var $loginFormRequest;
								$(document)
										.on(
												'submit',
												'#login_form',
												function(e) {
													e.preventDefault();
													if ($loginFormRequest
															&& $loginFormRequest.readyState != 4) {
														$loginFormRequest
																.abort();
													}
													$loginFormRequest = $
															.ajax(
																	{
																		url : "/login_check",
																		type : 'POST',
																		data : $(
																				"#login_form")
																				.serialize(),
																		dataType : 'json'
																	})
															.done(
																	function(
																			data) {
																		if (data.success == true) {
																			window.location.href = data.nextUrl;
																		} else {
																			$(
																					'#login_message')
																					.addClass(
																							'message error')
																					.html(
																							data.message);
																			if (_stenikMain
																					.isMobile()
																					&& $(
																							window)
																							.width() <= _stenikMain.breakpoints.phone) {
																				$(
																						'#colorbox')
																						.animate(
																								{
																									scrollTop : $(
																											'#login_message')
																											.position().top
																								},
																								300);
																			}
																		}

																		$.fn.colorbox
																				.resize({
																					maxHeight : '100%'
																				});
																	});
												});
							});
						</script>
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