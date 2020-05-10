<%@ page language="java" pageEncoding="UTF-8"%>
  <!DOCTYPE html>
<html>
	<%@include file="inc/inc_css.jsp" %>
	<link rel="stylesheet" href="${ctx}/resource/front/css/index.css" />
	<script type="text/javascript" src="${ctx}/resource/front/js/jquery.touchSwipe.min.js" ></script>
	<script src="${ctx}/resource/front/js/lunbo.js"></script>
	<body>
		<%@include file="inc/inc_head.jsp" %>
		<div class="continer">
		<center>
		<div id="myCarousel" class="carousel slide" >
			<!-- 轮播（Carousel）指标 -->
			<ol class="carousel-indicators">
				<c:forEach items="${list3 }" var="lists" varStatus="vs">
					<li data-target="#myCarousel" data-slide-to="${vs.index }" class="${vs.index==0?'active':'' }"></li>
				</c:forEach>
			</ol>
			<!-- 轮播（Carousel）项目 -->
			<div class="carousel-inner">
				<c:forEach items="${list3 }" var="lists" varStatus="vs">
					<div class="item ${vs.index==0?'active':'' }">
						<img src="${ctx}/${lists.pic}">
					</div>
				</c:forEach>
			</div>
		</div>
		</center>
		</div>
		<div class="food">
			<div class="container">
				<div class="col-md-12 title">
					<h3>推荐产品</h3>
				</div>
					<div class="row">
							<ul class="pic">
								<c:forEach items="${list }" var="lists">
								<li class="col-md-4 col-sm-4 col-xs-4 ">
									<div class="foodpic">
										<a href="${ctx }/front/detail.html?id=${lists.id}">
											<img src="${ctx}/${lists.productPic1}" />
										</a>
										<div class="pic_h">
											<a href="${ctx }/front/detail.html?id=${lists.id}">
												<img src="${ctx }/resource/front/images/index_img/hover.png"/>
											</a>
										</div>
									</div>
									<div class="word">
										<p>${lists.productName}</p>
										<p>卖家：${lists.name }</p>
										<p>原价：${lists.price }元，特价：<span>${lists.oldPrice }元</span></p>
									</div>
								</li>
								</c:forEach>
							</ul>
						</div>
				<div class="line_pic">
					<img src="${ctx }/resource/front/images/index_img/line_03.jpg">
				</div>
			</div>
		</div>
		<%@include file="inc/inc_foot.jsp" %>
	</body>

</html>