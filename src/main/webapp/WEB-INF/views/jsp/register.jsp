<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="./css/kinoarena.css">
</head>
<body>
	<div>
		<div id="register_popup" class="popup big">
			<h4 class="title">Нова регистрация</h4>
			<div class="col2 left padding formCol">

				<!-- SOCIAL LOGIN -->
				<!-- <div class="socialLogin">
					<a href="https://www.kinoarena.com/connect/twitter" class="item"><i
						class="twitter big"></i></a> <a
						href="https://www.kinoarena.com/connect/facebook" class="item"><i
						class="facebook big"></i></a> <a
						href="https://www.kinoarena.com/connect/gplus" class="item"><i
						class="gplus big"></i></a>
				</div>
				<div class="txtSeparator">
					<span class="txt">или</span>
				</div> -->
				<!-- SOCIAL LOGIN -->
				
				<p>
					<em>При <strong>КОРЕКТНО ПОПЪЛВАНЕ</strong> на полетата
						получаваш - 1. Бърза регистрация в томболи и промоции, 2. По-добро
						обслужване, 3. Предпочитана информация
					</em>
				</p>
				<div class="clear"></div>
				<p class="requiredInfo">
					<span class="red">*</span> Задължителни полета
				</p>
				<div class="registerForm">
					<div id="register_message"></div>
					<form name="stenik_user_registration" method="post"
						action="/bg/register" novalidate="novalidate" class="stdForm"
						id="register_form">
						<div class="formItem">
							<input type="text" id="stenik_user_registration_firstname"
								name="stenik_user_registration[firstname]" required="required"
								placeholder="Име *">
						</div>
						<div class="formItem">
							<input type="text" id="stenik_user_registration_middleName"
								name="stenik_user_registration[middleName]" required="required"
								placeholder="Бащино име *">
						</div>
						<div class="formItem">
							<input type="text" id="stenik_user_registration_lastname"
								name="stenik_user_registration[lastname]" required="required"
								placeholder="Фамилия *">
						</div>
						<div class="formItem">
							<input type="email" id="stenik_user_registration_email"
								name="stenik_user_registration[email]" required="required"
								placeholder="E-mail *">
						</div>
						<div class="formItem">
							<input type="password"
								id="stenik_user_registration_plainPassword_first"
								name="stenik_user_registration[plainPassword][first]"
								required="required" placeholder="Парола *">
						</div>
						<div class="formItem">
							<input type="password"
								id="stenik_user_registration_plainPassword_second"
								name="stenik_user_registration[plainPassword][second]"
								required="required" placeholder="Повторете паролата *">
						</div>
						<div class="formGroup">
							<span class="groupLabel">Пол *</span>
							<div class="formItem radio big">
								<div class="stenik-radio">
									<label for="stenik_user_registration_gender_0" class="required"><div
											class="labelContent">Мъж</div></label>
									<div class="inputWrapper">
										<input type="radio" id="stenik_user_registration_gender_0"
											name="stenik_user_registration[gender]" required="required"
											value="m">
									</div>
								</div>
							</div>
							<div class="formItem radio big">
								<div class="stenik-radio">
									<label for="stenik_user_registration_gender_1" class="required"><div
											class="labelContent">Жена</div></label>
									<div class="inputWrapper">
										<input type="radio" id="stenik_user_registration_gender_1"
											name="stenik_user_registration[gender]" required="required"
											value="f">
									</div>
								</div>
							</div>
						</div>
						<div class="formItem datepicker">
							<input type="datetime" id="stenik_user_registration_dateOfBirth"
								name="stenik_user_registration[dateOfBirth]" required="required"
								placeholder="Дата на раждане *">
						</div>
						<div class="formItem select">
							<div class="stenikSelect select_3">
								<div class="selectedHolder">София</div>
								<div class="dropdown">
									<span class="option selected " data-option="option_3_0">София</span><span
										class="option  " data-option="option_3_1">Айтос</span><span
										class="option  " data-option="option_3_2">Аксаково</span><span
										class="option  " data-option="option_3_3">Алфатар</span><span
										class="option  " data-option="option_3_4">Антоново</span><span
										class="option  " data-option="option_3_5">Априлци</span><span
										class="option  " data-option="option_3_6">Ардино</span><span
										class="option  " data-option="option_3_7">Асеновград</span><span
										class="option  " data-option="option_3_8">Ахелой</span><span
										class="option  " data-option="option_3_9">Ахтопол</span><span
										class="option  " data-option="option_3_10">Балчик</span><span
										class="option  " data-option="option_3_11">Банкя</span><span
										class="option  " data-option="option_3_12">Банско</span><span
										class="option  " data-option="option_3_13">Баня</span><span
										class="option  " data-option="option_3_14">Батак</span><span
										class="option  " data-option="option_3_15">Батановци</span><span
										class="option  " data-option="option_3_16">Белене</span><span
										class="option  " data-option="option_3_17">Белица</span><span
										class="option  " data-option="option_3_18">Белово</span><span
										class="option  " data-option="option_3_19">Белоградчик</span><span
										class="option  " data-option="option_3_20">Белослав</span><span
										class="option  " data-option="option_3_21">Берковица</span><span
										class="option  " data-option="option_3_22">Благоевград</span><span
										class="option  " data-option="option_3_23">Бобов дол</span><span
										class="option  " data-option="option_3_24">Бобошево</span><span
										class="option  " data-option="option_3_25">Божурище</span><span
										class="option  " data-option="option_3_26">Бойчиновци</span><span
										class="option  " data-option="option_3_27">Болярово</span><span
										class="option  " data-option="option_3_28">Борово</span><span
										class="option  " data-option="option_3_29">Ботевград</span><span
										class="option  " data-option="option_3_30">Брацигово</span><span
										class="option  " data-option="option_3_31">Брегово</span><span
										class="option  " data-option="option_3_32">Брезник</span><span
										class="option  " data-option="option_3_33">Брезово</span><span
										class="option  " data-option="option_3_34">Брусарци</span><span
										class="option  " data-option="option_3_35">Бургас</span><span
										class="option  " data-option="option_3_36">Бухово</span><span
										class="option  " data-option="option_3_37">Българово</span><span
										class="option  " data-option="option_3_38">Бяла</span><span
										class="option  " data-option="option_3_39">Бяла Слатина</span><span
										class="option  " data-option="option_3_40">Бяла черква</span><span
										class="option  " data-option="option_3_41">Варна</span><span
										class="option  " data-option="option_3_42">Велики
										Преслав</span><span class="option  " data-option="option_3_43">Велико
										Търново</span><span class="option  " data-option="option_3_44">Велинград</span><span
										class="option  " data-option="option_3_45">Ветово</span><span
										class="option  " data-option="option_3_46">Ветрен</span><span
										class="option  " data-option="option_3_47">Видин</span><span
										class="option  " data-option="option_3_48">Враца</span><span
										class="option  " data-option="option_3_49">Вълчедръм</span><span
										class="option  " data-option="option_3_50">Вълчи дол</span><span
										class="option  " data-option="option_3_51">Върбица</span><span
										class="option  " data-option="option_3_52">Вършец</span><span
										class="option  " data-option="option_3_53">Габрово</span><span
										class="option  " data-option="option_3_54">Генерал
										Тошево</span><span class="option  " data-option="option_3_55">Главиница</span><span
										class="option  " data-option="option_3_56">Глоджево</span><span
										class="option  " data-option="option_3_57">Годеч</span><span
										class="option  " data-option="option_3_58">Горна
										Оряховица</span><span class="option  " data-option="option_3_59">Гоце
										Делчев</span><span class="option  " data-option="option_3_60">Грамада</span><span
										class="option  " data-option="option_3_61">Гулянци</span><span
										class="option  " data-option="option_3_62">Гурково</span><span
										class="option  " data-option="option_3_63">Гълъбово</span><span
										class="option  " data-option="option_3_64">Две могили</span><span
										class="option  " data-option="option_3_65">Дебелец</span><span
										class="option  " data-option="option_3_66">Девин</span><span
										class="option  " data-option="option_3_67">Девня</span><span
										class="option  " data-option="option_3_68">Джебел</span><span
										class="option  " data-option="option_3_69">Димитровград</span><span
										class="option  " data-option="option_3_70">Димово</span><span
										class="option  " data-option="option_3_71">Добринище</span><span
										class="option  " data-option="option_3_72">Добрич</span><span
										class="option  " data-option="option_3_73">Долна баня</span><span
										class="option  " data-option="option_3_74">Долна
										Митрополия</span><span class="option  " data-option="option_3_75">Долна
										Оряховица</span><span class="option  " data-option="option_3_76">Долни
										Дъбник</span><span class="option  " data-option="option_3_77">Долни
										чифлик</span><span class="option  " data-option="option_3_78">Доспат</span><span
										class="option  " data-option="option_3_79">Драгоман</span><span
										class="option  " data-option="option_3_80">Дряново</span><span
										class="option  " data-option="option_3_81">Дулово</span><span
										class="option  " data-option="option_3_82">Дунавци</span><span
										class="option  " data-option="option_3_83">Дупница</span><span
										class="option  " data-option="option_3_84">Дългопол</span><span
										class="option  " data-option="option_3_85">Елена</span><span
										class="option  " data-option="option_3_86">Елин Пелин</span><span
										class="option  " data-option="option_3_87">Елхово</span><span
										class="option  " data-option="option_3_88">Етрополе</span><span
										class="option  " data-option="option_3_89">Завет</span><span
										class="option  " data-option="option_3_90">Земен</span><span
										class="option  " data-option="option_3_91">Златарица</span><span
										class="option  " data-option="option_3_92">Златица</span><span
										class="option  " data-option="option_3_93">Златоград</span><span
										class="option  " data-option="option_3_94">Ивайловград</span><span
										class="option  " data-option="option_3_95">Игнатиево</span><span
										class="option  " data-option="option_3_96">Искър</span><span
										class="option  " data-option="option_3_97">Исперих</span><span
										class="option  " data-option="option_3_98">Ихтиман</span><span
										class="option  " data-option="option_3_99">Каблешково</span><span
										class="option  " data-option="option_3_100">Каварна</span><span
										class="option  " data-option="option_3_101">Казанлък</span><span
										class="option  " data-option="option_3_102">Калофер</span><span
										class="option  " data-option="option_3_103">Камено</span><span
										class="option  " data-option="option_3_104">Каолиново</span><span
										class="option  " data-option="option_3_105">Карлово</span><span
										class="option  " data-option="option_3_106">Карнобат</span><span
										class="option  " data-option="option_3_107">Каспичан</span><span
										class="option  " data-option="option_3_108">Кермен</span><span
										class="option  " data-option="option_3_109">Килифарево</span><span
										class="option  " data-option="option_3_110">Китен</span><span
										class="option  " data-option="option_3_111">Клисура</span><span
										class="option  " data-option="option_3_112">Кнежа</span><span
										class="option  " data-option="option_3_113">Козлодуй</span><span
										class="option  " data-option="option_3_114">Койнаре</span><span
										class="option  " data-option="option_3_115">Копривщица</span><span
										class="option  " data-option="option_3_116">Костандово</span><span
										class="option  " data-option="option_3_117">Костенец</span><span
										class="option  " data-option="option_3_118">Костинброд</span><span
										class="option  " data-option="option_3_119">Котел</span><span
										class="option  " data-option="option_3_120">Кочериново</span><span
										class="option  " data-option="option_3_121">Кресна</span><span
										class="option  " data-option="option_3_122">Криводол</span><span
										class="option  " data-option="option_3_123">Кричим</span><span
										class="option  " data-option="option_3_124">Крумовград</span><span
										class="option  " data-option="option_3_125">Крън</span><span
										class="option  " data-option="option_3_126">Кубрат</span><span
										class="option  " data-option="option_3_127">Куклен</span><span
										class="option  " data-option="option_3_128">Кула</span><span
										class="option  " data-option="option_3_129">Кърджали</span><span
										class="option  " data-option="option_3_130">Кюстендил</span><span
										class="option  " data-option="option_3_131">Левски</span><span
										class="option  " data-option="option_3_132">Летница</span><span
										class="option  " data-option="option_3_133">Ловеч</span><span
										class="option  " data-option="option_3_134">Лозница</span><span
										class="option  " data-option="option_3_135">Лом</span><span
										class="option  " data-option="option_3_136">Луковит</span><span
										class="option  " data-option="option_3_137">Лъки</span><span
										class="option  " data-option="option_3_138">Любимец</span><span
										class="option  " data-option="option_3_139">Лясковец</span><span
										class="option  " data-option="option_3_140">Мадан</span><span
										class="option  " data-option="option_3_141">Маджарово</span><span
										class="option  " data-option="option_3_142">Малко
										Търново</span><span class="option  " data-option="option_3_143">Мартен</span><span
										class="option  " data-option="option_3_144">Мездра</span><span
										class="option  " data-option="option_3_145">Мелник</span><span
										class="option  " data-option="option_3_146">Меричлери</span><span
										class="option  " data-option="option_3_147">Мизия</span><span
										class="option  " data-option="option_3_148">Момин
										проход</span><span class="option  " data-option="option_3_149">Момчилград</span><span
										class="option  " data-option="option_3_150">Монтана</span><span
										class="option  " data-option="option_3_151">Мъглиж</span><span
										class="option  " data-option="option_3_152">Неделино</span><span
										class="option  " data-option="option_3_153">Несебър</span><span
										class="option  " data-option="option_3_154">Николаево</span><span
										class="option  " data-option="option_3_155">Никопол</span><span
										class="option  " data-option="option_3_156">Нова Загора</span><span
										class="option  " data-option="option_3_157">Нови Искър</span><span
										class="option  " data-option="option_3_158">Нови пазар</span><span
										class="option  " data-option="option_3_159">Обзор</span><span
										class="option  " data-option="option_3_160">Омуртаг</span><span
										class="option  " data-option="option_3_161">Опака</span><span
										class="option  " data-option="option_3_162">Оряхово</span><span
										class="option  " data-option="option_3_163">Павел баня</span><span
										class="option  " data-option="option_3_164">Павликени</span><span
										class="option  " data-option="option_3_165">Пазарджик</span><span
										class="option  " data-option="option_3_166">Панагюрище</span><span
										class="option  " data-option="option_3_167">Перник</span><span
										class="option  " data-option="option_3_168">Перущица</span><span
										class="option  " data-option="option_3_169">Петрич</span><span
										class="option  " data-option="option_3_170">Пещера</span><span
										class="option  " data-option="option_3_171">Пирдоп</span><span
										class="option  " data-option="option_3_172">Плачковци</span><span
										class="option  " data-option="option_3_173">Плевен</span><span
										class="option  " data-option="option_3_174">Плиска</span><span
										class="option  " data-option="option_3_175">Пловдив</span><span
										class="option  " data-option="option_3_176">Полски
										Тръмбеш</span><span class="option  " data-option="option_3_177">Поморие</span><span
										class="option  " data-option="option_3_178">Попово</span><span
										class="option  " data-option="option_3_179">Пордим</span><span
										class="option  " data-option="option_3_180">Правец</span><span
										class="option  " data-option="option_3_181">Приморско</span><span
										class="option  " data-option="option_3_182">Провадия</span><span
										class="option  " data-option="option_3_183">Първомай</span><span
										class="option  " data-option="option_3_184">Раднево</span><span
										class="option  " data-option="option_3_185">Радомир</span><span
										class="option  " data-option="option_3_186">Разград</span><span
										class="option  " data-option="option_3_187">Разлог</span><span
										class="option  " data-option="option_3_188">Ракитово</span><span
										class="option  " data-option="option_3_189">Раковски</span><span
										class="option  " data-option="option_3_190">Рила</span><span
										class="option  " data-option="option_3_191">Роман</span><span
										class="option  " data-option="option_3_192">Рудозем</span><span
										class="option  " data-option="option_3_193">Русе</span><span
										class="option  " data-option="option_3_194">Садово</span><span
										class="option  " data-option="option_3_195">Самоков</span><span
										class="option  " data-option="option_3_196">Сандански</span><span
										class="option  " data-option="option_3_197">Сапарева
										баня</span><span class="option  " data-option="option_3_198">Свети
										Влас</span><span class="option  " data-option="option_3_199">Свиленград</span><span
										class="option  " data-option="option_3_200">Свищов</span><span
										class="option  " data-option="option_3_201">Своге</span><span
										class="option  " data-option="option_3_202">Севлиево</span><span
										class="option  " data-option="option_3_203">Сеново</span><span
										class="option  " data-option="option_3_204">Септември</span><span
										class="option  " data-option="option_3_205">Силистра</span><span
										class="option  " data-option="option_3_206">Симеоновград</span><span
										class="option  " data-option="option_3_207">Симитли</span><span
										class="option  " data-option="option_3_208">Славяново</span><span
										class="option  " data-option="option_3_209">Сливен</span><span
										class="option  " data-option="option_3_210">Сливница</span><span
										class="option  " data-option="option_3_211">Сливо поле</span><span
										class="option  " data-option="option_3_212">Смолян</span><span
										class="option  " data-option="option_3_213">Смядово</span><span
										class="option  " data-option="option_3_214">Созопол</span><span
										class="option  " data-option="option_3_215">Сопот</span><span
										class="option  " data-option="option_3_216">Средец</span><span
										class="option  " data-option="option_3_217">Стамболийски</span><span
										class="option  " data-option="option_3_218">Стара
										Загора</span><span class="option  " data-option="option_3_219">Стражица</span><span
										class="option  " data-option="option_3_220">Стралджа</span><span
										class="option  " data-option="option_3_221">Стрелча</span><span
										class="option  " data-option="option_3_222">Суворово</span><span
										class="option  " data-option="option_3_223">Сунгурларе</span><span
										class="option  " data-option="option_3_224">Сухиндол</span><span
										class="option  " data-option="option_3_225">Съединение</span><span
										class="option  " data-option="option_3_226">Сърница</span><span
										class="option  " data-option="option_3_227">Твърдица</span><span
										class="option  " data-option="option_3_228">Тервел</span><span
										class="option  " data-option="option_3_229">Тетевен</span><span
										class="option  " data-option="option_3_230">Тополовград</span><span
										class="option  " data-option="option_3_231">Троян</span><span
										class="option  " data-option="option_3_232">Трън</span><span
										class="option  " data-option="option_3_233">Тръстеник</span><span
										class="option  " data-option="option_3_234">Трявна</span><span
										class="option  " data-option="option_3_235">Тутракан</span><span
										class="option  " data-option="option_3_236">Търговище</span><span
										class="option  " data-option="option_3_237">Угърчин</span><span
										class="option  " data-option="option_3_238">Хаджидимово</span><span
										class="option  " data-option="option_3_239">Харманли</span><span
										class="option  " data-option="option_3_240">Хасково</span><span
										class="option  " data-option="option_3_241">Хисаря</span><span
										class="option  " data-option="option_3_242">Цар Калоян</span><span
										class="option  " data-option="option_3_243">Царево</span><span
										class="option  " data-option="option_3_244">Чепеларе</span><span
										class="option  " data-option="option_3_245">Червен бряг</span><span
										class="option  " data-option="option_3_246">Черноморец</span><span
										class="option  " data-option="option_3_247">Чипровци</span><span
										class="option  " data-option="option_3_248">Чирпан</span><span
										class="option  " data-option="option_3_249">Шабла</span><span
										class="option  " data-option="option_3_250">Шивачево</span><span
										class="option  " data-option="option_3_251">Шипка</span><span
										class="option  " data-option="option_3_252">Шумен</span><span
										class="option  " data-option="option_3_253">Ябланица</span><span
										class="option  " data-option="option_3_254">Якоруда</span><span
										class="option  " data-option="option_3_255">Ямбол</span>
								</div>
							</div>
							<div class="stenikHiddenSelect" style="display: none;">
								<select id="stenik_user_registration_city"
									name="stenik_user_registration[city]" placeholder="Град"><option
										value="София" data-option="option_3_0">София</option>
									<option value="Айтос" data-option="option_3_1">Айтос</option>
									<option value="Аксаково" data-option="option_3_2">Аксаково</option>
									<option value="Алфатар" data-option="option_3_3">Алфатар</option>
									<option value="Антоново" data-option="option_3_4">Антоново</option>
									<option value="Априлци" data-option="option_3_5">Априлци</option>
									<option value="Ардино" data-option="option_3_6">Ардино</option>
									<option value="Асеновград" data-option="option_3_7">Асеновград</option>
									<option value="Ахелой" data-option="option_3_8">Ахелой</option>
									<option value="Ахтопол" data-option="option_3_9">Ахтопол</option>
									<option value="Балчик" data-option="option_3_10">Балчик</option>
									<option value="Банкя" data-option="option_3_11">Банкя</option>
									<option value="Банско" data-option="option_3_12">Банско</option>
									<option value="Баня" data-option="option_3_13">Баня</option>
									<option value="Батак" data-option="option_3_14">Батак</option>
									<option value="Батановци" data-option="option_3_15">Батановци</option>
									<option value="Белене" data-option="option_3_16">Белене</option>
									<option value="Белица" data-option="option_3_17">Белица</option>
									<option value="Белово" data-option="option_3_18">Белово</option>
									<option value="Белоградчик" data-option="option_3_19">Белоградчик</option>
									<option value="Белослав" data-option="option_3_20">Белослав</option>
									<option value="Берковица" data-option="option_3_21">Берковица</option>
									<option value="Благоевград" data-option="option_3_22">Благоевград</option>
									<option value="Бобов дол" data-option="option_3_23">Бобов
										дол</option>
									<option value="Бобошево" data-option="option_3_24">Бобошево</option>
									<option value="Божурище" data-option="option_3_25">Божурище</option>
									<option value="Бойчиновци" data-option="option_3_26">Бойчиновци</option>
									<option value="Болярово" data-option="option_3_27">Болярово</option>
									<option value="Борово" data-option="option_3_28">Борово</option>
									<option value="Ботевград" data-option="option_3_29">Ботевград</option>
									<option value="Брацигово" data-option="option_3_30">Брацигово</option>
									<option value="Брегово" data-option="option_3_31">Брегово</option>
									<option value="Брезник" data-option="option_3_32">Брезник</option>
									<option value="Брезово" data-option="option_3_33">Брезово</option>
									<option value="Брусарци" data-option="option_3_34">Брусарци</option>
									<option value="Бургас" data-option="option_3_35">Бургас</option>
									<option value="Бухово" data-option="option_3_36">Бухово</option>
									<option value="Българово" data-option="option_3_37">Българово</option>
									<option value="Бяла" data-option="option_3_38">Бяла</option>
									<option value="Бяла Слатина" data-option="option_3_39">Бяла
										Слатина</option>
									<option value="Бяла черква" data-option="option_3_40">Бяла
										черква</option>
									<option value="Варна" data-option="option_3_41">Варна</option>
									<option value="Велики Преслав" data-option="option_3_42">Велики
										Преслав</option>
									<option value="Велико Търново" data-option="option_3_43">Велико
										Търново</option>
									<option value="Велинград" data-option="option_3_44">Велинград</option>
									<option value="Ветово" data-option="option_3_45">Ветово</option>
									<option value="Ветрен" data-option="option_3_46">Ветрен</option>
									<option value="Видин" data-option="option_3_47">Видин</option>
									<option value="Враца" data-option="option_3_48">Враца</option>
									<option value="Вълчедръм" data-option="option_3_49">Вълчедръм</option>
									<option value="Вълчи дол" data-option="option_3_50">Вълчи
										дол</option>
									<option value="Върбица" data-option="option_3_51">Върбица</option>
									<option value="Вършец" data-option="option_3_52">Вършец</option>
									<option value="Габрово" data-option="option_3_53">Габрово</option>
									<option value="Генерал Тошево" data-option="option_3_54">Генерал
										Тошево</option>
									<option value="Главиница" data-option="option_3_55">Главиница</option>
									<option value="Глоджево" data-option="option_3_56">Глоджево</option>
									<option value="Годеч" data-option="option_3_57">Годеч</option>
									<option value="Горна Оряховица" data-option="option_3_58">Горна
										Оряховица</option>
									<option value="Гоце Делчев" data-option="option_3_59">Гоце
										Делчев</option>
									<option value="Грамада" data-option="option_3_60">Грамада</option>
									<option value="Гулянци" data-option="option_3_61">Гулянци</option>
									<option value="Гурково" data-option="option_3_62">Гурково</option>
									<option value="Гълъбово" data-option="option_3_63">Гълъбово</option>
									<option value="Две могили" data-option="option_3_64">Две
										могили</option>
									<option value="Дебелец" data-option="option_3_65">Дебелец</option>
									<option value="Девин" data-option="option_3_66">Девин</option>
									<option value="Девня" data-option="option_3_67">Девня</option>
									<option value="Джебел" data-option="option_3_68">Джебел</option>
									<option value="Димитровград" data-option="option_3_69">Димитровград</option>
									<option value="Димово" data-option="option_3_70">Димово</option>
									<option value="Добринище" data-option="option_3_71">Добринище</option>
									<option value="Добрич" data-option="option_3_72">Добрич</option>
									<option value="Долна баня" data-option="option_3_73">Долна
										баня</option>
									<option value="Долна Митрополия" data-option="option_3_74">Долна
										Митрополия</option>
									<option value="Долна Оряховица" data-option="option_3_75">Долна
										Оряховица</option>
									<option value="Долни Дъбник" data-option="option_3_76">Долни
										Дъбник</option>
									<option value="Долни чифлик" data-option="option_3_77">Долни
										чифлик</option>
									<option value="Доспат" data-option="option_3_78">Доспат</option>
									<option value="Драгоман" data-option="option_3_79">Драгоман</option>
									<option value="Дряново" data-option="option_3_80">Дряново</option>
									<option value="Дулово" data-option="option_3_81">Дулово</option>
									<option value="Дунавци" data-option="option_3_82">Дунавци</option>
									<option value="Дупница" data-option="option_3_83">Дупница</option>
									<option value="Дългопол" data-option="option_3_84">Дългопол</option>
									<option value="Елена" data-option="option_3_85">Елена</option>
									<option value="Елин Пелин" data-option="option_3_86">Елин
										Пелин</option>
									<option value="Елхово" data-option="option_3_87">Елхово</option>
									<option value="Етрополе" data-option="option_3_88">Етрополе</option>
									<option value="Завет" data-option="option_3_89">Завет</option>
									<option value="Земен" data-option="option_3_90">Земен</option>
									<option value="Златарица" data-option="option_3_91">Златарица</option>
									<option value="Златица" data-option="option_3_92">Златица</option>
									<option value="Златоград" data-option="option_3_93">Златоград</option>
									<option value="Ивайловград" data-option="option_3_94">Ивайловград</option>
									<option value="Игнатиево" data-option="option_3_95">Игнатиево</option>
									<option value="Искър" data-option="option_3_96">Искър</option>
									<option value="Исперих" data-option="option_3_97">Исперих</option>
									<option value="Ихтиман" data-option="option_3_98">Ихтиман</option>
									<option value="Каблешково" data-option="option_3_99">Каблешково</option>
									<option value="Каварна" data-option="option_3_100">Каварна</option>
									<option value="Казанлък" data-option="option_3_101">Казанлък</option>
									<option value="Калофер" data-option="option_3_102">Калофер</option>
									<option value="Камено" data-option="option_3_103">Камено</option>
									<option value="Каолиново" data-option="option_3_104">Каолиново</option>
									<option value="Карлово" data-option="option_3_105">Карлово</option>
									<option value="Карнобат" data-option="option_3_106">Карнобат</option>
									<option value="Каспичан" data-option="option_3_107">Каспичан</option>
									<option value="Кермен" data-option="option_3_108">Кермен</option>
									<option value="Килифарево" data-option="option_3_109">Килифарево</option>
									<option value="Китен" data-option="option_3_110">Китен</option>
									<option value="Клисура" data-option="option_3_111">Клисура</option>
									<option value="Кнежа" data-option="option_3_112">Кнежа</option>
									<option value="Козлодуй" data-option="option_3_113">Козлодуй</option>
									<option value="Койнаре" data-option="option_3_114">Койнаре</option>
									<option value="Копривщица" data-option="option_3_115">Копривщица</option>
									<option value="Костандово" data-option="option_3_116">Костандово</option>
									<option value="Костенец" data-option="option_3_117">Костенец</option>
									<option value="Костинброд" data-option="option_3_118">Костинброд</option>
									<option value="Котел" data-option="option_3_119">Котел</option>
									<option value="Кочериново" data-option="option_3_120">Кочериново</option>
									<option value="Кресна" data-option="option_3_121">Кресна</option>
									<option value="Криводол" data-option="option_3_122">Криводол</option>
									<option value="Кричим" data-option="option_3_123">Кричим</option>
									<option value="Крумовград" data-option="option_3_124">Крумовград</option>
									<option value="Крън" data-option="option_3_125">Крън</option>
									<option value="Кубрат" data-option="option_3_126">Кубрат</option>
									<option value="Куклен" data-option="option_3_127">Куклен</option>
									<option value="Кула" data-option="option_3_128">Кула</option>
									<option value="Кърджали" data-option="option_3_129">Кърджали</option>
									<option value="Кюстендил" data-option="option_3_130">Кюстендил</option>
									<option value="Левски" data-option="option_3_131">Левски</option>
									<option value="Летница" data-option="option_3_132">Летница</option>
									<option value="Ловеч" data-option="option_3_133">Ловеч</option>
									<option value="Лозница" data-option="option_3_134">Лозница</option>
									<option value="Лом" data-option="option_3_135">Лом</option>
									<option value="Луковит" data-option="option_3_136">Луковит</option>
									<option value="Лъки" data-option="option_3_137">Лъки</option>
									<option value="Любимец" data-option="option_3_138">Любимец</option>
									<option value="Лясковец" data-option="option_3_139">Лясковец</option>
									<option value="Мадан" data-option="option_3_140">Мадан</option>
									<option value="Маджарово" data-option="option_3_141">Маджарово</option>
									<option value="Малко Търново" data-option="option_3_142">Малко
										Търново</option>
									<option value="Мартен" data-option="option_3_143">Мартен</option>
									<option value="Мездра" data-option="option_3_144">Мездра</option>
									<option value="Мелник" data-option="option_3_145">Мелник</option>
									<option value="Меричлери" data-option="option_3_146">Меричлери</option>
									<option value="Мизия" data-option="option_3_147">Мизия</option>
									<option value="Момин проход" data-option="option_3_148">Момин
										проход</option>
									<option value="Момчилград" data-option="option_3_149">Момчилград</option>
									<option value="Монтана" data-option="option_3_150">Монтана</option>
									<option value="Мъглиж" data-option="option_3_151">Мъглиж</option>
									<option value="Неделино" data-option="option_3_152">Неделино</option>
									<option value="Несебър" data-option="option_3_153">Несебър</option>
									<option value="Николаево" data-option="option_3_154">Николаево</option>
									<option value="Никопол" data-option="option_3_155">Никопол</option>
									<option value="Нова Загора" data-option="option_3_156">Нова
										Загора</option>
									<option value="Нови Искър" data-option="option_3_157">Нови
										Искър</option>
									<option value="Нови пазар" data-option="option_3_158">Нови
										пазар</option>
									<option value="Обзор" data-option="option_3_159">Обзор</option>
									<option value="Омуртаг" data-option="option_3_160">Омуртаг</option>
									<option value="Опака" data-option="option_3_161">Опака</option>
									<option value="Оряхово" data-option="option_3_162">Оряхово</option>
									<option value="Павел баня" data-option="option_3_163">Павел
										баня</option>
									<option value="Павликени" data-option="option_3_164">Павликени</option>
									<option value="Пазарджик" data-option="option_3_165">Пазарджик</option>
									<option value="Панагюрище" data-option="option_3_166">Панагюрище</option>
									<option value="Перник" data-option="option_3_167">Перник</option>
									<option value="Перущица" data-option="option_3_168">Перущица</option>
									<option value="Петрич" data-option="option_3_169">Петрич</option>
									<option value="Пещера" data-option="option_3_170">Пещера</option>
									<option value="Пирдоп" data-option="option_3_171">Пирдоп</option>
									<option value="Плачковци" data-option="option_3_172">Плачковци</option>
									<option value="Плевен" data-option="option_3_173">Плевен</option>
									<option value="Плиска" data-option="option_3_174">Плиска</option>
									<option value="Пловдив" data-option="option_3_175">Пловдив</option>
									<option value="Полски Тръмбеш" data-option="option_3_176">Полски
										Тръмбеш</option>
									<option value="Поморие" data-option="option_3_177">Поморие</option>
									<option value="Попово" data-option="option_3_178">Попово</option>
									<option value="Пордим" data-option="option_3_179">Пордим</option>
									<option value="Правец" data-option="option_3_180">Правец</option>
									<option value="Приморско" data-option="option_3_181">Приморско</option>
									<option value="Провадия" data-option="option_3_182">Провадия</option>
									<option value="Първомай" data-option="option_3_183">Първомай</option>
									<option value="Раднево" data-option="option_3_184">Раднево</option>
									<option value="Радомир" data-option="option_3_185">Радомир</option>
									<option value="Разград" data-option="option_3_186">Разград</option>
									<option value="Разлог" data-option="option_3_187">Разлог</option>
									<option value="Ракитово" data-option="option_3_188">Ракитово</option>
									<option value="Раковски" data-option="option_3_189">Раковски</option>
									<option value="Рила" data-option="option_3_190">Рила</option>
									<option value="Роман" data-option="option_3_191">Роман</option>
									<option value="Рудозем" data-option="option_3_192">Рудозем</option>
									<option value="Русе" data-option="option_3_193">Русе</option>
									<option value="Садово" data-option="option_3_194">Садово</option>
									<option value="Самоков" data-option="option_3_195">Самоков</option>
									<option value="Сандански" data-option="option_3_196">Сандански</option>
									<option value="Сапарева баня" data-option="option_3_197">Сапарева
										баня</option>
									<option value="Свети Влас" data-option="option_3_198">Свети
										Влас</option>
									<option value="Свиленград" data-option="option_3_199">Свиленград</option>
									<option value="Свищов" data-option="option_3_200">Свищов</option>
									<option value="Своге" data-option="option_3_201">Своге</option>
									<option value="Севлиево" data-option="option_3_202">Севлиево</option>
									<option value="Сеново" data-option="option_3_203">Сеново</option>
									<option value="Септември" data-option="option_3_204">Септември</option>
									<option value="Силистра" data-option="option_3_205">Силистра</option>
									<option value="Симеоновград" data-option="option_3_206">Симеоновград</option>
									<option value="Симитли" data-option="option_3_207">Симитли</option>
									<option value="Славяново" data-option="option_3_208">Славяново</option>
									<option value="Сливен" data-option="option_3_209">Сливен</option>
									<option value="Сливница" data-option="option_3_210">Сливница</option>
									<option value="Сливо поле" data-option="option_3_211">Сливо
										поле</option>
									<option value="Смолян" data-option="option_3_212">Смолян</option>
									<option value="Смядово" data-option="option_3_213">Смядово</option>
									<option value="Созопол" data-option="option_3_214">Созопол</option>
									<option value="Сопот" data-option="option_3_215">Сопот</option>
									<option value="Средец" data-option="option_3_216">Средец</option>
									<option value="Стамболийски" data-option="option_3_217">Стамболийски</option>
									<option value="Стара Загора" data-option="option_3_218">Стара
										Загора</option>
									<option value="Стражица" data-option="option_3_219">Стражица</option>
									<option value="Стралджа" data-option="option_3_220">Стралджа</option>
									<option value="Стрелча" data-option="option_3_221">Стрелча</option>
									<option value="Суворово" data-option="option_3_222">Суворово</option>
									<option value="Сунгурларе" data-option="option_3_223">Сунгурларе</option>
									<option value="Сухиндол" data-option="option_3_224">Сухиндол</option>
									<option value="Съединение" data-option="option_3_225">Съединение</option>
									<option value="Сърница" data-option="option_3_226">Сърница</option>
									<option value="Твърдица" data-option="option_3_227">Твърдица</option>
									<option value="Тервел" data-option="option_3_228">Тервел</option>
									<option value="Тетевен" data-option="option_3_229">Тетевен</option>
									<option value="Тополовград" data-option="option_3_230">Тополовград</option>
									<option value="Троян" data-option="option_3_231">Троян</option>
									<option value="Трън" data-option="option_3_232">Трън</option>
									<option value="Тръстеник" data-option="option_3_233">Тръстеник</option>
									<option value="Трявна" data-option="option_3_234">Трявна</option>
									<option value="Тутракан" data-option="option_3_235">Тутракан</option>
									<option value="Търговище" data-option="option_3_236">Търговище</option>
									<option value="Угърчин" data-option="option_3_237">Угърчин</option>
									<option value="Хаджидимово" data-option="option_3_238">Хаджидимово</option>
									<option value="Харманли" data-option="option_3_239">Харманли</option>
									<option value="Хасково" data-option="option_3_240">Хасково</option>
									<option value="Хисаря" data-option="option_3_241">Хисаря</option>
									<option value="Цар Калоян" data-option="option_3_242">Цар
										Калоян</option>
									<option value="Царево" data-option="option_3_243">Царево</option>
									<option value="Чепеларе" data-option="option_3_244">Чепеларе</option>
									<option value="Червен бряг" data-option="option_3_245">Червен
										бряг</option>
									<option value="Черноморец" data-option="option_3_246">Черноморец</option>
									<option value="Чипровци" data-option="option_3_247">Чипровци</option>
									<option value="Чирпан" data-option="option_3_248">Чирпан</option>
									<option value="Шабла" data-option="option_3_249">Шабла</option>
									<option value="Шивачево" data-option="option_3_250">Шивачево</option>
									<option value="Шипка" data-option="option_3_251">Шипка</option>
									<option value="Шумен" data-option="option_3_252">Шумен</option>
									<option value="Ябланица" data-option="option_3_253">Ябланица</option>
									<option value="Якоруда" data-option="option_3_254">Якоруда</option>
									<option value="Ямбол" data-option="option_3_255">Ямбол</option></select>
							</div>
						</div>

						<div class="formItem select">
							<div class="stenikSelect select_4">
								<div class="selectedHolder">Избери кино</div>
								<div class="dropdown">
									<span class="option selected " data-option="option_4_0">Избери
										кино</span><span class="option  " data-option="option_4_1">Кино
										Арена Младост</span><span class="option  " data-option="option_4_2">Кино
										Арена Мол Варна</span><span class="option  " data-option="option_4_3">Кино
										Арена Парк Мол Стара Загора</span><span class="option  "
										data-option="option_4_4">Кино Арена Смолян</span><span
										class="option  " data-option="option_4_5">Кино Арена
										Делукс Bulgaria Mall</span><span class="option  "
										data-option="option_4_6">Кино Арена The MALL</span><span
										class="option  " data-option="option_4_7">Кино Арена
										Grand Mall Варна</span><span class="option  "
										data-option="option_4_8">Кино Арена Запад</span><span
										class="option  " data-option="option_4_9">Кино Арена
										Панорама Мол Плевен</span><span class="option  "
										data-option="option_4_10">Кино Арена Мол Марково Тепе
										Пловдив</span>
								</div>
							</div>
							<div class="stenikHiddenSelect" style="display: none;">
								<select id="stenik_user_registration_cinema"
									name="stenik_user_registration[cinema]" required="required"
									placeholder="Предпочитано Кино"><option value=""
										selected="selected" data-option="option_4_0">Избери
										кино</option>
									<option value="1" data-option="option_4_1">Кино Арена
										Младост</option>
									<option value="2" data-option="option_4_2">Кино Арена
										Мол Варна</option>
									<option value="4" data-option="option_4_3">Кино Арена
										Парк Мол Стара Загора</option>
									<option value="5" data-option="option_4_4">Кино Арена
										Смолян</option>
									<option value="6" data-option="option_4_5">Кино Арена
										Делукс Bulgaria Mall</option>
									<option value="7" data-option="option_4_6">Кино Арена
										The MALL</option>
									<option value="8" data-option="option_4_7">Кино Арена
										Grand Mall Варна</option>
									<option value="9" data-option="option_4_8">Кино Арена
										Запад</option>
									<option value="10" data-option="option_4_9">Кино Арена
										Панорама Мол Плевен</option>
									<option value="13" data-option="option_4_10">Кино
										Арена Мол Марково Тепе Пловдив</option></select>
							</div>
						</div>
						<div class="formItem checkbox">
							<div class="stenik-checkbox">
								<label for="stenik_user_registration_terms"><div
										class="labelContent">
										Запознах се с <a href="/bg/terms-and-conditions"
											target="_blank">общите условия</a>
									</div></label>
								<div class="inputWrapper">
									<input type="checkbox" id="stenik_user_registration_terms"
										name="stenik_user_registration[terms]" required="required"
										value="1">
								</div>
							</div>
						</div>
						<div class="clearH"></div>
						<p>
							<em>Предоставената информация не е публична и няма да бъде
								разкривана на трети лица</em>
						</p>
						<div class="clearH2"></div>
						<div>
							<button type="submit" id="stenik_user_registration__submit"
								name="stenik_user_registration[_submit]"
								class="button big col3 noMarginR disabled">Регистрирай
								се</button>
						</div>
						<input type="hidden" id="stenik_user_registration_username"
							name="stenik_user_registration[username]"><input
							type="hidden" id="stenik_user_registration_facebookUid"
							name="stenik_user_registration[facebookUid]"><input
							type="hidden" id="stenik_user_registration_facebookName"
							name="stenik_user_registration[facebookName]"><input
							type="hidden" id="stenik_user_registration_facebookData"
							name="stenik_user_registration[facebookData]"><input
							type="hidden" id="stenik_user_registration_twitterUid"
							name="stenik_user_registration[twitterUid]"><input
							type="hidden" id="stenik_user_registration_twitterName"
							name="stenik_user_registration[twitterName]"><input
							type="hidden" id="stenik_user_registration_twitterData"
							name="stenik_user_registration[twitterData]"><input
							type="hidden" id="stenik_user_registration_gplusUid"
							name="stenik_user_registration[gplusUid]"><input
							type="hidden" id="stenik_user_registration_gplusName"
							name="stenik_user_registration[gplusName]"><input
							type="hidden" id="stenik_user_registration_gplusData"
							name="stenik_user_registration[gplusData]"><input
							type="hidden" id="stenik_user_registration__token"
							name="stenik_user_registration[_token]"
							value="37AQkbOEj_oC0HLg3l7qgZeUdDN_rUCKoPpu_f34w-0">
					</form>
				</div>
			</div>
			<div class="col2 right contentCol">
				<article class="content">
					<p>
						<br> <br> <br>
					</p>
					<p style="text-align: right;">
						<img src="/KinoArena/images/register_pros1.png" alt="">
					</p>
					<p>
						<br> <br> <br>
					</p>
					<p style="text-align: right;">
						<img src="/KinoArena/images/register_pros2.png" alt="">
					</p>
					<p>
						<br> <br> <br>
					</p>
					<p style="text-align: right;">
						<img src="/KinoArena/images/register_pros3.png" alt="">
					</p>
				</article>
			</div>
		</div>
	</div>
</body>
</html>