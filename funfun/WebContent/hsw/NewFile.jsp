
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>행복한 하루</title>
<style>

</style>

<link href="react-chat/src/styles/chat-window.css" rel="stylesheet" />
<link href="react-chat/src/styles/emojiPicker.css" rel="stylesheet" />
<link href="react-chat/src/styles/header.css" rel="stylesheet" />
<link href="react-chat/src/styles/launcher.css" rel="stylesheet" />
<link href="react-chat/src/styles/message.css" rel="stylesheet" />
<link href="react-chat/src/styles/popup-window.css" rel="stylesheet" />
<link href="react-chat/src/styles/user-input.css" rel="stylesheet" />


<script type="module" src="WEB-INF/classes/components/ChatWindow.js"></script>
 
<script src="react-chat/src/components/ChatWindow.js"></script>
<script src="react-chat/src/components/Header.js"></script>
<script src="react-chat/src/components/Launcher.js"></script>
<script src="react-chat/src/components/MessageList.js"></script>
<script src="react-chat/src/components/UserInput.js"></script>
 
<script src="react-chat/src/styles/index.js"></script>
<script src="react-chat/src/index.js"></script>
<script src="react-chat/src/messageTypes.js"></script>
<script src="react-chat/nwb.config.js"></script>
<!-- 
<script src="react-chat/src/index.js"></script>
 -->

<script type="text/javascript">
	window.onload = function(){
		


	};
</script>
</head>
<body>
<!-- 
style 속성들
    max-width: calc(100% - 120px);
    word-wrap: break-word;

 -->
	<h1 class="sc-header">test시작</h1>
	<div id="sc-launcher">
		<div class="sc-launcher opend"><!-- react-empty: 25 -->
			<img class="sc-open-icon" src="close-icon.c30463a5.png">
			<img class="sc-closed-icon" src="logo-no-bg.7718b3e3.svg">
		</div>
		<div class="sc-chat-window opend">
			<div class="sc-header">
				<img class="sc-header--img" src="https://a.slack-edge.com/66f9/img/avatars-teams/ava_0001-34.png" alt="">
				<div class="sc-header--team-name"><!-- react-text: 32 --> <!-- /react-text --><!-- react-text: 33 -->
					react-chat-window<!-- /react-text --><!-- react-text: 34 --> <!-- /react-text -->
				</div>
				<div class="sc-header--close-button">
					<img src="close-icon.c30463a5.png" alt="">
				</div>
			</div>
			<div class="sc-message-list">
				<div class="sc-message">
					<div class="sc-message--content sent">
						<div class="sc-message--avatar" style="background-image: url(&quot;chat-icon.e0d2b748.svg&quot;);">
						</div>
						<div class="sc-message--text">
							<span class="Linkify">Why don't they have salsa on the table?</span>
						</div>
					</div>
				</div>
				<div class="sc-message">
					<div class="sc-message--content received">
						<div class="sc-message--avatar" style="background-image: url(&quot;chat-icon.e0d2b748.svg&quot;);">
						</div>
						<div class="sc-message--text">
							<span class="Linkify">What do you need salsa for?</span>
						</div>
					</div>
				</div>
				<div class="sc-message">
					<div class="sc-message--content sent">
						<div class="sc-message--avatar" style="background-image: url(&quot;chat-icon.e0d2b748.svg&quot;);">
						</div>
						<div class="sc-message--text">
							<span class="Linkify">Salsa is now the number one condiment in America.</span>
						</div>
					</div>
				</div>
				<div class="sc-message">
					<div class="sc-message--content received">
						<div class="sc-message--avatar" style="background-image: url(&quot;chat-icon.e0d2b748.svg&quot;);">
						</div>
						<div class="sc-message--text">
							<span class="Linkify">You know why? Because people like to say 'salsa.' 'Excuse me, do you have salsa?' 'We need more salsa.' 'Where is the salsa? No salsa?'</span>
						</div>
					</div>
				</div>
			</div>
			
			<form class="sc-user-input ">
				<div role="button" tabindex="0" contenteditable="true" placeholder="Write a reply..." class="sc-user-input--text">
				</div>
			</form>
			
			
			
			
			
		
</body>
</html>