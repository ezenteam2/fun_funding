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
			$("#cate_all").click(function(){
				$("[name=cate_title]").val("");
				$("#cate_form").submit();

			});

			$("#cate_edu").click(function(){
				$("[name=cate_title]").val("교육");
				$("#cate_form").submit();

			});
			$("#cate_fashion").click(function(){
				$("[name=cate_title]").val("패션");
				$("#cate_form").submit();

			});
			$("#cate_homeliving").click(function(){
				$("[name=cate_title]").val("홈리빙");
				$("#cate_form").submit();

			});
			$("#cate_culture").click(function(){
				$("[name=cate_title]").val("공연");
				$("#cate_form").submit();

			});
			$("#cate_sports").click(function(){
				$("[name=cate_title]").val("스포츠");
				$("#cate_form").submit();

			});
			$("#cate_book").click(function(){
				$("[name=cate_title]").val("출판");
				$("#cate_form").submit();

			});
			$("#cate_animal").click(function(){
				$("[name=cate_title]").val("반려동물");
				$("#cate_form").submit();

			});
			$("#cate_tech").click(function(){
				$("[name=cate_title]").val("테크");
				$("#cate_form").submit();

			});
			
		});
		
		function go(code){
			$(location).attr("href", "storeDetail.do?sto_code="+code);
		}
		
	
</script>
<link rel="stylesheet" href="css/kb_w_user_StoreList.css"/>
<script src="js/kb_w_user_StoreList.js"></script>
</head>
<body>
	
	<div class="main">
	    <div class="container tim-container" style="max-width:1200px; padding-top:100px">
	    <form method="post" id="cate_form">
	    <div class="row" style="text-align:center; margin-top:50px;">
				<div class="" style="text-align:center; width:120px; display:inline-block; cursor:pointer" id="cate_all">
					<img src="${path}/img/all.png" alt="Circle Image" class="img-circle" style="width:100px;">
					<h6>전체보기</h6>
				</div>
				<div class="" style="text-align:center; width:120px; display:inline-block; cursor:pointer"  id="cate_edu">
					<img src="${path}/img/edu.PNG" alt="Circle Image" class="img-circle" style="width:100px;">
					<h6>교육·키즈</h6>
				</div>
				<div class="" style="text-align:center; width:120px; display:inline-block; cursor:pointer"  id="cate_fashion">
					<img src="${path}/img/beauty.PNG" alt="Circle Image" class="img-circle" style="width:100px;">
					<h6>패션·잡화·뷰티</h6>
				</div>
				<div class="" style="text-align:center; width:120px; display:inline-block; cursor:pointer"  id="cate_homeliving">
					<img src="${path}/img/homeLiving.png" alt="Circle Image" class="img-circle" style="width:100px;">
					<h6>홈리빙·디자인소품</h6>
				</div>
				<div class="" style="text-align:center; width:120px; display:inline-block; cursor:pointer"   id="cate_culture">
					<img src="${path}/img/culture.PNG" alt="Circle Image" class="img-circle" style="width:100px;">
					<h6>공연·컬쳐</h6>
				</div>
				<div class="" style="text-align:center; width:120px; display:inline-block; cursor:pointer"  id="cate_sports">
					<img src="${path}/img/sports.png" alt="Circle Image" class="img-circle" style="width:100px;">
					<h6>스포츠·모빌리티</h6>
				</div>
				<div class="" style="text-align:center; width:120px; display:inline-block; cursor:pointer"  id="cate_book">
					<img src="${path}/img/book.png" alt="Circle Image" class="img-circle" style="width:100px;">
					<h6>출판</h6>
				</div>
				<div class="" style="text-align:center; width:120px; display:inline-block; cursor:pointer"  id="cate_animal">
					<img src="${path}/img/dog.PNG" alt="Circle Image" class="img-circle" style="width:100px;">
					<h6>반려동물</h6>
				</div>
				<div class="" style="text-align:center; width:120px; display:inline-block; cursor:pointer"  id="cate_tech">
					<img src="${path}/img/electro.PNG" alt="Circle Image" class="img-circle" style="width:100px;">
					<h6>테크·가전</h6>
				</div>
            </div>
            <input type="hidden" name="cate_title">
            </form>
			 <div id="Product_Search_Div">
        <span id="Cate_Search_Span">${cateTitle}</span>
        <div id="Search_Div">
        	<form method="post">
                <ul class="nav navbar-nav">
                  <li class="active">
                    <div class="form-group">
                      <input type="text" value="" placeholder="상품을 검색해주세요!" class="form-control" style="background-color: transparent; color:black;
                      margin:15px 3px; border:none; margin-top:-4px; margin-left:0px" name="sto_title"/>
                    </div>
                  </li>
                  <li><button type="submit" class="fa fa-search" style="border:none; background-color: transparent; color:black;
                    margin: 26px 3px; margin-top:12px; margin-right:30px"></button></li>
                    <li><select class="form-control" style="width:150px">
                	<option></option>
                	<option>낮은가격순</option>
                	<option>높은가격순</option>
                </select></li>
                </ul>
               
              </form>
        	
        </div>

    </div><br>
    <div style="background-color: rgb(245, 247, 250); margin:30px auto 0;">
    <div class="row" style="padding-bottom:100px;">
    		
          <c:forEach items="${slist}" var="store">
        	<div class="col-xs-12 col-md-3 item" onclick="go(${store.sto_code})">
            <div class="thumbnail storeList-item">
              <img src="img/${store.sto_image}" alt="..." style="height:180px; width:320px">
              <div class="caption store-info">
                
                <p class="item__title">${store.sto_title }</p>
                <span class="item__category">${store.cate_title}</span><span class="item__money"><span id="price">
                <fmt:formatNumber type="number" maxFractionDigits="3" value="${store.sto_price}"/></span>원</span>
              </div>
            </div>
          </div>
          </c:forEach>
          
      </div>	
      </div>

      <div id="pagination_Div">
        <ul class="pagination">
            <li><a href="#">1</a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">4</a></li>
            <li><a href="#">5</a></li>
        </ul>
    </div>
	    </div>
	</div>
	<!-- end main -->
</body>
</html>