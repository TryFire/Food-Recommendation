<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>司秦登陆</title>
<link rel="stylesheet" href="main.css" type="text/css" />

 <style type="text/css">
body {
	color:Color.white;
	font-size: 14px;
	margin:20px auto;
}
</style> 
<script type="text/javascript">
	function check(form) {
		if (document.forms.loginForm.account.value=="") {
			alert("请输入用户名！");
			document.forms.loginForm.account.focus();
			return false;
		}
		if (document.forms.loginForm.password.value=="") {
			alert("请输入密码！");
			document.forms.loginForm.password.focus();
			return false;
		}
		
	}
</script>

<script type="text/javascript">
function select(){
    form.action="";
    form.submit();  }
</script>

</head>
<body>

<div class="index-main">
    <div class="index-main-body">
        <div class="index-header">
            <div class="qinglogo"><img src="images\qing.jpg"></div>


            <h2 class="subtitle">与世界分享你的美食和美景</h2>
        </div>

        <div class="desk-front sign-flow clearfix sign-flow-simple">




            <div class="view view-signup selected" data-za-module="SignInForm">
                <form action="<%= request.getContextPath() %>/loginServlet" method="post" name="loginForm">
                    <input type="hidden" name="_xsrf" value="b84af75b5f7abfe28b10e84830ecbef6"/>
                    <div class="group-inputs">

                        <div class="account input-wrapper">

                            <input type="text" name="account" aria-label="账号" placeholder="账号" required>
                        </div>
                        <div class="verification input-wrapper">
                            <input type="password" name="password" aria-label="密码" placeholder="密码" required /><button type="button" class="send-code-button">获取验证码</button>
                        </div>

                        <div class="Captcha input-wrapper" data-type="cn" data-za-module="Captcha">
                            <div class="Captcha-operate">
                                <input type="hidden" name="captcha" required data-rule-required="true" data-msg-required="请点击图中所有倒立的文字">
                                <input type="hidden" name="captcha_type" value="cn" required>
                                <label class="Captcha-prompt">请点击图中所有倒立的文字</label>
                                <span class="Captcha-refresh js-refreshCaptcha sprite-index-icon-refresh"></span>
                            </div>
                            <div class="Captcha-imageConatiner">
                                <img class="Captcha-image" alt="验证码" >
                            </div>
                        </div>

                    </div>
                    <div class="button-wrapper command">
                        <button class="sign-button submit" type="submit" onclick="return check(this)">登录</button>
                    </div>
                    <div class="signin-misc-wrapper clearfix">

                        <button type="button" class="signin-switch-button" onclick = "window.location.href = 'LoginUp.jsp'">注册账号</button>

                        <a class="unable-login" href="#">无法登录？</a>
                    </div>



                </form>



            </div>

        </div>
    </div>

</div>



<script> 
//取出传回来的参数error并与yes比较
  var errori ='<%=request.getParameter("error")%>';
  if(errori=='yes'){
   alert("登录失败!");
   window.navigate("login.jsp"); 
  }
</script>


	<%-- <form action="<%= request.getContextPath() %>/loginServlet" method="post" name="loginForm">
	
		<table border="1" cellspacing="0" cellpadding="5" bordercolor="silver" align="center">
			<tr>
				<td colspan="2" align="center" bgcolor="#E8E8E8">用户登陆</td>
			</tr>
			<tr>
				<td>用户名：</td>
				<td><input type="text" name="id"/></td>
			</tr>
			<tr>
				<td>密码：</td>
				<td><input type="password" name="psw"/></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" name="submit" onclick="return check(this)"/>
					<input type="reset" name="reset"/>
				</td>
			</tr>
		</table>
	</form> --%>
</body>
</html>