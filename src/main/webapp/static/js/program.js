document.getElementById('selectCinema').addEventListener('click', () => {
	
	if(	document.getElementById('selectCinema').className == "stenikSelect select_1 active"){
		document.getElementById('selectCinema').className = "stenikSelect select_1";
		return;
	}
	document.getElementById('selectCinema').className = "stenikSelect select_1 active";

	});


var cinemas;
var classname;
window.addEventListener('load', () => {

var link = "/KinoArena/allCinema";


 var xhr = new XMLHttpRequest();
 xhr.open("GET", link, true);
 xhr.send(null);
 var classname;
 xhr.addEventListener('load', () => {
	 cinemas = JSON.parse(xhr.responseText);
	 var options = "";
		for (var index=0; index < cinemas.length; index++){
			var cinema = cinemas[index];
			options +=`<span class="option" data-option="`+cinema.id+`">`+cinema.name+`</span>`
		}
		document.getElementById('dropdown').innerHTML = options;
		optionListener();
 })
});

function optionListener(){
var classname = document.getElementsByClassName("option");
selectCinema(cinemas[0]);
for (var i = 0; i < classname.length; i++) {
	var index = i;
        classname[i].addEventListener('click',selectCinema(cinemas[index]));
}}

function selectCinema(cinema){
	
	var link = "/KinoArena/screenings?cinemaId=" + cinema.id;


	 var xhr = new XMLHttpRequest();
	 xhr.open("GET", link, true);
	 xhr.send(null);
	 var classname;
	 xhr.addEventListener('load', () => {
		 var screeningDTO = JSON.parse(xhr.responseText);
		 var dates = "";
			for (var index=0; index < screeningDTO.length; index++){
				var date = screeningDTO[index].startTime.date;
				
				dates += `<div class="owl-item active"
					style="width: 122.5px; margin-right: 0px;">
					<a href="#"
						class="tabItem "><div class="row">`+date.day+"/"+date.month+`<br>(дд/мм)</div>
				</div>`;
			}
		document.getElementById('owl-stage').innerHTML = dates;
    	document.getElementById('selectedHolder').innerHTML = cinema.name;
    	var html = `<div class="item left">
		<strong>АДРЕС:</strong>`+cinema.address.city+`,`+cinema.address.address+`</div>
	<div class="item left">
		<strong>ТЕЛЕФОН:</strong>`+cinema.gsm+`
	</div>
	<div class="item right">
		<a id="streetView"
			href="#"
			title="">Карта</a>&nbsp;&nbsp;|&nbsp;&nbsp; <a
			href="/KinoArena/cinema/`+cinema.id+`" title="`+cinema.name+`">
			Вижте повече </a>
	</div> `;
    	document.getElementById('transpBar').innerHTML = html;
});
}

