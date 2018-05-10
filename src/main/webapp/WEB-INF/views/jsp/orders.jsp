<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" type="text/css" href="./css/kinoarena.css">
<link rel="stylesheet" type="text/css" href="./css/profile.css">
<link rel="stylesheet" type="text/css" href="./css/6d0ffb9.css">

</head>
<body class="loaded">
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
							<li><a href="./favorites"> <span class="icon"><i
										class="heart"></i></span> <span class="txt">Моите филми</span>
							</a></li>
							<li class="selected"><span class="icon"><i
									class="clock"></i></span> <span class="txt">История на
									резервациите</span></li>
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
				<div class="contentWrapper" style="height: auto;">
					<img src="/KinoArena/images/profile-history.png" alt="bg image"
						class="bgImage">
					<div class="stenikFilter bookingHistory">
						<header class="stenikTabsHeader filterHeader" data-rows="1">
							<div class="sliderWrapper">
								<div class="tabItem filter selected" data-filter-anchor="tab-0">Направени
									резервации</div>
							</div>
						</header>
						<div class="filterContent small">
							<div class="filterItem filterSelected" data-filter="tab-0">
								<table class="bookingHistoryTable">

									<tbody>
										<c:forEach items="${tickets.values()}" var="tickets">
											<c:set var="ticket" value="${tickets[0]}" />
											<tr class="first">
												<td class="featured first"><a href="#" title=""> <img
														src="/KinoArena${ticket.screening.movie.coverURL }"
														alt="${ticket.screening.movie.title}" width="85"
														height="125">
												</a></td>
												<td class="info last">
													<h6 class="title">
														<a href="/KinoArena/movies/${ticket.screening.movie.id}">${ticket.screening.movie.title}</a>
													</h6>
													<div class="prop">
														<span class="txt"> ${ticket.seat.hall.cinema.name}
															${ticket.seat.hall.cinema.address.city},
															${ticket.seat.hall.cinema.address.address}.,
															Hall${ticket.seat.hall.hallNumber}</span>
													</div>
													<div class="prop">
														<span class="txt"> <c:forEach items="${tickets}"
																var="tickett">
															
																Seat:${tickett.seat.row}/${tickett.seat.number} ,
																</c:forEach></span>
													</div>

													<div class="prop">
														<fmt:parseDate value="${ticket.screening.startTime}"
															pattern="yyyy-MM-dd" var="parsedDate" />
														<fmt:formatDate value="${parsedDate}" type="date"
															pattern="yyy-MM-dd" var="formatedDate" />
														<span class="txt">${formatedDate}</span> <span
															class="txt"></span>
													</div>
												</td>
										</c:forEach>

									</tbody>
								</table>
							</div>
						</div>
					</div>
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

		<div style="display: inline;">

			<img height="1" width="1" style="border-style: none;" alt=""
				src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/855321203/?guid=ON&amp;script=0" />

		</div>

	</noscript>
</body>
</html>