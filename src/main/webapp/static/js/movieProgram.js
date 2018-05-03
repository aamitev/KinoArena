function getProgramDates(id){
	var link = "/KinoArena/screenings?movieId="+id;
	var xhr = programRequest(link);
}

function programRequest(link) {

	console.log(link);
	var xhr = new XMLHttpRequest();
	xhr.open("GET", link, true);
	xhr.send(null);
	var response = "";
	xhr.onreadystatechange = function() {
		 if (this.readyState == 4 && this.status == 200) {
			 programGenerator(this.responseText);
	    }
	}

}

function programGenerator(response){

	var screenings = JSON.parse(response);
	console.log(screenings);
	var html = `<h4 class="projectionDaysTitle">Програма</h4> <div class="clearH"></div>`;
	
	for (var index=0; index < screenings.length; index++){
		
		var date = screenings[index].startTime.date;
		date = date.year + "-"  + date.month+"-"+date.day; 
		
		html +=`
	<div class="owl-item active"
		style="width: 326.667px; margin-right: 0px;">
		<a href"/KinoArena?screenings?movieId="`+screenings[index].movie.id +"&date=" +date + ` class="tabItem "><div
				class="row">`;
		

	html += date + `</div>
	</div>`
	}
	document.getElementById('owl-stage').innerHTML = html;


}
