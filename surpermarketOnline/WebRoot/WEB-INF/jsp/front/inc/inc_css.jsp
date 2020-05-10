<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="/WEB-INF/tld/c.tld"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<script>
	var ctx = '${ctx}';
</script>

	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="${ctx}/resource/front/css/bootstrap.css" />
		<link rel="stylesheet" href="${ctx}/resource/front/css/common.css" />
		<script src="${ctx}/resource/front/js/jquery-1.11.0.js"></script>
		<script src="${ctx}/resource/front/js/bootstrap.js"></script>
		    <script type="text/javascript" src="${ctx}/resource/admin/js/ajaxfileupload.js"></script>
		   	<script>
	$(document).ready(function(){
		$(".nav-tabs a").click(function(){
			$(this).tab('show');
		});
		$('.nav-tabs a').on('shown.bs.tab', function(event){
			var x = $(event.target).text();         // active tab
			var y = $(event.relatedTarget).text();  // previous tab
			$(".act span").text(x);
			$(".prev span").text(y);
		});
	});
	function checkIsLogin(){
		var out =false;
		$.ajax({
		      type: "POST",
		      async:false,  // 设置同步方式
		      cache:false,
		      url: "${ctx}/front/checkIsLogin.html",
				data:{id:1},
				success:function(result){
				result = eval("("+result+")");
				if(result.status=='true'||result.status==true){
					out=true;
				}else{
					out=false;
				}
		      }
			});
			return out;
	}
	</script>
		<title>超市导购系统</title>
	</head>