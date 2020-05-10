$(function(){
					var cont = function(){
						var len1 = $(".goods input[type=checkbox]").length;
						var len2 = $(".goods input[type=checkbox]:checked").length;
						return len1-len2; 
					}
					
					$(".btn-right").click(function(){
						var num = parseInt($(this).siblings(".prd_num").val());
						++num;
						if(num>99){
							num=99;
						}
						$(this).siblings(".prd_num").val(num);
					})
					$(".btn-left").click(function(){
						var num = parseInt($(this).siblings(".prd_num").val());
						--num;
						if(num<1){
							num=1;
						}
						$(this).siblings(".prd_num").val(num);
					})
					$(".all input").click(function(){
						if($(this).is(":checked")){
							$(".goods input[type=checkbox]").prop("checked","checked");
							$(".all input[type=checkbox]").prop("checked","checked");
						}else{
							$(".goods input[type=checkbox]").removeAttr("checked")
							$(".all input[type=checkbox]").removeAttr("checked")
						}
						
					})
					$(".goods input[type=checkbox]").bind("click",function(){
						if(!cont()){
							$(".all input").prop("checked","checked");
						}else{
							$(".all input").removeAttr("checked");
						}
					})
					
				})

				
					