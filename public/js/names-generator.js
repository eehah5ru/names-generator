$( document ).ready(function() {
	// alert("!!!!!");
	$('#content').find("div").hover(function () {
		// toggleFontSize(this);
	});
	
	setRandomDivColors();
});


function toggleFontSize (an_element) {
	// alert($(an_element).css("font-size"));
	var newFontSize = 0;
	while (newFontSize < 5) {
		newFontSize = $(an_element).css("font-size").replace("px", "") * (Math.random() + Math.random());
	}
	// console.log($(an_element).css("font-size"));
	// console.log(newFontSize);
	$(an_element).css("font-size", newFontSize + "px");
}

function setRandomDivColors () {
		$('#content').find('div').each(function (element) {
			var bkgColorClass = "bkg-color-" + Math.floor((Math.random() * 6));
			$(this).addClass(bkgColorClass);
		});
}