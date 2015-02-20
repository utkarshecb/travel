/**
 * Resize elements to match screen size
 */
$(document).ready(function() {
	checkAndSetLayout();
	checkAndCreateButtons();
});

$(window).resize(function() {
	checkAndSetLayout();
});

function checkAndSetLayout() {
	var parentWidth = $(".sectionRoot").parent().width()
	var offset = (parentWidth - $(".sectionRoot").width()) / 2;
	$(".sectionHdrBanner").css("width", parentWidth + "px");
	$(".sectionHdrBanner").css("left", "-" + offset + "px");
}

function checkAndCreateButtons() {
	$("button").each(function() {
		var icon = $(this).attr("data-icon");
		$(this).button({
			icons : {
				primary : icon
			},
			text : false
		});
	});
}