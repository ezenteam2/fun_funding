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
<link rel="stylesheet" href="css/kb_w_user_StoreList.css"/>

</head>
<body>
	<div class="main">
	    <div class="container tim-container" style="max-width:1200px; padding-top:100px">
	    <div class="row" style="text-align:center; margin-top:50px;">
				<div class="" style="text-align:center; width:120px; display:inline-block;">
					<img src="${path}/img/all.png" alt="Circle Image" class="img-circle" style="width:100px;">
					<h6>전체보기</h6>
				</div>
				<div class="" style="text-align:center; width:120px; display:inline-block;">
					<img src="${path}/img/edu.PNG" alt="Circle Image" class="img-circle" style="width:100px;">
					<h6>교육·키즈</h6>
				</div>
				<div class="" style="text-align:center; width:120px; display:inline-block;">
					<img src="${path}/img/beauty.PNG" alt="Circle Image" class="img-circle" style="width:100px;">
					<h6>패션·잡화·뷰티</h6>
				</div>
				<div class="" style="text-align:center; width:120px; display:inline-block;">
					<img src="${path}/img/homeLiving.png" alt="Circle Image" class="img-circle" style="width:100px;">
					<h6>홈리빙·디자인소품</h6>
				</div>
				<div class="" style="text-align:center; width:120px; display:inline-block;">
					<img src="${path}/img/culture.PNG" alt="Circle Image" class="img-circle" style="width:100px;">
					<h6>공연·컬쳐</h6>
				</div>
				<div class="" style="text-align:center; width:120px; display:inline-block;">
					<img src="${path}/img/sports.png" alt="Circle Image" class="img-circle" style="width:100px;">
					<h6>스포츠·모빌리티</h6>
				</div>
				<div class="" style="text-align:center; width:120px; display:inline-block;">
					<img src="${path}/img/book.png" alt="Circle Image" class="img-circle" style="width:100px;">
					<h6>출판</h6>
				</div>
				<div class="" style="text-align:center; width:120px; display:inline-block;">
					<img src="${path}/img/dog.PNG" alt="Circle Image" class="img-circle" style="width:100px;">
					<h6>반려동물</h6>
				</div>
				<div class="" style="text-align:center; width:120px; display:inline-block;">
					<img src="${path}/img/electro.PNG" alt="Circle Image" class="img-circle" style="width:100px;">
					<h6>테크·가전</h6>
				</div>
            </div>
			 <div id="Product_Search_Div">
        <span id="Cate_Search_Span">전체보기</span>
        <div id="Search_Div">        
            <input type="text" id="Search_Input" placeholder="검색">
            <button type="submit" class="Seach_Button">
                <i class="icon_Search"></i>
            </button>
        </div>

    </div>
    <div class="row">
        <div class="col-xs-12 col-md-3 item">
            <div class="thumbnail">
              <img src="img/oksusu.PNG" alt="...">
              <div class="caption">
                
                <p class="item__title">초~ 달아서 초당! 옥수수가 이렇게 달수가 있나?! 초당 옥수수</p>
                <span class="item__category">푸드 | 야수네</span><span class="item__money">25,000원</span>
              </div>
            </div>
          </div>
          <div class="col-xs-12 col-md-3 item">
            <div class="thumbnail">
              <img src="img/coolpants.PNG" alt="...">
              <div class="caption">
                
                <p class="item__title">COOL하게 돌아온 [편애 시원팬츠]</p>
                <span class="item__category">패션 | 편애팬츠</span><span class="item__money">15,000원</span>
              </div>
            </div>
          </div>
          <div class="col-xs-12 col-md-3 item">
            <div class="thumbnail">
              <img src="img/mask.PNG" alt="...">
              <div class="caption">
                
                <p class="item__title">숨쉬기 편한 마스크! 빨아쓰는 향균 & 자외선 차단 마스크</p>
                <span class="item__category">패션 | (주)코스코즈</span><span class="item__money">5,000원</span>
              </div>
            </div>
          </div>
          <div class="col-xs-12 col-md-3 item">
            <div class="thumbnail">
              <img src="img/dabuchi.PNG" alt="...">
              <div class="caption">
                
                <p class="item__title">다 붙여드립니다! 세계 최초 USB 핸드 실러 다부치</p>
                <span class="item__category">테크가전 | 우리민트</span><span class="item__money">20,000원</span>
              </div>
            </div>
          </div>
          <div class="col-xs-12 col-md-3 item">
            <div class="thumbnail">
              <img src="img/oksusu.PNG" alt="...">
              <div class="caption">
                
                <p class="item__title">초~ 달아서 초당! 옥수수가 이렇게 달수가 있나?! 초당 옥수수</p>
                <span class="item__category">푸드 | 야수네</span><span class="item__money">25,000원</span>
              </div>
            </div>
          </div>
          <div class="col-xs-12 col-md-3 item">
            <div class="thumbnail">
              <img src="img/oksusu.PNG" alt="...">
              <div class="caption">
                
                <p class="item__title">초~ 달아서 초당! 옥수수가 이렇게 달수가 있나?! 초당 옥수수</p>
                <span class="item__category">푸드 | 야수네</span><span class="item__money">25,000원</span>
              </div>
            </div>
          </div>
          <div class="col-xs-12 col-md-3 item">
            <div class="thumbnail">
              <img src="img/oksusu.PNG" alt="...">
              <div class="caption">
                
                <p class="item__title">초~ 달아서 초당! 옥수수가 이렇게 달수가 있나?! 초당 옥수수</p>
                <span class="item__category">푸드 | 야수네</span><span class="item__money">25,000원</span>
              </div>
            </div>
          </div>
          <div class="col-xs-12 col-md-3 item">
            <div class="thumbnail">
              <img src="img/oksusu.PNG" alt="...">
              <div class="caption">
                
                <p class="item__title">초~ 달아서 초당! 옥수수가 이렇게 달수가 있나?! 초당 옥수수</p>
                <span class="item__category">푸드 | 야수네</span><span class="item__money">25,000원</span>
              </div>
            </div>
          </div>
          <div class="col-xs-12 col-md-3 item">
            <div class="thumbnail">
              <img src="img/oksusu.PNG" alt="...">
              <div class="caption">
                
                <p class="item__title">초~ 달아서 초당! 옥수수가 이렇게 달수가 있나?! 초당 옥수수</p>
                <span class="item__category">푸드 | 야수네</span><span class="item__money">25,000원</span>
              </div>
            </div>
          </div>
          <div class="col-xs-12 col-md-3 item">
            <div class="thumbnail">
              <img src="img/oksusu.PNG" alt="...">
              <div class="caption">
                
                <p class="item__title">초~ 달아서 초당! 옥수수가 이렇게 달수가 있나?! 초당 옥수수</p>
                <span class="item__category">푸드 | 야수네</span><span class="item__money">25,000원</span>
              </div>
            </div>
          </div>
          <div class="col-xs-12 col-md-3 item">
            <div class="thumbnail">
              <img src="img/oksusu.PNG" alt="...">
              <div class="caption">
                
                <p class="item__title">초~ 달아서 초당! 옥수수가 이렇게 달수가 있나?! 초당 옥수수</p>
                <span class="item__category">푸드 | 야수네</span><span class="item__money">25,000원</span>
              </div>
            </div>
          </div>
          <div class="col-xs-12 col-md-3 item">
            <div class="thumbnail">
              <img src="img/oksusu.PNG" alt="...">
              <div class="caption">
                
                <p class="item__title">초~ 달아서 초당! 옥수수가 이렇게 달수가 있나?! 초당 옥수수</p>
                <span class="item__category">푸드 | 야수네</span><span class="item__money">25,000원</span>
              </div>
            </div>
          </div>
      </div>
      <c:forEach items="${slist}" var="store">
      	<div>${store.stoCode}</div>
      </c:forEach>
      
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