$(document).ready(function() {
	$("form").submit(function(event) {
		event.preventDefault();
		$.post("/grandma", $(this).serialize(), function(data) {
		$("#ajax_output").html(data);
		});
	});
});
