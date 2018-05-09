function selectSeat(seat) {
	var bookingTable = document.getElementById("booking_table");
	var ticketsNumber = Number(bookingTable.getAttribute("ticket-number"));
	var currentNumber = Number(bookingTable.getAttribute("current-number"));
	var id = seat.getAttribute("data-id");
	if (seat.className == "seat selected") {
		seat.className = "seat";
		bookingTable.setAttribute("current-number", currentNumber - 1);
		document.getElementById("seat_input" + id).value = '';
		document.getElementById("booking_proceed_button").setAttribute("disabled",true);
		document.getElementById("booking_proceed_button").className = "button red big disabled";
	} else {
		if (currentNumber < ticketsNumber) {
			seat.className = "seat selected"
			bookingTable.setAttribute("current-number", currentNumber + 1);
			document.getElementById("seat_input" + id).value = Number(id);
		}
		currentNumber = Number(bookingTable.getAttribute("current-number"));
		if(currentNumber == ticketsNumber){
			document.getElementById("booking_proceed_button").disabled = false;
			document.getElementById("booking_proceed_button").className = "button red big";
		}
	}
}