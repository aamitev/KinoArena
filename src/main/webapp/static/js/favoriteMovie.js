function favoritesControler(movieID) {
	var link = "";
	if(document.getElementById("favoriteButton").firstChild.className == "notActive"){
		link = "/KinoArena/removeFavorite?movieID="+movieID;
	}else{
		link = "/KinoArena/addToFavorites?movieID="+movieID;
	}
	sendFavoriteRequest(link)
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

window.addEventListener('load', () => {
	var movieID = window.location.pathname.split("/");
	movieID = movieID[movieID.length -1];
    var xhr = new XMLHttpRequest();
	xhr.open("GET", "/KinoArena/inFavorites/"+movieID, true);
	xhr.send(null);
	
	xhr.addEventListener('load', () => {

		var response = JSON.parse(xhr.responseText);
		var html = "";

		if(response.success){

		html = `<spam class="notActive">Премахни от любими</spam>`;

		}else
		if(!response.success){

			html = `<spam class="active">Добави в любими</spam>`;
		}
			document.getElementById('favoriteButton').innerHTML = html;
	});
});
