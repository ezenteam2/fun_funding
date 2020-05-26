<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="path" value="${pageContext.request.contextPath }" />
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>실시간 채팅 상담</title>
<link href="${path }/template/bootstrap3/css/bootstrap.css" rel="stylesheet" />
<link href="${path }/template/bootstrap3/css/font-awesome.css" rel="stylesheet" />
   
<link href="${path }/template/assets/css/gsdk.css" rel="stylesheet" />   
<link href="${path }/template/assets/css/demo.css" rel="stylesheet" /> 
  <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
	  crossorigin="anonymous"></script>
	<script src="${path }/template/assets/js/jquery-ui-1.10.4.custom.min.js" type="text/javascript"></script>
	<script src="${path }/template/bootstrap3/js/bootstrap.js" type="text/javascript"></script>
	<script src="${path }/template/assets/js/gsdk-checkbox.js"></script>
	<script src="${path }/template/assets/js/gsdk-radio.js"></script>
	<script src="${path }/template/assets/js/gsdk-bootstrapswitch.js"></script>
	<script src="${path }/template/assets/js/get-shit-done-header.js"></script>
  <script src="${path }/template/assets/js/custom.js"></script>

<link href="${path }/css/sw_user_w_chat.css" rel="stylesheet" /> 
<script type="text/javascript">
	$(document).ready(function(){
		<%-- 
		
		--%>
		var wsocket;
		$("h2").text("채팅 시작");
		
		// 화면 크기 고정
		$(window).resize(function(){
			window.resizeTo(460,680);
		});
		
		
		// 채팅 데이터 호출
		var rtqna_code = "${rtqna.rtqna_code}";
		var mem_code = "${rtqna.mem_code}";
		var rtqna_writer = "${user.mem_code}";
		var mem_name = "${rtqna.mem_name}";
//		if(rtqna_writer == "") rtqna_writer = "${admin.admin_code}"; 
		if(rtqna_writer == "") rtqna_writer = "1001"; 
		
		$.ajax({
			type:"post",
			url:"${path}/rtqna.do?method=ajaxdetail&mem_code="+mem_code,
			dataType:"json",
			success:function(data){
				var list = data.list;
				var show = "";
				var mem_name = "";
				$.each(list,function(idx,rtqna){
					show += "<div class='sc-message'>";
					if(rtqna.rtqna_writer == rtqna_writer){
						show += "	<div class='sc-message--content sent'>";
					}else{
						show += "	<div class='sc-message--content received'>";
					}
					show += "		<div class='sc-message--avatar' ></div>";
					show += "		<div class='sc-message--text'>";
					show += "			<span class='Linkify'>"+rtqna.rtqna_detail+"</span>";
					show += "		</div></div></div>";
				});
				$(".sc-message-item").html(show);
				var hx = parseInt($(".sc-message-list").height());
				var mx = parseInt($(".sc-message-item").height());
				console.log("list: "+hx+"item:"+mx)
				$(".sc-message-list").scrollTop(mx);
			},
			error:function(err){
				console.log(err);
			}
		});
		
		start();
		$("sc-user-input--text").focus();
		function start(){
			// (송우 PC:192.168.4.34) (선생님 PC:211.238.140.48) (민기 PC:192.168.4.20)
			wsocket = new WebSocket("ws://192.168.4.34:5080/${path}/chat-ws.do");
			wsocket.onopen=function(evt){
				console.log(evt);
			};
			wsocket.onmessage=function(evt){
				var data = evt.data;
				if(data == mem_code){
					$(location).attr("href","");
				}
			};
			wsocket.onclose=function(){
				recieveMsg("연결을 종료했습니다.");
			};
		};
		
		
		$("#sendBtn").click(function(){
			sendMsg();
		});
		$("#msg").keydown(function(e){
			if(e.keyCode==13){
				sendMsg();
			}
		});
		function sendMsg(){
			$("[name=rtqna_writer]").val(rtqna_writer);
			$("[name=rtqna_detail]").val($("#msg").text());
			
			$("form").attr("action","${path}/rtqna.do?method=insert");
			$("form").submit();
			
			wsocket.send(mem_code);
		}
		
		$(".exitBtn").click(function(){
			self.opener = self;
			window.close();
		});
		
	});
	
</script>
</head>
<body>
<div class="sc-chat-window" style="z-index:10;">
	<div class="sc-header">
		<img class="sc-header--img" src="${path }/template/assets/img/new_logo.png" alt="">
		<div class="sc-header--team-name">${rtqna.mem_name}
		</div>
		<div class="sc-header--close-button exitBtn">
			<img src="img/close-icon.png">
		</div>
	</div>
	<div class="sc-message-list">
		<div class="sc-message-item">
		</div>
	</div>
	<div class="sc-user-input">
		<form method="post">
			<input type="hidden" name="rtqna_code" value="${rtqna.rtqna_code}" />
			<input type="hidden" name="mem_code" value="${rtqna.mem_code}" />
			<input type="hidden" name="rtqna_writer" />
			<input type="hidden" name="rtqna_detail" />
		</form>
		<div role="button" tabindex="0" contenteditable="true" id="msg"
			placeholder="내용을 적어주세요." class="sc-user-input--text"></div>
		<div class="sc-user-input--button" style="margin-left:30px" id="sendBtn">
			<button class="sc-user-input--send-icon-wrapper">
				<img class="sc-user-input--send-icon" src="img/send-message.png" />
			</button>
		</div>
	</div>
</div>
</body>
</html>