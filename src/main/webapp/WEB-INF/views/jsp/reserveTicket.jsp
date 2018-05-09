<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>

<html>
<head>
<link rel="stylesheet" type="text/css"
	href="/KinoArena/css/kinoarena.css">
<title>Reserve ticket</title>

</head>
<body>

	<div id="global_wrapper" class="globalWrapper">
		<jsp:include page="header.jsp"></jsp:include>

		<div class="videoBox" id="video_box">
			<div id="player_holder" class="playerHolder">
				<span class="videoClose"><i class="close"></i></span>
				<div class="videoWrapper"></div>
			</div>
		</div>
		<div id="main">
			<div class="wrapper">
				<section class="pageDesc">
					<h1 class="title">Избор на билет</h1>
				</section>
				<div class="bookingSteps">
					<div class="step current" data-triangles="1">
						<span class="number">1</span> <span class="txt">Избор на
							билет</span> <span class="triangle-set item-1"></span>
					</div>
					<div class="separator">.....</div>
					<div class="step" data-triangles="2">
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
			</div>
			<div class="bookingWrapper">
				<article class="info">
					<p>
						Изберете броя и типа билети, които искате да резервирате.<br>Максимално
						допустимо - 6 билета.
					</p>
				</article>
				<div class="content" style="width: auto; padding-left: 25%;">
					<form class="stdForm"
						action="/KinoArena/reserve?hallId=${screening.hall.id}"
						method="post">

						<aside class="moviePlot">
							<div class="row">
								<div class="title">Прожекция</div>
								<div class="attr">${screening.movie.title}</div>
							</div>
							<div class="row">
								<div class="title">Кино</div>
								<div class="attr">${screening.hall.cinema.name}</div>
							</div>
							<div class="row">
								<fmt:parseDate value="${screening.startTime}"
									pattern="yyyy-MM-dd" var="parsedDate" />
								<fmt:formatDate value="${parsedDate}" type="date"
									pattern="yyy-MM-dd" var="formatedDate" />
								<div class="title">Дата</div>
								<div class="attr">${formatedDate}</div>
							</div>
							<div class="row">
								<fmt:parseDate value="${screening.startTime}"
									pattern="yyyy-MM-dd'T'HH:mm" type="both" var="parsedTime" />

								<div class="title">Час</div>
								<div class="attr">
									<fmt:formatDate pattern="HH:mm" value="${ parsedTime }" />
								</div>
							</div>
							<div class="row">
								<div class="title">Зала</div>
								<div class="attr">${screening.hall.hallNumber}</div>
							</div>
						</aside>
						<!-- end of .moviePlot -->
						<div class="contentWrap">

							<table id="booking_table" class="bookingTable">
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
									<c:set var="total" value="${0}" />

									<c:forEach items="${ticketTypes}" var="ticketType">
										<tr class="calcRow">
											<td name="type${ticketType.id}" class="type first">${ticketType.type}</td>
											<td class="quantity"><div class="stenikSpinner">
													<span id="spinnerHandle minus${ticketType.id}"
														class="spinnerHandle minus"
														onclick="minus('${ticketType.id}')">-</span><input
														type="text" id="quantitySpinner${ticketType.id}"
														class="quantitySpinner" data-min="0" data-max="6"
														name="qty${ticketType.id}" readonly="readonly" value="0" var="units"><span
														class="spinnerHandle plus${ticketType.id}"
														class="spinnerHandle plus"
														onclick="plus('${ticketType.id}')">+</span>
												</div></td>
											<td class="unitPrice"><span id="price${ticketType.id}"
												class="price">${ticketType.price}</span> лв.</td>
											<c:set var="total" value="${(units * ticketType.price) + total}" />

											<td class="totalPrice"><div class="animationWrapper">
													<span id="totalUnitPrice${ticketType.id}" class="price">0.00</span>
													лв.
												</div></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<p id="limit" style="color: red;"></p>
						<c:if test="${not empty error}">
							<p style="color: red;">${error}</p>
						</c:if>

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
										<span id="total_price">${total}</span> лв.
									</div>
								</div>
								<button id="proceed_button"
									class="button red big fixedWidth disabled">
									<span class="txt">Продължи</span><span class="buttonBg"></span>
								</button>
							</div>
						</div>
					</form>
				</div>
			</div>
			<!-- end of .bookingWrapper -->
		</div>
	</div>
	<!-- end of #main -->
	<script src="/KinoArena/js/reserveTicket.js"></script>

</body>
</html>