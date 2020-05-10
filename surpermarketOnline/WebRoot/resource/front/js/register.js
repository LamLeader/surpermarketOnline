$(function(){
		 	$("[data-toggle='popover']").popover();
			});
			var checkEmail = function(v){
				var reg = /^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$|(13[0-9]{9})/;
				if(reg.test(v)){
					 $('#emailTip').popover('hide');
				}else{
					 $('#emailTip').popover('show');
				}
				
			}
			
			var checkE_mail = function(v){
				var reg2 = /^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/;
				if(reg2.test(v)){
					 $('#E_mailTip').popover('hide');
				}else{
					 $('#E_mailTip').popover('show');
				}
				
			}
			var checkPassword = function(v){
				var reg1 = /^[a-zA-Z0-9]{6,16}$/;
				if(reg1.test(v)){
					 $('#passwordTip').popover('hide');
				}else{
					 $('#passwordTip').popover('show');
				}
			}
			var recheckPassword = function(v){
				repassVal = $("#repassword").val()
				passwordVal = $("#password").val()
				if(repassVal == passwordVal){
					$('#repasswordTip').popover('hide');
				}else{
					 $('#repasswordTip').popover('show');
				}
			}
			
			var checkLogin = function(){		
				var reg = /^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$|(13[0-9]{9})/;
				var reg1 = /^[a-zA-Z0-9]{6,16}$/;
				var reg2 = /^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/;
				var emailv =$("#email").val();
				var passwordv = $("#password").val();
				var SMSv = $("#SMS").val();
				var Emailv = $("#Email").val();
				var repasswordv = $("#repassword").val();
				if( (emailv=="")||(passwordv=="")||(SMSv=="")||(Emailv=="")||(repasswordv=="")||($("#var").prop("checked")==false)){
						alert("必填项不能为空");
						return false;
					}
					else if(!reg.test(emailv)){
						$("#emailTip").popover('show');
						return false;
					}
					else if(!reg1.test(passwordv)){
						$("#passwordTip").popover('show');
						return false;
					}
					else if(!reg2.test(Emailv)){
						$("#E_mailTip").popover('show');
						return false;
					}
					else if(passwordv!=repasswordv){
						$("#repasswordTip").popover('show');
						return false;
					}
					else{
						alert("注册成功");
					}
			}
			
$(function(){
				$("#email").focus(function(){
					$(this).parent().css("border-color","#fc6e1c")
					$(this).css("border-left-color","#fc6e1c")
					$(this).prev().children().attr("src","images/register_img/person01.png");
				})
				$("#email").blur(function(){
					$(this).parent().css("border-color","#525252")
					$(this).css("border-left-color","#525252")
					$(this).prev().children().attr("src","images/register_img/person.png");
				})
				$("#SMS").focus(function(){
					$(this).parent().css("border-color","#fc6e1c")
					$(this).css("border-left-color","#fc6e1c")
					$(this).prev().children().attr("src","images/register_img/short01.png");
				})
				$("#SMS").blur(function(){
					$(this).parent().css("border-color","#525252")
					$(this).css("border-left-color","#525252")
					$(this).prev().children().attr("src","images/register_img/short.png")
				})
				$("#local").focus(function(){
					$(this).parent().css("border-color","#fc6e1c")
					$(this).css("border-left-color","#fc6e1c")
					$(this).prev().children().attr("src","images/register_img/china01.png");
				})
				$("#local").blur(function(){
					$(this).parent().css("border-color","#525252")
					$(this).css("border-left-color","#525252")
					$(this).prev().children().attr("src","images/register_img/china.png")
				})
				$("#city").focus(function(){
					$(this).parent().css("border-color","#fc6e1c")
					$(this).css("border-left-color","#fc6e1c")
				})
				$("#city").blur(function(){
					$(this).parent().css("border-color","#525252")
					$(this).css("border-left-color","#525252")
				})
				$("#county").focus(function(){
					$(this).parent().css("border-color","#fc6e1c")
					$(this).css("border-left-color","#fc6e1c")
				})
				$("#county").blur(function(){
					$(this).parent().css("border-color","#525252")
					$(this).css("border-left-color","#525252")
				})
				$("#Email").focus(function(){
					$(this).parent().css("border-color","#fc6e1c")
					$(this).css("border-left-color","#fc6e1c")
					$(this).prev().children().attr("src","images/register_img/message01.png");
				})
				$("#Email").blur(function(){
					$(this).parent().css("border-color","#525252")
					$(this).css("border-left-color","#525252")
					$(this).prev().children().attr("src","images/register_img/message.png")
				})
				$("#password").focus(function(){
					$(this).parent().css("border-color","#fc6e1c")
					$(this).css("border-left-color","#fc6e1c")
					$(this).prev().children().attr("src","images/register_img/person01.png");
				})
				$("#password").blur(function(){
					$(this).parent().css("border-color","#525252")
					$(this).css("border-left-color","#525252")
					$(this).prev().children().attr("src","images/register_img/person.png");
				})
				$("#repassword").focus(function(){
					$(this).parent().css("border-color","#fc6e1c")
					$(this).css("border-left-color","#fc6e1c")
					$(this).prev().children().attr("src","images/register_img/person01.png");
				})
				$("#repassword").blur(function(){
					$(this).parent().css("border-color","#525252")
					$(this).css("border-left-color","#525252")
					$(this).prev().children().attr("src","images/register_img/person.png");
				})
			})
