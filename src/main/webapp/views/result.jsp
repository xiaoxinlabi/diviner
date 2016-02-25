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
		
		<title>手机号码战斗力大比拼</title>
		
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
		<div class="ibody">
			<!--手机号码区-->
			<%--<div class="phone-nub">--%>
				<%--<div class="inn">13987672682</div>--%>
			<%--</div>--%>
			<%--<!--价值体现-->--%>
			<%--<div class="msg">--%>
				<%--价值<em>12534</em>，击败了<em>67%</em>的号码--%>
			<%--</div>--%>
			<%--<!--评分区-->--%>
			<%--<div class="king">--%>
				<%--<div class="nubs">--%>
					<%--<div class="total">987659</div><!--最多6位-->--%>
					<%--<div class="style style-1">--%>
						<%--<i>吉祥分</i>--%>
						<%--<em class="digits-3">765</em><!--3位数用.digits-3-->--%>
						<%--<ul>--%>
							<%--<li>尾号ABBA</li>--%>
							<%--<li>尾号五连号</li>--%>
							<%--<li>号段首批号最多十二个中文</li>--%>
						<%--</ul>--%>
					<%--</div>--%>
					<%--<div class="style style-2">--%>
						<%--<i>个性分</i>--%>
						<%--<em class="digits-4">8000</em><!--4位数用.digits-4-->--%>
						<%--<ul>--%>
							<%--<li>社交达人</li>--%>
							<%--<li>网龄超过10年</li>--%>
							<%--<li>高消费人群最多十二个中文</li>--%>
						<%--</ul>--%>
					<%--</div>--%>
					<%--<div class="style style-3">--%>
						<%--<i>荣耀分</i>--%>
						<%--<em class="digits-5">90000</em><!--5位数用.digits-5-->--%>
						<%--<ul>--%>
							<%--<li>尾号为国庆节</li>--%>
							<%--<li>高消费人群最多十二个中文</li>--%>
							<%--<li>尾号为西安事变纪念日</li>--%>
						<%--</ul>--%>
					<%--</div>--%>
				<%--</div>--%>
				<%--<!--<img src="ui/images/nubs-bg.png" width="90%" height="auto">-->--%>
			<%--</div>--%>
			<%--<!--关注区-->--%>
			<%--<div class="click">--%>
				<%--点击关注 <a href="#">大数据梦工厂</a>--%>
			<%--</div>--%>
			<!--The-end-->
		</div>
		<script src="assets/js/jquery.min.js"></script>
		<script src="ui/js/style.js"></script>
		<script src="base/common.js"></script>
		<script src="result.js"></script>
		<script type="text/javascript">
			var bathPath = '<%=path %>';
		</script>
	</body>
</html>
