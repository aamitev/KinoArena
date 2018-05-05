window.addEventListener('load', () => {
	var link = "/KinoArena/allCinema";
	var xhr = new XMLHttpRequest();
	xhr.open("GET", link, true);
	xhr.send(null);
	
	xhr.onreadystatechange = function() {
		 if (this.readyState == 4 && this.status == 200) {
				var cinemas = JSON.parse(xhr.responseText);
				console.log(xhr.responseText);

				console.log(cinemas);
				var html = "";			 

				for (var index=0; index < cinemas.length; index++){
					var cinema = cinemas[index];
					html += `
				<a href="/KinoArena/cinema/`+cinema.id+`" title="${cinema.name}"
					class="cinemaBox">
					<figure class="featured">
						<svg class="svgMask" width="250" height="188" baseProfile="full"
							version="1.2">
                         <defs>
                             <mask id="svg_mask"
								maskUnits="userSpaceOnUse" maskContentUnits="userSpaceOnUse"
								transform="scale(1)">
                                 <polygon
								points="-0.541 0.313, 250.267 20.313, 240.267 178.750, -0.541 188.750, -0.541 0.313"
								fill="white"></polygon>
                             </mask>
                         </defs>
                                                         <polygon
								class="hoverUnderLayer"
								points="-0.541 0.313, 250.267 20.313, 240.267 178.750, -0.541 188.750, -0.541 0.313"
								fill="#000"></polygon>
                             <image mask="url(#svg_mask)"
								width="100%" height="100%" y="0" x="0"
								xlink:href="/KinoArena`+cinema.cinemaCoverURL+`"></image>
                                                 </svg>

						<img width="250" height="188" alt="`+cinema.name+`"
							class="fallbackImg" src="/KinoArena`+cinema.cinemaCoverURL+`">
						<div class="hoverContent">
							<div class="vAlign"></div>
						</div>
					</figure>
					<h5 class="title">`+cinema.name+`</h5>
					<article class="content">`+cinema.address.city+`,`
						+cinema.address.address+` `+cinema.gsm+`</article></a> `;
				}
			document.getElementById('block').innerHTML = html;
		 }
		 };
});
