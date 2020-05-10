<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<script>
var ctx='${ctx}';
</script>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>超市导购系统</title>
	<link rel="stylesheet" href="${ctx}/resource/mine/six/css/reset.css" />
	<link rel="stylesheet" href="${ctx}/resource/mine/six/css/login.css" />
	<script src="${ctx}/resource/jquery-1.8.3.min.js" type="text/javascript"></script>
	<script type="text/javascript" src="${ctx }/resource/My97DatePicker/WdatePicker.js"></script>
	<style type="text/css">
		
	.logo{
	   height: 60px;
	   width: 80px;
	   /* border: 1px solid red; */
	}
	.leftTitle{
	   height: 60px;
	   width: 60%;
	  float:left;
	}
	.rightLogo{
	   height: 60px;
	   width: 40%;
	   float:right;
	}
	</style>
</head>
<body >
<div class="page" >
	<div class="loginwarrp">
		<div class="logo">
		   <div class="leftTitle">超市导购系统</div>
		   <div class="rightLogo"><img alt="" src="${ctx}/resource/mine/six/shoppingCar.png"></div>
		</div>
        <div class="login_form">
			<form name="Login" method="post" id="login_form">
				<li class="login-item">
					<span>用户名：</span>
					<input type="text" name="username" id="login_username" class="login_input">
				</li>
				<li class="login-item">
					<span>密　码：</span>
					<input type="password" name="password" id="login_password" class="login_input">
				</li>
				<li class="login-item">
					<span>角　色：</span>
            <select class="login_input" name="type" id="type">
            	<option value="卖家">卖家</option>
            	<option value="超级管理员">超级管理员</option>
            </select>
				</li>
				<%--
				<li class="login-item verify">
					<span>验证码：</span>
					<input type="text" name="CheckCode" class="login_input verify_input">
				</li> 
				<img src="${ctx}/resource/mine/six/images/verify.png" border="0" class="verifyimg" />--%>
				<div class="clearfix"></div>
				<li class="login-sub">
					<input type="button" name="Submit" onclick="loginCheck();" value="登录" />
				</li>         
			<%----%>
				<li class="login-sub">
					<input type="button" name="Submit" onclick="showRegisteruser();" value="卖家注册" />
				</li>         
			 
           </form>
	<form action="" name="Login" method="post" id="registerFormuser" style="display: none;">
				<li class="login-item">
					<input type="text" id="user_username" name="username" class="login_input" placeholder="用户名" autocomplete="off"/>
				</li>
				<li class="login-item">
					<input type="password" id="user_password" name="password" class="login_input" placeholder="密码" oncontextmenu="return false" onpaste="return false" />
				</li>
				<li class="login-item">
<input type="text" class="login_input" placeholder="姓名" id="name" name="name"/>
				</li>
				<li class="login-item">
<input type="text" class="login_input" placeholder="工号" id="gh" name="gh"/>
				</li>
				<li class="login-item">
<input type="text" class="login_input" placeholder="手机" id="mobile" name="mobile"/>
				</li>
				<li class="login-sub">
					<input type="button" name="Submit" onclick="registerSaveuser();" value="注册" />
				</li>         
				<li class="login-sub">
					<input type="button" name="Submit" onclick="showLogin();" value="我有账号，我要登录" />
				</li>         
	</form>
		</div>
	</div>
</div>
</body>
<script type="text/javascript">
	function showRegisteruser(){
		$("#login_form").hide();
		$("#registerFormuser").show();
	}
	function showLogin(){
		$("#login_form").show();
		$("#registerFormuser").hide();
	}	
	function loginCheck(){
		var username = $("#login_username").val();
		var password = $("#login_password").val();
		var type = $("#type").val();
		if(username==''||password==''){
			alert('用户名和密码必须填写');
			return false;
		}
		var aa="";
		var bb="";
		if(type=='卖家'){
			aa="${ctx}/userLogin/save.html";
			bb="${ctx}/user/index.html";
		}else{
			aa="${ctx}/adminLogin/save.html";
			bb="${ctx}/admin/index.html";
		}
		$.ajax({
		      type: "POST",
		      async:false,  // 设置同步方式
		      cache:false,
		      url: aa,
				data:$("#login_form").serializeArray(),
				success:function(result){
				result = eval("("+result+")");
				if(result.status=='true'||result.status==true){
					if(result.msg=='1'){
						alert('登录成功');
						window.location.href=bb;
					}else if(result.msg=='0'){
						alert('密码或用户名错误');
					}
				}
		      }
			});
	}
	function registerSaveuser(){
		var username = $("#user_username").val();
		var password = $("#user_password").val();
		if(username==''||password==''){
			alert('用户名和密码必须填写');
			return false;
		}
		$.ajax({
		      type: "POST",
		      async:false,  // 设置同步方式
		      cache:false,
		      url: "${ctx}/userLogin/registerSave.html",
				data:$("#registerFormuser").serializeArray(),
				success:function(result){
				result = eval("("+result+")");
				if(result.status=='true'||result.status==true){
						alert('注册成功');
						window.location.href="${ctx}/user/index.html";
				}
		      }
			});
	}
</script>
</html>
