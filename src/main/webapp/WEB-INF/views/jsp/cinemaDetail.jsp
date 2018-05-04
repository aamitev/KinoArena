<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>${cinema.name}</title>
</head>
<body>
	<c:import url="header.jsp"></c:import>

	<div class="wrapper">
		<nav class="tabularMenu" data-items="3">
			<ul>
				<li class="selected"><a href="/bg/cinema/kino-arena-zapad">
						<div class="icon">
							<i class="chair"></i>
						</div> За киното
				</a></li>
			</ul>
		</nav>
		<div class="clearH2"></div>
		<aside class="sidebar right cinemaSidebar">
			<div class="widget">
				<div class="circleButton">
					<a href="#" class="mainTxt" target="_blank">
						<figure class="icon">
							<i class="pin"></i>
						</figure>
						<div class="txt">
							<div class="vAlign">Виж ни на картата</div>
						</div>
					</a>
					<div class="secondaryTxt">
						<p>${cinema.address.city},${cinema.address.address}</p>
					</div>
				</div>
				<div class="clearH2"></div>
				<div class="circleButton">
					<div href="#" class="mainTxt">
						<figure class="icon">
							<i class="call"></i>
						</figure>
						<div class="txt">
							<div class="vAlign">Връзка с нас</div>
						</div>
					</div>
					<div class="secondaryTxt">
						<p>${cinema.gsm}</p>
					</div>
				</div>
				<div class="clearH2"></div>
				<div class="circleButton noArrow">
					<div href="mailto:info@kinoarena.com" class="mainTxt mailtoButton">
						<figure class="icon">
							<i class="email big"></i>
						</figure>
						<div class="txt">
							<div class="vAlign">Напиши ни e-mail</div>
						</div>
					</div>
					<div class="secondaryTxt">
						<p>${cinema.email}</p>
					</div>
				</div>
				<div class="clearH2"></div>
			</div>
		</aside>
		<article class="contentWrapper gradientBox cinemaContent">
			<div class="content">
				<h6>
					<strong><a class="defaultStyles"
						href="https://www.europa-cinemas.org/en/" target="_blank"><img
							src="/uploads/assets/EC_TRANS.png" alt="" width="275" height="71"></a></strong>
				</h6>
				<h6>&nbsp;</h6>
				<h6>
					<strong>ЗАЛИ</strong>
				</h6>
				<p>15 зали, включително LUXE, PREMIUM и VIP зали.</p>
				<p>2858&nbsp;места</p>
				<h6>
					<strong>ПАРКИНГ</strong>
				</h6>
				<p>Открит, платен паркинг. Паркингът е неохраняем!</p>
				<p>Безплатен престой от четири часа за зрителите и клиентите на
					ресторантите в киното.</p>
				<p>Паркинг талонът се валидира на касите на киното.</p>


			</div>
		</article>
	</div>

</body>
</html>