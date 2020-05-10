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
			var checkPassword = function(v){
				var reg1 = /^[a-zA-Z0-9]{6,16}$/;
				if(reg1.test(v)){
					 $('#passwordTip').popover('hide');
				}else{
					 $('#passwordTip').popover('show');
				}
			}
			
			var checkLogin = function(){		
				var reg = /^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$|(13[0-9]{9})/;
				var reg1 = /^[a-zA-Z0-9]{6,16}$/;
				var emailv = document.getElementById("email").value;
				var passwordv = document.getElementById("password").value;
				if(emailv ==''){
					alert("邮箱不能为空")
					return false;
				}
				else if(!reg.test(emailv)){
					 $('#emailTip').popover('show');
					 return false;
				}
				if(passwordv ==''){
					alert("密码不能为空")
					return false;
				}
				else if(!reg1.test(passwordv)){
					 $('#passwordTip').popover('show');
					 return false;
				}
			//获取复选框，checked表示是否勾选，勾选返回true，否则返回false
			var isAutoLogin = document.getElementById("isAutoLogin").checked;

			setCookie(emailv,passwordv,isAutoLogin);

			return true;
		}
		//设置cookie
		var setCookie = function(email,password,isAutoLogin){
			if(isAutoLogin){
				//获取当前时间
				var now = new Date();
				//设置过期时间
				now.setMinutes(now.getMinutes()+1);
				//拼装过期时间
				var exp = "expires="+now.toUTCString();
				//设置cookie
				document.cookie="email="+email+";"+exp+";path=/";
				document.cookie="password="+password+";"+exp+";path=/";
				document.cookie="isAutoLogin=true;"+exp+";path=/";
			}else{
				document.cookie="email=";
				document.cookie="password=";
				document.cookie="isAutoLogin=";
			}
		}
		
		//获取cookie
		var loadCookie = function(){
			//email=admin@qq.com; password=8876554
			//console.log(document.cookie);
			//判断是否有cookie
			if(document.cookie.length>0){
				var cookies = document.cookie.split(";");
				var emails = cookies[0].split("=");
				var passwords = cookies[1].split("=");
				var isAutoLogin = cookies[1].split("=");
				
				document.getElementById("email").value=emails[1];
				document.getElementById("password").value=passwords[1];
				document.getElementById("isAutoLogin").checked=isAutoLogin[1];
			}
		}
		
		//获取焦点边框变色
$(function(){
		$("#email").focus(function(){
			$(this).parent().css("border-color","#fc6e1c")
			$(this).css("border-left-color","#fc6e1c")
			$(this).prev().children().attr("src","images/login_img/person01.png");
		})
		$("#email").blur(function(){
			$(this).parent().css("border-color","#525252")
			$(this).css("border-left-color","#525252")
			$(this).prev().children().attr("src","images/login_img/person.png");
		})
		$("#password").focus(function(){
			$(this).parent().css("border-color","#fc6e1c")
			$(this).css("border-left-color","#fc6e1c")
			$(this).prev().children().attr("src","images/login_img/person01.png");
		})
		$("#password").blur(function(){
			$(this).parent().css("border-color","#525252")
			$(this).css("border-left-color","#525252")
			$(this).prev().children().attr("src","images/login_img/person.png");
		})
	})
