<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8" contentType="text/html;charset=utf-8" %>
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
	<link rel="stylesheet" href="${ctx}/resource/mine/six/css/reset.css">
	<link rel="stylesheet" href="${ctx}/resource/mine/six/css/public.css">
</head>
<body>
<div class="public-header-warrp">
	<div class="public-header">
		<div class="content">
			<div class="public-header-logo"><a href="" style="width: 500px;"><i></i><h3>超市导购系统</h3></a></div>
			<div class="public-header-admin fr">
				<p class="admin-name">${adminBean.username } 您好！</p>
				<div class="public-header-fun fr">
					<%--<a href="" class="public-header-man">管理</a>--%>
					<a href="${ctx }/adminLogin/out.html" class="public-header-loginout">安全退出</a>	
				</div>
			</div>
		</div>
	</div>
</div>
<div class="clearfix"></div>
<!-- 内容展示 -->
<div class="public-ifame mt20">
	<div class="content">
		<div class="clearfix"></div>
		<!-- 左侧导航栏 -->
		<div class="public-ifame-leftnav">
			<div class="public-title-warrp">
				<div class="public-ifame-title ">
					<a href="">首页</a>
				</div>
			</div>
			<ul class="left-nav-list">
				<li class="public-ifame-item">
					<a href="javascript:;">个人中心</a>
					<div class="ifame-item-sub">
						<ul>
							<li><a href="${ctx}/admin/password.html" target="content">修改密码</a></li>
						</ul>
					</div>
				</li>
				<li class="public-ifame-item">
					<a href="javascript:;">首页轮播管理</a>
					<div class="ifame-item-sub">
						<ul>
							<li><a href="${ctx}/admin/lbt/frame.html?flag=1" target="content">首页轮播列表</a></li>
						</ul>
					</div>
				</li>
				<li class="public-ifame-item">
					<a href="javascript:;">商品资讯管理</a>
					<div class="ifame-item-sub">
						<ul>
							<li><a href="${ctx}/admin/zx/frame.html?flag=1" target="content">商品资讯列表</a></li>
						</ul>
					</div>
				</li>
				<li class="public-ifame-item">
					<a href="javascript:;">客户审核管理</a>
					<div class="ifame-item-sub">
						<ul>
							<li><a href="${ctx}/admin/customer/frame.html?flag=1" target="content">客户列表</a></li>
						</ul>
					</div>
				</li>
				<li class="public-ifame-item">
					<a href="javascript:;">商品分类管理</a>
					<div class="ifame-item-sub">
						<ul>
							<li><a href="${ctx}/admin/types/frame.html?flag=1" target="content">商品分类列表</a></li>
						</ul>
					</div>
				</li>
				
				<li class="public-ifame-item">
					<a href="javascript:;">商品审核管理</a>
					<div class="ifame-item-sub">
						<ul>
							<li><a href="${ctx}/admin/product/frame.html?flag=1" target="content">商品列表</a></li>
						</ul>
					</div>
				</li>
				<li class="public-ifame-item">
					<a href="javascript:;">卖家审核管理</a>
					<div class="ifame-item-sub">
						<ul>
							<li><a href="${ctx}/admin/user/frame.html?flag=1" target="content">卖家列表</a></li>
						</ul>
					</div>
				</li>
				<%-- <li class="public-ifame-item">
					<a href="javascript:;">售后维权管理</a>
					<div class="ifame-item-sub">
						<ul>
							<li><a href="${ctx}/admin/contact/frame.html?flag=1" target="content">售后维权信息列表</a></li>
						</ul>
					</div>
				</li> --%>
				
				<li class="public-ifame-item">
					<a href="javascript:;">统计中心</a>
					<div class="ifame-item-sub">
						<ul>
							<li><a href="${ctx}/admin/tj/tj1.html" target="content">按天销售额</a></li>
						</ul>
					</div>
				</li>
			</ul>
		</div>
		<!-- 右侧内容展示部分 -->
		<div class="public-ifame-content">
		<iframe name="content" src="${ctx }/admin/main.html" frameborder="0" id="mainframe" scrolling="yes" marginheight="0" marginwidth="0" width="100%" style="height: 700px;"></iframe>
		</div>
	</div>
</div>
<script src="${ctx}/resource/mine/six/js/jquery.min.js"></script>
<script>
$().ready(function(){
	var item = $(".public-ifame-item");

	for(var i=0; i < item.length; i++){
		$(item[i]).on('click',function(){
			$(".ifame-item-sub").hide();
			if($(this.lastElementChild).css('display') == 'block'){
				$(this.lastElementChild).hide()
				$(".ifame-item-sub li").removeClass("active");
			}else{
				$(this.lastElementChild).show();
				$(".ifame-item-sub li").on('click',function(){
					$(".ifame-item-sub li").removeClass("active");
					$(this).addClass("active");
				});
			}
		});
	}
});
</script>
</body>
</html>
