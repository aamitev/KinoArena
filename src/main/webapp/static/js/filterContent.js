function getScreening (param) {
	
	var xhr = new XMLHttpRequest();
	xhr.open("GET", "./screenings", true);
	xhr.send(null);
	
	xhr.addEventListener('load', () => {
		var screenings = JSON.parse(xhr.responseText);
		var html = "";
		for (var index=0; index < screenings.length; index++){
			html +=`
				<div class="filterItem movieBox filterSelected"
					data-filter="tab-1 tab-6  ">
					 <figure class="featured lazyLoad imgLoaded"
						data-img-width="224" data-img-height="336">
						<img
							src=".` + screenings[index].movie.coverURL + `"
							alt="`+ screenings[index].movie.title+ `" width="224" height="336"
							class="poster">
					</figure>
					<h3 class="title">
						<a href="#">` + screenings[index].movie.title+ 
						`</a>
					</h3>
					<div class="rating">
						<div class="stenikRating">
							<div class="inputWrapper">
								<input type="text" name="" value="" data-rating="3.37"
									data-movie="708" readonly="readonly">
							</div>
							<div class="handlesWrapper">
								<span class="ratingHandle rating-1" data-rating="1"></span><span
									class="ratingHandle rating-2" data-rating="2"></span><span
									class="ratingHandle rating-3" data-rating="3"></span><span
									class="ratingHandle rating-4" data-rating="4"></span><span
									class="ratingHandle rating-5" data-rating="5"></span>
							</div>
						</div>
					</div>
					<div class="attr highlight">
						<div class="item tooltip_26"">

							<p> `+ screenings[index].movie.pgAge +`</p>
						</div>
					</div>
				</div>`
				}
		document.getElementById('filterContent').innerHTML = html;
	});

}


