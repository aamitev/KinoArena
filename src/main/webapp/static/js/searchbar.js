document.getElementById("search_input").addEventListener("keyup", function() {
	var prefix = this.value;
	if(prefix.length >= 3){
		console.log(prefix);

	var xhr = new XMLHttpRequest();
	xhr.open("GET", "./movies?title="+prefix, true);
	xhr.send(null);

	xhr.addEventListener('load', () => {
		var movies = JSON.parse(xhr.responseText);
		var html = '';
		for (var index=0; index < movies.length; index++) {
			html +=`<a href="./movies/`+movies[index].id+`" class="searchItem">
	        <figure class="featured">
	                            
	<img title="`+movies[index].title+`" width="60" height="90" alt="`+movies[index].title+`" src="/KinoArena`+movies[index].coverURL+`">
	                    </figure>
	        <h3 class="title">`+movies[index].title+`</h3>
	    </a>`
		}
		document.getElementById("search_list").className = "searchList active";
		document.getElementById('search_list').innerHTML = html;
	});
	}else{
		document.getElementById("search_list").className = "searchList";
	}
	});