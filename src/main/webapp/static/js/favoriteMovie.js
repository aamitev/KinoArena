function favoritesControler(movieID) {
	var link = "";
	if(document.getElementById("favoriteButton").firstChild.className == "notActive"){
		console.log(document.getElementById("favoriteButton").firstChild.className);
		link = "/KinoArena/removeFavorite?movieID="+movieID;
	}else{
		link = "/KinoArena/addToFavorites?movieID="+movieID;
	}
	sendFavoriteRequest(link)
	isFavorite(movieID);
	location.reload();
}
	
function sendFavoriteRequest(link){
    var xhr = new XMLHttpRequest();
	xhr.open("POST", link, true);
	xhr.send(null);
	
	xhr.addEventListener('load', () => {
		var response = xhr.responseText;
		if(xhr.status == 302){
			location.replace(response);
		}
	});
}

