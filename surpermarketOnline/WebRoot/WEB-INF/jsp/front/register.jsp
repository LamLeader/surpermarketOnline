<%@ page language="java" pageEncoding="UTF-8"%><!DOCTYPE html><html>	<%@include file="inc/inc_css.jsp" %>	<link rel="stylesheet" href="${ctx}/resource/front/css/register.css" />		<script type="text/javascript" src="${ctx}/resource/front/js/register.js" ></script>	<body>	<%@include file="inc/inc_head.jsp" %>		<div class="content jumbotron">			<div class="container">				<div class="col-md-4 col-md-offset-4 imfor">					<h3>会员注册</h3>					<form action="login.html" id="form" onsubmit="return checkLogin()">						<div class="input-group">							<span class="input-group-btn">								<img src="${ctx}/resource/front/images/register_img/person.png" />							</span>							<input type="text" class="form-control" id="customer_username" name="username" placeholder="账号">						</div>						<br />						<div class="input-group">							<span class="input-group-btn">								<img src="${ctx}/resource/front/images/register_img/person.png" />							</span>							<input type="password" class="form-control" id="customer_password" name="password" placeholder="密码">						</div><br />						<div class="input-group">							<span class="input-group-btn">								<img src="${ctx}/resource/front/images/register_img/person.png" />							</span>							<input type="text" class="form-control" id="customer_name" name="customerName" placeholder="姓名">						</div><br />						<div class="input-group">							<span class="input-group-btn">								<img src="${ctx}/resource/front/images/register_img/person.png" />							</span>							<select name="sex" id="customer_sex" class="form-control">				            	<option value="男">男</option>				            	<option value="女">女</option>				            </select>						</div><br />						<div class="input-group">							<span class="input-group-btn">								<img src="${ctx}/resource/front/images/register_img/person.png" />							</span>							<input type="text" class="form-control" id="customer_address" name="address" placeholder="地址">						</div><br />						<div class="input-group">							<span class="input-group-btn">								<img src="${ctx}/resource/front/images/register_img/person.png" />							</span>							<input type="text" class="form-control" id="customer_mobile" name="phone" placeholder="手机">						</div><br />																		<input type="buton" onclick="registerSave();" value="注 &nbsp &nbsp册" class="btn"/>						<div class="check">						   <label class="c-checkbox">						   	<input type="checkbox" id="var">						   	<span></span>我已阅读并同意遵守						   </label>						    <a href="###">法律声明和隐私条款</a> 						</div>					</form>				</div>			</div>		</div>		<%@include file="inc/inc_foot.jsp" %>	</body>	<script type="text/javascript">	function registerSave(){		var username = $("#customer_username").val();		var password = $("#customer_password").val();		if(username==''||password==''){			alert('用户名和密码必须填写');			return false;		}		$.ajax({		      type: "POST",		      async:false,  // 设置同步方式		      cache:false,		      url: "${ctx}/front/registerSave.html",				data:$("#form").serializeArray(),				success:function(result){				result = eval("("+result+")");				if(result.status=='true'||result.status==true){						alert('注册成功');						window.location.href="${ctx}/front/index.html";				}		      }			});	}	</script></html>