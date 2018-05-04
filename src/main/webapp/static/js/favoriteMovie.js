function addToFavorites(movieID) {
	
    var xhr = new XMLHttpRequest();
	xhr.open("POST", "/KinoArena/addToFavorites?movieID="+movieID, true);
	xhr.send(null);
	
	xhr.addEventListener('load', () => {
		var response = xhr.responseText;
		console.log(response)
		if(xhr.status == 302){
			location.replace(response);
		}
	});
}

