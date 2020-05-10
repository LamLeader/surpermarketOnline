$(document).ready(function() {
				$('.carousel').carousel({
					interval: 3000
				})
				
			$("#myCarousel,#MyCarousel").swipe({
				swipeLeft:function(){$(this).carousel("next")},
				swipeRight:function(){$(this).carousel("prev")},
			})
			$("#myCarousel1,#MyCarousel1").swipe({
				swipeLeft:function(){$(this).carousel("next")},
				swipeRight:function(){$(this).carousel("prev")},
			})
	});
