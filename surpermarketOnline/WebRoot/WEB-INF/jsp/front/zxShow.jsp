<%@ page language="java" pageEncoding="UTF-8"%><!DOCTYPE html>
<html>	<%@include file="inc/inc_css.jsp" %>	<link rel="stylesheet" href="${ctx}/resource/front/css/news_center.css" />
	<body>	<%@include file="inc/inc_head.jsp" %>		<div class="content">			<div class="container">				<div class="row">
					<div class="col-lg-12 main_news">
						<div class="title">							<h3>${map.title }</h3>						</div>						<div class="words">
							<img class="img-responsive col-md-4" src="${ctx }/${map.pic}" />							<div class="main_text">								${map.content }							</div>
						</div>					</div>				</div>			</div>		</div>		<%@include file="inc/inc_foot.jsp" %>
	</body></html>