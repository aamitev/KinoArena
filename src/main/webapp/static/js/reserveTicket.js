var totalTickets = 0;
function plus(id) {
	var quantitySpinner = Number(document
			.getElementById("quantitySpinner" + id).value);
	var max = Number(document.getElementById("quantitySpinner" + id)
			.getAttribute("data-max"));
	if (totalTickets >= max) {
		document.getElementById("limit").innerHTML = "Лимитът е : " + max
				+ " билета.";
		return;
	}

	if (quantitySpinner < max) {
		totalTickets += 1;
		document.getElementById("quantitySpinner" + id).value = (quantitySpinner + 1);
		var price = document.getElementById("price" + id).innerHTML;
		var totalUnitPrice = document.getElementById("totalUnitPrice" + id).innerHTML;
		document.getElementById("totalUnitPrice" + id).innerHTML = (Number(totalUnitPrice) + Number(price));
		var totalPrice = document.getElementById("total_price").innerHTML;
		document.getElementById("total_price").innerHTML = (Number(totalPrice) + Number(price));

	}
}

function minus(id) {
	document.getElementById("limit").innerHTML = "";
	var quantitySpinner = Number(document
			.getElementById("quantitySpinner" + id).value);
	var min = Number(document.getElementById("quantitySpinner" + id)
			.getAttribute("data-min"));
	console.log(quantitySpinner);
	if (quantitySpinner > min) {
		totalTickets -= 1;
		document.getElementById("quantitySpinner" + id).value = (quantitySpinner - 1);
		var price = document.getElementById("price" + id).innerHTML;
		var totalUnitPrice = document.getElementById("totalUnitPrice" + id).innerHTML;
		document.getElementById("totalUnitPrice" + id).innerHTML = (Number(totalUnitPrice) - Number(price));
		document.getElementById("limit").innerHTML = "";

	}
}
