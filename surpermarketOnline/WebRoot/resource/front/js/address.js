$(function(){
	$(".city .left").find("label").click(function(){
		$(".city .left").find("label").removeClass("active");
		$(this).addClass("active");
	})
})
$(function(){
	$(".city .left .c-radio").bind("click",function(){
		$(".city .left .c-radio .first").find("span").addClass("second");
		$(this).parent().siblings().find("span").removeClass("second");
	})
})