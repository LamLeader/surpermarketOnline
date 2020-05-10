<%@ page language="java" pageEncoding="UTF-8"%><!DOCTYPE html>
<html>	<%@include file="inc/inc_css.jsp" %>		<script src="${ctx}/resource/front/js/order.js"></script>		<link rel="stylesheet" href="${ctx}/resource/front/css/order.css" />
	<body>		<%@include file="inc/inc_head.jsp" %>
		<div class="content">			<div class="container">
				<div class="row">
					<div class="col-md-12 right">
						<div class="head"><h3>我的订单</h3></div>						<div class="main">
						</div><!--main end-->						<ul class="col-md-12 goods">						<c:forEach items="${orderList }" var="lists">							<li class="list">								<div class="col-md-7 main_left">									<div class="product">										<a href="pro_center.html">${lists.productDetail }</a>									</div>								</div>								<div class="col-md-5 main_right">									<div class="shop_right shop">										<dl>											<dd class="del">												<a href="##" onclick="deleteOne('${lists.id}');">删除</a>											</dd>										</dl>									</div>								</div>								<div>									<ul>									<li>价格: ${lists.allPrice }</li>									<li>状态: ${lists.status }</li>									<li>订单编号: ${lists.orderNum }</li>									<li>物流信息:<br>${lists.pl } </li>								</ul>								</div>							</li><!--list end-->							</c:forEach>						</ul><!--goods end-->					</div><!--right end-->				</div><!--row end-->
			</div><!--container end-->
		</div>		<%@include file="inc/inc_foot.jsp" %>	</body><script type="text/javascript">function deleteOne(id) {		if (!confirm("确定要删除吗?")) {			return false;		}		var params = {			id : id		};		$.post("deleteOneOrder.html", params, function(result) {			result = eval("(" + result + ")");			if (result.status == "true" || result.status == true) {				alert('成功');				window.location.reload();			}		});	}</script></html>
