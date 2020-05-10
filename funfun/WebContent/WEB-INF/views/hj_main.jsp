<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="apple-touch-icon" sizes="76x76" href="${path }/view/assets/img/apple-icon.png">
	<link rel="icon" type="image/png" href="${path }/view/assets/img/favicon.png">	
	
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<title>FunFun 펀펀</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />
	
    <link href="${path }/view/bootstrap3/css/bootstrap.css" rel="stylesheet" />
    <link href="${path }/view/bootstrap3/css/font-awesome.css" rel="stylesheet" />
    
	<link href="${path }/view/assets/css/gsdk.css" rel="stylesheet" />   
    <link href="${path }/view/assets/css/demo.css" rel="stylesheet" /> 

    <!--     Font Awesome     -->
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Grand+Hotel' rel='stylesheet' type='text/css'>
  
</head>

<body>
 <div id="navbar-full">
    <div id="navbar">
    <!--    
        navbar-default can be changed with navbar-ct-blue navbar-ct-azzure navbar-ct-red navbar-ct-green navbar-ct-orange  
        -->
        <nav class="navbar navbar-ct-orange navbar-transparent navbar-fixed-top" role="navigation">
          
          <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="#gsdk">FunFunding</a>
            </div>
        
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
              <ul class="nav navbar-nav">
                <li class="active"><a href="#gsdk">프로젝트 오픈 신청</a></li>
                <li class="dropdown">
                      <a href="#gsdk" class="dropdown-toggle" data-toggle="dropdown">메뉴 <b class="caret"></b></a>
                      <ul class="dropdown-menu">
                        <li><a href="#gsdk">펀딩하기</a></li>
                        <li><a href="#gsdk">스토어 구경하기</a></li>
                        
                        <li class="divider"></li>
                        <li><a href="#gsdk">공지사항</a></li>
                        <li><a href="#gsdk">FAQ</a></li>
                        <li><a href="#gsdk">QnA</a></li>
                      </ul>
                </li>
                
              </ul>
              <form>
                <ul class="nav navbar-nav">
                  <li class="active">
                    <div class="form-group">
                      <input type="text" value="" placeholder="아무거나 검색해보세요!" class="form-control" style="background-color: transparent; color:white;
                      margin:15px 3px; border:none" />
                    </div>
                  </li>
                  <li><button type="submit" class="fa fa-search" style="border:none; background-color: transparent; color:white;
                    margin: 26px 3px;"></button></li>
                </ul>
              </form>
              <ul class="nav navbar-nav navbar-right">
                    <li><a href="#gsdk">회원가입</a></li>
                    
                    <li><button href="#gsdk" class="btn btn-round btn-default">로그인</button></li>
               </ul>
              
            </div><!-- /.navbar-collapse -->
          </div><!-- /.container-fluid -->
        </nav>
        <div class="blurred-container">
            <div class="img-src" style="background-image: url('${path }/view/assets/img/bg.jpg')"></div>
        </div>
    </div><!--  end navbar -->

</div> <!-- end menu-dropdown -->

<div class="main">
    <div class="container tim-container" style="max-width:800px; padding-top:100px">
       <h1 class="text-center">펀펀(FunFunding)에서는 누구나 투자받고<br> 투자하면서 함께 성장합니다 <small class="subtitle">Better Funding Better Business Better Life</small></h1>
       <p class="text-center">사람들은 자신이 지지하는 기업에 투자합니다.<br>
        한 사람 한 사람의 투자가 모여 기업은 성장합니다.<br>
        여기, 기업 하나가 출발선에 있습니다.<br>
        그는 자신의 가치를 증명하고<br>
        사람들이 그의 가치를 알아봅니다.<br>
        서로 지지하고 소통하고 공유하면서<br>
        더 많은 사람들이 그를 알아봅니다.<br>
        그렇게 기업은 성장합니다.<br>
        또 다른 기업들이 용기를 얻고 출발선에 섭니다.<br>
        사람들의 지지를 받는 기업은 성장합니다.<br>
        세상에 자신만의 가치를 품은<br>
        기업이 많아집니다.<br>
        세상이 조금 더 나아집니다.</p>
           <!--     end extras -->        
    </div>
    <div class="space"></div>
<!-- end container -->
</div>
<!-- end main -->

</body>

  <script src="${path }/view/jquery/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="${path }/view/assets/js/jquery-ui-1.10.4.custom.min.js" type="text/javascript"></script>
	<script src="${path }/view/bootstrap3/js/bootstrap.js" type="text/javascript"></script>
	<script src="${path }/view/assets/js/gsdk-checkbox.js"></script>
	<script src="${path }/view/assets/js/gsdk-radio.js"></script>
	<script src="${path }/view/assets/js/gsdk-bootstrapswitch.js"></script>
	<script src="${path }/view/assets/js/get-shit-done-home.js"></script>
  <script src="${path }/view/assets/js/custom.js"></script>

</html>