<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page session="false"%>
<!DOCTYPE html>

<html>
<head>

<link rel="stylesheet" type="text/css" href="./css/kinoarena.css">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div id="global_wrapper" class="globalWrapper">
		<main id="main">
		<div class="wrapper">
			<div id="filter_bar" class="twoSidesBar filterBar">
				<div class="leftSide steps">
					<div class="step">
						<div class="number" data-triangles="1">
							<span class="txt">1</span><span class="triangle-set item-1"></span>
						</div>
						<div class="formItem white">
							<div class="stenikSelect select_1">
								<div class="selectedHolder">Избери кино</div>
								<div class="dropdown">
									<span class="option selected disabled" data-option="option_1_0">Избери
										кино</span><span class="option  " data-option="option_1_1">Кино
										Арена Запад</span><span class="option  " data-option="option_1_2">Кино
										Арена Младост</span><span class="option  " data-option="option_1_3">Кино
										Арена The MALL</span><span class="option  " data-option="option_1_4">Кино
										Арена Делукс Bulgaria Mall</span><span class="option  "
										data-option="option_1_5">Кино Арена Мол Варна</span><span
										class="option  " data-option="option_1_6">Кино Арена
										Grand Mall Варна</span><span class="option  "
										data-option="option_1_7">Кино Арена Мол Марково Тепе
										Пловдив</span><span class="option  " data-option="option_1_8">Кино
										Арена Парк Мол Стара Загора</span><span class="option  "
										data-option="option_1_9">Кино Арена Панорама Мол Плевен</span><span
										class="option  " data-option="option_1_10">Кино Арена
										Смолян</span>
								</div>
							</div>
							<div class="stenikHiddenSelect" style="display: none;">
								<select name="" id="cinemaSelect">
									<option value="" disabled="disabled" selected="selected"
										class="defaultOption" data-option="option_1_0">Избери
										кино</option>
									<option value="A1" data-option="option_1_1">Кино Арена
										Запад</option>
									<option value="A2" data-option="option_1_2">Кино Арена
										Младост</option>
									<option value="A3" data-option="option_1_3">Кино Арена
										The MALL</option>
									<option value="A5" data-option="option_1_4">Кино Арена
										Делукс Bulgaria Mall</option>
									<option value="VN" data-option="option_1_5">Кино Арена
										Мол Варна</option>
									<option value="VN2" data-option="option_1_6">Кино
										Арена Grand Mall Варна</option>
									<option value="MMT" data-option="option_1_7">Кино
										Арена Мол Марково Тепе Пловдив</option>
									<option value="A4" data-option="option_1_8">Кино Арена
										Парк Мол Стара Загора</option>
									<option value="PLN2" data-option="option_1_9">Кино
										Арена Панорама Мол Плевен</option>
									<option value="ASMO" data-option="option_1_10">Кино
										Арена Смолян</option>
								</select>
							</div>
						</div>
					</div>
					<div class="step">
						<div class="number" data-triangles="2">
							<span class="txt">2</span><span class="triangle-set item-1"></span><span
								class="triangle-set item-2"></span>
						</div>
						<div class="formItem white">
							<div class="stenikSelect select_1 disabled">
								<div class="selectedHolder">Изберете филм</div>
								<div class="dropdown">
									<span class="option selected disabled" data-option="option_1_0">Изберете
										филм</span>
								</div>
							</div>
							<div class="stenikHiddenSelect" style="display: none;">
								<select name="" id="movieSelect" disabled="disabled">
									<option value="#" disabled="disabled" selected="selected"
										class="defaultOption" data-option="option_1_0">Изберете
										филм</option>

								</select>
							</div>
						</div>
					</div>
					<div class="step">
						<div class="number" data-triangles="3">
							<span class="txt">3</span><span class="triangle-set item-1"></span><span
								class="triangle-set item-2"></span><span
								class="triangle-set item-3"></span>
						</div>
						<div class="formItem white datepicker">
							<input type="text" id="projection_time" disabled="disabled"
								readonly="readonly" value="" placeholder="Изберете ден">
						</div>
					</div>
				</div>
				<!-- end of .steps -->
				<div class="barSeparator">или</div>
				<div class="rightSide">
					<div class="searchForm">
						<div class="formItem">
							<input type="text" value="" name="searchphrase" id="search_input"
								placeholder="Име на филм?">
						</div>
						<button class="searchButton">
							<i class="search"></i>
						</button>
						<div id="search_list" class="searchList"></div>
					</div>
				</div>
			</div>
			<!-- end of .filterBar -->

			<div class="stenikFilter moviesHighlight">
				<header class="stenikTabsHeader filterHeader" data-rows="2">
					<div
						class="sliderWrapper owl-carousel owl-theme owl-loaded first-slide">

						<div class="owl-stage-outer">
							<div class="owl-stage"
								style="transform: translate3d(0px, 0px, 0px); transition: 0s; width: 1120px;">
								<div class="owl-item active"
									style="width: 140px; margin-right: 0px;" value = "">
									<div class="tabItem filter" data-filter-anchor="tab-1">
										<div class="row">Всички филми</div>
										<div class="row">в продажба</div>
									</div>
								</div>
								<div class="owl-item active"
									style="width: 140px; margin-right: 0px;">
									<div class="tabItem filter selected" data-filter-anchor="tab-3">
										<div class="row">Детски</div>
										<div class="row">филми</div>
									</div>
								</div>
								<div class="owl-item active"
									style="width: 140px; margin-right: 0px;">
									<div class="tabItem filter hasIMGIcons"
										data-filter-anchor="tab-4">
										<div class="hoverImgToggle">

											<img title="header-imax.png" alt="imax" class="defaultImg"
												src="./images/frontend/imax.png"> <img
												title="header-imax-hover.png" alt="imax" class="hoverImg"
												src="./images/frontend/imax-hover.png">
										</div>
									</div>
								</div>
								<div class="owl-item active"
									style="width: 140px; margin-right: 0px;">
									<div class="tabItem filter hasIMGIcons"
										data-filter-anchor="tab-5">
										<div class="hoverImgToggle">

											<img title="header-luxe.png" alt="Luxe" class="defaultImg"
												src="./images/frontend/luxe.png"> <img
												title="header-luxe-hover.png" alt="Luxe" class="hoverImg"
												src="./images/frontend/luxe-hover.png">
										</div>
									</div>
								</div>
								<div class="owl-item active"
									style="width: 140px; margin-right: 0px;">
									<div class="tabItem filter hasIMGIcons"
										data-filter-anchor="tab-6">
										<div class="hoverImgToggle">

											<img title="header-vip.png" alt="VIP" class="defaultImg"
												src="./images/frontend/vip.png"> <img
												title="header-vip-hover.png" alt="VIP" class="hoverImg"
												src="./images/frontend/vip-hover.png">
										</div>
									</div>
								</div>
								<div class="owl-item active"
									style="width: 140px; margin-right: 0px;">
									<div class="tabItem filter hasIMGIcons"
										data-filter-anchor="tab-7">
										<div class="hoverImgToggle">

											<img title="header-premium.png" alt="Premium"
												class="defaultImg" src="./images/frontend/premium.png">

											<img title="header-premium-hover.png" alt="Premium"
												class="hoverImg" src="./images/frontend/premium-hover.png">
										</div>
									</div>
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
				</header>

				<div class="filterContent"></div>
			</div>
			<!-- end .stenikFilter -->

			<div class="clearH"></div>
		</div>
		</main>
	</div>
	<script src="./js/filterContent.js"></script>
	
	<!-- end of #main -->
</body>
</html>
