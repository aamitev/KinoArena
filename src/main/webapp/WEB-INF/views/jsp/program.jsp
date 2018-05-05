<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html ">
<html>
<head>
<title>Програма</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section class="pageDesc">
		<h1 class="title">Програма</h1>
	</section>

	<div class="wrapper">
		<div class="block projectionDays">
			<header class="stenikTabsHeader" data-rows="2">
				<div
					class="sliderWrapper owl-carousel owl-theme owl-loaded first-slide">
					<div class="owl-stage-outer">
						<div class="owl-stage"
							style="transform: translate3d(0px, 0px, 0px); transition: 0s; width: 2327.5px;">
							<div class="owl-item active"
								style="width: 122.5px; margin-right: 0px;">
								<a href="/bg/program/view/kino-arena-zapad/05-05-2018"
									class="tabItem selected"><div class="row">05 05,</div>
									<div class="row">събота</div></a>
							</div>
							<div class="owl-item active"
								style="width: 122.5px; margin-right: 0px;">
								<a href="/bg/program/view/kino-arena-zapad/06-05-2018"
									class="tabItem "><div class="row">06 05,</div>
									<div class="row">неделя</div></a>
							</div>
						</div>
					</div>
				</div>
			</header>
			<div class="cinemaInfo">
				<div class="twoSidesBar cinemaSelect">
					<aside class="leftSide">
						<span class="fadeTxt small">Избор на кино</span>
						<div class="formItem select checkList" style="display: block;">
							<div id = "slectCinema" class="stenikSelect select_1">
								<div class="selectedHolder">Кино Арена Запад</div>
								<div class="dropdown">
									<span class="option selected " data-option="option_1_0">Кино
										Арена Запад</span><span class="option  " data-option="option_1_1">Кино
										Арена Младост</span><span class="option  " data-option="option_1_2">Кино
										Арена The MALL</span><span class="option  " data-option="option_1_3">Кино
										Арена Делукс Bulgaria Mall</span><span class="option  "
										data-option="option_1_4">Кино Арена Мол Варна</span><span
										class="option  " data-option="option_1_5">Кино Арена
										Grand Mall Варна</span><span class="option  "
										data-option="option_1_6">Кино Арена Мол Марково Тепе
										Пловдив</span><span class="option  " data-option="option_1_7">Кино
										Арена Парк Мол Стара Загора</span><span class="option  "
										data-option="option_1_8">Кино Арена Панорама Мол Плевен</span><span
										class="option  " data-option="option_1_9">Кино Арена
										Смолян</span>
								</div>
							</div>
							<div class="stenikHiddenSelect" style="display: none;">
								<select name="" id="cinema_choice">
									<option value="/bg/program/view/kino-arena-zapad"
										selected="selected" data-option="option_1_0">Кино
										Арена Запад</option>
									<option value="/bg/program/view/kino-arena-mladost"
										data-option="option_1_1">Кино Арена Младост</option>
									<option value="/bg/program/view/kino-arena-the-mall"
										data-option="option_1_2">Кино Арена The MALL</option>
									<option
										value="/bg/program/view/kino-arena-deluxe-bulgaria-mall"
										data-option="option_1_3">Кино Арена Делукс Bulgaria
										Mall</option>
									<option value="/bg/program/view/kino-arena-mol-varna"
										data-option="option_1_4">Кино Арена Мол Варна</option>
									<option value="/bg/program/view/kino-arena-grand-mall-varna-1"
										data-option="option_1_5">Кино Арена Grand Mall Варна</option>
									<option value="/bg/program/view/arena-mol-markovo-tepe"
										data-option="option_1_6">Кино Арена Мол Марково Тепе
										Пловдив</option>
									<option
										value="/bg/program/view/kino-arena-park-mall-stara-zagora"
										data-option="option_1_7">Кино Арена Парк Мол Стара
										Загора</option>
									<option
										value="/bg/program/view/kino-arena-panorama-mall-pleven"
										data-option="option_1_8">Кино Арена Панорама Мол
										Плевен</option>
									<option value="/bg/program/view/kino-arena-smolyan"
										data-option="option_1_9">Кино Арена Смолян</option>
								</select>
							</div>
						</div>
					</aside>
					<div class="barSeparator"></div>
				</div>
				<!-- end of .selectBar -->
				<div class="transpBar">
					<div class="item left">
						<strong>АДРЕС:</strong> гр. София, Западен парк, бул. Тодор
						Александров 64
					</div>
					<div class="item left">
						<strong>ТЕЛЕФОН:</strong> 0893457175
					</div>
					<div class="item right">
						<a id="streetView"
							href="https://www.google.com/maps/embed?pb=!1m0!3m2!1sbg!2sbg!4v1435661782988!6m8!1m7!1sLeDdnQXN_w8AAAQqS17unQ!2m2!1d42.705149!2d23.290078!3f57!4f0!5f0.7820865974627469"
							title="">Карта</a>&nbsp;&nbsp;|&nbsp;&nbsp; <a
							href="/bg/cinema/kino-arena-zapad" title="Кино Арена Запад">
							Вижте повече </a>
					</div>
				</div>
			</div>
			<!-- end of .cinemaInfo -->
			<div class="clearH2 hideOnPhone hideOnHandheld"></div>
			<div class="block">


				<div class="scheduleRow">
					<aside class="sideInfo">
						<div class="movieBox small"
							data-responsive-href="/bg/movie/otmastitelite-voyna-bez-kray-reald-3d">
							<figure class="featured">

								<img title="Отмъстителите: Война без край RealD 3D" width="224"
									height="336" alt="Отмъстителите: Война без край RealD 3D"
									src="/uploads/media/stenik_movies_image/0001/09/thumb_8783_stenik_movies_image_index.jpeg">
								<a
									href="/bg/promotions/view/avengers-infinity-war-promotion-kino-arena"
									class="label gift"><i class="gift small"></i></a>
								<div class="hoverContent">
									<div class="buttonSet" data-rows="3">
										<a href="#" data-video-id="6cuDWLnbfqE" class="row"
											style="bottom: 101%; opacity: 1;">
											<div class="vAlign">
												<span class="icon"><i class="play"></i></span> <span
													class="txt">Трейлър</span>
											</div>
										</a> <a href="/bg/movie/otmastitelite-voyna-bez-kray-reald-3d"
											class="row" style="bottom: 101%; opacity: 1;">
											<div class="vAlign">
												<span class="icon"><i class="cinema"></i></span> <span
													class="txt">Подробно</span>
											</div>
										</a> <a
											href="/bg/profile/movies/otmastitelite-voyna-bez-kray-reald-3d"
											class="row favourites"
											data-movie="otmastitelite-voyna-bez-kray-reald-3d"
											style="bottom: 101%; opacity: 1;">
											<div class="vAlign">
												<span class="icon"><i class="heart big"></i></span> <span
													class="txt contentBefore"
													data-content-before="Добави в любими"
													data-content-after="Премахни от любими"> </span>
											</div>
										</a>
									</div>
								</div>
							</figure>
						</div>
					</aside>

					<div class="contentWrapper">
						<header class="rowHeader">
							<div class="meta" style="display: block;">
								<div class="rating">
									<div class="stenikRating">
										<div class="inputWrapper">
											<input type="text" name="" value="" data-rating="4.31"
												data-movie="704" readonly="readonly">
										</div>
										<div class="handlesWrapper">
											<span class="ratingHandle rating-1" data-rating="1"></span><span
												class="ratingHandle rating-2" data-rating="2"></span><span
												class="ratingHandle rating-3" data-rating="3"></span><span
												class="ratingHandle rating-4" data-rating="4"></span><span
												class="ratingHandle rating-5" data-rating="5"></span>
										</div>
										<div class="ratingSummary" style="width: 95px;">
											<span class="bar" style="width: 86.2%;"></span>
										</div>
									</div>
								</div>
								<div class="attr">
									<div class="item tooltip_0"
										data-tooltip="<p>Не се препоръчва за деца&amp;nbsp;под 12 години.</p>">

										<img title="C" alt="C"
											src="/uploads/media/stenik_attributes/0001/01/9d38bc475f9893a409a2de2e144091b82612c40e.png">
									</div>
								</div>
							</div>
							<h5 class="title">
								<a href="/bg/movie/otmastitelite-voyna-bez-kray-reald-3d">Отмъстителите:
									Война без край RealD 3D</a>
							</h5>
							<em class="gold"><strong>премиера</strong> 27 април 2018 г.</em>
						</header>
						<div class="timeTable">
							<span class="title">Купи билет</span>
							<div class="clear"></div>

							<div class="row">
								<div class="attr secondary">
									<div class="item">

										<img title="LUXE" alt="LUXE"
											src="/uploads/media/stenik_attributes/0001/02/75c02e4bdb1dfb2703107f64410daccb18b4cdb4.png">
									</div>
									<div class="item">

										<img title="3D Digital" alt="3D Digital"
											src="/uploads/media/stenik_attributes/0001/02/1451e1bfdf5d13ac128135704aee13f28fb4c3e5.png">
									</div>
									<div class="item">

										<img title="Atmos" alt="Atmos"
											src="/uploads/media/stenik_attributes/0001/02/835ed146410ee67f3acadb63fa2893fa95444b3a.png">
									</div>
								</div>
								<div class="timelineSet">
									<div
										class="scrollWrapper owl-carousel owl-theme owl-loaded first-slide hide-nav">




										<div class="owl-stage-outer">
											<div class="owl-stage"
												style="transform: translate3d(0px, 0px, 0px); transition: 0s; width: 272px;">
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/223033_9"
														class="item booking tooltip_1"
														data-tooltip="13 лв. / 15 лв." data-tooltip-class="wide">
														<span class="time">13:40</span>
													</a>
												</div>
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/223034_9"
														class="item booking tooltip_2"
														data-tooltip="13 лв. / 15 лв." data-tooltip-class="wide">
														<span class="time">16:50</span>
													</a>
												</div>
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/223035_9"
														class="item booking tooltip_3"
														data-tooltip="13 лв. / 15 лв." data-tooltip-class="wide">
														<span class="time">20:00</span>
													</a>
												</div>
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/223036_9"
														class="item booking tooltip_4"
														data-tooltip="13 лв. / 15 лв." data-tooltip-class="wide">
														<span class="time">23:10</span>
													</a>
												</div>
											</div>
										</div>
										<div class="owl-controls">
											<div class="owl-nav">
												<div class="owl-prev" style=""></div>
												<div class="owl-next" style=""></div>
											</div>
											<div class="owl-dots" style="display: none;"></div>
										</div>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="attr secondary">
									<div class="item">

										<img title="Premium" alt="Premium"
											src="/uploads/media/stenik_attributes/0001/02/2b94a6f5a553a0f52c0da26cf9361141db713f1a.png">
									</div>
									<div class="item">

										<img title="3D Digital" alt="3D Digital"
											src="/uploads/media/stenik_attributes/0001/02/1451e1bfdf5d13ac128135704aee13f28fb4c3e5.png">
									</div>
									<div class="item">

										<img title="Atmos" alt="Atmos"
											src="/uploads/media/stenik_attributes/0001/02/835ed146410ee67f3acadb63fa2893fa95444b3a.png">
									</div>
								</div>
								<div class="timelineSet">
									<div
										class="scrollWrapper owl-carousel owl-theme owl-loaded first-slide hide-nav">




										<div class="owl-stage-outer">
											<div class="owl-stage"
												style="transform: translate3d(0px, 0px, 0px); transition: 0s; width: 272px;">
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/222935_9"
														class="item booking tooltip_5"
														data-tooltip="12 лв. / 14 лв." data-tooltip-class="wide">
														<span class="time">12:00</span>
													</a>
												</div>
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/222936_9"
														class="item booking tooltip_6"
														data-tooltip="12 лв. / 14 лв." data-tooltip-class="wide">
														<span class="time">15:10</span>
													</a>
												</div>
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/222937_9"
														class="item booking tooltip_7"
														data-tooltip="12 лв. / 14 лв." data-tooltip-class="wide">
														<span class="time">18:20</span>
													</a>
												</div>
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/222938_9"
														class="item booking tooltip_8"
														data-tooltip="12 лв. / 14 лв." data-tooltip-class="wide">
														<span class="time">21:30</span>
													</a>
												</div>
											</div>
										</div>
										<div class="owl-controls">
											<div class="owl-nav">
												<div class="owl-prev" style=""></div>
												<div class="owl-next" style=""></div>
											</div>
											<div class="owl-dots" style="display: none;"></div>
										</div>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="attr secondary">
									<div class="item">

										<img title="3D Digital" alt="3D Digital"
											src="/uploads/media/stenik_attributes/0001/02/1451e1bfdf5d13ac128135704aee13f28fb4c3e5.png">
									</div>
									<div class="item">

										<img title="Dolby N" alt="Dolby N"
											src="/uploads/media/stenik_attributes/0001/02/a43d6fd169b0e86650088265e7c0aa7503cf1be6.png">
									</div>
								</div>
								<div class="timelineSet">
									<div
										class="scrollWrapper owl-carousel owl-theme owl-loaded first-slide hide-nav">




										<div class="owl-stage-outer">
											<div class="owl-stage"
												style="transform: translate3d(0px, 0px, 0px); transition: 0s; width: 272px;">
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/222882_9"
														class="item booking tooltip_9"
														data-tooltip="11 лв. / 13 лв." data-tooltip-class="wide">
														<span class="time">11:10</span>
													</a>
												</div>
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/222883_9"
														class="item booking tooltip_10"
														data-tooltip="11 лв. / 13 лв." data-tooltip-class="wide">
														<span class="time">14:20</span>
													</a>
												</div>
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/222884_9"
														class="item booking tooltip_11"
														data-tooltip="11 лв. / 13 лв." data-tooltip-class="wide">
														<span class="time">17:30</span>
													</a>
												</div>
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/222885_9"
														class="item booking tooltip_12"
														data-tooltip="11 лв. / 13 лв." data-tooltip-class="wide">
														<span class="time">20:45</span>
													</a>
												</div>
											</div>
										</div>
										<div class="owl-controls">
											<div class="owl-nav">
												<div class="owl-prev" style=""></div>
												<div class="owl-next" style=""></div>
											</div>
											<div class="owl-dots" style="display: none;"></div>
										</div>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="attr secondary">
									<div class="item">

										<img title="3D Digital" alt="3D Digital"
											src="/uploads/media/stenik_attributes/0001/02/1451e1bfdf5d13ac128135704aee13f28fb4c3e5.png">
									</div>
									<div class="item">

										<img title="Dolby N" alt="Dolby N"
											src="/uploads/media/stenik_attributes/0001/02/a43d6fd169b0e86650088265e7c0aa7503cf1be6.png">
									</div>
								</div>
								<div class="timelineSet">
									<div
										class="scrollWrapper owl-carousel owl-theme owl-loaded first-slide hide-nav">




										<div class="owl-stage-outer">
											<div class="owl-stage"
												style="transform: translate3d(0px, 0px, 0px); transition: 0s; width: 272px;">
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/222907_9"
														class="item booking tooltip_13"
														data-tooltip="11 лв. / 13 лв." data-tooltip-class="wide">
														<span class="time">12:50</span>
													</a>
												</div>
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/222908_9"
														class="item booking tooltip_14"
														data-tooltip="11 лв. / 13 лв." data-tooltip-class="wide">
														<span class="time">16:00</span>
													</a>
												</div>
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/222909_9"
														class="item booking tooltip_15"
														data-tooltip="11 лв. / 13 лв." data-tooltip-class="wide">
														<span class="time">19:10</span>
													</a>
												</div>
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/222910_9"
														class="item booking tooltip_16"
														data-tooltip="11 лв. / 13 лв." data-tooltip-class="wide">
														<span class="time">22:20</span>
													</a>
												</div>
											</div>
										</div>
										<div class="owl-controls">
											<div class="owl-nav">
												<div class="owl-prev" style=""></div>
												<div class="owl-next" style=""></div>
											</div>
											<div class="owl-dots" style="display: none;"></div>
										</div>
									</div>
								</div>
							</div>

						</div>
						<!-- end of .timeTable -->
						<div class="clear"></div>
						<p>
							<em><span class="red">*</span> За филми в 3D формат са ви
								необходими 3D очила, които се купуват отделно от билета в кината
								на цена 2 лв./бр</em>
						</p>
					</div>
					<!-- end of .contentWrapper -->
				</div>
				<!-- end of .scheduleRow -->


				<div class="scheduleRow">
					<aside class="sideInfo">
						<div class="movieBox small"
							data-responsive-href="/bg/movie/tomb-raider-parva-misiya-reald-3d">
							<figure class="featured">

								<img title="Tomb Raider: Първа мисия REALD 3D" width="224"
									height="336" alt="Tomb Raider: Първа мисия REALD 3D"
									src="/uploads/media/stenik_movies_image/0001/10/thumb_9052_stenik_movies_image_index.jpeg">
								<div class="hoverContent">
									<div class="buttonSet" data-rows="3">
										<a href="#" data-video-id="VxXiC74h9DQ" class="row"
											style="bottom: 101%; opacity: 1;">
											<div class="vAlign">
												<span class="icon"><i class="play"></i></span> <span
													class="txt">Трейлър</span>
											</div>
										</a> <a href="/bg/movie/tomb-raider-parva-misiya-reald-3d"
											class="row" style="bottom: 101%; opacity: 1;">
											<div class="vAlign">
												<span class="icon"><i class="cinema"></i></span> <span
													class="txt">Подробно</span>
											</div>
										</a> <a
											href="/bg/profile/movies/tomb-raider-parva-misiya-reald-3d"
											class="row favourites"
											data-movie="tomb-raider-parva-misiya-reald-3d"
											style="bottom: 101%; opacity: 1;">
											<div class="vAlign">
												<span class="icon"><i class="heart big"></i></span> <span
													class="txt contentBefore"
													data-content-before="Добави в любими"
													data-content-after="Премахни от любими"> </span>
											</div>
										</a>
									</div>
								</div>
							</figure>
						</div>
					</aside>

					<div class="contentWrapper">
						<header class="rowHeader">
							<div class="meta" style="display: block;">
								<div class="rating">
									<div class="stenikRating">
										<div class="inputWrapper">
											<input type="text" name="" value="" data-rating="3.36"
												data-movie="689" readonly="readonly">
										</div>
										<div class="handlesWrapper">
											<span class="ratingHandle rating-1" data-rating="1"></span><span
												class="ratingHandle rating-2" data-rating="2"></span><span
												class="ratingHandle rating-3" data-rating="3"></span><span
												class="ratingHandle rating-4" data-rating="4"></span><span
												class="ratingHandle rating-5" data-rating="5"></span>
										</div>
										<div class="ratingSummary" style="width: 95px;">
											<span class="bar" style="width: 67.2%;"></span>
										</div>
									</div>
								</div>
								<div class="attr">
									<div class="item tooltip_17"
										data-tooltip="<p>Не се препоръчва за деца&amp;nbsp;под 12 години.</p>">

										<img title="C" alt="C"
											src="/uploads/media/stenik_attributes/0001/01/9d38bc475f9893a409a2de2e144091b82612c40e.png">
									</div>
								</div>
							</div>
							<h5 class="title">
								<a href="/bg/movie/tomb-raider-parva-misiya-reald-3d">Tomb
									Raider: Първа мисия REALD 3D</a>
							</h5>
							<em class="gold"><strong>премиера</strong> 16 март 2018 г.</em>
						</header>
						<div class="timeTable">
							<span class="title">Купи билет</span>
							<div class="clear"></div>

							<div class="row">
								<div class="attr secondary">
									<div class="item">

										<img title="VIP Screen" alt="VIP Screen"
											src="/uploads/media/stenik_attributes/0001/02/471b92c745d778b59e23a306a9077675380c0faf.png">
									</div>
									<div class="item">

										<img title="3D Digital" alt="3D Digital"
											src="/uploads/media/stenik_attributes/0001/02/1451e1bfdf5d13ac128135704aee13f28fb4c3e5.png">
									</div>
									<div class="item">

										<img title="Dolby N" alt="Dolby N"
											src="/uploads/media/stenik_attributes/0001/02/a43d6fd169b0e86650088265e7c0aa7503cf1be6.png">
									</div>
								</div>
								<div class="timelineSet">
									<div
										class="scrollWrapper owl-carousel owl-theme owl-loaded first-slide hide-nav">

										<div class="owl-stage-outer">
											<div class="owl-stage"
												style="transform: translate3d(0px, 0px, 0px); transition: 0s; width: 68px;">
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/223104_9"
														class="item booking tooltip_18"
														data-tooltip="11 лв. / 13 лв." data-tooltip-class="wide">
														<span class="time">16:00</span>
													</a>
												</div>
											</div>
										</div>
										<div class="owl-controls">
											<div class="owl-nav">
												<div class="owl-prev" style=""></div>
												<div class="owl-next" style=""></div>
											</div>
											<div class="owl-dots" style="display: none;"></div>
										</div>
									</div>
								</div>
							</div>

						</div>
						<!-- end of .timeTable -->
						<div class="clear"></div>
						<p>
							<em><span class="red">*</span> За филми в 3D формат са ви
								необходими 3D очила, които се купуват отделно от билета в кината
								на цена 2 лв./бр</em>
						</p>
					</div>
					<!-- end of .contentWrapper -->
				</div>
				<!-- end of .scheduleRow -->


				<div class="scheduleRow">
					<aside class="sideInfo">
						<div class="movieBox small"
							data-responsive-href="/bg/movie/ogneniyat-prasten-revolyutsiya-reald-3d">
							<figure class="featured">

								<img title="Огненият пръстен: Революция RealD 3D" width="224"
									height="336" alt="Огненият пръстен: Революция RealD 3D"
									src="/uploads/media/stenik_movies_image/0001/10/thumb_9051_stenik_movies_image_index.jpeg">
								<div class="hoverContent">
									<div class="buttonSet" data-rows="3">
										<a href="#" data-video-id="97fg_gCDI9o" class="row"
											style="bottom: 101%; opacity: 1;">
											<div class="vAlign">
												<span class="icon"><i class="play"></i></span> <span
													class="txt">Трейлър</span>
											</div>
										</a> <a href="/bg/movie/ogneniyat-prasten-revolyutsiya-reald-3d"
											class="row" style="bottom: 101%; opacity: 1;">
											<div class="vAlign">
												<span class="icon"><i class="cinema"></i></span> <span
													class="txt">Подробно</span>
											</div>
										</a> <a
											href="/bg/profile/movies/ogneniyat-prasten-revolyutsiya-reald-3d"
											class="row favourites"
											data-movie="ogneniyat-prasten-revolyutsiya-reald-3d"
											style="bottom: 101%; opacity: 1;">
											<div class="vAlign">
												<span class="icon"><i class="heart big"></i></span> <span
													class="txt contentBefore"
													data-content-before="Добави в любими"
													data-content-after="Премахни от любими"> </span>
											</div>
										</a>
									</div>
								</div>
							</figure>
						</div>
					</aside>

					<div class="contentWrapper">
						<header class="rowHeader">
							<div class="meta" style="display: block;">
								<div class="rating">
									<div class="stenikRating">
										<div class="inputWrapper">
											<input type="text" name="" value="" data-rating="3.58"
												data-movie="691" readonly="readonly">
										</div>
										<div class="handlesWrapper">
											<span class="ratingHandle rating-1" data-rating="1"></span><span
												class="ratingHandle rating-2" data-rating="2"></span><span
												class="ratingHandle rating-3" data-rating="3"></span><span
												class="ratingHandle rating-4" data-rating="4"></span><span
												class="ratingHandle rating-5" data-rating="5"></span>
										</div>
										<div class="ratingSummary" style="width: 95px;">
											<span class="bar" style="width: 71.6%;"></span>
										</div>
									</div>
								</div>
								<div class="attr">
									<div class="item tooltip_19"
										data-tooltip="<p>Без ограничения в показа</p>">

										<img title="B" alt="B"
											src="/uploads/media/stenik_attributes/0001/01/9db6e27089dd4e0f193eb6da0fd1a1114d2af76b.png">
									</div>
								</div>
							</div>
							<h5 class="title">
								<a href="/bg/movie/ogneniyat-prasten-revolyutsiya-reald-3d">Огненият
									пръстен: Революция RealD 3D</a>
							</h5>
							<em class="gold"><strong>премиера</strong> 23 март 2018 г.</em>
						</header>
						<div class="timeTable">
							<span class="title">Купи билет</span>
							<div class="clear"></div>

							<div class="row">
								<div class="attr secondary">
									<div class="item">

										<img title="VIP Screen" alt="VIP Screen"
											src="/uploads/media/stenik_attributes/0001/02/471b92c745d778b59e23a306a9077675380c0faf.png">
									</div>
									<div class="item">

										<img title="3D Digital" alt="3D Digital"
											src="/uploads/media/stenik_attributes/0001/02/1451e1bfdf5d13ac128135704aee13f28fb4c3e5.png">
									</div>
									<div class="item">

										<img title="Dolby N" alt="Dolby N"
											src="/uploads/media/stenik_attributes/0001/02/a43d6fd169b0e86650088265e7c0aa7503cf1be6.png">
									</div>
								</div>
								<div class="timelineSet">
									<div
										class="scrollWrapper owl-carousel owl-theme owl-loaded first-slide hide-nav">

										<div class="owl-stage-outer">
											<div class="owl-stage"
												style="transform: translate3d(0px, 0px, 0px); transition: 0s; width: 68px;">
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/223103_9"
														class="item booking tooltip_20"
														data-tooltip="11 лв. / 13 лв." data-tooltip-class="wide">
														<span class="time">13:40</span>
													</a>
												</div>
											</div>
										</div>
										<div class="owl-controls">
											<div class="owl-nav">
												<div class="owl-prev" style=""></div>
												<div class="owl-next" style=""></div>
											</div>
											<div class="owl-dots" style="display: none;"></div>
										</div>
									</div>
								</div>
							</div>

						</div>
						<!-- end of .timeTable -->
						<div class="clear"></div>
						<p>
							<em><span class="red">*</span> За филми в 3D формат са ви
								необходими 3D очила, които се купуват отделно от билета в кината
								на цена 2 лв./бр</em>
						</p>
					</div>
					<!-- end of .contentWrapper -->
				</div>
				<!-- end of .scheduleRow -->


				<div class="scheduleRow">
					<aside class="sideInfo">
						<div class="movieBox small"
							data-responsive-href="/bg/movie/rampage-unishtojitelite-reald-3d">
							<figure class="featured">

								<img title="RAMPAGE: Унищожителите RealD 3D" width="224"
									height="336" alt="RAMPAGE: Унищожителите RealD 3D"
									src="/uploads/media/stenik_movies_image/0001/09/thumb_8937_stenik_movies_image_index.jpeg">
								<div class="hoverContent">
									<div class="buttonSet" data-rows="3">
										<a href="#" data-video-id="GvviN_xKVNE" class="row"
											style="bottom: 101%; opacity: 1;">
											<div class="vAlign">
												<span class="icon"><i class="play"></i></span> <span
													class="txt">Трейлър</span>
											</div>
										</a> <a href="/bg/movie/rampage-unishtojitelite-reald-3d"
											class="row" style="bottom: 101%; opacity: 1;">
											<div class="vAlign">
												<span class="icon"><i class="cinema"></i></span> <span
													class="txt">Подробно</span>
											</div>
										</a> <a href="/bg/profile/movies/rampage-unishtojitelite-reald-3d"
											class="row favourites"
											data-movie="rampage-unishtojitelite-reald-3d"
											style="bottom: 101%; opacity: 1;">
											<div class="vAlign">
												<span class="icon"><i class="heart big"></i></span> <span
													class="txt contentBefore"
													data-content-before="Добави в любими"
													data-content-after="Премахни от любими"> </span>
											</div>
										</a>
									</div>
								</div>
							</figure>
						</div>
					</aside>

					<div class="contentWrapper">
						<header class="rowHeader">
							<div class="meta" style="display: block;">
								<div class="rating">
									<div class="stenikRating">
										<div class="inputWrapper">
											<input type="text" name="" value="" data-rating="3.48"
												data-movie="708" readonly="readonly">
										</div>
										<div class="handlesWrapper">
											<span class="ratingHandle rating-1" data-rating="1"></span><span
												class="ratingHandle rating-2" data-rating="2"></span><span
												class="ratingHandle rating-3" data-rating="3"></span><span
												class="ratingHandle rating-4" data-rating="4"></span><span
												class="ratingHandle rating-5" data-rating="5"></span>
										</div>
										<div class="ratingSummary" style="width: 95px;">
											<span class="bar" style="width: 69.6%;"></span>
										</div>
									</div>
								</div>
								<div class="attr">
									<div class="item tooltip_21"
										data-tooltip="<p>Не се препоръчва за деца&amp;nbsp;под 12 години.</p>">

										<img title="C" alt="C"
											src="/uploads/media/stenik_attributes/0001/01/9d38bc475f9893a409a2de2e144091b82612c40e.png">
									</div>
								</div>
							</div>
							<h5 class="title">
								<a href="/bg/movie/rampage-unishtojitelite-reald-3d">RAMPAGE:
									Унищожителите RealD 3D</a>
							</h5>
							<em class="gold"><strong>премиера</strong> 13 април 2018 г.</em>
						</header>
						<div class="timeTable">
							<span class="title">Купи билет</span>
							<div class="clear"></div>

							<div class="row">
								<div class="attr secondary">
									<div class="item">

										<img title="VIP Screen" alt="VIP Screen"
											src="/uploads/media/stenik_attributes/0001/02/471b92c745d778b59e23a306a9077675380c0faf.png">
									</div>
									<div class="item">

										<img title="3D Digital" alt="3D Digital"
											src="/uploads/media/stenik_attributes/0001/02/1451e1bfdf5d13ac128135704aee13f28fb4c3e5.png">
									</div>
									<div class="item">

										<img title="Dolby N" alt="Dolby N"
											src="/uploads/media/stenik_attributes/0001/02/a43d6fd169b0e86650088265e7c0aa7503cf1be6.png">
									</div>
								</div>
								<div class="timelineSet">
									<div
										class="scrollWrapper owl-carousel owl-theme owl-loaded first-slide hide-nav">

										<div class="owl-stage-outer">
											<div class="owl-stage"
												style="transform: translate3d(0px, 0px, 0px); transition: 0s; width: 68px;">
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/223106_9"
														class="item booking tooltip_22"
														data-tooltip="11 лв. / 13 лв." data-tooltip-class="wide">
														<span class="time">20:40</span>
													</a>
												</div>
											</div>
										</div>
										<div class="owl-controls">
											<div class="owl-nav">
												<div class="owl-prev" style=""></div>
												<div class="owl-next" style=""></div>
											</div>
											<div class="owl-dots" style="display: none;"></div>
										</div>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="attr secondary">
									<div class="item">

										<img title="3D Digital" alt="3D Digital"
											src="/uploads/media/stenik_attributes/0001/02/1451e1bfdf5d13ac128135704aee13f28fb4c3e5.png">
									</div>
									<div class="item">

										<img title="Dolby N" alt="Dolby N"
											src="/uploads/media/stenik_attributes/0001/02/a43d6fd169b0e86650088265e7c0aa7503cf1be6.png">
									</div>
								</div>
								<div class="timelineSet">
									<div
										class="scrollWrapper owl-carousel owl-theme owl-loaded first-slide hide-nav">





										<div class="owl-stage-outer">
											<div class="owl-stage"
												style="transform: translate3d(0px, 0px, 0px); transition: 0s; width: 340px;">
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/222964_9"
														class="item booking tooltip_23"
														data-tooltip="11 лв. / 13 лв." data-tooltip-class="wide">
														<span class="time">12:20</span>
													</a>
												</div>
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/222965_9"
														class="item booking tooltip_24"
														data-tooltip="11 лв. / 13 лв." data-tooltip-class="wide">
														<span class="time">14:40</span>
													</a>
												</div>
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/222966_9"
														class="item booking tooltip_25"
														data-tooltip="11 лв. / 13 лв." data-tooltip-class="wide">
														<span class="time">17:00</span>
													</a>
												</div>
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/222967_9"
														class="item booking tooltip_26"
														data-tooltip="11 лв. / 13 лв." data-tooltip-class="wide">
														<span class="time">19:20</span>
													</a>
												</div>
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/222968_9"
														class="item booking tooltip_27"
														data-tooltip="11 лв. / 13 лв." data-tooltip-class="wide">
														<span class="time">21:40</span>
													</a>
												</div>
											</div>
										</div>
										<div class="owl-controls">
											<div class="owl-nav">
												<div class="owl-prev" style=""></div>
												<div class="owl-next" style=""></div>
											</div>
											<div class="owl-dots" style="display: none;"></div>
										</div>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="attr secondary">
									<div class="item">

										<img title="3D Digital" alt="3D Digital"
											src="/uploads/media/stenik_attributes/0001/02/1451e1bfdf5d13ac128135704aee13f28fb4c3e5.png">
									</div>
									<div class="item">

										<img title="Dolby N" alt="Dolby N"
											src="/uploads/media/stenik_attributes/0001/02/a43d6fd169b0e86650088265e7c0aa7503cf1be6.png">
									</div>
								</div>
								<div class="timelineSet">
									<div
										class="scrollWrapper owl-carousel owl-theme owl-loaded first-slide hide-nav">



										<div class="owl-stage-outer">
											<div class="owl-stage"
												style="transform: translate3d(0px, 0px, 0px); transition: 0s; width: 204px;">
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/222645_9"
														class="item booking tooltip_28"
														data-tooltip="11 лв. / 13 лв." data-tooltip-class="wide">
														<span class="time">13:30</span>
													</a>
												</div>
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/222646_9"
														class="item booking tooltip_29"
														data-tooltip="11 лв. / 13 лв." data-tooltip-class="wide">
														<span class="time">15:50</span>
													</a>
												</div>
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/222647_9"
														class="item booking tooltip_30"
														data-tooltip="11 лв. / 13 лв." data-tooltip-class="wide">
														<span class="time">18:10</span>
													</a>
												</div>
											</div>
										</div>
										<div class="owl-controls">
											<div class="owl-nav">
												<div class="owl-prev" style=""></div>
												<div class="owl-next" style=""></div>
											</div>
											<div class="owl-dots" style="display: none;"></div>
										</div>
									</div>
								</div>
							</div>

						</div>
						<!-- end of .timeTable -->
						<div class="clear"></div>
						<p>
							<em><span class="red">*</span> За филми в 3D формат са ви
								необходими 3D очила, които се купуват отделно от билета в кината
								на цена 2 лв./бр</em>
						</p>
					</div>
					<!-- end of .contentWrapper -->
				</div>
				<!-- end of .scheduleRow -->


				<div class="scheduleRow">
					<aside class="sideInfo">
						<div class="movieBox small"
							data-responsive-href="/bg/movie/slantse-v-polunosht">
							<figure class="featured">

								<img title="Слънце в полунощ" width="224" height="336"
									alt="Слънце в полунощ"
									src="/uploads/media/stenik_movies_image/0001/09/thumb_8922_stenik_movies_image_index.jpeg">
								<div class="hoverContent">
									<div class="buttonSet" data-rows="3">
										<a href="#" data-video-id="Hi0-Cg0d1kY" class="row"
											style="bottom: 101%; opacity: 1;">
											<div class="vAlign">
												<span class="icon"><i class="play"></i></span> <span
													class="txt">Трейлър</span>
											</div>
										</a> <a href="/bg/movie/slantse-v-polunosht" class="row"
											style="bottom: 101%; opacity: 1;">
											<div class="vAlign">
												<span class="icon"><i class="cinema"></i></span> <span
													class="txt">Подробно</span>
											</div>
										</a> <a href="/bg/profile/movies/slantse-v-polunosht"
											class="row favourites" data-movie="slantse-v-polunosht"
											style="bottom: 101%; opacity: 1;">
											<div class="vAlign">
												<span class="icon"><i class="heart big"></i></span> <span
													class="txt contentBefore"
													data-content-before="Добави в любими"
													data-content-after="Премахни от любими"> </span>
											</div>
										</a>
									</div>
								</div>
							</figure>
						</div>
					</aside>

					<div class="contentWrapper">
						<header class="rowHeader">
							<div class="meta" style="display: block;">
								<div class="rating">
									<div class="stenikRating">
										<div class="inputWrapper">
											<input type="text" name="" value="" data-rating="2.50"
												data-movie="719" readonly="readonly">
										</div>
										<div class="handlesWrapper">
											<span class="ratingHandle rating-1" data-rating="1"></span><span
												class="ratingHandle rating-2" data-rating="2"></span><span
												class="ratingHandle rating-3" data-rating="3"></span><span
												class="ratingHandle rating-4" data-rating="4"></span><span
												class="ratingHandle rating-5" data-rating="5"></span>
										</div>
										<div class="ratingSummary" style="width: 95px;">
											<span class="bar" style="width: 50%;"></span>
										</div>
									</div>
								</div>
								<div class="attr">
									<div class="item tooltip_31"
										data-tooltip="<p>Очаква категория</p>">

										<img title="TBC" alt="TBC"
											src="/uploads/media/stenik_attributes/0001/01/54eca85ed4afedf45a91b726bd237206bad943b8.png">
									</div>
								</div>
							</div>
							<h5 class="title">
								<a href="/bg/movie/slantse-v-polunosht">Слънце в полунощ</a>
							</h5>
							<em class="gold"><strong>премиера</strong> 20 април 2018 г.</em>
						</header>
						<div class="timeTable">
							<span class="title">Купи билет</span>
							<div class="clear"></div>

							<div class="row">
								<div class="attr secondary">
									<div class="item">

										<img title="VIP Screen" alt="VIP Screen"
											src="/uploads/media/stenik_attributes/0001/02/471b92c745d778b59e23a306a9077675380c0faf.png">
									</div>
									<div class="item">

										<img title="Digital" alt="Digital"
											src="/uploads/media/stenik_attributes/0001/02/a0839dc0242ea51919868600b9761b49ee8946df.png">
									</div>
									<div class="item">

										<img title="Dolby N" alt="Dolby N"
											src="/uploads/media/stenik_attributes/0001/02/a43d6fd169b0e86650088265e7c0aa7503cf1be6.png">
									</div>
								</div>
								<div class="timelineSet">
									<div
										class="scrollWrapper owl-carousel owl-theme owl-loaded first-slide hide-nav">

										<div class="owl-stage-outer">
											<div class="owl-stage"
												style="transform: translate3d(0px, 0px, 0px); transition: 0s; width: 68px;">
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/223105_9"
														class="item booking tooltip_32"
														data-tooltip="9 лв. / 11 лв." data-tooltip-class="wide">
														<span class="time">18:30</span>
													</a>
												</div>
											</div>
										</div>
										<div class="owl-controls">
											<div class="owl-nav">
												<div class="owl-prev" style=""></div>
												<div class="owl-next" style=""></div>
											</div>
											<div class="owl-dots" style="display: none;"></div>
										</div>
									</div>
								</div>
							</div>

						</div>
						<!-- end of .timeTable -->
						<div class="clear"></div>
						<p>
							<em><span class="red">*</span> За филми в 3D формат са ви
								необходими 3D очила, които се купуват отделно от билета в кината
								на цена 2 лв./бр</em>
						</p>
					</div>
					<!-- end of .contentWrapper -->
				</div>
				<!-- end of .scheduleRow -->


				<div class="scheduleRow">
					<aside class="sideInfo">
						<div class="movieBox small"
							data-responsive-href="/bg/movie/super-patrul-2">
							<figure class="featured">

								<img title="Супер патрул 2" width="224" height="336"
									alt="Супер патрул 2"
									src="/uploads/media/stenik_movies_image/0001/09/thumb_8890_stenik_movies_image_index.jpeg">
								<div class="hoverContent">
									<div class="buttonSet" data-rows="3">
										<a href="#" data-video-id="iDeD7SDIf-Q" class="row"
											style="bottom: 101%; opacity: 1;">
											<div class="vAlign">
												<span class="icon"><i class="play"></i></span> <span
													class="txt">Трейлър</span>
											</div>
										</a> <a href="/bg/movie/super-patrul-2" class="row"
											style="bottom: 101%; opacity: 1;">
											<div class="vAlign">
												<span class="icon"><i class="cinema"></i></span> <span
													class="txt">Подробно</span>
											</div>
										</a> <a href="/bg/profile/movies/super-patrul-2"
											class="row favourites" data-movie="super-patrul-2"
											style="bottom: 101%; opacity: 1;">
											<div class="vAlign">
												<span class="icon"><i class="heart big"></i></span> <span
													class="txt contentBefore"
													data-content-before="Добави в любими"
													data-content-after="Премахни от любими"> </span>
											</div>
										</a>
									</div>
								</div>
							</figure>
						</div>
					</aside>

					<div class="contentWrapper">
						<header class="rowHeader">
							<div class="meta" style="display: block;">
								<div class="rating">
									<div class="stenikRating">
										<div class="inputWrapper">
											<input type="text" name="" value="" data-rating="5.00"
												data-movie="717" readonly="readonly">
										</div>
										<div class="handlesWrapper">
											<span class="ratingHandle rating-1" data-rating="1"></span><span
												class="ratingHandle rating-2" data-rating="2"></span><span
												class="ratingHandle rating-3" data-rating="3"></span><span
												class="ratingHandle rating-4" data-rating="4"></span><span
												class="ratingHandle rating-5" data-rating="5"></span>
										</div>
										<div class="ratingSummary" style="width: 95px;">
											<span class="bar" style="width: 100%;"></span>
										</div>
									</div>
								</div>
								<div class="attr">
									<div class="item tooltip_33"
										data-tooltip="<p>Очаква категория</p>">

										<img title="TBC" alt="TBC"
											src="/uploads/media/stenik_attributes/0001/01/54eca85ed4afedf45a91b726bd237206bad943b8.png">
									</div>
								</div>
							</div>
							<h5 class="title">
								<a href="/bg/movie/super-patrul-2">Супер патрул 2</a>
							</h5>
							<em class="gold"><strong>премиера</strong> 4 май 2018 г.</em>
						</header>
						<div class="timeTable">
							<span class="title">Купи билет</span>
							<div class="clear"></div>

							<div class="row">
								<div class="attr secondary">
									<div class="item">

										<img title="Digital" alt="Digital"
											src="/uploads/media/stenik_attributes/0001/02/a0839dc0242ea51919868600b9761b49ee8946df.png">
									</div>
									<div class="item">

										<img title="Dolby N" alt="Dolby N"
											src="/uploads/media/stenik_attributes/0001/02/a43d6fd169b0e86650088265e7c0aa7503cf1be6.png">
									</div>
								</div>
								<div class="timelineSet">
									<div
										class="scrollWrapper owl-carousel owl-theme owl-loaded first-slide hide-nav">





										<div class="owl-stage-outer">
											<div class="owl-stage"
												style="transform: translate3d(0px, 0px, 0px); transition: 0s; width: 340px;">
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/222780_9"
														class="item booking tooltip_34"
														data-tooltip="9 лв. / 11 лв." data-tooltip-class="wide">
														<span class="time">14:00</span>
													</a>
												</div>
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/222781_9"
														class="item booking tooltip_35"
														data-tooltip="9 лв. / 11 лв." data-tooltip-class="wide">
														<span class="time">16:15</span>
													</a>
												</div>
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/222782_9"
														class="item booking tooltip_36"
														data-tooltip="9 лв. / 11 лв." data-tooltip-class="wide">
														<span class="time">18:30</span>
													</a>
												</div>
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/222783_9"
														class="item booking tooltip_37"
														data-tooltip="9 лв. / 11 лв." data-tooltip-class="wide">
														<span class="time">20:40</span>
													</a>
												</div>
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/222784_9"
														class="item booking tooltip_38"
														data-tooltip="9 лв. / 11 лв." data-tooltip-class="wide">
														<span class="time">22:50</span>
													</a>
												</div>
											</div>
										</div>
										<div class="owl-controls">
											<div class="owl-nav">
												<div class="owl-prev" style=""></div>
												<div class="owl-next" style=""></div>
											</div>
											<div class="owl-dots" style="display: none;"></div>
										</div>
									</div>
								</div>
							</div>

						</div>
						<!-- end of .timeTable -->
						<div class="clear"></div>
						<p>
							<em><span class="red">*</span> За филми в 3D формат са ви
								необходими 3D очила, които се купуват отделно от билета в кината
								на цена 2 лв./бр</em>
						</p>
					</div>
					<!-- end of .contentWrapper -->
				</div>
				<!-- end of .scheduleRow -->


				<div class="scheduleRow">
					<aside class="sideInfo">
						<div class="movieBox small"
							data-responsive-href="/bg/movie/srachkovtsite-strogo-sekretno">
							<figure class="featured">

								<img title="Сръчковците: Строго секретно" width="224"
									height="336" alt="Сръчковците: Строго секретно"
									src="/uploads/media/stenik_movies_image/0001/10/thumb_9065_stenik_movies_image_index.jpeg">
								<div class="hoverContent">
									<div class="buttonSet" data-rows="3">
										<a href="#" data-video-id="0oLLV_hQk8U" class="row"
											style="bottom: 101%; opacity: 1;">
											<div class="vAlign">
												<span class="icon"><i class="play"></i></span> <span
													class="txt">Трейлър</span>
											</div>
										</a> <a href="/bg/movie/srachkovtsite-strogo-sekretno" class="row"
											style="bottom: 101%; opacity: 1;">
											<div class="vAlign">
												<span class="icon"><i class="cinema"></i></span> <span
													class="txt">Подробно</span>
											</div>
										</a> <a href="/bg/profile/movies/srachkovtsite-strogo-sekretno"
											class="row favourites"
											data-movie="srachkovtsite-strogo-sekretno"
											style="bottom: 101%; opacity: 1;">
											<div class="vAlign">
												<span class="icon"><i class="heart big"></i></span> <span
													class="txt contentBefore"
													data-content-before="Добави в любими"
													data-content-after="Премахни от любими"> </span>
											</div>
										</a>
									</div>
								</div>
							</figure>
						</div>
					</aside>

					<div class="contentWrapper">
						<header class="rowHeader">
							<div class="meta" style="display: block;">
								<div class="rating">
									<div class="stenikRating">
										<div class="inputWrapper">
											<input type="text" name="" value="" data-rating="0.00"
												data-movie="733" readonly="readonly">
										</div>
										<div class="handlesWrapper">
											<span class="ratingHandle rating-1" data-rating="1"></span><span
												class="ratingHandle rating-2" data-rating="2"></span><span
												class="ratingHandle rating-3" data-rating="3"></span><span
												class="ratingHandle rating-4" data-rating="4"></span><span
												class="ratingHandle rating-5" data-rating="5"></span>
										</div>
										<div class="ratingSummary" style="width: 95px;">
											<span class="bar" style="width: 0%;"></span>
										</div>
									</div>
								</div>
								<div class="attr">
									<div class="item tooltip_39"
										data-tooltip="<p>Дублиран на български език</p>">

										<img title="Dubbed" alt="Dubbed"
											src="/uploads/media/stenik_attributes/0001/02/39a939bbe7828a27bfa4fe1aabd2fd6298929fc5.png">
									</div>
									<div class="item tooltip_40"
										data-tooltip="<p>Без ограничения в показа</p>">

										<img title="B" alt="B"
											src="/uploads/media/stenik_attributes/0001/01/9db6e27089dd4e0f193eb6da0fd1a1114d2af76b.png">
									</div>
								</div>
							</div>
							<h5 class="title">
								<a href="/bg/movie/srachkovtsite-strogo-sekretno">Сръчковците:
									Строго секретно</a>
							</h5>
							<em class="gold"><strong>премиера</strong> 4 май 2018 г.</em>
						</header>
						<div class="timeTable">
							<span class="title">Купи билет</span>
							<div class="clear"></div>

							<div class="row">
								<div class="attr secondary">
									<div class="item">

										<img title="Digital" alt="Digital"
											src="/uploads/media/stenik_attributes/0001/02/a0839dc0242ea51919868600b9761b49ee8946df.png">
									</div>
									<div class="item">

										<img title="Dolby N" alt="Dolby N"
											src="/uploads/media/stenik_attributes/0001/02/a43d6fd169b0e86650088265e7c0aa7503cf1be6.png">
									</div>
									<div class="item">

										<img title="Dubbed" alt="Dubbed"
											src="/uploads/media/stenik_attributes/0001/02/39a939bbe7828a27bfa4fe1aabd2fd6298929fc5.png">
										<div class="tooltip">
											<div class="vAlign">&lt;p&gt;Дублиран на български
												език&lt;/p&gt;</div>
										</div>
									</div>
								</div>
								<div class="timelineSet">
									<div
										class="scrollWrapper owl-carousel owl-theme owl-loaded first-slide hide-nav">




										<div class="owl-stage-outer">
											<div class="owl-stage"
												style="transform: translate3d(0px, 0px, 0px); transition: 0s; width: 272px;">
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/222739_9"
														class="item booking tooltip_41"
														data-tooltip="9 лв. / 11 лв." data-tooltip-class="wide">
														<span class="time">12:00</span>
													</a>
												</div>
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/222740_9"
														class="item booking tooltip_42"
														data-tooltip="9 лв. / 11 лв." data-tooltip-class="wide">
														<span class="time">13:50</span>
													</a>
												</div>
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/222741_9"
														class="item booking tooltip_43"
														data-tooltip="9 лв. / 11 лв." data-tooltip-class="wide">
														<span class="time">15:50</span>
													</a>
												</div>
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/222742_9"
														class="item booking tooltip_44"
														data-tooltip="9 лв. / 11 лв." data-tooltip-class="wide">
														<span class="time">18:00</span>
													</a>
												</div>
											</div>
										</div>
										<div class="owl-controls">
											<div class="owl-nav">
												<div class="owl-prev" style=""></div>
												<div class="owl-next" style=""></div>
											</div>
											<div class="owl-dots" style="display: none;"></div>
										</div>
									</div>
								</div>
							</div>

						</div>
						<!-- end of .timeTable -->
						<div class="clear"></div>
						<p>
							<em><span class="red">*</span> За филми в 3D формат са ви
								необходими 3D очила, които се купуват отделно от билета в кината
								на цена 2 лв./бр</em>
						</p>
					</div>
					<!-- end of .contentWrapper -->
				</div>
				<!-- end of .scheduleRow -->


				<div class="scheduleRow">
					<aside class="sideInfo">
						<div class="movieBox small"
							data-responsive-href="/bg/movie/diagnoza-seksi">
							<figure class="featured">

								<img title="Диагноза: Секси!" width="224" height="336"
									alt="Диагноза: Секси!"
									src="/uploads/media/stenik_movies_image/0001/10/thumb_9005_stenik_movies_image_index.jpeg">
								<div class="hoverContent">
									<div class="buttonSet" data-rows="3">
										<a href="#" data-video-id="Kavbmiaar4c" class="row"
											style="bottom: 101%; opacity: 1;">
											<div class="vAlign">
												<span class="icon"><i class="play"></i></span> <span
													class="txt">Трейлър</span>
											</div>
										</a> <a href="/bg/movie/diagnoza-seksi" class="row"
											style="bottom: 101%; opacity: 1;">
											<div class="vAlign">
												<span class="icon"><i class="cinema"></i></span> <span
													class="txt">Подробно</span>
											</div>
										</a> <a href="/bg/profile/movies/diagnoza-seksi"
											class="row favourites" data-movie="diagnoza-seksi"
											style="bottom: 101%; opacity: 1;">
											<div class="vAlign">
												<span class="icon"><i class="heart big"></i></span> <span
													class="txt contentBefore"
													data-content-before="Добави в любими"
													data-content-after="Премахни от любими"> </span>
											</div>
										</a>
									</div>
								</div>
							</figure>
						</div>
					</aside>

					<div class="contentWrapper">
						<header class="rowHeader">
							<div class="meta" style="display: block;">
								<div class="rating">
									<div class="stenikRating">
										<div class="inputWrapper">
											<input type="text" name="" value="" data-rating="2.40"
												data-movie="725" readonly="readonly">
										</div>
										<div class="handlesWrapper">
											<span class="ratingHandle rating-1" data-rating="1"></span><span
												class="ratingHandle rating-2" data-rating="2"></span><span
												class="ratingHandle rating-3" data-rating="3"></span><span
												class="ratingHandle rating-4" data-rating="4"></span><span
												class="ratingHandle rating-5" data-rating="5"></span>
										</div>
										<div class="ratingSummary" style="width: 95px;">
											<span class="bar" style="width: 48%;"></span>
										</div>
									</div>
								</div>
								<div class="attr">
									<div class="item tooltip_45"
										data-tooltip="<p>Без ограничения в показа</p>">

										<img title="B" alt="B"
											src="/uploads/media/stenik_attributes/0001/01/9db6e27089dd4e0f193eb6da0fd1a1114d2af76b.png">
									</div>
								</div>
							</div>
							<h5 class="title">
								<a href="/bg/movie/diagnoza-seksi">Диагноза: Секси!</a>
							</h5>
							<em class="gold"><strong>премиера</strong> 27 април 2018 г.</em>
						</header>
						<div class="timeTable">
							<span class="title">Купи билет</span>
							<div class="clear"></div>

							<div class="row">
								<div class="attr secondary">
									<div class="item">

										<img title="Digital" alt="Digital"
											src="/uploads/media/stenik_attributes/0001/02/a0839dc0242ea51919868600b9761b49ee8946df.png">
									</div>
									<div class="item">

										<img title="Dolby N" alt="Dolby N"
											src="/uploads/media/stenik_attributes/0001/02/a43d6fd169b0e86650088265e7c0aa7503cf1be6.png">
									</div>
								</div>
								<div class="timelineSet">
									<div
										class="scrollWrapper owl-carousel owl-theme owl-loaded first-slide hide-nav">




										<div class="owl-stage-outer">
											<div class="owl-stage"
												style="transform: translate3d(0px, 0px, 0px); transition: 0s; width: 272px;">
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/222852_9"
														class="item booking tooltip_46"
														data-tooltip="9 лв. / 11 лв." data-tooltip-class="wide">
														<span class="time">14:50</span>
													</a>
												</div>
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/222853_9"
														class="item booking tooltip_47"
														data-tooltip="9 лв. / 11 лв." data-tooltip-class="wide">
														<span class="time">17:15</span>
													</a>
												</div>
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/222854_9"
														class="item booking tooltip_48"
														data-tooltip="9 лв. / 11 лв." data-tooltip-class="wide">
														<span class="time">19:40</span>
													</a>
												</div>
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/222855_9"
														class="item booking tooltip_49"
														data-tooltip="9 лв. / 11 лв." data-tooltip-class="wide">
														<span class="time">22:10</span>
													</a>
												</div>
											</div>
										</div>
										<div class="owl-controls">
											<div class="owl-nav">
												<div class="owl-prev" style=""></div>
												<div class="owl-next" style=""></div>
											</div>
											<div class="owl-dots" style="display: none;"></div>
										</div>
									</div>
								</div>
							</div>

						</div>
						<!-- end of .timeTable -->
						<div class="clear"></div>
						<p>
							<em><span class="red">*</span> За филми в 3D формат са ви
								необходими 3D очила, които се купуват отделно от билета в кината
								на цена 2 лв./бр</em>
						</p>
					</div>
					<!-- end of .contentWrapper -->
				</div>
				<!-- end of .scheduleRow -->


				<div class="scheduleRow">
					<aside class="sideInfo">
						<div class="movieBox small"
							data-responsive-href="/bg/movie/pchelichkata-maya-igrite-na-meda-reald-3d">
							<figure class="featured">

								<img title="Пчеличката Мая: Игрите на меда RealD 3D" width="224"
									height="336" alt="Пчеличката Мая: Игрите на меда RealD 3D"
									src="/uploads/media/stenik_movies_image/0001/09/thumb_8718_stenik_movies_image_index.jpeg">
								<div class="hoverContent">
									<div class="buttonSet" data-rows="3">
										<a href="#" data-video-id="fjdFFgOpYo4" class="row"
											style="bottom: 101%; opacity: 1;">
											<div class="vAlign">
												<span class="icon"><i class="play"></i></span> <span
													class="txt">Трейлър</span>
											</div>
										</a> <a href="/bg/movie/pchelichkata-maya-igrite-na-meda-reald-3d"
											class="row" style="bottom: 101%; opacity: 1;">
											<div class="vAlign">
												<span class="icon"><i class="cinema"></i></span> <span
													class="txt">Подробно</span>
											</div>
										</a> <a
											href="/bg/profile/movies/pchelichkata-maya-igrite-na-meda-reald-3d"
											class="row favourites"
											data-movie="pchelichkata-maya-igrite-na-meda-reald-3d"
											style="bottom: 101%; opacity: 1;">
											<div class="vAlign">
												<span class="icon"><i class="heart big"></i></span> <span
													class="txt contentBefore"
													data-content-before="Добави в любими"
													data-content-after="Премахни от любими"> </span>
											</div>
										</a>
									</div>
								</div>
							</figure>
						</div>
					</aside>

					<div class="contentWrapper">
						<header class="rowHeader">
							<div class="meta" style="display: block;">
								<div class="rating">
									<div class="stenikRating">
										<div class="inputWrapper">
											<input type="text" name="" value="" data-rating="2.00"
												data-movie="700" readonly="readonly">
										</div>
										<div class="handlesWrapper">
											<span class="ratingHandle rating-1" data-rating="1"></span><span
												class="ratingHandle rating-2" data-rating="2"></span><span
												class="ratingHandle rating-3" data-rating="3"></span><span
												class="ratingHandle rating-4" data-rating="4"></span><span
												class="ratingHandle rating-5" data-rating="5"></span>
										</div>
										<div class="ratingSummary" style="width: 95px;">
											<span class="bar" style="width: 40%;"></span>
										</div>
									</div>
								</div>
								<div class="attr">
									<div class="item tooltip_50"
										data-tooltip="<p>Дублиран на български език</p>">

										<img title="Dubbed" alt="Dubbed"
											src="/uploads/media/stenik_attributes/0001/02/39a939bbe7828a27bfa4fe1aabd2fd6298929fc5.png">
									</div>
									<div class="item tooltip_51"
										data-tooltip="<p>Без ограничения в показа</p>">

										<img title="B" alt="B"
											src="/uploads/media/stenik_attributes/0001/01/9db6e27089dd4e0f193eb6da0fd1a1114d2af76b.png">
									</div>
								</div>
							</div>
							<h5 class="title">
								<a href="/bg/movie/pchelichkata-maya-igrite-na-meda-reald-3d">Пчеличката
									Мая: Игрите на меда RealD 3D</a>
							</h5>
							<em class="gold"><strong>премиера</strong> 20 април 2018 г.</em>
						</header>
						<div class="timeTable">
							<span class="title">Купи билет</span>
							<div class="clear"></div>

							<div class="row">
								<div class="attr secondary">
									<div class="item">

										<img title="3D Digital" alt="3D Digital"
											src="/uploads/media/stenik_attributes/0001/02/1451e1bfdf5d13ac128135704aee13f28fb4c3e5.png">
									</div>
									<div class="item">

										<img title="Dolby N" alt="Dolby N"
											src="/uploads/media/stenik_attributes/0001/02/a43d6fd169b0e86650088265e7c0aa7503cf1be6.png">
									</div>
									<div class="item">

										<img title="Dubbed" alt="Dubbed"
											src="/uploads/media/stenik_attributes/0001/02/39a939bbe7828a27bfa4fe1aabd2fd6298929fc5.png">
										<div class="tooltip">
											<div class="vAlign">&lt;p&gt;Дублиран на български
												език&lt;/p&gt;</div>
										</div>
									</div>
								</div>
								<div class="timelineSet">
									<div
										class="scrollWrapper owl-carousel owl-theme owl-loaded first-slide hide-nav">




										<div class="owl-stage-outer">
											<div class="owl-stage"
												style="transform: translate3d(0px, 0px, 0px); transition: 0s; width: 272px;">
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/222678_9"
														class="item booking tooltip_52"
														data-tooltip="11 лв. / 13 лв." data-tooltip-class="wide">
														<span class="time">11:00</span>
													</a>
												</div>
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/222679_9"
														class="item booking tooltip_53"
														data-tooltip="11 лв. / 13 лв." data-tooltip-class="wide">
														<span class="time">13:00</span>
													</a>
												</div>
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/222680_9"
														class="item booking tooltip_54"
														data-tooltip="11 лв. / 13 лв." data-tooltip-class="wide">
														<span class="time">15:00</span>
													</a>
												</div>
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/222681_9"
														class="item booking tooltip_55"
														data-tooltip="11 лв. / 13 лв." data-tooltip-class="wide">
														<span class="time">17:10</span>
													</a>
												</div>
											</div>
										</div>
										<div class="owl-controls">
											<div class="owl-nav">
												<div class="owl-prev" style=""></div>
												<div class="owl-next" style=""></div>
											</div>
											<div class="owl-dots" style="display: none;"></div>
										</div>
									</div>
								</div>
							</div>

						</div>
						<!-- end of .timeTable -->
						<div class="clear"></div>
						<p>
							<em><span class="red">*</span> За филми в 3D формат са ви
								необходими 3D очила, които се купуват отделно от билета в кината
								на цена 2 лв./бр</em>
						</p>
					</div>
					<!-- end of .contentWrapper -->
				</div>
				<!-- end of .scheduleRow -->


				<div class="scheduleRow">
					<aside class="sideInfo">
						<div class="movieBox small"
							data-responsive-href="/bg/movie/istina-ili-predizvikatelstvo">
							<figure class="featured">

								<img title="Истина или предизвикателство" width="224"
									height="336" alt="Истина или предизвикателство"
									src="/uploads/media/stenik_movies_image/0001/09/thumb_8744_stenik_movies_image_index.jpeg">
								<div class="hoverContent">
									<div class="buttonSet" data-rows="3">
										<a href="#" data-video-id="QD6BCIzCY_0" class="row"
											style="bottom: 101%; opacity: 1;">
											<div class="vAlign">
												<span class="icon"><i class="play"></i></span> <span
													class="txt">Трейлър</span>
											</div>
										</a> <a href="/bg/movie/istina-ili-predizvikatelstvo" class="row"
											style="bottom: 101%; opacity: 1;">
											<div class="vAlign">
												<span class="icon"><i class="cinema"></i></span> <span
													class="txt">Подробно</span>
											</div>
										</a> <a href="/bg/profile/movies/istina-ili-predizvikatelstvo"
											class="row favourites"
											data-movie="istina-ili-predizvikatelstvo"
											style="bottom: 101%; opacity: 1;">
											<div class="vAlign">
												<span class="icon"><i class="heart big"></i></span> <span
													class="txt contentBefore"
													data-content-before="Добави в любими"
													data-content-after="Премахни от любими"> </span>
											</div>
										</a>
									</div>
								</div>
							</figure>
						</div>
					</aside>

					<div class="contentWrapper">
						<header class="rowHeader">
							<div class="meta" style="display: block;">
								<div class="rating">
									<div class="stenikRating">
										<div class="inputWrapper">
											<input type="text" name="" value="" data-rating="3.38"
												data-movie="702" readonly="readonly">
										</div>
										<div class="handlesWrapper">
											<span class="ratingHandle rating-1" data-rating="1"></span><span
												class="ratingHandle rating-2" data-rating="2"></span><span
												class="ratingHandle rating-3" data-rating="3"></span><span
												class="ratingHandle rating-4" data-rating="4"></span><span
												class="ratingHandle rating-5" data-rating="5"></span>
										</div>
										<div class="ratingSummary" style="width: 95px;">
											<span class="bar" style="width: 67.6%;"></span>
										</div>
									</div>
								</div>
								<div class="attr">
									<div class="item tooltip_56"
										data-tooltip="<p>Забранен за лица под 16 години</p>">

										<img title="D" alt="D"
											src="/uploads/media/stenik_attributes/0001/01/5fef299c813b572f1e9699eaea61d040ab6e10ae.png">
									</div>
								</div>
							</div>
							<h5 class="title">
								<a href="/bg/movie/istina-ili-predizvikatelstvo">Истина или
									предизвикателство</a>
							</h5>
							<em class="gold"><strong>премиера</strong> 20 април 2018 г.</em>
						</header>
						<div class="timeTable">
							<span class="title">Купи билет</span>
							<div class="clear"></div>

							<div class="row">
								<div class="attr secondary">
									<div class="item">

										<img title="Digital" alt="Digital"
											src="/uploads/media/stenik_attributes/0001/02/a0839dc0242ea51919868600b9761b49ee8946df.png">
									</div>
									<div class="item">

										<img title="Dolby N" alt="Dolby N"
											src="/uploads/media/stenik_attributes/0001/02/a43d6fd169b0e86650088265e7c0aa7503cf1be6.png">
									</div>
								</div>
								<div class="timelineSet">
									<div
										class="scrollWrapper owl-carousel owl-theme owl-loaded first-slide hide-nav">




										<div class="owl-stage-outer">
											<div class="owl-stage"
												style="transform: translate3d(0px, 0px, 0px); transition: 0s; width: 272px;">
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/222816_9"
														class="item booking tooltip_57"
														data-tooltip="9 лв. / 11 лв." data-tooltip-class="wide">
														<span class="time">16:00</span>
													</a>
												</div>
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/222817_9"
														class="item booking tooltip_58"
														data-tooltip="9 лв. / 11 лв." data-tooltip-class="wide">
														<span class="time">18:10</span>
													</a>
												</div>
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/222818_9"
														class="item booking tooltip_59"
														data-tooltip="9 лв. / 11 лв." data-tooltip-class="wide">
														<span class="time">20:20</span>
													</a>
												</div>
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/222819_9"
														class="item booking tooltip_60"
														data-tooltip="9 лв. / 11 лв." data-tooltip-class="wide">
														<span class="time">22:30</span>
													</a>
												</div>
											</div>
										</div>
										<div class="owl-controls">
											<div class="owl-nav">
												<div class="owl-prev" style=""></div>
												<div class="owl-next" style=""></div>
											</div>
											<div class="owl-dots" style="display: none;"></div>
										</div>
									</div>
								</div>
							</div>

						</div>
						<!-- end of .timeTable -->
						<div class="clear"></div>
						<p>
							<em><span class="red">*</span> За филми в 3D формат са ви
								необходими 3D очила, които се купуват отделно от билета в кината
								на цена 2 лв./бр</em>
						</p>
					</div>
					<!-- end of .contentWrapper -->
				</div>
				<!-- end of .scheduleRow -->


				<div class="scheduleRow">
					<aside class="sideInfo">
						<div class="movieBox small"
							data-responsive-href="/bg/movie/nito-zvuk">
							<figure class="featured">

								<img title="Нито звук" width="224" height="336" alt="Нито звук"
									src="/uploads/media/stenik_movies_image/0001/09/thumb_8753_stenik_movies_image_index.jpeg">
								<div class="hoverContent">
									<div class="buttonSet" data-rows="3">
										<a href="#" data-video-id="8Ba4DotdlRE" class="row"
											style="bottom: 101%; opacity: 1;">
											<div class="vAlign">
												<span class="icon"><i class="play"></i></span> <span
													class="txt">Трейлър</span>
											</div>
										</a> <a href="/bg/movie/nito-zvuk" class="row"
											style="bottom: 101%; opacity: 1;">
											<div class="vAlign">
												<span class="icon"><i class="cinema"></i></span> <span
													class="txt">Подробно</span>
											</div>
										</a> <a href="/bg/profile/movies/nito-zvuk" class="row favourites"
											data-movie="nito-zvuk" style="bottom: 101%; opacity: 1;">
											<div class="vAlign">
												<span class="icon"><i class="heart big"></i></span> <span
													class="txt contentBefore"
													data-content-before="Добави в любими"
													data-content-after="Премахни от любими"> </span>
											</div>
										</a>
									</div>
								</div>
							</figure>
						</div>
					</aside>

					<div class="contentWrapper">
						<header class="rowHeader">
							<div class="meta" style="display: block;">
								<div class="rating">
									<div class="stenikRating">
										<div class="inputWrapper">
											<input type="text" name="" value="" data-rating="4.33"
												data-movie="701" readonly="readonly">
										</div>
										<div class="handlesWrapper">
											<span class="ratingHandle rating-1" data-rating="1"></span><span
												class="ratingHandle rating-2" data-rating="2"></span><span
												class="ratingHandle rating-3" data-rating="3"></span><span
												class="ratingHandle rating-4" data-rating="4"></span><span
												class="ratingHandle rating-5" data-rating="5"></span>
										</div>
										<div class="ratingSummary" style="width: 95px;">
											<span class="bar" style="width: 86.6%;"></span>
										</div>
									</div>
								</div>
								<div class="attr">
									<div class="item tooltip_61"
										data-tooltip="<p>Забранен за лица под 16 години</p>">

										<img title="D" alt="D"
											src="/uploads/media/stenik_attributes/0001/01/5fef299c813b572f1e9699eaea61d040ab6e10ae.png">
									</div>
								</div>
							</div>
							<h5 class="title">
								<a href="/bg/movie/nito-zvuk">Нито звук</a>
							</h5>
							<em class="gold"><strong>премиера</strong> 13 април 2018 г.</em>
						</header>
						<div class="timeTable">
							<span class="title">Купи билет</span>
							<div class="clear"></div>

							<div class="row">
								<div class="attr secondary">
									<div class="item">

										<img title="Digital" alt="Digital"
											src="/uploads/media/stenik_attributes/0001/02/a0839dc0242ea51919868600b9761b49ee8946df.png">
									</div>
									<div class="item">

										<img title="Dolby N" alt="Dolby N"
											src="/uploads/media/stenik_attributes/0001/02/a43d6fd169b0e86650088265e7c0aa7503cf1be6.png">
									</div>
								</div>
								<div class="timelineSet">
									<div
										class="scrollWrapper owl-carousel owl-theme owl-loaded first-slide hide-nav">


										<div class="owl-stage-outer">
											<div class="owl-stage"
												style="transform: translate3d(0px, 0px, 0px); transition: 0s; width: 136px;">
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/222743_9"
														class="item booking tooltip_62"
														data-tooltip="9 лв. / 11 лв." data-tooltip-class="wide">
														<span class="time">19:50</span>
													</a>
												</div>
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/222744_9"
														class="item booking tooltip_63"
														data-tooltip="9 лв. / 11 лв." data-tooltip-class="wide">
														<span class="time">21:50</span>
													</a>
												</div>
											</div>
										</div>
										<div class="owl-controls">
											<div class="owl-nav">
												<div class="owl-prev" style=""></div>
												<div class="owl-next" style=""></div>
											</div>
											<div class="owl-dots" style="display: none;"></div>
										</div>
									</div>
								</div>
							</div>

						</div>
						<!-- end of .timeTable -->
						<div class="clear"></div>
						<p>
							<em><span class="red">*</span> За филми в 3D формат са ви
								необходими 3D очила, които се купуват отделно от билета в кината
								на цена 2 лв./бр</em>
						</p>
					</div>
					<!-- end of .contentWrapper -->
				</div>
				<!-- end of .scheduleRow -->


				<div class="scheduleRow">
					<aside class="sideInfo">
						<div class="movieBox small"
							data-responsive-href="/bg/movie/taksi-5">
							<figure class="featured">

								<img title="Такси 5" width="224" height="336" alt="Такси 5"
									src="/uploads/media/stenik_movies_image/0001/09/thumb_8935_stenik_movies_image_index.jpeg">
								<div class="hoverContent">
									<div class="buttonSet" data-rows="3">
										<a href="#" data-video-id="-_VJeel7qis" class="row"
											style="bottom: 101%; opacity: 1;">
											<div class="vAlign">
												<span class="icon"><i class="play"></i></span> <span
													class="txt">Трейлър</span>
											</div>
										</a> <a href="/bg/movie/taksi-5" class="row"
											style="bottom: 101%; opacity: 1;">
											<div class="vAlign">
												<span class="icon"><i class="cinema"></i></span> <span
													class="txt">Подробно</span>
											</div>
										</a> <a href="/bg/profile/movies/taksi-5" class="row favourites"
											data-movie="taksi-5" style="bottom: 101%; opacity: 1;">
											<div class="vAlign">
												<span class="icon"><i class="heart big"></i></span> <span
													class="txt contentBefore"
													data-content-before="Добави в любими"
													data-content-after="Премахни от любими"> </span>
											</div>
										</a>
									</div>
								</div>
							</figure>
						</div>
					</aside>

					<div class="contentWrapper">
						<header class="rowHeader">
							<div class="meta" style="display: block;">
								<div class="rating">
									<div class="stenikRating">
										<div class="inputWrapper">
											<input type="text" name="" value="" data-rating="3.76"
												data-movie="720" readonly="readonly">
										</div>
										<div class="handlesWrapper">
											<span class="ratingHandle rating-1" data-rating="1"></span><span
												class="ratingHandle rating-2" data-rating="2"></span><span
												class="ratingHandle rating-3" data-rating="3"></span><span
												class="ratingHandle rating-4" data-rating="4"></span><span
												class="ratingHandle rating-5" data-rating="5"></span>
										</div>
										<div class="ratingSummary" style="width: 95px;">
											<span class="bar" style="width: 75.2%;"></span>
										</div>
									</div>
								</div>
								<div class="attr">
									<div class="item tooltip_64"
										data-tooltip="<p>Не се препоръчва за деца&amp;nbsp;под 12 години.</p>">

										<img title="C" alt="C"
											src="/uploads/media/stenik_attributes/0001/01/9d38bc475f9893a409a2de2e144091b82612c40e.png">
									</div>
								</div>
							</div>
							<h5 class="title">
								<a href="/bg/movie/taksi-5">Такси 5</a>
							</h5>
							<em class="gold"><strong>премиера</strong> 13 април 2018 г.</em>
						</header>
						<div class="timeTable">
							<span class="title">Купи билет</span>
							<div class="clear"></div>

							<div class="row">
								<div class="attr secondary">
									<div class="item">

										<img title="Digital" alt="Digital"
											src="/uploads/media/stenik_attributes/0001/02/a0839dc0242ea51919868600b9761b49ee8946df.png">
									</div>
									<div class="item">

										<img title="Dolby N" alt="Dolby N"
											src="/uploads/media/stenik_attributes/0001/02/a43d6fd169b0e86650088265e7c0aa7503cf1be6.png">
									</div>
								</div>
								<div class="timelineSet">
									<div
										class="scrollWrapper owl-carousel owl-theme owl-loaded first-slide hide-nav">





										<div class="owl-stage-outer">
											<div class="owl-stage"
												style="transform: translate3d(0px, 0px, 0px); transition: 0s; width: 340px;">
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/222999_9"
														class="item booking tooltip_65"
														data-tooltip="9 лв. / 11 лв." data-tooltip-class="wide">
														<span class="time">12:00</span>
													</a>
												</div>
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/223000_9"
														class="item booking tooltip_66"
														data-tooltip="9 лв. / 11 лв." data-tooltip-class="wide">
														<span class="time">14:15</span>
													</a>
												</div>
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/223001_9"
														class="item booking tooltip_67"
														data-tooltip="9 лв. / 11 лв." data-tooltip-class="wide">
														<span class="time">16:30</span>
													</a>
												</div>
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/223002_9"
														class="item booking tooltip_68"
														data-tooltip="9 лв. / 11 лв." data-tooltip-class="wide">
														<span class="time">19:00</span>
													</a>
												</div>
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/223003_9"
														class="item booking tooltip_69"
														data-tooltip="9 лв. / 11 лв." data-tooltip-class="wide">
														<span class="time">21:15</span>
													</a>
												</div>
											</div>
										</div>
										<div class="owl-controls">
											<div class="owl-nav">
												<div class="owl-prev" style=""></div>
												<div class="owl-next" style=""></div>
											</div>
											<div class="owl-dots" style="display: none;"></div>
										</div>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="attr secondary">
									<div class="item">

										<img title="Digital" alt="Digital"
											src="/uploads/media/stenik_attributes/0001/02/a0839dc0242ea51919868600b9761b49ee8946df.png">
									</div>
									<div class="item">

										<img title="Dolby N" alt="Dolby N"
											src="/uploads/media/stenik_attributes/0001/02/a43d6fd169b0e86650088265e7c0aa7503cf1be6.png">
									</div>
								</div>
								<div class="timelineSet">
									<div
										class="scrollWrapper owl-carousel owl-theme owl-loaded first-slide hide-nav">


										<div class="owl-stage-outer">
											<div class="owl-stage"
												style="transform: translate3d(0px, 0px, 0px); transition: 0s; width: 136px;">
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/222648_9"
														class="item booking tooltip_70"
														data-tooltip="9 лв. / 11 лв." data-tooltip-class="wide">
														<span class="time">20:30</span>
													</a>
												</div>
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/222649_9"
														class="item booking tooltip_71"
														data-tooltip="9 лв. / 11 лв." data-tooltip-class="wide">
														<span class="time">22:45</span>
													</a>
												</div>
											</div>
										</div>
										<div class="owl-controls">
											<div class="owl-nav">
												<div class="owl-prev" style=""></div>
												<div class="owl-next" style=""></div>
											</div>
											<div class="owl-dots" style="display: none;"></div>
										</div>
									</div>
								</div>
							</div>

						</div>
						<!-- end of .timeTable -->
						<div class="clear"></div>
						<p>
							<em><span class="red">*</span> За филми в 3D формат са ви
								необходими 3D очила, които се купуват отделно от билета в кината
								на цена 2 лв./бр</em>
						</p>
					</div>
					<!-- end of .contentWrapper -->
				</div>
				<!-- end of .scheduleRow -->


				<div class="scheduleRow">
					<aside class="sideInfo">
						<div class="movieBox small"
							data-responsive-href="/bg/movie/seks-na-kukovo-lyato">
							<figure class="featured">

								<img title="Секс на куково лято" width="224" height="336"
									alt="Секс на куково лято"
									src="/uploads/media/stenik_movies_image/0001/09/thumb_8674_stenik_movies_image_index.jpeg">
								<div class="hoverContent">
									<div class="buttonSet" data-rows="3">
										<a href="#" data-video-id="kxXHQljmo2E" class="row"
											style="bottom: 101%; opacity: 1;">
											<div class="vAlign">
												<span class="icon"><i class="play"></i></span> <span
													class="txt">Трейлър</span>
											</div>
										</a> <a href="/bg/movie/seks-na-kukovo-lyato" class="row"
											style="bottom: 101%; opacity: 1;">
											<div class="vAlign">
												<span class="icon"><i class="cinema"></i></span> <span
													class="txt">Подробно</span>
											</div>
										</a> <a href="/bg/profile/movies/seks-na-kukovo-lyato"
											class="row favourites" data-movie="seks-na-kukovo-lyato"
											style="bottom: 101%; opacity: 1;">
											<div class="vAlign">
												<span class="icon"><i class="heart big"></i></span> <span
													class="txt contentBefore"
													data-content-before="Добави в любими"
													data-content-after="Премахни от любими"> </span>
											</div>
										</a>
									</div>
								</div>
							</figure>
						</div>
					</aside>

					<div class="contentWrapper">
						<header class="rowHeader">
							<div class="meta" style="display: block;">
								<div class="rating">
									<div class="stenikRating">
										<div class="inputWrapper">
											<input type="text" name="" value="" data-rating="3.20"
												data-movie="695" readonly="readonly">
										</div>
										<div class="handlesWrapper">
											<span class="ratingHandle rating-1" data-rating="1"></span><span
												class="ratingHandle rating-2" data-rating="2"></span><span
												class="ratingHandle rating-3" data-rating="3"></span><span
												class="ratingHandle rating-4" data-rating="4"></span><span
												class="ratingHandle rating-5" data-rating="5"></span>
										</div>
										<div class="ratingSummary" style="width: 95px;">
											<span class="bar" style="width: 64%;"></span>
										</div>
									</div>
								</div>
								<div class="attr">
									<div class="item tooltip_72"
										data-tooltip="<p>Не се препоръчва за деца&amp;nbsp;под 12 години.</p>">

										<img title="C" alt="C"
											src="/uploads/media/stenik_attributes/0001/01/9d38bc475f9893a409a2de2e144091b82612c40e.png">
									</div>
								</div>
							</div>
							<h5 class="title">
								<a href="/bg/movie/seks-na-kukovo-lyato">Секс на куково лято</a>
							</h5>
							<em class="gold"><strong>премиера</strong> 6 април 2018 г.</em>
						</header>
						<div class="timeTable">
							<span class="title">Купи билет</span>
							<div class="clear"></div>

							<div class="row">
								<div class="attr secondary">
									<div class="item">

										<img title="Digital" alt="Digital"
											src="/uploads/media/stenik_attributes/0001/02/a0839dc0242ea51919868600b9761b49ee8946df.png">
									</div>
									<div class="item">

										<img title="Dolby N" alt="Dolby N"
											src="/uploads/media/stenik_attributes/0001/02/a43d6fd169b0e86650088265e7c0aa7503cf1be6.png">
									</div>
								</div>
								<div class="timelineSet">
									<div
										class="scrollWrapper owl-carousel owl-theme owl-loaded first-slide hide-nav">


										<div class="owl-stage-outer">
											<div class="owl-stage"
												style="transform: translate3d(0px, 0px, 0px); transition: 0s; width: 136px;">
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/222682_9"
														class="item booking tooltip_73"
														data-tooltip="9 лв. / 11 лв." data-tooltip-class="wide">
														<span class="time">19:15</span>
													</a>
												</div>
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/222683_9"
														class="item booking tooltip_74"
														data-tooltip="9 лв. / 11 лв." data-tooltip-class="wide">
														<span class="time">21:30</span>
													</a>
												</div>
											</div>
										</div>
										<div class="owl-controls">
											<div class="owl-nav">
												<div class="owl-prev" style=""></div>
												<div class="owl-next" style=""></div>
											</div>
											<div class="owl-dots" style="display: none;"></div>
										</div>
									</div>
								</div>
							</div>

						</div>
						<!-- end of .timeTable -->
						<div class="clear"></div>
						<p>
							<em><span class="red">*</span> За филми в 3D формат са ви
								необходими 3D очила, които се купуват отделно от билета в кината
								на цена 2 лв./бр</em>
						</p>
					</div>
					<!-- end of .contentWrapper -->
				</div>
				<!-- end of .scheduleRow -->


				<div class="scheduleRow">
					<aside class="sideInfo">
						<div class="movieBox small"
							data-responsive-href="/bg/movie/igrach-parvi-prigotvi-se-reald-3d">
							<figure class="featured">

								<img title="Играч първи, приготви се REALD 3D" width="224"
									height="336" alt="Играч първи, приготви се REALD 3D"
									src="/uploads/media/stenik_movies_image/0001/10/thumb_9047_stenik_movies_image_index.jpeg">
								<div class="hoverContent">
									<div class="buttonSet" data-rows="3">
										<a href="#" data-video-id="W52Oxh6q-YY" class="row"
											style="bottom: 101%; opacity: 1;">
											<div class="vAlign">
												<span class="icon"><i class="play"></i></span> <span
													class="txt">Трейлър</span>
											</div>
										</a> <a href="/bg/movie/igrach-parvi-prigotvi-se-reald-3d"
											class="row" style="bottom: 101%; opacity: 1;">
											<div class="vAlign">
												<span class="icon"><i class="cinema"></i></span> <span
													class="txt">Подробно</span>
											</div>
										</a> <a
											href="/bg/profile/movies/igrach-parvi-prigotvi-se-reald-3d"
											class="row favourites"
											data-movie="igrach-parvi-prigotvi-se-reald-3d"
											style="bottom: 101%; opacity: 1;">
											<div class="vAlign">
												<span class="icon"><i class="heart big"></i></span> <span
													class="txt contentBefore"
													data-content-before="Добави в любими"
													data-content-after="Премахни от любими"> </span>
											</div>
										</a>
									</div>
								</div>
							</figure>
						</div>
					</aside>

					<div class="contentWrapper">
						<header class="rowHeader">
							<div class="meta" style="display: block;">
								<div class="rating">
									<div class="stenikRating">
										<div class="inputWrapper">
											<input type="text" name="" value="" data-rating="4.19"
												data-movie="686" readonly="readonly">
										</div>
										<div class="handlesWrapper">
											<span class="ratingHandle rating-1" data-rating="1"></span><span
												class="ratingHandle rating-2" data-rating="2"></span><span
												class="ratingHandle rating-3" data-rating="3"></span><span
												class="ratingHandle rating-4" data-rating="4"></span><span
												class="ratingHandle rating-5" data-rating="5"></span>
										</div>
										<div class="ratingSummary" style="width: 95px;">
											<span class="bar" style="width: 83.8%;"></span>
										</div>
									</div>
								</div>
								<div class="attr">
									<div class="item tooltip_75"
										data-tooltip="<p>Без ограничения в показа</p>">

										<img title="B" alt="B"
											src="/uploads/media/stenik_attributes/0001/01/9db6e27089dd4e0f193eb6da0fd1a1114d2af76b.png">
									</div>
								</div>
							</div>
							<h5 class="title">
								<a href="/bg/movie/igrach-parvi-prigotvi-se-reald-3d">Играч
									първи, приготви се REALD 3D</a>
							</h5>
							<em class="gold"><strong>премиера</strong> 30 март 2018 г.</em>
						</header>
						<div class="timeTable">
							<span class="title">Купи билет</span>
							<div class="clear"></div>

							<div class="row">
								<div class="attr secondary">
									<div class="item">

										<img title="3D Digital" alt="3D Digital"
											src="/uploads/media/stenik_attributes/0001/02/1451e1bfdf5d13ac128135704aee13f28fb4c3e5.png">
									</div>
									<div class="item">

										<img title="Dolby N" alt="Dolby N"
											src="/uploads/media/stenik_attributes/0001/02/a43d6fd169b0e86650088265e7c0aa7503cf1be6.png">
									</div>
								</div>
								<div class="timelineSet">
									<div
										class="scrollWrapper owl-carousel owl-theme owl-loaded first-slide hide-nav">




										<div class="owl-stage-outer">
											<div class="owl-stage"
												style="transform: translate3d(0px, 0px, 0px); transition: 0s; width: 272px;">
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/222712_9"
														class="item booking tooltip_76"
														data-tooltip="11 лв. / 13 лв." data-tooltip-class="wide">
														<span class="time">13:15</span>
													</a>
												</div>
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/222713_9"
														class="item booking tooltip_77"
														data-tooltip="11 лв. / 13 лв." data-tooltip-class="wide">
														<span class="time">16:10</span>
													</a>
												</div>
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/222714_9"
														class="item booking tooltip_78"
														data-tooltip="11 лв. / 13 лв." data-tooltip-class="wide">
														<span class="time">19:00</span>
													</a>
												</div>
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/222715_9"
														class="item booking tooltip_79"
														data-tooltip="11 лв. / 13 лв." data-tooltip-class="wide">
														<span class="time">22:00</span>
													</a>
												</div>
											</div>
										</div>
										<div class="owl-controls">
											<div class="owl-nav">
												<div class="owl-prev" style=""></div>
												<div class="owl-next" style=""></div>
											</div>
											<div class="owl-dots" style="display: none;"></div>
										</div>
									</div>
								</div>
							</div>

						</div>
						<!-- end of .timeTable -->
						<div class="clear"></div>
						<p>
							<em><span class="red">*</span> За филми в 3D формат са ви
								необходими 3D очила, които се купуват отделно от билета в кината
								на цена 2 лв./бр</em>
						</p>
					</div>
					<!-- end of .contentWrapper -->
				</div>
				<!-- end of .scheduleRow -->


				<div class="scheduleRow">
					<aside class="sideInfo">
						<div class="movieBox small"
							data-responsive-href="/bg/movie/zaycheto-pitar">
							<figure class="featured">

								<img title="Зайчето Питър" width="224" height="336"
									alt="Зайчето Питър"
									src="/uploads/media/stenik_movies_image/0001/09/thumb_8582_stenik_movies_image_index.jpeg">
								<div class="hoverContent">
									<div class="buttonSet" data-rows="3">
										<a href="#" data-video-id="OUbbFvDa2-s" class="row"
											style="bottom: 101%; opacity: 1;">
											<div class="vAlign">
												<span class="icon"><i class="play"></i></span> <span
													class="txt">Трейлър</span>
											</div>
										</a> <a href="/bg/movie/zaycheto-pitar" class="row"
											style="bottom: 101%; opacity: 1;">
											<div class="vAlign">
												<span class="icon"><i class="cinema"></i></span> <span
													class="txt">Подробно</span>
											</div>
										</a> <a href="/bg/profile/movies/zaycheto-pitar"
											class="row favourites" data-movie="zaycheto-pitar"
											style="bottom: 101%; opacity: 1;">
											<div class="vAlign">
												<span class="icon"><i class="heart big"></i></span> <span
													class="txt contentBefore"
													data-content-before="Добави в любими"
													data-content-after="Премахни от любими"> </span>
											</div>
										</a>
									</div>
								</div>
							</figure>
						</div>
					</aside>

					<div class="contentWrapper">
						<header class="rowHeader">
							<div class="meta" style="display: block;">
								<div class="rating">
									<div class="stenikRating">
										<div class="inputWrapper">
											<input type="text" name="" value="" data-rating="3.57"
												data-movie="684" readonly="readonly">
										</div>
										<div class="handlesWrapper">
											<span class="ratingHandle rating-1" data-rating="1"></span><span
												class="ratingHandle rating-2" data-rating="2"></span><span
												class="ratingHandle rating-3" data-rating="3"></span><span
												class="ratingHandle rating-4" data-rating="4"></span><span
												class="ratingHandle rating-5" data-rating="5"></span>
										</div>
										<div class="ratingSummary" style="width: 95px;">
											<span class="bar" style="width: 71.4%;"></span>
										</div>
									</div>
								</div>
								<div class="attr">
									<div class="item tooltip_80"
										data-tooltip="<p>Дублиран на български език</p>">

										<img title="Dubbed" alt="Dubbed"
											src="/uploads/media/stenik_attributes/0001/02/39a939bbe7828a27bfa4fe1aabd2fd6298929fc5.png">
									</div>
									<div class="item tooltip_81"
										data-tooltip="<p>Без ограничения в показа</p>">

										<img title="B" alt="B"
											src="/uploads/media/stenik_attributes/0001/01/9db6e27089dd4e0f193eb6da0fd1a1114d2af76b.png">
									</div>
								</div>
							</div>
							<h5 class="title">
								<a href="/bg/movie/zaycheto-pitar">Зайчето Питър</a>
							</h5>
							<em class="gold"><strong>премиера</strong> 30 март 2018 г.</em>
						</header>
						<div class="timeTable">
							<span class="title">Купи билет</span>
							<div class="clear"></div>

							<div class="row">
								<div class="attr secondary">
									<div class="item">

										<img title="Digital" alt="Digital"
											src="/uploads/media/stenik_attributes/0001/02/a0839dc0242ea51919868600b9761b49ee8946df.png">
									</div>
									<div class="item">

										<img title="Dolby N" alt="Dolby N"
											src="/uploads/media/stenik_attributes/0001/02/a43d6fd169b0e86650088265e7c0aa7503cf1be6.png">
									</div>
									<div class="item">

										<img title="Dubbed" alt="Dubbed"
											src="/uploads/media/stenik_attributes/0001/02/39a939bbe7828a27bfa4fe1aabd2fd6298929fc5.png">
										<div class="tooltip">
											<div class="vAlign">&lt;p&gt;Дублиран на български
												език&lt;/p&gt;</div>
										</div>
									</div>
								</div>
								<div class="timelineSet">
									<div
										class="scrollWrapper owl-carousel owl-theme owl-loaded first-slide hide-nav">





										<div class="owl-stage-outer">
											<div class="owl-stage"
												style="transform: translate3d(0px, 0px, 0px); transition: 0s; width: 340px;">
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/223063_9"
														class="item booking tooltip_82"
														data-tooltip="9 лв. / 11 лв." data-tooltip-class="wide">
														<span class="time">11:15</span>
													</a>
												</div>
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/223064_9"
														class="item booking tooltip_83"
														data-tooltip="9 лв. / 11 лв." data-tooltip-class="wide">
														<span class="time">13:20</span>
													</a>
												</div>
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/223065_9"
														class="item booking tooltip_84"
														data-tooltip="9 лв. / 11 лв." data-tooltip-class="wide">
														<span class="time">15:30</span>
													</a>
												</div>
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/223066_9"
														class="item booking tooltip_85"
														data-tooltip="9 лв. / 11 лв." data-tooltip-class="wide">
														<span class="time">17:45</span>
													</a>
												</div>
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/223067_9"
														class="item booking tooltip_86"
														data-tooltip="9 лв. / 11 лв." data-tooltip-class="wide">
														<span class="time">19:50</span>
													</a>
												</div>
											</div>
										</div>
										<div class="owl-controls">
											<div class="owl-nav">
												<div class="owl-prev" style=""></div>
												<div class="owl-next" style=""></div>
											</div>
											<div class="owl-dots" style="display: none;"></div>
										</div>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="attr secondary">
									<div class="item">

										<img title="Digital" alt="Digital"
											src="/uploads/media/stenik_attributes/0001/02/a0839dc0242ea51919868600b9761b49ee8946df.png">
									</div>
									<div class="item">

										<img title="Dolby N" alt="Dolby N"
											src="/uploads/media/stenik_attributes/0001/02/a43d6fd169b0e86650088265e7c0aa7503cf1be6.png">
									</div>
									<div class="item">

										<img title="Dubbed" alt="Dubbed"
											src="/uploads/media/stenik_attributes/0001/02/39a939bbe7828a27bfa4fe1aabd2fd6298929fc5.png">
										<div class="tooltip">
											<div class="vAlign">&lt;p&gt;Дублиран на български
												език&lt;/p&gt;</div>
										</div>
									</div>
								</div>
								<div class="timelineSet">
									<div
										class="scrollWrapper owl-carousel owl-theme owl-loaded first-slide hide-nav">

										<div class="owl-stage-outer">
											<div class="owl-stage"
												style="transform: translate3d(0px, 0px, 0px); transition: 0s; width: 68px;">
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/222851_9"
														class="item booking tooltip_87"
														data-tooltip="9 лв. / 11 лв." data-tooltip-class="wide">
														<span class="time">12:30</span>
													</a>
												</div>
											</div>
										</div>
										<div class="owl-controls">
											<div class="owl-nav">
												<div class="owl-prev" style=""></div>
												<div class="owl-next" style=""></div>
											</div>
											<div class="owl-dots" style="display: none;"></div>
										</div>
									</div>
								</div>
							</div>

						</div>
						<!-- end of .timeTable -->
						<div class="clear"></div>
						<p>
							<em><span class="red">*</span> За филми в 3D формат са ви
								необходими 3D очила, които се купуват отделно от билета в кината
								на цена 2 лв./бр</em>
						</p>
					</div>
					<!-- end of .contentWrapper -->
				</div>
				<!-- end of .scheduleRow -->


				<div class="scheduleRow">
					<aside class="sideInfo">
						<div class="movieBox small"
							data-responsive-href="/bg/movie/chervenata-lyastovitsa">
							<figure class="featured">

								<img title="Червената лястовица" width="224" height="336"
									alt="Червената лястовица"
									src="/uploads/media/stenik_movies_image/0001/09/thumb_8886_stenik_movies_image_index.jpeg">
								<div class="hoverContent">
									<div class="buttonSet" data-rows="3">
										<a href="#" data-video-id="ZsQgR-nGLOQ" class="row"
											style="bottom: 101%; opacity: 1;">
											<div class="vAlign">
												<span class="icon"><i class="play"></i></span> <span
													class="txt">Трейлър</span>
											</div>
										</a> <a href="/bg/movie/chervenata-lyastovitsa" class="row"
											style="bottom: 101%; opacity: 1;">
											<div class="vAlign">
												<span class="icon"><i class="cinema"></i></span> <span
													class="txt">Подробно</span>
											</div>
										</a> <a href="/bg/profile/movies/chervenata-lyastovitsa"
											class="row favourites" data-movie="chervenata-lyastovitsa"
											style="bottom: 101%; opacity: 1;">
											<div class="vAlign">
												<span class="icon"><i class="heart big"></i></span> <span
													class="txt contentBefore"
													data-content-before="Добави в любими"
													data-content-after="Премахни от любими"> </span>
											</div>
										</a>
									</div>
								</div>
							</figure>
						</div>
					</aside>

					<div class="contentWrapper">
						<header class="rowHeader">
							<div class="meta" style="display: block;">
								<div class="rating">
									<div class="stenikRating">
										<div class="inputWrapper">
											<input type="text" name="" value="" data-rating="3.74"
												data-movie="663" readonly="readonly">
										</div>
										<div class="handlesWrapper">
											<span class="ratingHandle rating-1" data-rating="1"></span><span
												class="ratingHandle rating-2" data-rating="2"></span><span
												class="ratingHandle rating-3" data-rating="3"></span><span
												class="ratingHandle rating-4" data-rating="4"></span><span
												class="ratingHandle rating-5" data-rating="5"></span>
										</div>
										<div class="ratingSummary" style="width: 95px;">
											<span class="bar" style="width: 74.8%;"></span>
										</div>
									</div>
								</div>
								<div class="attr">
									<div class="item tooltip_88"
										data-tooltip="<p>Забранен за лица под 16 години</p>">

										<img title="D" alt="D"
											src="/uploads/media/stenik_attributes/0001/01/5fef299c813b572f1e9699eaea61d040ab6e10ae.png">
									</div>
								</div>
							</div>
							<h5 class="title">
								<a href="/bg/movie/chervenata-lyastovitsa">Червената
									лястовица</a>
							</h5>
							<em class="gold"><strong>премиера</strong> 2 март 2018 г.</em>
						</header>
						<div class="timeTable">
							<span class="title">Купи билет</span>
							<div class="clear"></div>

							<div class="row">
								<div class="attr secondary">
									<div class="item">

										<img title="Digital" alt="Digital"
											src="/uploads/media/stenik_attributes/0001/02/a0839dc0242ea51919868600b9761b49ee8946df.png">
									</div>
									<div class="item">

										<img title="Dolby N" alt="Dolby N"
											src="/uploads/media/stenik_attributes/0001/02/a43d6fd169b0e86650088265e7c0aa7503cf1be6.png">
									</div>
								</div>
								<div class="timelineSet">
									<div
										class="scrollWrapper owl-carousel owl-theme owl-loaded first-slide hide-nav">

										<div class="owl-stage-outer">
											<div class="owl-stage"
												style="transform: translate3d(0px, 0px, 0px); transition: 0s; width: 68px;">
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/223068_9"
														class="item booking tooltip_89"
														data-tooltip="9 лв. / 11 лв." data-tooltip-class="wide">
														<span class="time">22:00</span>
													</a>
												</div>
											</div>
										</div>
										<div class="owl-controls">
											<div class="owl-nav">
												<div class="owl-prev" style=""></div>
												<div class="owl-next" style=""></div>
											</div>
											<div class="owl-dots" style="display: none;"></div>
										</div>
									</div>
								</div>
							</div>

						</div>
						<!-- end of .timeTable -->
						<div class="clear"></div>
						<p>
							<em><span class="red">*</span> За филми в 3D формат са ви
								необходими 3D очила, които се купуват отделно от билета в кината
								на цена 2 лв./бр</em>
						</p>
					</div>
					<!-- end of .contentWrapper -->
				</div>
				<!-- end of .scheduleRow -->


				<div class="scheduleRow">
					<aside class="sideInfo">
						<div class="movieBox small"
							data-responsive-href="/bg/movie/bikat-ferdinand-2d">
							<figure class="featured">

								<img title="Бикът Фердинанд 2D" width="224" height="336"
									alt="Бикът Фердинанд 2D"
									src="/uploads/media/stenik_movies_image/0001/09/thumb_8244_stenik_movies_image_index.jpeg">
								<div class="hoverContent">
									<div class="buttonSet" data-rows="3">
										<a href="#" data-video-id="VkXKbx7uly8" class="row"
											style="bottom: 101%; opacity: 1;">
											<div class="vAlign">
												<span class="icon"><i class="play"></i></span> <span
													class="txt">Трейлър</span>
											</div>
										</a> <a href="/bg/movie/bikat-ferdinand-2d" class="row"
											style="bottom: 101%; opacity: 1;">
											<div class="vAlign">
												<span class="icon"><i class="cinema"></i></span> <span
													class="txt">Подробно</span>
											</div>
										</a> <a href="/bg/profile/movies/bikat-ferdinand-2d"
											class="row favourites" data-movie="bikat-ferdinand-2d"
											style="bottom: 101%; opacity: 1;">
											<div class="vAlign">
												<span class="icon"><i class="heart big"></i></span> <span
													class="txt contentBefore"
													data-content-before="Добави в любими"
													data-content-after="Премахни от любими"> </span>
											</div>
										</a>
									</div>
								</div>
							</figure>
						</div>
					</aside>

					<div class="contentWrapper">
						<header class="rowHeader">
							<div class="meta" style="display: block;">
								<div class="rating">
									<div class="stenikRating">
										<div class="inputWrapper">
											<input type="text" name="" value="" data-rating="3.60"
												data-movie="636" readonly="readonly">
										</div>
										<div class="handlesWrapper">
											<span class="ratingHandle rating-1" data-rating="1"></span><span
												class="ratingHandle rating-2" data-rating="2"></span><span
												class="ratingHandle rating-3" data-rating="3"></span><span
												class="ratingHandle rating-4" data-rating="4"></span><span
												class="ratingHandle rating-5" data-rating="5"></span>
										</div>
										<div class="ratingSummary" style="width: 95px;">
											<span class="bar" style="width: 72%;"></span>
										</div>
									</div>
								</div>
								<div class="attr">
									<div class="item tooltip_90"
										data-tooltip="<p>Дублиран на български език</p>">

										<img title="Dubbed" alt="Dubbed"
											src="/uploads/media/stenik_attributes/0001/02/39a939bbe7828a27bfa4fe1aabd2fd6298929fc5.png">
									</div>
									<div class="item tooltip_91"
										data-tooltip="<p>Без ограничения в показа</p>">

										<img title="B" alt="B"
											src="/uploads/media/stenik_attributes/0001/01/9db6e27089dd4e0f193eb6da0fd1a1114d2af76b.png">
									</div>
								</div>
							</div>
							<h5 class="title">
								<a href="/bg/movie/bikat-ferdinand-2d">Бикът Фердинанд 2D</a>
							</h5>
							<em class="gold"><strong>премиера</strong> 22 декември 2017
								г.</em>
						</header>
						<div class="timeTable">
							<span class="title">Купи билет</span>
							<div class="clear"></div>

							<div class="row">
								<div class="attr secondary">
									<div class="item">

										<img title="Digital" alt="Digital"
											src="/uploads/media/stenik_attributes/0001/02/a0839dc0242ea51919868600b9761b49ee8946df.png">
									</div>
									<div class="item">

										<img title="Dolby N" alt="Dolby N"
											src="/uploads/media/stenik_attributes/0001/02/a43d6fd169b0e86650088265e7c0aa7503cf1be6.png">
									</div>
									<div class="item">

										<img title="Dubbed" alt="Dubbed"
											src="/uploads/media/stenik_attributes/0001/02/39a939bbe7828a27bfa4fe1aabd2fd6298929fc5.png">
										<div class="tooltip">
											<div class="vAlign">&lt;p&gt;Дублиран на български
												език&lt;/p&gt;</div>
										</div>
									</div>
								</div>
								<div class="timelineSet">
									<div
										class="scrollWrapper owl-carousel owl-theme owl-loaded first-slide hide-nav">


										<div class="owl-stage-outer">
											<div class="owl-stage"
												style="transform: translate3d(0px, 0px, 0px); transition: 0s; width: 136px;">
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/222814_9"
														class="item booking tooltip_92"
														data-tooltip="9 лв. / 11 лв." data-tooltip-class="wide">
														<span class="time">11:20</span>
													</a>
												</div>
												<div class="owl-item active"
													style="width: auto; margin-right: 0px;">
													<a href="/bg/booking/222815_9"
														class="item booking tooltip_93"
														data-tooltip="9 лв. / 11 лв." data-tooltip-class="wide">
														<span class="time">13:40</span>
													</a>
												</div>
											</div>
										</div>
										<div class="owl-controls">
											<div class="owl-nav">
												<div class="owl-prev" style=""></div>
												<div class="owl-next" style=""></div>
											</div>
											<div class="owl-dots" style="display: none;"></div>
										</div>
									</div>
								</div>
							</div>

						</div>
						<!-- end of .timeTable -->
						<div class="clear"></div>
						<p>
							<em><span class="red">*</span> За филми в 3D формат са ви
								необходими 3D очила, които се купуват отделно от билета в кината
								на цена 2 лв./бр</em>
						</p>
					</div>
					<!-- end of .contentWrapper -->
				</div>
				<!-- end of .scheduleRow -->
			</div>
		</div>
	</div>
</body>
</html>