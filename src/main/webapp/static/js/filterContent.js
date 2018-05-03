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
					<a href="./movie/` +movies[index].id+`">
					<img
<<<<<<< HEAD
						src="` + movies[index].coverURL + `"
=======
						src="/KinoArena/` + movies[index].coverURL + `"
>>>>>>> 1e215166ca8f4328173567de658b2dbc18e11720
						alt="`+ movies[index].title+ `" width="224" height="336"
						class="poster">
						</a>
				</figure>
				<h3 class="title">
					<a href="./movie/`+ movies[index].id+ `">` + movies[index].title+ 
					`</a>
				</h3>

				<div class="attr highlight">
					<div class="item tooltip_26" data-tooltip="Не се препоръчва за деца&amp;nbsp;под ` + movies[index].ageLimitation + `">>

						<p> `+ movies[index].ageLimitation +`</p>
					</div>
				</div>
			</div>`
			}
	document.getElementById('filterContent').innerHTML = html;
}
