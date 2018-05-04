function isFavorite(movieID) {
	
    var xhr = new XMLHttpRequest();
	xhr.open("GET", "/KinoArena/inFavorites/"+movieID, true);
	xhr.send(null);
	
	xhr.addEventListener('load', () => {
		var response = xhr.responseText;
		var html = ""
		if(response){
			console.log(response)
			html = "Добави в любими";
		}else{
			html = "Премахни от любими";
		}
			document.getElementById('favoriteButton').innerHTML = html;

	});
}
