<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@include file="inc/inc_css.jsp" %>
		<script type="text/javascript" src="${ctx}/resource/front/js/pro_center.js" ></script>
		<link rel="stylesheet" href="${ctx}/resource/front/css/pro_center.css" />
	<body>
		<%@include file="inc/inc_head.jsp" %>
		<div class="content">
			<div class="container">
				<div class="row">
					<div class="col-lg-2 col-md-3 col-sm-3 col-xs-12 text">
						<div class="up">
							<span>产品中心</span>
						</div>
						<div class="down">
							<ul>
								<c:forEach items="${typesList }" var="typesLists">
									<li><a href="${ctx }/front/all.html?typesId=${typesLists.id}">${typesLists.typesName }</a></li>
								</c:forEach>
								
							</ul>
						</div>
					</div>
					<div class="col-lg-10 col-md-9 col-sm-9 main_pro">
						<div class="main">
							<div class="col-md-5">
								<img class="img-responsive" src="${ctx}/${map.productPic1}" />
							</div>
							<div class="col-md-6 word">
								<h3>${map.productName }</h3>
								<p>价格：${map.price }元</p>
								<p>促销价格：${map.oldPrice }元</p>
								<div class="mun">
									<span>购买数量：</span>
									<span id="reduce" disabled="disabled" onclick="reduce()">-</span>
									<input type="text" value="1" id="prd_num" name="numbs" maxlength="2" readonly="readonly" />
									<span id="add" onclick="add()">+</span>
								</div>
								<div class="buy">
									<%--
									<a href="confirm_order.html">立即购买</a> --%>
									<a href="##" onclick="addShopCar();">加入购物车</a>
								</div>
							</div>
						</div>
						<div class="details_list">
							<ul class="nav nav-tabs">
								<li class="col-md-6 col-sm-6">
									<a href="#first" data-toggle="tab">产品描述</a>
								</li>
								<li class="col-md-6 col-sm-6">
									<a href="#third" data-toggle="tab">产品评价</a>
								</li>
							</ul>
							<div class="tab-content">
								<div class="tab-pane fade in active" id="first">
									<div class="col-md-12">
										<p>${map.content }</p>
									</div>
								</div>
								<div class="tab-pane fade in" id="third">
									<div class="col-md-12">
										<div class="review-text">
								
								<c:forEach items="${list }" var="lists">
									<p>${lists.customerName }:${lists.content }(${lists.insertDate })</p>
								</c:forEach>
							  </div>
							  <div class="review-form">
								<form name="form1" id="form1" method="post">
								<input type="hidden" name="productId" value="${map.id }"/>
									<label>
									<span>评论内容:</span>
									<textarea name="content" id="content"></textarea>
									</label>
									<div class="text-right">
										<input class="btn btn-default" type="reset" name="reset" value="清空">
										<input class="btn btn-default" onclick="save(this);" type="button" name="Submit" value="发表评论">
									</div>
								</form>
							  </div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<%@include file="inc/inc_foot.jsp" %>
	</body>
<script type="text/javascript">
	function addShopCar(){
		if(!checkIsLogin()){
			alert('请先登录');
			window.location.href='${ctx}/front/login.html';
			return false;
		}
		var id = '${map.id}';
		var num = $("input[name='numbs']").val();
		$.post("addShopcar.html", {id:id,num:num}, function(result) {
			result = eval("(" + result + ")");
			if (result.status == "true" || result.status == true) {
				alert('添加成功');
				window.location.reload();
			} else {
				
			}
		});
	}

function save(src) {
  		if(!checkIsLogin()){
			alert('请先登录');
			window.location.href='${ctx}/front/login.html';
			return false;
		}
		$.post("productPinglunSave.html", $("#form1").serializeArray(), function(result) {
			result = eval("(" + result + ")");
			if (result.status == "true" || result.status == true) {
				alert('成功');
				window.location.reload();
			} else {
				alert('保存失败，请重试');
			}
		});
	}
</script>
</html>