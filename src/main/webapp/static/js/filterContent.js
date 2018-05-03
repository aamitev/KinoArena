function getActiveByGenre(sufix){
	var link = "./movies?genre=" + sufix;
	homeMovieBoxRequest(link)	
}
function getActiveMovies(){
	var link = "./movies";
	var xhr = homeMovieBoxRequest(link);
}
function getActiveMoviesByHallType(sufix){
	var link = "./movies?hall="+sufix;
	var xhr = homeMovieBoxRequest(link)	;
	
}

function homeMovieBoxRequest(link) {

	console.log(link);
	var xhr = new XMLHttpRequest();
	xhr.open("GET", link, true);
	xhr.send(null);
	var response = "";
	xhr.onreadystatechange = function() {
		 if (this.readyState == 4 && this.status == 200) {
			 movieBoxGenerator(this.responseText);
	    }
	}

}

function movieBoxGenerator(response){

	var movies = JSON.parse(response);
	var html = "";
	console.log(response);
	for (var index=0; index < movies.length; index++){
		html +=`
			<div class="filterItem movieBox filterSelected"
				data-filter="tab-1 tab-6  ">
				 <figure class="featured lazyLoad imgLoaded"
					data-img-width="224" data-img-height="336">
					<img
						src="` + movies[index].coverURL + `"
						alt="`+ movies[index].title+ `" width="224" height="336"
						class="poster">
				</figure>
				<h3 class="title">
					<a href="#">` + movies[index].title+ 
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

						<p> `+ movies[index].ageLimitation +`</p>
					</div>
				</div>
			</div>`
			}
	document.getElementById('filterContent').innerHTML = html;
}
