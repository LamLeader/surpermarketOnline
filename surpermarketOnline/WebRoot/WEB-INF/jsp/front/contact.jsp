<%@ page language="java" pageEncoding="UTF-8"%><!DOCTYPE html>
<html><%@include file="inc/inc_css.jsp" %><link rel="stylesheet" href="${ctx}/resource/front/css/contact_us.css" />
	<body>	<%@include file="inc/inc_head.jsp" %>
		<div class="content">			<div class="container">										
					<div class="title">
						<h3>联系我们</h3>
					</div>					<div class="col-md-4 map">
						<!--百度地图容器-->	  					<div style="width:100%;height:296px;border:#ccc solid 1px;" id="dituContent"></div>	  					<script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>	  					<script type="text/javascript" src="${ctx}/resource/front/js/map.js"></script>
					</div>					<div class="col-md-8 message">						<form id="registerFormcustomer">							<div class="input-group">								<span class="input-group-addon">电话：</span>								<input type="text" class="form-control" id="phone"  name="phone" placeholder="联系电话">							</div>							<textarea class="form-control" name="content" placeholder="反馈内容"></textarea>							<div class="headup">								<input type="button" onclick="mineSave();" value="提交" />							</div>						</form>					</div>					<div class="mes">						<div class="col-md-6 col-sm-4">
							<p>联系我们</p>							<p>电话：400-858-0698   传真：0755-8612 9326</p>
						</div>						<div class="col-md-3 col-sm-4">
							<p>微信公众号</p>							<p>asdhdbj</p>
						</div>						<div class="col-md-3 col-sm-4">
							<p>邮箱</p>							<p>asjdnwkdi@skd.net</p>
						</div>						<div class="col-md-6 col-sm-4 down">							<p>公司地址</p>							<p>地  址：xxxxxxxx</p>						</div>						<div class="col-md-3 col-sm-4 down">							<p>QQ</p>							<p>400-858-0698</p>						</div>					</div>
			</div>		</div>		<%@include file="inc/inc_foot.jsp" %>
	</body><script type="text/javascript">	function mineSave(){		$.ajax({		      type: "POST",		      async:false,  // 设置同步方式		      cache:false,		      url: "${ctx}/front/contactSave.html",				data:$("#registerFormcustomer").serializeArray(),				success:function(result){				result = eval("("+result+")");				if(result.status=='true'||result.status==true){						alert('反馈成功');						window.location.reload();				}		      }			});	}</script></html>
