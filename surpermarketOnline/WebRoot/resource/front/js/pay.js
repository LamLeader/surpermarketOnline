$(function(){
	$(".bank .left").find("label").click(function(){
		$(".bank .left").find("label").removeClass("active");
		$(this).addClass("active");
	})
})
$(function(){
	$(".bank .left .c-radio").bind("click",function(){
		$(".bank .left .c-radio .first").find("span").addClass("second");
		$(this).parent().siblings().find("span").removeClass("second");
	})
})

$(function() {
	$('.list_mima').click(function() {
		if(!$('.list_mima dd').eq(5).find('input').val() == "") {
			$('.list_mima dd').eq(5).find('input').focus()
		} else {
			$('.list_mima dd').eq(0).find('input').focus()
		}

	})
	var num;
	$('.list_mima dd input').keyup(function(e) {
		if(e.keyCode >= 48 && e.keyCode <= 57 || e.keyCode >= 96 && e.keyCode <= 105 || e.keyCode == 8) {
			var index = $(this).parent().index()
			switch(e.keyCode) {
				case 48:
					num = 0;
					break;
				case 49:
					num = 1;
					break;
				case 50:
					num = 2
					break;
				case 51:
					num = 3
					break;
				case 52:
					num = 4
					break;
				case 53:
					num = 5
					break;
				case 54:
					num = 6
					break;
				case 55:
					num = 7
					break;
				case 56:
					num = 8
					break;
				case 57:
					num = 9
					break;
				case 96:
					num = 0;
					break;
				case 97:
					num = 1;
					break;
				case 98:
					num = 2
					break;
				case 99:
					num = 3
					break;
				case 100:
					num = 4
					break;
				case 101:
					num = 5
					break;
				case 102:
					num = 6
					break;
				case 103:
					num = 7
					break;
				case 104:
					num = 8
					break;
				case 105:
					num = 9
					break;
			}
			if(!$('.list_mima dd').eq(index).find('input').val() == "") {
				$('.list_mima dd').eq(index).find('input').val(num)
				index++;
				$('.list_mima dd').eq(index).find('input').focus()
			}

			//按下删除键      keyCode键码数
			if(e.keyCode == 8) {
				index = $(this).parent().index()
				if(!$('.list_mima dd').eq(index - 1).find('input').val() == "") {
					$('.list_mima dd').eq(index - 1).find('input').focus()
					if(index == 0) {
						$('.list_mima dd').eq(0).find('input').val("")
						$('.list_mima dd').eq(index).find('input').focus()
					}
				}

			}
		} else {
			$('.list_mima dd').eq(0).find('input').val("")
			return;
		}

	})
})