<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="./css/kinoarena.css">
<link rel="stylesheet" type="text/css" href="./css/profile.css">
<link class="jsbin"
	href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/base/jquery-ui.css"
	rel="stylesheet" type="text/css" />
<script class="jsbin"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script class="jsbin"
	src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.0/jquery-ui.min.js"></script>
</head>
<body class="loaded  scrolling menuLoaded afterLoaded">

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

							<li class="selected"><span class="icon"><i
									class="profile"></i></span> <span class="txt">Персонална
									информация</span></li>

							<li><a href="./changePassword"> <span class="icon"><i
										class="password"></i></span> <span class="txt">Промяна на
										парола</span>
							</a></li>
							<li><a href="./favorites"> <span class="icon"><i
										class="heart"></i></span> <span class="txt">Моите филми</span>
							</a></li>
							<li><a href="./orders"> <span class="icon"><i
										class="clock"></i></span> <span class="txt">История на
										резервациите и закупените билети</span>
							</a></li>
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
				<div class="contentWrapper">
					<span class="icon"> <i class="profile"></i>
					</span>
					<h5 class="txt">Персонална информация</h5>
					<img src="/KinoArena/images/profile-info.png" alt="bg image"
						class="bgImage">
					<p class="requiredInfo">
						<span class="red">*</span> Задължителни полета
					</p>
					<p>
						<em>При <strong>КОРЕКТНО ПОПЪЛВАНЕ</strong> на полетата
							получаваш - 1. Бърза регистрация в томболи и промоции, 2.
							По-добро обслужване, 3. Предпочитана информация
						</em>
					</p>
					<hr class="red">
					
					<form action="./editProfile"
						name="stenik_user_personal_information" method="post"
						novalidate="novalidate" class="stdForm">
						<div class="formGroup">
							<span class="groupLabel">Пол *</span>
							<div>
								<input id="sex" type="radio" name="sex" hidden><br>
								<input type='button' value='Мъж' id='selectMale'> <input
									type='button' value='Жена' id='selectFemale'>
							</div>
						</div>
						<div class="formItem col2 left">
							<!-- MUST EDIT -->
							<!-- should take the values from the current session user -->
							<input type="text" id="firstName" name="firstName"
								required="required" placeholder="Име *"
								value="${sessionScope.loggedUser.getFirstName() }" />
						</div>
						<div class="formItem col2 left">
							<input type="text" id="secondName" name="secondName"
								required="required" placeholder="Бащино име *"
								value="${sessionScope.loggedUser.getSecondName() }" />
						</div>
						<div class="formItem col2 right">
							<input type="text" id="lastName" name="lastName"
								required="required" placeholder="Фамилия *"
								value="${sessionScope.loggedUser.getLastName() }" />
						</div>
						<div class="clear"></div>
						<div class="formItem col2 left">
							<input type="text" id="email" name="email" readonly="readonly"
								required="required" disabled placeholder="form.email"
								value="${sessionScope.loggedUser.getEmail()}" />
						</div>
						<div class="formItem col2 right">
							<input type="text" id="gsm" name="gsm" required="required"
								placeholder="Телефон"
								value="${sessionScope.loggedUser.getGsm()}" />
						</div>
						<div class="clear"></div>
						<div class="formItem select col2 left">
							<select id="city" name="city">
								<option
									myTag="${sessionScope.loggedUser.getAddress().getCity()}"
									value="${sessionScope.loggedUser.getAddress().getCity()}"
									selected disabled>
									${sessionScope.loggedUser.getAddress().getCity()}</option>

								<option myTag="Айтос" value="Айтос">Айтос</option>
								<option myTag="Аксаково" value="Аксаково">Аксаково</option>
								<option myTag="Алфатар" value="Алфатар">Алфатар</option>
								<option myTag="Антоново" value="Антоново">Антоново</option>
								<option myTag="Априлци" value="Априлци">Априлци</option>
								<option myTag="Ардино" value="Ардино">Ардино</option>
								<option myTag="Ардино" value="Асеновград">Асеновград</option>
								<option myTag="Ахелой" value="Ахелой">Ахелой</option>
								<option myTag="Ахтопол" value="Ахтопол">Ахтопол</option>
								<option myTag="Балчик" value="Балчик">Балчик</option>
								<option myTag="Банкя" value="Банкя">Банкя</option>
								<option myTag="Банско" value="Банско">Банско</option>
								<option myTag="Баня" value="Баня">Баня</option>
								<option myTag="Батак" value="Батак">Батак</option>
								<option myTag="Батановци" value="Батановци">Батановци</option>
								<option myTag="Белене" value="Белене">Белене</option>
								<option myTag="Белица" value="Белица">Белица</option>
								<option myTag="Белово" value="Белово">Белово</option>
								<option myTag="Белоградчик" value="Белоградчик">Белоградчик</option>
								<option myTag="Белослав" value="Белослав">Белослав</option>
								<option myTag="Берковица" value="Берковица">Берковица</option>
								<option myTag="Благоевград" value="Благоевград">Благоевград</option>
								<option myTag="Бобов дол" value="Бобов дол">Бобов дол</option>
								<option myTag="Бобошево" value="Бобошево">Бобошево</option>
								<option myTag="Божурище" value="Божурище">Божурище</option>
								<option myTag="Бойчиновци" value="Бойчиновци">Бойчиновци</option>
								<option myTag="Болярово" value="Болярово">Болярово</option>
								<option myTag="Борово" value="Борово">Борово</option>
								<option myTag="Ботевград" value="Ботевград">Ботевград</option>
								<option myTag="Брацигово" value="Брацигово">Брацигово</option>
								<option myTag="Брегово" value="Брегово">Брегово</option>
								<option myTag="Брезник" value="Брезник">Брезник</option>
								<option myTag="Брезово" value="Брезово">Брезово</option>
								<option myTag="Брусарци" value="Брусарци">Брусарци</option>
								<option myTag="Бургас" value="Бургас">Бургас</option>
								<option myTag="Бухово" value="Бухово">Бухово</option>
								<option myTag="Българово" value="Българово">Българово</option>
								<option myTag="Бяла" value="Бяла">Бяла</option>
								<option myTag="Бяла Слатина" value="Бяла Слатина">Бяла
									Слатина</option>
								<option myTag="Бяла черква" value="Бяла черква">Бяла
									черква</option>
								<option myTag="Варна" value="Варна">Варна</option>
								<option myTag="Велики Преслав" value="Велики Преслав">Велики
									Преслав</option>
								<option myTag="Велико Търново" value="Велико Търново">Велико
									Търново</option>
								<option myTag="Велинград" value="Велинград">Велинград</option>
								<option myTag="Ветово" value="Ветово">Ветово</option>
								<option myTag="Ветрен" value="Ветрен">Ветрен</option>
								<option myTag="Видин" value="Видин">Видин</option>
								<option myTag="Враца" value="Враца">Враца</option>
								<option myTag="Вълчедръм" value="Вълчедръм">Вълчедръм</option>
								<option myTag="Вълчи дол" value="Вълчи дол">Вълчи дол</option>
								<option myTag="Върбица" value="Върбица">Върбица</option>
								<option myTag="Вършец" value="Вършец">Вършец</option>
								<option myTag="Габрово" value="Габрово">Габрово</option>
								<option myTag="Генерал Тошево" value="Генерал Тошево">Генерал
									Тошево</option>
								<option myTag="Главиница" value="Главиница">Главиница</option>
								<option myTag="Глоджево" value="Глоджево">Глоджево</option>
								<option myTag="Годеч" value="Годеч">Годеч</option>
								<option myTag="Горна Оряховица" value="Горна Оряховица">Горна
									Оряховица</option>
								<option myTag="Гоце Делчев" value="Гоце Делчев">Гоце
									Делчев</option>
								<option myTag="Грамада" value="Грамада">Грамада</option>
								<option myTag="Гулянци" value="Гулянци">Гулянци</option>
								<option myTag="Гурково" value="Гурково">Гурково</option>
								<option myTag="Гълъбово" value="Гълъбово">Гълъбово</option>
								<option myTag="Две могили" value="Две могили">Две
									могили</option>
								<option myTag="Дебелец" value="Дебелец">Дебелец</option>
								<option myTag="Девин" value="Девин">Девин</option>
								<option myTag="Девня" value="Девня">Девня</option>
								<option myTag="Джебел" value="Джебел">Джебел</option>
								<option myTag="Димитровград" value="Димитровград">Димитровград</option>
								<option myTag="Димово" value="Димово">Димово</option>
								<option myTag="Добринище" value="Добринище">Добринище</option>
								<option myTag="Добрич" value="Добрич">Добрич</option>
								<option myTag="Долна баня" value="Долна баня">Долна
									баня</option>
								<option myTag="Долна Митрополия" value="Долна Митрополия">Долна
									Митрополия</option>
								<option myTag="Долна Оряховица" value="Долна Оряховица">Долна
									Оряховица</option>
								<option myTag="Долни Дъбник" value="Долни Дъбник">Долни
									Дъбник</option>
								<option myTag="Долни чифлик" value="Долни чифлик">Долни
									чифлик</option>
								<option myTag="Доспат" value="Доспат">Доспат</option>
								<option myTag="Драгоман" value="Драгоман">Драгоман</option>
								<option myTag="Дряново" value="Дряново">Дряново</option>
								<option myTag="Дулово" value="Дулово">Дулово</option>
								<option myTag="Дунавци" value="Дунавци">Дунавци</option>
								<option myTag="Дупница" value="Дупница">Дупница</option>
								<option myTag="Дългопол" value="Дългопол">Дългопол</option>
								<option myTag="Елена" value="Елена">Елена</option>
								<option myTag="Елин Пелин" value="Елин Пелин">Елин
									Пелин</option>
								<option myTag="Елхово" value="Елхово">Елхово</option>
								<option myTag="Етрополе" value="Етрополе">Етрополе</option>
								<option myTag="Завет" value="Завет">Завет</option>
								<option myTag="Земен" value="Земен">Земен</option>
								<option myTag="Златарица" value="Златарица">Златарица</option>
								<option myTag="Златица" value="Златица">Златица</option>
								<option myTag="Златоград" value="Златоград">Златоград</option>
								<option myTag="Ивайловград" value="Ивайловград">Ивайловград</option>
								<option myTag="Игнатиево" value="Игнатиево">Игнатиево</option>
								<option myTag="Искър" value="Искър">Искър</option>
								<option myTag="Исперих" value="Исперих">Исперих</option>
								<option myTag="Ихтиман" value="Ихтиман">Ихтиман</option>
								<option myTag="Каблешково" value="Каблешково">Каблешково</option>
								<option myTag="Каварна" value="Каварна">Каварна</option>
								<option myTag="Казанлък" value="Казанлък">Казанлък</option>
								<option myTag="Калофер" value="Калофер">Калофер</option>
								<option myTag="Камено" value="Камено">Камено</option>
								<option myTag="Каолиново" value="Каолиново">Каолиново</option>
								<option myTag="Карлово" value="Карлово">Карлово</option>
								<option myTag="Карнобат" value="Карнобат">Карнобат</option>
								<option myTag="Каспичан" value="Каспичан">Каспичан</option>
								<option myTag="Кермен" value="Кермен">Кермен</option>
								<option myTag="Килифарево" value="Килифарево">Килифарево</option>
								<option myTag="Китен" value="Китен">Китен</option>
								<option myTag="Клисура" value="Клисура">Клисура</option>
								<option myTag="Кнежа" value="Кнежа">Кнежа</option>
								<option myTag="Козлодуй" value="Козлодуй">Козлодуй</option>
								<option myTag="Койнаре" value="Койнаре">Койнаре</option>
								<option myTag="Копривщица" value="Копривщица">Копривщица</option>
								<option myTag="Костандово" value="Костандово">Костандово</option>
								<option myTag="Костенец" value="Костенец">Костенец</option>
								<option myTag="Костинброд" value="Костинброд">Костинброд</option>
								<option myTag="Котел" value="Котел">Котел</option>
								<option myTag="Кочериново" value="Кочериново">Кочериново</option>
								<option myTag="Кресна" value="Кресна">Кресна</option>
								<option myTag="Криводол" value="Криводол">Криводол</option>
								<option myTag="Кричим" value="Кричим">Кричим</option>
								<option myTag="Крумовград" value="Крумовград">Крумовград</option>
								<option myTag="Крън" value="Крън">Крън</option>
								<option myTag="Кубрат" value="Кубрат">Кубрат</option>
								<option myTag="Куклен" value="Куклен">Куклен</option>
								<option myTag="Кула" value="Кула">Кула</option>
								<option myTag="Кърджали" value="Кърджали">Кърджали</option>
								<option myTag="Кюстендил" value="Кюстендил">Кюстендил</option>
								<option myTag="Левски" value="Левски">Левски</option>
								<option myTag="Летница" value="Летница">Летница</option>
								<option myTag="Ловеч" value="Ловеч">Ловеч</option>
								<option myTag="Лозница" value="Лозница">Лозница</option>
								<option myTag="Лом" value="Лом">Лом</option>
								<option myTag="Луковит" value="Луковит">Луковит</option>
								<option myTag="Лъки" value="Лъки">Лъки</option>
								<option myTag="Любимец" value="Любимец">Любимец</option>
								<option myTag="Лясковец" value="Лясковец">Лясковец</option>
								<option myTag="Мадан" value="Мадан">Мадан</option>
								<option myTag="Маджарово" value="Маджарово">Маджарово</option>
								<option myTag="Малко Търново" value="Малко Търново">Малко
									Търново</option>
								<option myTag="Мартен" value="Мартен">Мартен</option>
								<option myTag="Мездра" value="Мездра">Мездра</option>
								<option myTag="Мелник" value="Мелник">Мелник</option>
								<option myTag="Меричлери" value="Меричлери">Меричлери</option>
								<option myTag="Мизия" value="Мизия">Мизия</option>
								<option myTag="Момин проход" value="Момин проход">Момин
									проход</option>
								<option myTag="Момчилград" value="Момчилград">Момчилград</option>
								<option myTag="Монтана" value="Монтана">Монтана</option>
								<option myTag="Мъглиж" value="Мъглиж">Мъглиж</option>
								<option myTag="Неделино" value="Неделино">Неделино</option>
								<option myTag="Несебър" value="Несебър">Несебър</option>
								<option myTag="Николаево" value="Николаево">Николаево</option>
								<option myTag="Никопол" value="Никопол">Никопол</option>
								<option myTag="Нова Загора" value="Нова Загора">Нова
									Загора</option>
								<option myTag="Нови Искър" value="Нови Искър">Нови
									Искър</option>
								<option myTag="Нови пазар" value="Нови пазар">Нови
									пазар</option>
								<option myTag="Обзор" value="Обзор">Обзор</option>
								<option myTag="Омуртаг" value="Омуртаг">Омуртаг</option>
								<option myTag="Опака" value="Опака">Опака</option>
								<option myTag="Оряхово" value="Оряхово">Оряхово</option>
								<option myTag="Павел баня" value="Павел баня">Павел
									баня</option>
								<option myTag="Павликени" value="Павликени">Павликени</option>
								<option myTag="Пазарджик" value="Пазарджик">Пазарджик</option>
								<option myTag="Панагюрище" value="Панагюрище">Панагюрище</option>
								<option myTag="Перник" value="Перник">Перник</option>
								<option myTag="Перущица" value="Перущица">Перущица</option>
								<option myTag="Петрич" value="Петрич">Петрич</option>
								<option myTag="Пещера" value="Пещера">Пещера</option>
								<option myTag="Пирдоп" value="Пирдоп">Пирдоп</option>
								<option myTag="Плачковци" value="Плачковци">Плачковци</option>
								<option myTag="Плевен" value="Плевен">Плевен</option>
								<option myTag="Плиска" value="Плиска">Плиска</option>
								<option myTag="Пловдив" value="Пловдив">Пловдив</option>
								<option myTag="Полски Тръмбеш" value="Полски Тръмбеш">Полски
									Тръмбеш</option>
								<option myTag="Поморие" value="Поморие">Поморие</option>
								<option myTag="Попово" value="Попово">Попово</option>
								<option myTag="Пордим" value="Пордим">Пордим</option>
								<option myTag="Правец" value="Правец">Правец</option>
								<option myTag="Приморско" value="Приморско">Приморско</option>
								<option myTag="Провадия" value="Провадия">Провадия</option>
								<option myTag="Първомай" value="Първомай">Първомай</option>
								<option myTag="Раднево" value="Раднево">Раднево</option>
								<option myTag="Радомир" value="Радомир">Радомир</option>
								<option myTag="Разград" value="Разград">Разград</option>
								<option myTag="Разлог" value="Разлог">Разлог</option>
								<option myTag="Ракитово" value="Ракитово">Ракитово</option>
								<option myTag="Раковски" value="Раковски">Раковски</option>
								<option myTag="Рила" value="Рила">Рила</option>
								<option myTag="Роман" value="Роман">Роман</option>
								<option myTag="Рудозем" value="Рудозем">Рудозем</option>
								<option myTag="Русе" value="Русе">Русе</option>
								<option myTag="Садово" value="Садово">Садово</option>
								<option myTag="Самоков" value="Самоков">Самоков</option>
								<option myTag="Сандански" value="Сандански">Сандански</option>
								<option myTag="Сапарева баня" value="Сапарева баня">Сапарева
									баня</option>
								<option myTag="Свети Влас" value="Свети Влас">Свети
									Влас</option>
								<option myTag="Свиленград" value="Свиленград">Свиленград</option>
								<option myTag="Свищов" value="Свищов">Свищов</option>
								<option myTag="Своге" value="Своге">Своге</option>
								<option myTag="Севлиево" value="Севлиево">Севлиево</option>
								<option myTag="Сеново" value="Сеново">Сеново</option>
								<option myTag="Септември" value="Септември">Септември</option>
								<option myTag="Силистра" value="Силистра">Силистра</option>
								<option myTag="Симеоновград" value="Симеоновград">Симеоновград</option>
								<option myTag="Симитли" value="Симитли">Симитли</option>
								<option myTag="Славяново" value="Славяново">Славяново</option>
								<option myTag="Сливен" value="Сливен">Сливен</option>
								<option myTag="Сливница" value="Сливница">Сливница</option>
								<option myTag="Сливо поле" value="Сливо поле">Сливо
									поле</option>
								<option myTag="Смолян" value="Смолян">Смолян</option>
								<option myTag="Смядово" value="Смядово">Смядово</option>
								<option myTag="Созопол" value="Созопол">Созопол</option>
								<option myTag="Сопот" value="Сопот">Сопот</option>
								<option myTag="София" value="София">София</option>
								<option myTag="Средец" value="Средец">Средец</option>
								<option myTag="Стамболийски" value="Стамболийски">Стамболийски</option>
								<option myTag="Стара Загора" value="Стара Загора">Стара
									Загора</option>
								<option myTag="Стражица" value="Стражица">Стражица</option>
								<option myTag="Стралджа" value="Стралджа">Стралджа</option>
								<option myTag="Стрелча" value="Стрелча">Стрелча</option>
								<option myTag="Суворово" value="Суворово">Суворово</option>
								<option myTag="Сунгурларе" value="Сунгурларе">Сунгурларе</option>
								<option myTag="Сухиндол" value="Сухиндол">Сухиндол</option>
								<option myTag="Съединение" value="Съединение">Съединение</option>
								<option myTag="Сърница" value="Сърница">Сърница</option>
								<option myTag="Твърдица" value="Твърдица">Твърдица</option>
								<option myTag="Тервел" value="Тервел">Тервел</option>
								<option myTag="Тетевен" value="Тетевен">Тетевен</option>
								<option myTag="Тополовград" value="Тополовград">Тополовград</option>
								<option myTag="Троян" value="Троян">Троян</option>
								<option myTag="Трън" value="Трън">Трън</option>
								<option myTag="Тръстеник" value="Тръстеник">Тръстеник</option>
								<option myTag="Трявна" value="Трявна">Трявна</option>
								<option myTag="Тутракан" value="Тутракан">Тутракан</option>
								<option myTag="Търговище" value="Търговище">Търговище</option>
								<option myTag="Угърчин" value="Угърчин">Угърчин</option>
								<option myTag="Хаджидимово" value="Хаджидимово">Хаджидимово</option>
								<option myTag="Харманли" value="Харманли">Харманли</option>
								<option myTag="Хасково" value="Хасково">Хасково</option>
								<option myTag="Хисаря" value="Хисаря">Хисаря</option>
								<option myTag="Цар Калоян" value="Цар Калоян">Цар
									Калоян</option>
								<option myTag="Царево" value="Царево">Царево</option>
								<option myTag="Чепеларе" value="Чепеларе">Чепеларе</option>
								<option myTag="Червен бряг" value="Червен бряг">Червен
									бряг</option>
								<option myTag="Черноморец" value="Черноморец">Черноморец</option>
								<option myTag="Чипровци" value="Чипровци">Чипровци</option>
								<option myTag="Чирпан" value="Чирпан">Чирпан</option>
								<option myTag="Шабла" value="Шабла">Шабла</option>
								<option myTag="Шивачево" value="Шивачево">Шивачево</option>
								<option myTag="Шипка" value="Шипка">Шипка</option>
								<option myTag="Шумен" value="Шумен">Шумен</option>
								<option myTag="Ябланица" value="Ябланица">Ябланица</option>
								<option myTag="Якоруда" value="Якоруда">Якоруда</option>
								<option value="Ямбол" myTag="Ямбол">Ямбол</option>
							</select> <input hidden id="chosenCity" name="chosenCity" />


						</div>
						<div class="formItem col2 right">
							<input type="text" id="postcode" name="postcode"
								placeholder="Пощенски код"
								value="${sessionScope.loggedUser.getAddress().getPostcode() }" />
						</div>
						<div class="clear"></div>
						<div class="formItem">
							<input type="text" id="streetAddress" name="streetAddress"
								placeholder="Адрес"
								value="${sessionScope.loggedUser.getAddress().getAddress() }" />
						</div>
						<div class="clear"></div>
						<div class="formItem col2 datepicker left">
							<input type="datetime" id="dateOfBirth" name="dateOfBirth"
								required="required" placeholder="Дата на раждане *"
								value="1996-08-17" />
						</div>
						<div class="formItem col2 right">
							<input type="text" id="education" name="education"
								placeholder="Образование"
								value="${sessionScope.loggedUser.getEducation()}" />
						</div>
						<div class="clear"></div>
						<div class="formItem col2 left">
							<input type="text" id="job" name="job"
								placeholder="Работна позиция"
								value="${sessionScope.loggedUser.getJob() }" />
						</div>

						<div class="clearH"></div>

						<div>
							<button class="button big red fixedWidth">Запиши</button>
						</div>

					</form>
					<form action="./makeAdmin" name="makeAdmin" method="post"
						novalidate="novalidate" class="stdForm">
						<c:if test="${sessionScope.loggedUser.isAdmin() eq true}">
							<div>
								<input type="text" name="makeAdmin" id="makeAdmin"
									placeholder="Имейл на потребител"><br>
							</div>
							<div>
								<button class="button red fixedWidth">Направи Админ</button>
							</div>
						</c:if>
					</form>
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
	<script>
		$(function() {
			$("#city").change(function() {
				var element = $(this).find('option:selected');
				var myTag = element.attr("myTag");

				$('#chosenCity').val(myTag);
			});
		});
	</script>

	<script type="text/javascript">
		$(document).ready(function() {

			$("#isSelect").click(function() {

				alert($('input:radio[name=sex]:checked').val());

			});

			$("#selectMale").click(function() {
				$('input:radio[name=sex]:nth(0)').attr('value', true);
				$('input:radio[name=sex]:nth(0)').attr('checked', true);
				$('input:radio[name=sex]')[0].checked = true;

			});

			$("#selectFemale").click(function() {
				$('input:radio[name=sex]:nth(0)').attr('value', false);
				$('input:radio[name=sex]:nth(0)').attr('checked', true);
				$('input:radio[name=sex]')[0].checked = true;

			});

			$("#reset").click(function() {

				$('input:radio[name=sex]').attr('checked', false);

			});

		});
	</script>
</body>
</html>