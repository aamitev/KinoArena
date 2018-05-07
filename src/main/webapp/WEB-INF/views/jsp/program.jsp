<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
						<div id="owl-stage" class="owl-stage"
							style="transform: translate3d(0px, 0px, 0px); transition: 0s; width: 2327.5px;">
							<c:if test="${not empty screeningDates}">
								<c:forEach items="${screeningDates}" var="screeningDate">
									<div class="owl-item active"
										style="width: 122.5px; margin-right: 0px;">
										<fmt:parseDate value="${screeningDate.startTime}"
											pattern="yyyy-MM-dd" var="parsedDate" />
										<fmt:formatDate value="${parsedDate}" type="date"
											pattern="yyy-MM-dd" var="formatedDate" />
										<a
											onclick="getScreenings(${currentCinema.id},'${formatedDate}')"
											class="tabItem ">
											<div class="row">
												<fmt:formatDate value="${parsedDate}" type="date"
													pattern="dd/MM" />
											</div>
										</a>
									</div>
								</c:forEach>
							</c:if>
						</div>
					</div>
				</div>
			</header>
			<div class="cinemaInfo">
				<div class="twoSidesBar cinemaSelect">
					<aside class="leftSide">
						<span class="fadeTxt small">Избор на кино</span>
						<div class="formItem select checkList" style="display: block;">
							<div id="selectCinema" class="stenikSelect select_1">
								<div id="selectedHolder" class="selectedHolder"
									data-cinema-id="${currentCinema.id}">
									${currentCinema.name}</div>
								<div id="dropdown" class="dropdown">
									<c:if test="${not empty cinemas}">
										<c:forEach items="${cinemas}" var="cinema">
											<a class="option"
												href="/KinoArena/program?cinemaId=${cinema.id}">${cinema.name}</a>
										</c:forEach>
									</c:if>
								</div>
							</div>
						</div>
					</aside>
					<div class="barSeparator"></div>
				</div>
				<!-- end of .selectBar -->
				<div id="transpBar" class="transpBar">
					<c:if test="${not empty currentCinema.name}">

						<div class="item left">
							<strong>АДРЕС:</strong>
							${currentCinema.address.city},${currentCinema.address.address}
						</div>
						<div class="item left">
							<strong>ТЕЛЕФОН:</strong>${currentCinema.gsm}
						</div>
						<div class="item right">
							<a id="streetView" href="#" title="">Карта</a>&nbsp;&nbsp;|&nbsp;&nbsp;
							<a href="/KinoArena/cinema/${currentCinema.id}"
								title="${currentCinema.name}"> Вижте повече </a>
						</div>
					</c:if>
				</div>
			</div>
			<!-- end of .cinemaInfo -->
			<div class="clearH2 hideOnPhone hideOnHandheld"></div>
			<div id="block"class="block">

			</div>
		</div>
	</div>
	<script src="/KinoArena/js/program.js"></script>

</body>
</html>