$(function(){
					var cont = function(){
						var len1 = $(".goods input[type=checkbox]").length;
						var len2 = $(".goods input[type=checkbox]:checked").length;
						return len1-len2; 
					}
					
					var total = function(){
						var check = $(".goods input[type=checkbox]:checked");
						var a = 0;
						var b = 0;
						for(var i=0;i<check.length;i++){							
							a+=parseFloat(check.eq(i).parents(".list").find(".money2").text());
							b+=parseFloat(check.eq(i).parents(".list").find(".prd_num").val());
						}
						$(".acount_right .all_money").text(a.toFixed(2));
						$(".acount_right .check-num").text(b);
					}
					
					
					$(".btn-right").click(function(){
						var num = parseInt($(this).siblings(".prd_num").val());
						++num;
						if(num>99){
							num=99;
						}
						var tdV3 = parseInt($(".money p:nth-last-child(1)").text());
						$(this).parents("dd").siblings(".money2").text((tdV3*num).toFixed(2));
						
						$(this).siblings(".prd_num").val(num);
						total();
					})
					$(".btn-left").click(function(){
						var num = parseInt($(this).siblings(".prd_num").val());
						--num;
						if(num<1){
							num=1;
						}
						var tdV3 = parseInt($(".money p:nth-last-child(1)").text());
						$(this).parents("dd").siblings(".money2").text((tdV3*num).toFixed(2));
						$(this).siblings(".prd_num").val(num);
						total();
					})
					$(".all input").click(function(){
						if($(this).is(":checked")){
							$(".goods input[type=checkbox]").prop("checked","checked");
							$(".all input[type=checkbox]").prop("checked","checked");
							total();
						}else{
							$(".goods input[type=checkbox]").removeAttr("checked")
							$(".all input[type=checkbox]").removeAttr("checked")
							total();
						}
						
					})
					$(".goods input[type=checkbox]").bind("click",function(){
						if(!cont()){
							$(".all input").prop("checked","checked");
						}else{
							$(".all input").removeAttr("checked");
						}
						total();
					})
					$(".goods .prd_num").change(function(){
						var numA = $(this).val();
						if(isNaN(numA)){
							numA=1;
						}else if(numA>99){
							numA=99;
						}else if(numA<1){
							numA=1;
						}
						numA = Math.round(numA);
						$(this).val(numA);
						var tdV3 = parseInt($(".money p:nth-last-child(1)").text());
						$(this).parents("dd").siblings(".money2").text((tdV3*numA).toFixed(2));
						total();			
					})
					
					//删除
					
					
				})	