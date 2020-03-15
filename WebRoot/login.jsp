<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>系统管理员登录</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<style type="text/css">
            body {background-image: url(img/liu.jpg);}
        </style>
		
		<script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
        <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
        <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
        
		<script language="javascript">
		function check1()
		{                                                                                         
		     if(document.ThisForm.userName.value=="")
			 {
			 	alert("请输入用户名");
				document.ThisForm.userName.focus();
				return false;
			 }
			 if(document.ThisForm.userPw.value=="")
			 {
			 	alert("请输入密码");
				document.ThisForm.userPw.focus();
				return false;
			 }
			 document.getElementById("indicator").style.display="block";
			 loginService.login(document.ThisForm.userName.value,document.ThisForm.userPw.value,0,callback);
		}
		
		function callback(data)
		{
		    document.getElementById("indicator").style.display="none";
		    if(data=="no")
		    {
		        alert("用户名或密码错误");
		    }
		    if(data=="yes")
		    {
		        alert("通过验证,系统登录成功");
		        window.location.href="<%=path %>/loginSuccess.jsp";
		    }
		    
		}
	    </script>

	</head>

	<body>
		<div id="Layer1" style="position:absolute; left:610px; top:247px; width:360px; height:131px; z-index:1">
			<form action="" name="ThisForm" method="post">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="100%" colspan="2" align="left">
							<font style="font-size: 40px;color: black;font-weight: bolder;display: block;text-align: left">
							    在线购物系统
				            </font>
						</td>
					</tr>
					<tr>
						<td width="100%" colspan="2" height="20">
							
						</td>
					</tr>
					<tr>
						<td width="15%" height="25">
							<span style="font-size: 11px;color: #5cc2fc;">管理员帐号:</span>
						</td>
						<td width="85%" height="25">
							<input name="userName" type="text" size="20" style="height:17px; border:solid 1px #bbbbbb">
						</td>
					</tr>
					<tr>
						<td width="20%" height="25">
							<span style="font-size: 11px;color: #5cc2fc;">管理员密码:</span>
						</td>
						<td width="80%" height="25">
							<input name="userPw" type="password" size="20" style="height:17px; border:solid 1px #bbbbbb">
						</td>
					</tr>
					<tr>
						<td width="15%" height="22">
							
						</td>
						<td width="80%" height="40">
                            <img src="<%=path %>/img/dl.gif" onClick="check1()">
                            <img src="<%=path %>/img/cz.gif" onClick="reset()">
                            <img id="indicator" src="<%=path %>/img/loading.gif" style="display:none"/>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</body>
</html>
