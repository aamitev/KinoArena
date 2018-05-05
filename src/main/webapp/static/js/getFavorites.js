function getFavoriteMovies(){
    var xhr = new XMLHttpRequest();
	xhr.open("GET", "/KinoArena/favoriteMovies", true);
	xhr.send(null);
	
	xhr.addEventListener('load', () => {
		var response = xhr.responseText;
		if(xhr.status == 302){
			location.replace(response);
		}
		 var movies = JSON.parse(xhr.responseText);

		if(xhr.status == 200){
			 var html ="";
			 for (var index=0; index < movies.length; index++){	
				 html += `
				<div class="filterItem  movieBox filterSelected"
	data-filter="tab-onScreen" dara-responsive-href="/bg/movie/privlichane">
	<figure class="featured">
	<a href="/KinoArena/movies/`+movies[index].id+`">
		<img title="`+movies[index].title+`" width="139" height="208" alt="`+movies[index].title+`"
			class="poster"
			src="/KinoArena/`+movies[index].coverURL+`">
				 </a>
				 
	</figure>
	<h3 class="title">
		<a href="/KinoArena/movie/`+movies[index].id+`">`+movies[index].title+`</a>
	</h3>
	<div class="attr highlight" style="padding-bottom: 1px;">
	      <p> minimal age - `+ movies[index].ageLimitation +`</p>	
	</div>
</div>`;
			 }
			
		document.getElementById('favorites').innerHTML = html;
		}
	});
}