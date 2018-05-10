document.getElementById('selectCinema').addEventListener('click', () => {
	
	if(	document.getElementById('selectCinema').className == "stenikSelect select_1 active"){
		document.getElementById('selectCinema').className = "stenikSelect select_1";
		return;
	}
	document.getElementById('selectCinema').className = "stenikSelect select_1 active";
	});

function getScreenings(cinemaId,date){
	var link = "/KinoArena/screenings?cinemaId=" +cinemaId+"&date="+date;
	var xhr = new XMLHttpRequest();
	xhr.open("GET", link, true);
	xhr.send(null);
	var response = "";
	xhr.onreadystatechange = function() {
		 if (this.readyState == 4 && this.status == 200) {
			 var screenings = JSON.parse(this.responseText);
			 var html = "";
			 for(var movieIndex in screenings){
				 var newMovie = true;
				 for(var hallIndex in screenings[movieIndex]){
					 var newHall =true;
						if(newMovie == true && screenings[movieIndex][hallIndex].length > 0){
							 var movie = screenings[movieIndex][hallIndex][0].movie;
					           console.log(screenings[movieIndex][hallIndex][0]);
					           newMovie = false;
					           var date = movie.primiere;
					 html +=`<div class="scheduleRow">
					 
						<aside class="sideInfo">
							<div class="movieBox small">
								<figure class="featured">
						 			<a href="/KinoArena/movies/`+movie.id+`">
									<img title="`+movie.title+`" width="224"
										height="336" alt="`+movie.title+`"
										src="/KinoArena`+movie.coverURL+`">
																		</a>
								</figure>

							</div>
						</aside>

						<div class="contentWrapper">
							<header class="rowHeader">
								<h5 class="title">
									<a href="/KinoArena/movies/`+movie.id+`">`+movie.title+`</a>
								</h5>
								<em class="gold"><strong>премиера: </strong>`+date.year+`/`+ date.month+`/`+date.day+`</em>
							</header>
							
							
							<div class="timeTable">
								<span class="title">Купи билет</span>
								<div class="clear"></div>`;
								}
						if(screenings[movieIndex][hallIndex].length > 0){
							var hall = screenings[movieIndex][hallIndex][0].hall;
							html += `<div class="row">
								<div class="attr secondary">
									<div class="item">
										<h3>`+hall.hallType+`</h3>
									</div>
									<div class="item">
										<h3>`+screenings[movieIndex][hallIndex][0].movie.movieType+`</h3>
									</div>
								</div>
								<div class="timelineSet">
									<div
										class="scrollWrapper owl-carousel owl-theme owl-loaded first-slide hide-nav">
										<div class="owl-stage-outer">
											<div class="owl-stage"
												style="transform: translate3d(0px, 0px, 0px); transition: 0s; width: 272px;">`;
						}
					 for(var screeningIndex in screenings[movieIndex][hallIndex]){
						 var screening = screenings[movieIndex][hallIndex][screeningIndex];

						
							html+=`			<div class="owl-item active"
												style="width: auto; margin-right: 0px;">
												<a href="/KinoArena/reserve/`+screening.id+`"
													class="item booking tooltip_1"
													 data-tooltip-class="wide">
													<span class="time">`+screening.startTime.time.hour+`:`+screening.startTime.time.minute+`</span>
												</a>
											</div>`;


			 }
					 html += `										
										</div>
									</div>
								</div>
							</div>
						</div>`;
			 }
				html += `</div>
					<!-- end of .timeTable -->
					<div class="clear"></div>
					<p>
						<em><span class="red">*</span> За филми в 3D формат са ви
							необходими 3D очила, които се купуват отделно от билета в кината
							на цена 2 лв./бр</em>
					</p>
				</div>
				<!-- end of .contentWrapper -->
				
			</div>
			<!-- end of .scheduleRow -->`;
	 			
			 }
		 document.getElementById("block").innerHTML = html;
		 }
	}
}