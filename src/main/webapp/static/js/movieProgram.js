function getProgramDates(id){
	var link = "/KinoArena/screenings?movieId="+id;
	
	var xhr = new XMLHttpRequest();
	xhr.open("GET", link, true);
	xhr.send(null);
	var response = "";
	xhr.onreadystatechange = function() {
		 if (this.readyState == 4 && this.status == 200) {
			 var screenings = JSON.parse(this.responseText);
				console.log(screenings);
				var days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];
				var html =`<div class="clear"></div><h4 class="projectionDaysTitle">Програма</h4> 
				<div class="clearH"></div>
			<div class="wrapper">
				<header class="stenikTabsHeader" data-rows="2">
					<div
						class="sliderWrapper owl-carousel owl-theme owl-loaded owl-text-select-on first-slide hide-nav">
						<div class="owl-stage-outer">
							<div class="owl-stage"
								style="transform: translate3d(0px, 0px, 0px); transition: 0s; width: 980px;">`

				for (var index=0; index < screenings.length; index++){
					var date = screenings[index].startTime.date;
					var dateStr = date.year+`-`+date.month+`-`+date.day;
					
					html += `<div class="owl-item active" style="width: 122.5px; margin-right: 0px;">
					<a onclick ="getAllCinemaProgram(`+screenings[index].movie.id+`,'`+dateStr+ `')" class="tabItem ">
					<div class="row">`+date.day+"/"+date.month+`<br>(dd/mm)</div>
					</a>
					</div>`

				}
				document.getElementById('block_projectionDays').innerHTML = html;
	    }
	}

}

function getAllCinemaProgram(id,date){
    console.log(date);
var link = "/KinoArena/screenings?movieId="+id + "&date=" + date;
    console.log(link);
	var xhr = new XMLHttpRequest();
	xhr.open("GET", link, true);
	xhr.send(null);
	var response = "";
	xhr.onreadystatechange = function() {
		 if (this.readyState == 4 && this.status == 200) {
			 var screenings = JSON.parse(this.responseText);
			 
				console.log(screenings);
				var html = "" 
				
				for (var index=0; index < screenings.length; index++){
					
				html += `<div class="scheduleRow">
						<aside class="sideInfo">
							<article class="cinemaContacts">
								<h6 class="title">Кино Арена The MALL</h6>
								<p>гр. София, Бул. Цариградско шосе 115, The MALL</p>
								<p>0898 460 557</p>
							</article>
						</aside>
						<div class="contentWrapper">
							<div class="timeTable">
								<div class="row">
									<div class="attr secondary">
										<div class="item">

											<img title="Digital" alt="Digital"
												src="/uploads/media/stenik_attributes/0001/02/a0839dc0242ea51919868600b9761b49ee8946df.png">
										</div>
										<div class="item">

											<img title="Dolby N" alt="Dolby N"
												src="/uploads/media/stenik_attributes/0001/02/a43d6fd169b0e86650088265e7c0aa7503cf1be6.png">
										</div>
									</div>
									<div class="timelineSet">
										<div
											class="scrollWrapper owl-carousel owl-theme owl-loaded first-slide hide-nav">

											<div class="owl-stage-outer">
												<div class="owl-stage"
													style="transform: translate3d(0px, 0px, 0px); transition: 0s; width: 68px;">
													<div class="owl-item active"
														style="width: auto; margin-right: 0px;">
														<a href="/bg/booking/155269_7"
															class="item booking tooltip_5"
															data-tooltip="9 лв. / 11 лв." data-tooltip-class="wide">
															<span class="time">20:50</span>
														</a>
													</div>
												</div>
											</div>
											<div class="owl-controls">
												<div class="owl-nav">
													<div class="owl-prev" style=""></div>
													<div class="owl-next" style=""></div>
												</div>
												<div class="owl-dots" style="display: none;"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- end of .timeTable -->
						</div>
					</div>
					<!-- end of .scheduleRow -->
					`
					}
				document.getElementById("block").innerHTML = html;

		 }
		 }
}
