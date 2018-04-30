//document.getElementById("cityInput").addEventListener("keyup", function() {
//	var prefix = this.value;
//	console.log(prefix);
//	
//	var xhr = new XMLHttpRequest();
//	xhr.open("GET", "./cities?prefix="+prefix, true);
//	xhr.send(null);
//	
//	xhr.addEventListener('load', () => {
//		var cities = JSON.parse(xhr.responseText);
//		var html = '';
//		for (var index=0; index < cities.length; index++) {
//			html += "<p> " + cities[index] + " </p>";
//		}
//		document.getElementById('searchResult').innerHTML = html;
//	});
//});
//

var filterContent = $('div.filterContent');
$('div.owl-item.active').click(function() {
	var prefix = this.value;
	console.log(prefix);

	// var xhr = new XMLHttpRequest();
	// xhr.open("GET", "./cities?prefix="+prefix, true);
	// xhr.send(null);
});
// <div class="filterItem movieBox filterSelected"
// data-responsive-href="/bg/movie/zaycheto-pitar"
// data-filter="tab-1 tab-3 ">
// <figure class="featured lazyLoad imgLoaded"
// data-img-url="/uploads/media/stenik_movies_image/0001/09/thumb_8582_stenik_movies_image_index.jpeg"
// data-img-width="224" data-img-height="336"
// data-img-alt="Зайчето Питър" data-img-class="poster">
// <img
// src="/uploads/media/stenik_movies_image/0001/09/thumb_8582_stenik_movies_image_index.jpeg"
// alt="Зайчето Питър" width="224" height="336" class="poster">
// <div class="hoverContent">
// <div class="buttonSet" data-rows="3">
// <a href="#" data-video-id="OUbbFvDa2-s" class="row trailer"
// style="bottom: 101%; opacity: 1;">
// <div class="vAlign">
// <span class="icon"><i class="play"></i></span> <span
// class="txt">Трейлър</span>
// </div>
// </a> <a href="/bg/movie/zaycheto-pitar" class="row"
// style="bottom: 101%; opacity: 1;">
// <div class="vAlign">
// <span class="icon"><i class="cinema"></i></span> <span
// class="txt">Подробно</span>
// </div>
// </a> <a href="/bg/profile/movies/zaycheto-pitar"
// class="row favourites" data-movie="zaycheto-pitar"
// style="bottom: 101%; opacity: 1;">
// <div class="vAlign">
// <span class="icon"><i class="heart big"></i></span> <span
// class="txt contentBefore"
// data-content-before="Добави в любими"
// data-content-after="Премахни от любими"> </span>
// </div>
// </a>
// </div>
// </div>
// </figure>
// <h3 class="title">
// <a href="/bg/movie/zaycheto-pitar">Зайчето Питър</a>
// </h3>
// <div class="rating">
// <div class="stenikRating">
// <div class="inputWrapper">
// <input type="text" name="" value="" data-rating="3.44"
// data-movie="684" readonly="readonly">
// </div>
// <div class="handlesWrapper">
// <span class="ratingHandle rating-1" data-rating="1"></span><span
// class="ratingHandle rating-2" data-rating="2"></span><span
// class="ratingHandle rating-3" data-rating="3"></span><span
// class="ratingHandle rating-4" data-rating="4"></span><span
// class="ratingHandle rating-5" data-rating="5"></span>
// </div>
// <div class="ratingSummary" style="width: 95px;">
// <span class="bar" style="width: 68.8%;"></span>
// </div>
// </div>
// </div>
// <div class="attr highlight">
// <div class="item tooltip_31"
// data-tooltip="<p>Дублиран на български език</p>">
//
// <img title="Dubbed" alt="Dubbed"
// src="/uploads/media/stenik_attributes/0001/02/39a939bbe7828a27bfa4fe1aabd2fd6298929fc5.png">
// </div>
// <div class="item tooltip_32"
// data-tooltip="<p>Без ограничения в показа</p>">
//
// <img title="B" alt="B"
// src="/uploads/media/stenik_attributes/0001/01/9db6e27089dd4e0f193eb6da0fd1a1114d2af76b.png">
// </div>
// </div>
// </div>
// <!-- end of .movieBox -->
