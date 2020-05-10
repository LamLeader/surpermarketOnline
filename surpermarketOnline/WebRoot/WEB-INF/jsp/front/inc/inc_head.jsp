<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="/WEB-INF/tld/c.tld"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<script>
	var ctx = '${ctx}';
</script>
<div class="header">
				<div class="container">
				<div class="header_top">
					<div class="login">
						<ul class="nav-pills">
							<c:if test="${customerBean!=null }">
						    	<li><a href="${ctx }/front/myOrder.html">我的订单</a></li>
						    	<li>|</li>
						    	<li><a href="${ctx }/front/mine.html">我的信息</a></li>
						    	<li>|</li>
						    	<li><a href="${ctx }/front/out.html">注销</a></li>
					    	</c:if>
					    <c:if test="${customerBean==null }">
					    	<li><a href="login.html">登录</a></li>
					    	<li>|</li>
					    	<li><a href="register.html">注册</a></li>
					    </c:if>
					    <li>|</li>
					    <!-- <li><a href="contact.html">售后维权</a></li> -->
						</ul>
					</div>
					<div class="car"><a href="shopcar.html"><img src="${ctx }/resource/front/images/index_img/car.png" />我的购物车</a></div>
				</div>
			</div>
		</div>
		<!--header end-->
		<!--nav-->
		<div class="main_nav">
			<div class="container">
				<nav class="navbar navbar-default" role="navigation">
				   <div class="navbar-header">
				      <button type="button" class="navbar-toggle" data-toggle="collapse" 
				         data-target="#example-navbar-collapse">
				         <span class="icon-bar"></span>
				         <span class="icon-bar"></span>
				         <span class="icon-bar"></span>
				      </button>
				      <div class="logo">
				      	<h1>超市导购系统</h1>
				      </div>
				   </div>
				   <div class="collapse navbar-collapse" id="example-navbar-collapse">
				      <ul class="nav navbar-nav">
				         <li><a href="index.html">首页</a></li>
						<li><a href="all.html">全部商品</a></li>
						<li><a href="zxList.html">商品资讯</a></li>
				      </ul>
				   </div>
				</nav>
			</div>
		</div>