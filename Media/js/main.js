
$(document).on('pageshow', function() {
	var dia=parseInt(window.location.pathname.split("/")[2]);
	$("#dias li:nth-child("+dia+") a").addClass("ui-btn-active");
//	console.log(dia);
});
