<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en">
	<head>
	    <meta charset="UTF-8">
	    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
	    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
	    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, minimal-ui" name="viewport">
	    <meta name="apple-mobile-web-app-capable" content="yes" /><!-- home screen app 全屏 -->
		<meta name="apple-mobile-web-app-status-bar-style" content="black" /><!-- 状态栏 -->
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="format-detection" content="telephone=no" />
	    <link href="assets/css/bootstrap.css" rel="stylesheet" type="text/css">
		<link href="assets/css/font-awesome.css" rel="stylesheet" type="text/css">
		<link href="ui/css/comm.css" rel="stylesheet" type="text/css">	
		<link href="" rel="stylesheet" type="text/css" id="mobile" /> <!--备注：这里写一个带ID="css" 的空的link样式-->
		
		<title>号码估值分析</title>
		
		<script type="text/javascript">
			var browser={
			versions:function(){
			var u = navigator.userAgent, app = navigator.appVersion;
			return { //移动终端浏览器版本信息
			trident: u.indexOf('Trident') > -1, //IE内核
			presto: u.indexOf('Presto') > -1, //opera内核
			webKit: u.indexOf('AppleWebKit') > -1, //苹果、谷歌内核
			gecko: u.indexOf('Gecko') > -1 && u.indexOf('KHTML') == -1, //火狐内核
			mobile: !!u.match(/AppleWebKit.*Mobile.*/), //是否为移动终端
			ios: !!u.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/), //ios终端
			android: u.indexOf('Android') > -1 || u.indexOf('Linux') > -1, //android终端或uc浏览器
			iPhone: u.indexOf('iPhone') > -1 , //是否为iPhone或者QQHD浏览器
			iPad: u.indexOf('iPad') > -1, //是否iPad
			webApp: u.indexOf('Safari') == -1 //是否web应该程序，没有头部与底部
			};
			}(),
			language:(navigator.browserLanguage || navigator.language).toLowerCase()
			}
//			document.writeln("语言版本: "+browser.language);
//			document.writeln(" 是否为移动终端: "+browser.versions.mobile);
//			document.writeln(" ios终端: "+browser.versions.ios);
//			document.writeln(" android终端: "+browser.versions.android);
//			document.writeln(" 是否为iPhone: "+browser.versions.iPhone);
//			document.writeln(" 是否iPad: "+browser.versions.iPad);
//			document.writeln(navigator.userAgent);
			
			var c;
			if(browser.versions.ios && browser.versions.mobile){//是否为ios终端
			c="ui/css/ios.css";
			}
			else if(browser.versions.android && browser.versions.mobile){//是否为Android终端
			c="ui/css/android.css";
			}
			else{
				c="ui/css/ios.css";
			}
			document.getElementById("mobile").href=c;
		</script>

		<!--[if IE]>
			<script src="http://libs.useso.com/js/html5shiv/3.7/html5shiv.min.js"></script>
		<![endif]-->
	</head>
	
	<body>
		<div class="login">
			<div class="ltitle">
				<img src="ui/images/main.png" border="0" width="80%" height="auto">
			</div>
			<input id="billId" class="zinput" value="请输入您的手机号码" onclick="this.value=''" type=""/>
			<button class="zbutton" onclick="clickOK()">开始</button>
			
			<!--copyright-->
			<div class="copyright">Copyright ©2016大数据梦工厂</div>
		</div>
		<script src="assets/js/jquery.min.js"></script>
		<script src="ui/js/style.js"></script>
		<script type="text/javascript">
			function clickOK(){
				var billId =document.getElementById('billId').value.trim();
				if(billId==0||billId == "请输入您的手机号码"){
					alert("手机号码不能为空");
				}else{
					$.ajax({
//						url:'http://localhost:8080/diviner/rest/number/query',
						url:'<%=path%>/rest/number/query',
						data:{
							billId:billId
						},
						type: 'GET',
						dataType:'json'
					}).done(function(data){
						if(data.total==0){
							alert(data.message.error);
						}else if(data.total==1){
						location.href = "<%=path%>/views/result.jsp?&billId="+billId;
						}
				})
				}
			}
		</script>
	</body>
</html>
