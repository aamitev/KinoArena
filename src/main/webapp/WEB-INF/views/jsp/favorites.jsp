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
							<li><a href="./interests"> <span class="icon"><i
										class="popcornPack"></i></span> <span class="txt">Интереси</span>
							</a></li>
							<li class="selected"><span class="icon"><i
									class="heart"></i></span> <span class="txt">Моите филми</span></li>
							<li><a href="./newsletter"> <span class="icon"><i
										class="email"></i></span> <span class="txt">Абонирай се за
										нашия е-бюлетин</span>
							</a></li>
							<li><a href="./orders"> <span class="icon"><i
										class="clock"></i></span> <span class="txt">История на
										резервациите и закупените билети</span>
							</a></li>
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
						<div class="sliderWrapper">
							<div class="tabItem filter" data-filter-anchor="tab-onScreen">На
								екран</div>
							<div class="tabItem filter" data-filter-anchor="tab-futured">Предстоящи</div>
						</div>
					</header>
					<div class="filterContent small"></div>
				</div>
				<!-- end of .contentWrapper -->
			</div>
			<!-- end of .profilePanel -->
		</div>
		</main>
		<!-- end of #main -->
		<div id="scroll_to_top" class="scrollToTop">
			<i class="circleUp"></i>
		</div>

		<div id="fb-root"></div>
	</div>

	<!-- <script type="text/javascript">
		var item = "/images/frontend/bg-items/bg-assets-15years.json";
		var haveDots = "";
	</script>
	<script type="text/javascript" src="/js/5d60927.js"></script>

	<script>
		function loginPopUp() {
			jQuery.ajax({
				url : "/bg/login",
				type : "GET"
			}).done(function(data) {
				jQuery.colorbox({
					fixed : true,
					top : false,
					maxHeight : false,
					transition : null,
					stenikAnimations : true,
					html : data
				});
			});
		}

		/* PRINT ERRORS
		--------------------------------------------------------------- */
		function printErrors(errors, formName) {
			for ( var key in errors) {
				if (Object.prototype.toString.call(errors[key]) === '[object Object]') {
					printErrors(errors[key], formName + key + '_');
				} else {
					$(formName + key).parents().eq(0).addClass('error')
							.append(
									'<div class="center red">' + errors[key]
											+ '</div>');
				}
			}
		}

		jQuery(function($) {
			/* Banner click handle
			--------------------------------------------------- */
			$('div.banner').on('click', function(e) {
				e.preventDefault();
				e.stopPropagation();
				var banner = $(this).data('banner');
				var url = $(this).data('href');
				var target = $(this).data('target');
				if (banner != null) {
					$.ajax({
						url : "/bg/helper/banner/add/click",
						type : 'POST',
						dataType : 'json',
						data : {
							'banner' : banner
						},
					}).done(function(data) {
						if (data.success) {
							if (url) {
								var a = document.createElement('a');
								a.href = url;
								a.target = target;
								document.body.appendChild(a);
								a.click();
							}
							;
						}
						;
					});
				}
				;
			});

			/* Banner click handle
			--------------------------------------------------- */
			$('a.disable').on('click', function(e) {
				e.preventDefault();
				e.stopPropagation();
			})

			/* Add to (remove from) favourites
			--------------------------------------------------- */
			var favBtnSelector = '.favourites';
			if ($(favBtnSelector).length > 0) {
				var user = 'akrobata9608@gmail.com';
				var $favRequest;
				$(document)
						.on(
								'click',
								favBtnSelector,
								function(e) {
									e.preventDefault();
									e.stopPropagation();
									var $fav = $(this);
									if (user != '' && $fav.attr('href').length) {
										if ($favRequest
												&& $favRequest.readyState != 4) {
											$favRequest.abort();
										}
										$favRequest = $
												.ajax({
													url : $fav.attr('href'),
													type : 'GET'
												})
												.done(
														function(data) {
															if (data.removed) {
																$fav
																		.find(
																				'.txt')
																		.removeClass(
																				'contentAfter')
																		.addClass(
																				'contentBefore');
																if ($fav
																		.hasClass('removeMovieBox')) {
																	$fav
																			.parents(
																					'.movieBox')
																			.eq(
																					0)
																			.remove();
																}
															} else {
																$fav
																		.find(
																				'.txt')
																		.removeClass(
																				'contentBefore')
																		.addClass(
																				'contentAfter');
															}
															$
																	.colorbox({
																		fixed : true,
																		top : true,
																		transition : null,
																		stenikAnimations : true,
																		html : '<div class="popup">'
																				+ data.message
																				+ '</div>'
																	});
														});
									} else {
										loginPopUp();
									}
								});
			}

			/* Login pop-ups
			--------------------------------------------------- */
			$document.on('click', '.loginPopupLink', function(e) {
				e.preventDefault();
				loginPopUp();
			});
			$document.on('click', '.forgottenPasswordPopupLink', function(e) {
				e.preventDefault();
				$.colorbox({
					fixed : true,
					top : true,
					transition : null,
					stenikAnimations : true,
					href : "/bg/resetting/reset"
				});
			})
			$document.on('click', '.registerPopupLink', function(e) {
				e.preventDefault();

				$.colorbox({
					top : false,
					transition : null,
					stenikAnimations : true,
					overlayClose : false,
					escKey : false,
					href : "/bg/register"
				});
			});

			/* Movies rating
			--------------------------------------------------- */
			$('.rating')
					.find('input')
					.stenikRating(
							{
								handles : true,
								onSelect : function(data) {
									var $input = $(this).parents(
											'.stenikRating').eq(0)
											.find('input');
									$
											.ajax(
													{
														url : "/bg/movie/helper/update/movie/rating",
														data : {
															'movie' : $input
																	.data('movie'),
															'rating' : data
														},
														method : 'POST',
														dataType : 'JSON'
													})
											.done(
													function(data) {
														if (data.success == false) {
															if (data.message == 'login') {
																loginPopUp();
															}
														} else {
															$input
																	.stenikRating(
																			'setValue',
																			data.rating);
														}

														$
																.colorbox({
																	fixed : true,
																	top : false,
																	transition : null,
																	stenikAnimations : true,
																	html : "<div class=\"popup\">"
																			+ data.message
																			+ "</div>"
																});
													})
											.fail(
													function(jqXHR, textStatus,
															errorThrown) {
														$
																.colorbox({
																	fixed : true,
																	top : false,
																	transition : null,
																	stenikAnimations : true,
																	html : "<div class=\"popup\"><strong class=\"red\">Възникна грешка! Моля, опитайте по-късно!</strong></div>"
																});
													});
								}
							});

			/* Newsletter signup ajax
			--------------------------------------------------- */
			var $newsletterInput = $('#newsletter_email'), $newsletterButton = $('#newsletter_button'), $newsletterRequest;
			$newsletterButton.on('click', function(e) {
				e.preventDefault();
				e.stopPropagation();
				if ($newsletterRequest && $newsletterRequest.readyState != 4) {
					$newsletterRequest.abort();
				}
				$newsletterRequest = $.ajax({
					url : '/bg/newsletter',
					type : 'post',
					data : {
						email : $newsletterInput.val()
					},
					dataType : 'json'
				}).done(
						function(data) {
							$newsletterInput.val('');
							var msg = data.html;
							if (data.success) {
								msg = '<div class="message success noMarginB">'
										+ msg + '</div>';
							} else {
								msg = '<div class="message error noMarginB">'
										+ msg + '</div>';
							}

							$.colorbox({
								fixed : true,
								top : true,
								transition : null,
								stenikAnimations : true,
								html : '<div class="popup">' + msg + '</div>'
							});
						});
			});
		});
	</script>

	<script>
		/* Youtube player init
		------------------------------------------------------- */
		// Asynchronously Youtube IFrame Player API load
		var tag = document.createElement('script');
		tag.src = "//www.youtube.com/iframe_api";
		var firstScriptTag = document.getElementsByTagName('script')[0];
		firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);
		// Player init
		var $body = jQuery('body');
		function onYouTubeIframeAPIReady() {
			var $videoBox = jQuery('#video_box'), $playerHolder = jQuery('#player_holder'), $videoWrapper = $playerHolder
					.find('.videoWrapper'), $videoClose = $playerHolder
					.find('.videoClose'), $videoHandles = jQuery('[data-video-id]');

			var $videoHandle, $myPlayer, myVideoId, videoClass = null;

			// Show
			$videoHandles.click(function(e) {
				e.preventDefault();
				e.stopPropagation();
				$videoHandle = jQuery(this);
				myVideoId = $videoHandle.data('video-id');
				if ($videoHandle.data('videoClass')) {
					videoClass = $videoHandle.data('videoClass');
					$videoBox.addClass(videoClass);
				}

				$body.addClass('videoActive').trigger('stenikPlayerActive');
				TweenLite.fromTo($playerHolder, 0.3, {
					y : -100,
					opacity : 0
				}, {
					y : 0,
					opacity : 1,
					delay : 0.2,
					onComplete : function() {
						youtubeInit();
					}
				});
			});

			// Hide
			$videoClose.on('click', function() {
				TweenLite.to($playerHolder, 0.3, {
					y : -100,
					opacity : 0,
					ease : Back.easeIn,
					onComplete : function() {
						$body.removeClass('videoActive').trigger(
								'stenikPlayerInactive');
						if (videoClass) {
							$videoBox.removeClass(videoClass);
							videoClass = null;
						}
						$videoWrapper.empty();
					}
				});
			});
			function youtubeInit() {
				// Clear the previous player and add a new placeholder for the iframe
				$videoWrapper.empty().append(
						'<div class="player" id="youtube_player"></div>');

				$myPlayer = new YT.Player('youtube_player', {
					videoId : myVideoId,
					playerVars : {
						'autoplay' : 1,
						rel : 0
					}
				});
			}
		}
	</script>

	<script>
		setTimeout(
				function() {
					(function(d, s, id) {
						var js, fjs = d.getElementsByTagName(s)[0];
						if (d.getElementById(id))
							return;
						js = d.createElement(s);
						js.id = id;
						js.src = "//connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v2.0";
						fjs.parentNode.insertBefore(js, fjs);
					}(document, 'script', 'facebook-jssdk'));
				}, 1500);
	</script>

	<script>
		var $dateOfBirth = $('#stenik_user_personal_information_dateOfBirth')
		$dateOfBirth.datetimepicker({
			lang : 'bg',
			format : 'd.m.Y',
			formatDate : 'd.m.Y',
			timepicker : false,
			minDate : '01.01.1945',
			maxDate : '12.12.2015',
			scrollInput : false
		});

		function addZero(date) {
			return date < 9 ? '0' + date : date;
		}

		jQuery(function($) {
			var date = new Date($dateOfBirth.val());
			$dateOfBirth
					.val(addZero(date.getDate()) + '.'
							+ addZero((date.getMonth() + 1)) + '.'
							+ date.getFullYear());
		});
	</script>

	<script>
		jQuery(function($) {
			/* Filter init
			----------------------------------------------------------- */
			$('.stenikFilter').stenikFilter(
					{
						// defaultFilter: 'all'
						defaultFilter : $('.stenikFilter').find('.filter')
								.eq(0).data('filter-anchor')
					});
		});
	</script>

	Google Code for Remarketing Tag

	<script type="text/javascript">
		/* <![CDATA[ */

		var google_conversion_id = 855321203;

		var google_custom_params = window.google_tag_params;

		var google_remarketing_only = true;

		/* ]]> */
	</script>

	<script type="text/javascript"
		src="//www.googleadservices.com/pagead/conversion.js">
		
	</script> -->

	<noscript>

		<div style="display: inline;">

			<img height="1" width="1" style="border-style: none;" alt=""
				src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/855321203/?guid=ON&amp;script=0" />

		</div>

	</noscript>
</body>
</html>