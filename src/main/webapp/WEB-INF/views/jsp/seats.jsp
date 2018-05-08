<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<title>Seats</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<div id="main">
		<div class="wrapper">
			<section class="pageDesc">
				<h1 class="title">Избор на места</h1>
			</section>
			<div class="bookingSteps">
				<div class="step passed" data-triangles="1">
					<span class="number">1</span> <span class="txt">Избор на
						билет</span> <span class="triangle-set item-1"></span>
				</div>
				<div class="separator">.....</div>
				<div class="step current" data-triangles="2">
					<span class="number">2</span> <span class="txt">Избор на
						места</span> <span class="triangle-set item-1"></span><span
						class="triangle-set item-2"></span>
				</div>
				<div class="separator">.....</div>
				<div class="step" data-triangles="4">
					<span class="number">3</span> <span class="txt">Успешно
						завършване</span> <span class="triangle-set item-1"></span><span
						class="triangle-set item-2"></span><span
						class="triangle-set item-3"></span><span
						class="triangle-set item-4"></span>
				</div>
			</div>
			<form class="stdForm" method="POST"
				action="/bg/booking/seats/122772_2">
				<div class="blackBox hallWrapper">
					<div class="loopDisk"></div>

					<div class="hallLegend">
						<strong class="label">Легенда:</strong>
						<div class="item">
							<div class="seat selected">
								<svg class="seatSVG"
									style="width: 23.055555555556px; height: 23.055555555556px;"
									xmlns="http://www.w3.org/2000/svg"
									xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1"
									id="Layer_1" x="0px" y="0px" width="25px" height="19px"
									viewBox="0 0 25 19" enable-background="new 0 0 25 19"
									xml:space="preserve">
									<path
										d="M17.316 0H7.987C5.806 0 4 1.8 4 3.969v9.797c0 0.2 0 0.4 0 0.6 c0.28-1.914 1.935-2.697 3.923-2.697h9.329c1.989 0 3.6 0.8 3.9 2.697c0.027-0.188 0.047-0.377 0.047-0.57V3.969 C21.286 1.8 19.5 0 17.3 0z M1.658 6.668C0.747 6.7 0 7.4 0 8.327v9.076c0 0.9 0.7 1.7 1.7 1.7 c0.913 0 1.659-0.746 1.659-1.659V8.327C3.317 7.4 2.6 6.7 1.7 6.668z M17.316 13.054H8.034 c-2.184 0-3.97 1.334-3.97 2.964v0.432c0 1.6 1.8 3 4 2.963h9.282c2.183 0 3.97-1.333 3.97-2.963v-0.432 C21.286 14.4 19.5 13.1 17.3 13.054z M23.645 6.668c-0.913 0-1.659 0.747-1.659 1.659v9.076 c0 0.9 0.7 1.7 1.7 1.659s1.66-0.746 1.66-1.659V8.327C25 7.4 24.6 6.7 23.6 6.668z"></path></svg>
							</div>
							<span class="txt">Вашето място</span>
						</div>
						<div class="item">
							<div class="seat">
								<svg class="seatSVG"
									style="width: 23.055555555556px; height: 23.055555555556px;"
									xmlns="http://www.w3.org/2000/svg"
									xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1"
									id="Layer_1" x="0px" y="0px" width="25px" height="19px"
									viewBox="0 0 25 19" enable-background="new 0 0 25 19"
									xml:space="preserve">
									<path
										d="M17.316 0H7.987C5.806 0 4 1.8 4 3.969v9.797c0 0.2 0 0.4 0 0.6 c0.28-1.914 1.935-2.697 3.923-2.697h9.329c1.989 0 3.6 0.8 3.9 2.697c0.027-0.188 0.047-0.377 0.047-0.57V3.969 C21.286 1.8 19.5 0 17.3 0z M1.658 6.668C0.747 6.7 0 7.4 0 8.327v9.076c0 0.9 0.7 1.7 1.7 1.7 c0.913 0 1.659-0.746 1.659-1.659V8.327C3.317 7.4 2.6 6.7 1.7 6.668z M17.316 13.054H8.034 c-2.184 0-3.97 1.334-3.97 2.964v0.432c0 1.6 1.8 3 4 2.963h9.282c2.183 0 3.97-1.333 3.97-2.963v-0.432 C21.286 14.4 19.5 13.1 17.3 13.054z M23.645 6.668c-0.913 0-1.659 0.747-1.659 1.659v9.076 c0 0.9 0.7 1.7 1.7 1.659s1.66-0.746 1.66-1.659V8.327C25 7.4 24.6 6.7 23.6 6.668z"></path></svg>
							</div>
							<span class="txt">Свободно място</span>
						</div>
						<div class="item">
							<div class="seat busy">
								<svg class="seatSVG"
									style="width: 23.055555555556px; height: 23.055555555556px;"
									xmlns="http://www.w3.org/2000/svg"
									xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1"
									id="Layer_1" x="0px" y="0px" width="25px" height="19px"
									viewBox="0 0 25 19" enable-background="new 0 0 25 19"
									xml:space="preserve">
									<path
										d="M17.316 0H7.987C5.806 0 4 1.8 4 3.969v9.797c0 0.2 0 0.4 0 0.6 c0.28-1.914 1.935-2.697 3.923-2.697h9.329c1.989 0 3.6 0.8 3.9 2.697c0.027-0.188 0.047-0.377 0.047-0.57V3.969 C21.286 1.8 19.5 0 17.3 0z M1.658 6.668C0.747 6.7 0 7.4 0 8.327v9.076c0 0.9 0.7 1.7 1.7 1.7 c0.913 0 1.659-0.746 1.659-1.659V8.327C3.317 7.4 2.6 6.7 1.7 6.668z M17.316 13.054H8.034 c-2.184 0-3.97 1.334-3.97 2.964v0.432c0 1.6 1.8 3 4 2.963h9.282c2.183 0 3.97-1.333 3.97-2.963v-0.432 C21.286 14.4 19.5 13.1 17.3 13.054z M23.645 6.668c-0.913 0-1.659 0.747-1.659 1.659v9.076 c0 0.9 0.7 1.7 1.7 1.659s1.66-0.746 1.66-1.659V8.327C25 7.4 24.6 6.7 23.6 6.668z"></path></svg>
							</div>
							<span class="txt">Заето място</span>
						</div>
					</div>

					<div class="hallScreen">
						<strong class="label">Екран</strong> <span class="screen"
							style="width: 830px;"></span>
					</div>
					<div id="hall_zoom_wrapper" class="hallZoomWrapper">
						<div class="hall" data-rows="10" data-cols="16">
							<span class="rowLabel">Ред</span>
							<%-- 							<c:forEach items="${ticketTypes}" var="ticketType">
 --%>
							<div class="row">
								<span class="number"
									style="width: 46.4984px; height: 35.3813px; margin-top: -17.6906px;"><span
									class="txt"
									style="width: 43.498390197753906px; height: 32.38129806518555px;">1</span></span>
								<div class="cellsWrapper" style="width: 830px;">
									<div class="cell">
										<div data-content="4" data-real-row="1" data-real-seat="4"
											class="seat          " data-category="0000000001"
											data-row="9" data-seat="6" data-area="1" data-id="222">
											<svg class="seatSVG"
												style="width: 48.8235px; height: 48.8235px;"
												xmlns="http://www.w3.org/2000/svg"
												xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1"
												id="Layer_1" x="0px" y="0px" width="25px" height="19px"
												viewBox="0 0 25 19" enable-background="new 0 0 25 19"
												xml:space="preserve">
												<path
													d="M17.316 0H7.987C5.806 0 4 1.8 4 3.969v9.797c0 0.2 0 0.4 0 0.6 c0.28-1.914 1.935-2.697 3.923-2.697h9.329c1.989 0 3.6 0.8 3.9 2.697c0.027-0.188 0.047-0.377 0.047-0.57V3.969 C21.286 1.8 19.5 0 17.3 0z M1.658 6.668C0.747 6.7 0 7.4 0 8.327v9.076c0 0.9 0.7 1.7 1.7 1.7 c0.913 0 1.659-0.746 1.659-1.659V8.327C3.317 7.4 2.6 6.7 1.7 6.668z M17.316 13.054H8.034 c-2.184 0-3.97 1.334-3.97 2.964v0.432c0 1.6 1.8 3 4 2.963h9.282c2.183 0 3.97-1.333 3.97-2.963v-0.432 C21.286 14.4 19.5 13.1 17.3 13.054z M23.645 6.668c-0.913 0-1.659 0.747-1.659 1.659v9.076 c0 0.9 0.7 1.7 1.7 1.659s1.66-0.746 1.66-1.659V8.327C25 7.4 24.6 6.7 23.6 6.668z"></path></svg>
										</div>
									</div>
									<div class="cell">
										<div data-content="1" data-real-row="1" data-real-seat="1"
											class="seat             forDisabled
         "
											data-category="0000000001" data-row="9" data-seat="3"
											data-area="1" data-id="216">
											<svg class="seatSVG"
												style="width: 48.8235px; height: 48.8235px;"
												xmlns="http://www.w3.org/2000/svg"
												xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1"
												id="Layer_1" x="0px" y="0px" width="25px" height="19px"
												viewBox="0 0 25 19" enable-background="new 0 0 25 19"
												xml:space="preserve">
												<path
													d="M17.316 0H7.987C5.806 0 4 1.8 4 3.969v9.797c0 0.2 0 0.4 0 0.6 c0.28-1.914 1.935-2.697 3.923-2.697h9.329c1.989 0 3.6 0.8 3.9 2.697c0.027-0.188 0.047-0.377 0.047-0.57V3.969 C21.286 1.8 19.5 0 17.3 0z M1.658 6.668C0.747 6.7 0 7.4 0 8.327v9.076c0 0.9 0.7 1.7 1.7 1.7 c0.913 0 1.659-0.746 1.659-1.659V8.327C3.317 7.4 2.6 6.7 1.7 6.668z M17.316 13.054H8.034 c-2.184 0-3.97 1.334-3.97 2.964v0.432c0 1.6 1.8 3 4 2.963h9.282c2.183 0 3.97-1.333 3.97-2.963v-0.432 C21.286 14.4 19.5 13.1 17.3 13.054z M23.645 6.668c-0.913 0-1.659 0.747-1.659 1.659v9.076 c0 0.9 0.7 1.7 1.7 1.659s1.66-0.746 1.66-1.659V8.327C25 7.4 24.6 6.7 23.6 6.668z"></path></svg>
										</div>
									</div>
									<div class="cell"></div>
								</div>
							</div>

							<div class="row"></div>
							<%-- 							</c:forEach>
 --%>
						</div>
					</div>
					<div class="selectedSeatsWrapper hideOnDesktop">
						<span class="label">Избрани места:</span>
						<div id="seats_output" class="selectedSeatsOutput"></div>
					</div>
				</div>
				<div class="content center sidePadding">
					<p>
						<em>Изберете свободни места и кликнете върху тях, за да ги
							маркирате. Екранът показва посоката на гледане. Отстоянието на
							седалките от екрана не представлява действителното разположение в
							залата. Имайте предвид, че системата не позволява да оставите
							незаето </em>
					</p>
				</div>
				<hr class="red">
				<div class="center">
					<div class="hidden">
						<input type="text" name="selectedItems" id="selected_seats_field">
					</div>
					<button id="booking_proceed_button" class="button red big disabled">
						<span class="txt">Продължи</span><span class="buttonBg"></span>
					</button>
					<div class="clearH"></div>
					<a href="/bg/booking/122772_2">Промени билетите</a>
				</div>
			</form>
			<div class="clearH5"></div>
			<div class="bookingWrapper">
				<article class="info">
					<p>
						Изберете броя и типа билети, които искате да закупите
						(резервирате).<br>Максимално допустимо - 6 билета.
					</p>
				</article>
				<div class="content">
					<form class="stdForm" action="/bg/booking/seats/431466"
						method="post">

						<aside class="moviePlot">
							<div class="row">
								<div class="title">Прожекция</div>
								<div class="attr">Сръчковците: Строго секретно</div>
							</div>
							<div class="row">
								<div class="title">Кино</div>
								<div class="attr">Кино Арена Мол Варна</div>
							</div>
							<div class="row">
								<div class="title">Дата</div>
								<div class="attr">8 май 2018 г., 18:15:00</div>
							</div>
							<div class="row">
								<div class="title">Час</div>
								<div class="attr">18:15</div>
							</div>
							<div class="row">
								<div class="title">Зала</div>
								<div class="attr">5</div>
							</div>
							<div class="row">
								<div class="title">Виза</div>
								<div class="attr">
									<div class="item tooltip_0"
										data-tooltip="<p>Дублиран на български език</p>">

										<img title="dub.png"
											src="/uploads/media/stenik_attributes/0001/02/39a939bbe7828a27bfa4fe1aabd2fd6298929fc5.png">
									</div>
									<div class="item tooltip_1"
										data-tooltip="<p>Без ограничения в показа</p>">

										<img title="cat-b.png"
											src="/uploads/media/stenik_attributes/0001/01/9db6e27089dd4e0f193eb6da0fd1a1114d2af76b.png">
									</div>
								</div>
							</div>
						</aside>
						<!-- end of .moviePlot -->
						<div class="contentWrap">
							<table id="booking_table" class="bookingTable booked">
								<thead>
									<tr class="first">
										<th class="type first">Тип на билета</th>
										<th class="quantity">Брой</th>
										<th class="unitPrice">Ед. цена</th>
										<th class="totalPrice last">Сума</th>
									</tr>
									<tr class="last">
										<th colspan="4" class="spacer first last"></th>
									</tr>
								</thead>
								<tbody>
									<tr class="calcRow first last">
										<td class="type first">2D Студентски 8 лв/2018</td>
										<td class="quantity">1</td>
										<td class="unitPrice"><span class="price">8</span> лв.</td>
										<td class="totalPrice last"><div class="animationWrapper">
												<span class="price">8</span> лв.
											</div></td>
									</tr>
								</tbody>
							</table>
							<!-- end of .bookingTable -->
						</div>
						<hr class="red">
						<div class="bookingTotal">
							<article class="note">
								<p>За филми в 3D формат са ви необходими 3D очила, които се
									купуват отделно от билета в кината на цена 2 лв./бр.</p>
								<p>Цената не включва RealD 3D и IMAX 3D очила.</p>
							</article>
							<div class="total">
								<div class="row">
									<div class="name">Тотал:</div>
									<div class="value">
										<span id="total_price">8</span> лв.
									</div>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
			<!-- end of .bookingWrapper -->
		</div>
	</div>
</body>
</html>