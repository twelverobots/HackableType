$(function(){
	collapseHints();
	
	$('.hintOpenLink').bind('click', function(e){
		var $currentTarget = $(e.target);
		
		if ($currentTarget.hasClass('hintOpenLink')) {
			var $currentText = $currentTarget.parent().siblings().first();
			$currentText.slideDown();
			
			$currentTarget.text("close");
			$currentTarget.removeClass("hintOpenLink");
			$currentTarget.addClass("hintCloseLink");
			
		} else if ($currentTarget.hasClass('hintCloseLink')) {
			var $currentText = $currentTarget.parent().siblings().first();
			$currentText.slideUp();
			
			$currentTarget.text("open");
			$currentTarget.removeClass("hintCloseLink");
			$currentTarget.addClass("hintOpenLink");
		}
	});
});

function collapseHints() {
	$('.hintText').slideUp('fast');
}