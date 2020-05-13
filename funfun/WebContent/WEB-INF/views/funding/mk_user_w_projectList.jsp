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
<link rel="stylesheet" href="css/mk_user_w_projectList.css">
<script>
	$(document).ready(function(){
		
	});
</script>
</head>
<body>
	<div class="main">
	    <div class="container tim-container" style="max-width:1200px; padding-top:100px">
	    <!-- 분류 -->
	    	<div>
		  		<ul class="nav nav-tabs justify-content-center">
					<li class="active"><a href="#Bla">카테고리</a></li>
					<li><a href="#nice">오픈예정</a></li>
				</ul>
			</div>
		<!-- 카테고리 -->
			<div class="row project-category" >
				<div class="categoryList">
					<img src="${path}/img/all.png" alt="Circle Image" class="img-circle" style="width:100px;">
					<h6>전체보기</h6>
				</div>
				<div class="categoryList">
					<img src="${path}/img/edu.PNG" alt="Circle Image" class="img-circle" style="width:100px;">
					<h6>교육·키즈</h6>
				</div>
				<div class="categoryList">
					<img src="${path}/img/beauty.PNG" alt="Circle Image" class="img-circle" style="width:100px;">
					<h6>패션·잡화·뷰티</h6>
				</div>
				<div class="categoryList">
					<img src="${path}/img/homeLiving.png" alt="Circle Image" class="img-circle" style="width:100px;">
					<h6>홈리빙·디자인소품</h6>
				</div>
				<div class="categoryList">
					<img src="${path}/img/culture.PNG" alt="Circle Image" class="img-circle" style="width:100px;">
					<h6>공연·컬쳐</h6>
				</div>
				<div class="categoryList">
					<img src="${path}/img/sports.png" alt="Circle Image" class="img-circle" style="width:100px;">
					<h6>스포츠·모빌리티</h6>
				</div>
				<div class="categoryList">
					<img src="${path}/img/book.png" alt="Circle Image" class="img-circle" style="width:100px;">
					<h6>출판</h6>
				</div>
				<div class="categoryList">
					<img src="${path}/img/dog.PNG" alt="Circle Image" class="img-circle" style="width:100px;">
					<h6>반려동물</h6>
				</div>
				<div class="categoryList">
					<img src="${path}/img/electro.PNG" alt="Circle Image" class="img-circle" style="width:100px;">
					<h6>테크·가전</h6>
				</div>
            </div>
			
			<div class="ProjectListHead_bar">
				<h3 class="ProjectListHead_title">전체보기</h3>
				<form class="ProjectListHead_search">
					<label for="search-keyword">
						<input class="" id="search-keyword" type="search" placeholder="검색" value="">
						<button type="submit" style="border:none; background-color: transparent; color:black;margin: 26px 3px;" class="fa fa-search" aria-label="검색"></button>
					</label>
				</form>
				<div class="select-sort ProjectListHead_sort">
					<select name="status" class="">
						<option value="all">전체</option>
						<option value="now">진행중</option>
						<option value="end">종료된</option>
					</select>
				</div>
				<div class="select-sort ProjectListHead_sort">
					<select name="sort" class="">
						<option value="recommend">추천순</option>
						<option value="popluar">인기순</option>
						<option value="recent">최신순</option>
						<option value="amount">펀딩액순</option>
						<option value="closing">마감임박순</option>
					</select>
				</div>
			</div>
		<!-- 리스트 -->
			<div style="background-color: rgb(245, 247, 250); margin:30px auto 0;">
					<div class="row">
				<c:forEach var="proj" items="${plist}">
						<div class="col-xs-12 col-md-3 item">
							<div class="thumbnail projectList-item">
								<img alt="..." src="img/${proj.pro_image}">
								<div class="caption proj-info">
									<p class="ProjectList-title">${proj.pro_title}</p>
									<span class="ProjectList-maker">${proj.cate_title} | ${proj.maker_name}</span>
									<span class="ProjectList-rate">모금율 : 90%</span>
								</div>
							</div>
						</div>
				</c:forEach>
					</div>
			</div>
	        
	    </div>
	</div>
	<!-- end main -->
</body>
</html>