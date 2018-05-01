<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="./css/kinoarena.css">
<link rel="stylesheet" type="text/css" href="./css/profile.css">

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
							<li class="selected"> <span
									class="icon"><i class="profile"></i></span> <span class="txt">Персонална
										информация</span>
							</li>
							<li><a href="./changePassword"> <span
									class="icon"><i class="password"></i></span> <span class="txt">Промяна
										на парола</span>
							</a></li>
							<li><a href="./interests"> <span class="icon"><i
										class="popcornPack"></i></span> <span class="txt">Интереси</span>
							</a></li>
							<li><a href="./favorites"> <span class="icon"><i
										class="heart"></i></span> <span class="txt">Моите филми</span>
							</a></li>
							<li><a href="./newsletter"> <span class="icon"><i
										class="email"></i></span> <span class="txt">Абонирай се за
										нашия е-бюлетин</span>
							</a></li>
							<li><a href="./orders"> <span class="icon"><i
										class="clock"></i></span> <span class="txt">История на
										резервациите и закупените билети</span>
							</a></li>
							<li><a href="./"> <span class="icon"><i
										class="exit"></i></span> <span class="txt">Изход</span>
							</a></li>
						</ul>
					</nav>
				</aside>
				<div class="contentWrapper">
				<span class = "icon">
					
					<i class = "profile"></i>
				</span>
					<h5 class = "txt" >Персонална информация</h5>
					<img src="./images/frontend/profile-info.png"
						alt="bg image" class="bgImage">
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
					<form name="stenik_user_personal_information" method="post"
						action="/bg/profile" novalidate="novalidate" class="stdForm">
						<div class="formGroup">
							<span class="groupLabel">Пол *</span>
							<div class="formItem radio">
								<label for="stenik_user_personal_information_gender_0"
									class="required">Мъж</label><input type="radio"
									id="stenik_user_personal_information_gender_0"
									name="stenik_user_personal_information[gender]"
									required="required" value="m" checked="checked" />
							</div>
							<div class="formItem radio">
								<label for="stenik_user_personal_information_gender_1"
									class="required">Жена</label><input type="radio"
									id="stenik_user_personal_information_gender_1"
									name="stenik_user_personal_information[gender]"
									required="required" value="f" />
							</div>
						</div>
						<div class="formItem col2 left">
							<!-- MUST EDIT -->
							<!-- should take the values from the current session user -->
							<input type="text"
								id="stenik_user_personal_information_firstname"
								name="stenik_user_personal_information[firstname]"
								required="required" placeholder="Име *" value="Янислав" />
						</div>
						<div class="formItem col2 left">
							<input type="text"
								id="stenik_user_personal_information_middleName"
								name="stenik_user_personal_information[middleName]"
								required="required" placeholder="Бащино име *" value="Живков" />
						</div>
						<div class="formItem col2 right">
							<input type="text" id="stenik_user_personal_information_lastname"
								name="stenik_user_personal_information[lastname]"
								required="required" placeholder="Фамилия *" value="Митев" />
						</div>
						<div class="clear"></div>
						<div class="formItem col2 left">
							<input type="email" id="stenik_user_personal_information_email"
								name="stenik_user_personal_information[email]"
								readonly="readonly" disabled="disabled" required="required"
								placeholder="form.email" value="akrobata9608@gmail.com" />
						</div>
						<div class="formItem col2 right">
							<input type="text" id="stenik_user_personal_information_phone"
								name="stenik_user_personal_information[phone]"
								required="required" placeholder="Телефон" />
						</div>
						<div class="clear"></div>
						<div class="formItem select col2 left">
							<select id="stenik_user_personal_information_city"
									name="stenik_user_personal_information[city]" 
									placeholder="Град"><option
									value=""></option>
								<option value="София" selected="selected">София</option>
								<option value="Айтос">Айтос</option>
								<option value="Аксаково">Аксаково</option>
								<option value="Алфатар">Алфатар</option>
								<option value="Антоново">Антоново</option>
								<option value="Априлци">Априлци</option>
								<option value="Ардино">Ардино</option>
								<option value="Асеновград">Асеновград</option>
								<option value="Ахелой">Ахелой</option>
								<option value="Ахтопол">Ахтопол</option>
								<option value="Балчик">Балчик</option>
								<option value="Банкя">Банкя</option>
								<option value="Банско">Банско</option>
								<option value="Баня">Баня</option>
								<option value="Батак">Батак</option>
								<option value="Батановци">Батановци</option>
								<option value="Белене">Белене</option>
								<option value="Белица">Белица</option>
								<option value="Белово">Белово</option>
								<option value="Белоградчик">Белоградчик</option>
								<option value="Белослав">Белослав</option>
								<option value="Берковица">Берковица</option>
								<option value="Благоевград">Благоевград</option>
								<option value="Бобов дол">Бобов дол</option>
								<option value="Бобошево">Бобошево</option>
								<option value="Божурище">Божурище</option>
								<option value="Бойчиновци">Бойчиновци</option>
								<option value="Болярово">Болярово</option>
								<option value="Борово">Борово</option>
								<option value="Ботевград">Ботевград</option>
								<option value="Брацигово">Брацигово</option>
								<option value="Брегово">Брегово</option>
								<option value="Брезник">Брезник</option>
								<option value="Брезово">Брезово</option>
								<option value="Брусарци">Брусарци</option>
								<option value="Бургас">Бургас</option>
								<option value="Бухово">Бухово</option>
								<option value="Българово">Българово</option>
								<option value="Бяла">Бяла</option>
								<option value="Бяла Слатина">Бяла Слатина</option>
								<option value="Бяла черква">Бяла черква</option>
								<option value="Варна">Варна</option>
								<option value="Велики Преслав">Велики Преслав</option>
								<option value="Велико Търново">Велико Търново</option>
								<option value="Велинград">Велинград</option>
								<option value="Ветово">Ветово</option>
								<option value="Ветрен">Ветрен</option>
								<option value="Видин">Видин</option>
								<option value="Враца">Враца</option>
								<option value="Вълчедръм">Вълчедръм</option>
								<option value="Вълчи дол">Вълчи дол</option>
								<option value="Върбица">Върбица</option>
								<option value="Вършец">Вършец</option>
								<option value="Габрово">Габрово</option>
								<option value="Генерал Тошево">Генерал Тошево</option>
								<option value="Главиница">Главиница</option>
								<option value="Глоджево">Глоджево</option>
								<option value="Годеч">Годеч</option>
								<option value="Горна Оряховица">Горна Оряховица</option>
								<option value="Гоце Делчев">Гоце Делчев</option>
								<option value="Грамада">Грамада</option>
								<option value="Гулянци">Гулянци</option>
								<option value="Гурково">Гурково</option>
								<option value="Гълъбово">Гълъбово</option>
								<option value="Две могили">Две могили</option>
								<option value="Дебелец">Дебелец</option>
								<option value="Девин">Девин</option>
								<option value="Девня">Девня</option>
								<option value="Джебел">Джебел</option>
								<option value="Димитровград">Димитровград</option>
								<option value="Димово">Димово</option>
								<option value="Добринище">Добринище</option>
								<option value="Добрич">Добрич</option>
								<option value="Долна баня">Долна баня</option>
								<option value="Долна Митрополия">Долна Митрополия</option>
								<option value="Долна Оряховица">Долна Оряховица</option>
								<option value="Долни Дъбник">Долни Дъбник</option>
								<option value="Долни чифлик">Долни чифлик</option>
								<option value="Доспат">Доспат</option>
								<option value="Драгоман">Драгоман</option>
								<option value="Дряново">Дряново</option>
								<option value="Дулово">Дулово</option>
								<option value="Дунавци">Дунавци</option>
								<option value="Дупница">Дупница</option>
								<option value="Дългопол">Дългопол</option>
								<option value="Елена">Елена</option>
								<option value="Елин Пелин">Елин Пелин</option>
								<option value="Елхово">Елхово</option>
								<option value="Етрополе">Етрополе</option>
								<option value="Завет">Завет</option>
								<option value="Земен">Земен</option>
								<option value="Златарица">Златарица</option>
								<option value="Златица">Златица</option>
								<option value="Златоград">Златоград</option>
								<option value="Ивайловград">Ивайловград</option>
								<option value="Игнатиево">Игнатиево</option>
								<option value="Искър">Искър</option>
								<option value="Исперих">Исперих</option>
								<option value="Ихтиман">Ихтиман</option>
								<option value="Каблешково">Каблешково</option>
								<option value="Каварна">Каварна</option>
								<option value="Казанлък">Казанлък</option>
								<option value="Калофер">Калофер</option>
								<option value="Камено">Камено</option>
								<option value="Каолиново">Каолиново</option>
								<option value="Карлово">Карлово</option>
								<option value="Карнобат">Карнобат</option>
								<option value="Каспичан">Каспичан</option>
								<option value="Кермен">Кермен</option>
								<option value="Килифарево">Килифарево</option>
								<option value="Китен">Китен</option>
								<option value="Клисура">Клисура</option>
								<option value="Кнежа">Кнежа</option>
								<option value="Козлодуй">Козлодуй</option>
								<option value="Койнаре">Койнаре</option>
								<option value="Копривщица">Копривщица</option>
								<option value="Костандово">Костандово</option>
								<option value="Костенец">Костенец</option>
								<option value="Костинброд">Костинброд</option>
								<option value="Котел">Котел</option>
								<option value="Кочериново">Кочериново</option>
								<option value="Кресна">Кресна</option>
								<option value="Криводол">Криводол</option>
								<option value="Кричим">Кричим</option>
								<option value="Крумовград">Крумовград</option>
								<option value="Крън">Крън</option>
								<option value="Кубрат">Кубрат</option>
								<option value="Куклен">Куклен</option>
								<option value="Кула">Кула</option>
								<option value="Кърджали">Кърджали</option>
								<option value="Кюстендил">Кюстендил</option>
								<option value="Левски">Левски</option>
								<option value="Летница">Летница</option>
								<option value="Ловеч">Ловеч</option>
								<option value="Лозница">Лозница</option>
								<option value="Лом">Лом</option>
								<option value="Луковит">Луковит</option>
								<option value="Лъки">Лъки</option>
								<option value="Любимец">Любимец</option>
								<option value="Лясковец">Лясковец</option>
								<option value="Мадан">Мадан</option>
								<option value="Маджарово">Маджарово</option>
								<option value="Малко Търново">Малко Търново</option>
								<option value="Мартен">Мартен</option>
								<option value="Мездра">Мездра</option>
								<option value="Мелник">Мелник</option>
								<option value="Меричлери">Меричлери</option>
								<option value="Мизия">Мизия</option>
								<option value="Момин проход">Момин проход</option>
								<option value="Момчилград">Момчилград</option>
								<option value="Монтана">Монтана</option>
								<option value="Мъглиж">Мъглиж</option>
								<option value="Неделино">Неделино</option>
								<option value="Несебър">Несебър</option>
								<option value="Николаево">Николаево</option>
								<option value="Никопол">Никопол</option>
								<option value="Нова Загора">Нова Загора</option>
								<option value="Нови Искър">Нови Искър</option>
								<option value="Нови пазар">Нови пазар</option>
								<option value="Обзор">Обзор</option>
								<option value="Омуртаг">Омуртаг</option>
								<option value="Опака">Опака</option>
								<option value="Оряхово">Оряхово</option>
								<option value="Павел баня">Павел баня</option>
								<option value="Павликени">Павликени</option>
								<option value="Пазарджик">Пазарджик</option>
								<option value="Панагюрище">Панагюрище</option>
								<option value="Перник">Перник</option>
								<option value="Перущица">Перущица</option>
								<option value="Петрич">Петрич</option>
								<option value="Пещера">Пещера</option>
								<option value="Пирдоп">Пирдоп</option>
								<option value="Плачковци">Плачковци</option>
								<option value="Плевен">Плевен</option>
								<option value="Плиска">Плиска</option>
								<option value="Пловдив">Пловдив</option>
								<option value="Полски Тръмбеш">Полски Тръмбеш</option>
								<option value="Поморие">Поморие</option>
								<option value="Попово">Попово</option>
								<option value="Пордим">Пордим</option>
								<option value="Правец">Правец</option>
								<option value="Приморско">Приморско</option>
								<option value="Провадия">Провадия</option>
								<option value="Първомай">Първомай</option>
								<option value="Раднево">Раднево</option>
								<option value="Радомир">Радомир</option>
								<option value="Разград">Разград</option>
								<option value="Разлог">Разлог</option>
								<option value="Ракитово">Ракитово</option>
								<option value="Раковски">Раковски</option>
								<option value="Рила">Рила</option>
								<option value="Роман">Роман</option>
								<option value="Рудозем">Рудозем</option>
								<option value="Русе">Русе</option>
								<option value="Садово">Садово</option>
								<option value="Самоков">Самоков</option>
								<option value="Сандански">Сандански</option>
								<option value="Сапарева баня">Сапарева баня</option>
								<option value="Свети Влас">Свети Влас</option>
								<option value="Свиленград">Свиленград</option>
								<option value="Свищов">Свищов</option>
								<option value="Своге">Своге</option>
								<option value="Севлиево">Севлиево</option>
								<option value="Сеново">Сеново</option>
								<option value="Септември">Септември</option>
								<option value="Силистра">Силистра</option>
								<option value="Симеоновград">Симеоновград</option>
								<option value="Симитли">Симитли</option>
								<option value="Славяново">Славяново</option>
								<option value="Сливен">Сливен</option>
								<option value="Сливница">Сливница</option>
								<option value="Сливо поле">Сливо поле</option>
								<option value="Смолян">Смолян</option>
								<option value="Смядово">Смядово</option>
								<option value="Созопол">Созопол</option>
								<option value="Сопот">Сопот</option>
								<option value="Средец">Средец</option>
								<option value="Стамболийски">Стамболийски</option>
								<option value="Стара Загора">Стара Загора</option>
								<option value="Стражица">Стражица</option>
								<option value="Стралджа">Стралджа</option>
								<option value="Стрелча">Стрелча</option>
								<option value="Суворово">Суворово</option>
								<option value="Сунгурларе">Сунгурларе</option>
								<option value="Сухиндол">Сухиндол</option>
								<option value="Съединение">Съединение</option>
								<option value="Сърница">Сърница</option>
								<option value="Твърдица">Твърдица</option>
								<option value="Тервел">Тервел</option>
								<option value="Тетевен">Тетевен</option>
								<option value="Тополовград">Тополовград</option>
								<option value="Троян">Троян</option>
								<option value="Трън">Трън</option>
								<option value="Тръстеник">Тръстеник</option>
								<option value="Трявна">Трявна</option>
								<option value="Тутракан">Тутракан</option>
								<option value="Търговище">Търговище</option>
								<option value="Угърчин">Угърчин</option>
								<option value="Хаджидимово">Хаджидимово</option>
								<option value="Харманли">Харманли</option>
								<option value="Хасково">Хасково</option>
								<option value="Хисаря">Хисаря</option>
								<option value="Цар Калоян">Цар Калоян</option>
								<option value="Царево">Царево</option>
								<option value="Чепеларе">Чепеларе</option>
								<option value="Червен бряг">Червен бряг</option>
								<option value="Черноморец">Черноморец</option>
								<option value="Чипровци">Чипровци</option>
								<option value="Чирпан">Чирпан</option>
								<option value="Шабла">Шабла</option>
								<option value="Шивачево">Шивачево</option>
								<option value="Шипка">Шипка</option>
								<option value="Шумен">Шумен</option>
								<option value="Ябланица">Ябланица</option>
								<option value="Якоруда">Якоруда</option>
								<option value="Ямбол">Ямбол</option></select>
						</div>
						<div class="formItem col2 right">
							<input type="text"
								id="stenik_user_personal_information_post_code"
								name="stenik_user_personal_information[post_code]"
								placeholder="Пощенски код" />
						</div>
						<div class="clear"></div>
						<div class="formItem">
							<input type="text" id="stenik_user_personal_information_address"
								name="stenik_user_personal_information[address]"
								placeholder="Адрес" />
						</div>
						<div class="clear"></div>
						<div class="formItem col2 datepicker left">
							<input type="datetime"
								id="stenik_user_personal_information_dateOfBirth"
								name="stenik_user_personal_information[dateOfBirth]"
								required="required" placeholder="Дата на раждане *"
								value="1996-08-17T00:00:00+03:00" />
						</div>
						<div class="formItem col2 right">
							<input type="text"
								id="stenik_user_personal_information_education"
								name="stenik_user_personal_information[education]"
								placeholder="Образование" />
						</div>
						<div class="clear"></div>
						<div class="formItem col2 left">
							<input type="text"
								id="stenik_user_personal_information_workingPosition"
								name="stenik_user_personal_information[workingPosition]"
								placeholder="Работна позиция" />
						</div>
						<div class="formItem col2 right">
							<input type="text"
								id="stenik_user_personal_information_facebookProfile"
								name="stenik_user_personal_information[facebookProfile]"
								placeholder="Фейсбук профил" />
						</div>
						<div class="clearH"></div>
						<div>
							<button class="button big red fixedWidth">Запиши</button>
						</div>
						<input type="hidden" id="stenik_user_personal_information__token"
							name="stenik_user_personal_information[_token]"
							value="Vmb1CFR5Q8OgV9Yjow17KxaoyHodZDnHKoPmlEHt5vI" />
					</form>
				</div>
				<!-- end of .contentWrapper -->
			</div>
			<!-- end of .profilePanel -->
		</div>
		</main>
		<!-- end of #main -->
		<footer id="footer">
			<div class="wrapper">
				<div class="top">
					<nav class="footerMenu">
						<ul>


							<li><a href="/bg/za-nas">За нас</a></li>


							<li><a href="/bg/reklama">Реклама</a></li>


							<li><a href="/bg/obshti-uslovia">Общи условия</a></li>


							<li><a href="/bg/kontakti">Контакти</a></li>


							<li><a href="/bg/career">Кариери</a></li>



							<li><a href="/bg/sitemap">Карта на сайта</a></li>
						</ul>

					</nav>
					<div class="payments">
						<img src="./images/frontend/payments.png" alt="Начини на плащане">
					</div>
				</div>
				<div class="middle">
					<div class="newsLetter">
						<h5 class="title">Абонирай се за нашия е-бюлетин</h5>
						<div class="infoTooltips">
							<div class="item white">
								<p>Актуална информация за филми и събития</p>
							</div>
							<div class="item black">
								<p>Промоции, игри, томболи, награди</p>
							</div>
							<div class="hideOnDesktop responsiveInfo">
								<p>Актуална информация за филми и събития Промоции, игри,
									томболи, награди</p>
							</div>
						</div>
						<form action="" class="stdForm">
							<div class="formItem transp small">
								<input id="newsletter_email" type="text" value=""
									placeholder="Вашият e-mail...">
							</div>
							<button id="newsletter_button"
								class="button small red fixedWidth">Абонамент</button>
						</form>
					</div>
					<div class="likeBox">
						<div class="fb-page"
							data-href="https://www.facebook.com/KinoArena" data-width="580"
							data-height="224" data-hide-cover="false"
							data-show-facepile="true" data-show-posts="false">
							<div class="fb-xfbml-parse-ignore">
								<blockquote cite="https://www.facebook.com/KinoArena">
									<a href="https://www.facebook.com/KinoArena">Kino Arena</a>
								</blockquote>
							</div>
						</div>
					</div>
				</div>
				<div class="bottom">
					<div class="socialLinks">
						<a href="http://facebook.com/KinoArena" class="item"><i
							class="facebook"></i></a> <a
							href="https://www.pinterest.com/kinoarena" class="item"><i
							class="pinterest"></i></a> <a href="https://twitter.com/kinoarena"
							class="item"><i class="twitter"></i></a>
					</div>
					<div class="terms">© 2018 Kino Arena | Всички права запазени</div>
					<div class="credits">
						<div class = "terms"> Александър Митев & Янислав Митев</div>
					</div>
				</div>
			</div>
		</footer>
		<!-- end of #footer -->
		<div id="scroll_to_top" class="scrollToTop">
			<i class="circleUp"></i>
		</div>

		<div id="fb-root"></div>
	</div>

	<script type="text/javascript">
		var item = "./images/frontend/bg-items/bg-assets-15years.json";
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

	<!-- Google Code for Remarketing Tag -->

	<script type="text/javascript">
		/* <![CDATA[ */
		var google_conversion_id = 855321203;
		var google_custom_params = window.google_tag_params;
		var google_remarketing_only = true;
		/* ]]> */
	</script>

	<script type="text/javascript"
		src="//www.googleadservices.com/pagead/conversion.js">
		
	</script>

	<noscript>

		<div style="display: inline;">

			<img height="1" width="1" style="border-style: none;" alt=""
				src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/855321203/?guid=ON&amp;script=0" />

		</div>

	</noscript>


</body>
</html>