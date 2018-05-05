
function isFavorite(movieID) {
	
    var xhr = new XMLHttpRequest();
	xhr.open("GET", "/KinoArena/inFavorites/"+movieID, true);
	xhr.send(null);
	
	xhr.addEventListener('load', () => {

		var response = JSON.parse(xhr.responseText);
		var html = "";
		console.log(response);

		if(response.success){
			console.log("ss");

		html = `<spam class="notActive">Премахни от любими</spam>`;

		}else
		if(!response.success){
			console.log("sss");

			html = `<spam class="active">Добави в любими</spam>`;
		}
			document.getElementById('favoriteButton').innerHTML = html;
	});
}
