<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="/template/header.jsp" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
		$(document).ready(function(){
		})
</script>
</head>
<body>


	<div class="main">
	    <div class="container tim-container" style="max-width:1200px; padding-top:100px; padding-bottom:50px;">

	<h3>만든 프로젝트</h3>
	        
	    </div>

	<div class="jumbotron" style="padding-bottom:50px;">
	<div class="container tim-container" style="max-width:1200px;background-color:#EEEEEE;"> 


		<c:forEach var="pList" items="${list}">
		<div class="display_item" class="row">
			<div class="col-xs-12 col-md-3 item">
				<div class="thumbnail">
					<img src="${pList.pro_image}" alt="...">
					<div class="caption">
						<p class="item__title">${pList.pro_title}</p>
						<span class="item__category">패션.잡화 | MOD</span><br>
						<span class="item__money">모금율 : 90%</span>
					</div>
				</div>
			</div>
		</div>
		</c:forEach>

	</div>
	</div>


	    
	</div>
	
	
	<!-- end main -->
</body>
</html>