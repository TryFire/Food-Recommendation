<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>司秦注册</title>

<link rel="stylesheet" href="main.css" type="text/css" />

<script type="text/javascript">
	function check(form) {
		if (document.forms.loginUpForm.id.value=="") {
			alert("请输入用户名！");
			document.forms.loginUpForm.id.focus();
			return false;
		}
		if (document.forms.loginUpForm.name.value=="") {
			alert("请输入姓名！");
			document.forms.loginUpForm.name.focus();
			return false;
		}
		if (document.forms.loginUpForm.age.value=="") {
			alert("请输入年龄！");
			document.forms.loginUpForm.age.focus();
			return false;
		}
		if (document.forms.loginUpForm.sex.value=="") {
			alert("请输入性别！");
			document.forms.loginUpForm.sex.focus();
			return false;
		}
		if (document.forms.loginUpForm.psw.value=="") {
			alert("请输入密码！");
			document.forms.loginUpForm.psw.focus();
			return false;
		}
		if (document.forms.loginUpForm.c_psw.value=="") {
			alert("请输入确认密码！");
			document.forms.loginUpForm.c_psw.focus();
			return false;
		}
		
	}
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

            <div class="view view-signup selected" data-za-module="SignUpForm">
                <form class="zu-side-login-box" action="<%= request.getContextPath() %>/loginUpServlet" method="post" name="loginUpForm" id="sign-form-1" autocomplete="off">
                    <input type="password" hidden>
                    <input type="hidden" name="_xsrf" value="b84af75b5f7abfe28b10e84830ecbef6"/>
                    <div class="group-inputs">


                        <div class="name input-wrapper">
                            <input required type="text" name="id" aria-label="请输入账号" placeholder="请输入账号">
                        </div>
                        <div class="name input-wrapper">
                            <input required type="text" name="name" aria-label="请输入姓名" placeholder="请输入姓名">
                        </div>
                        <div class="name input-wrapper">
                            <input required type="text" name="age" aria-label="请输入年龄" placeholder="请输入年龄">
                        </div>
                        <div class="name input-wrapper">
                            <input required type="text" name="sex" aria-label="请输入性别" placeholder="请输入性别">
                        </div>
                        <div class="input-wrapper">
                            <input required type="password" name="psw" aria-label="请输入密码" placeholder="请输入密码" autocomplete="off">
                        </div>

                        <div class="input-wrapper">
                            <input required type="password" name="c_psw" aria-label="请确认密码" placeholder="请确认密码" autocomplete="off">
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
                        <button class="sign-button submit" type="submit" onclick="return check(this)">注册寻秦</button>
                    </div>
                </form>





            </div>
        </div>
    </div>

</div>




	<%-- <form action="<%= request.getContextPath() %>/loginUpServlet" method="post" name="loginUpForm">
		<table border="1" cellspacing="0" cellpadding="5" bordercolor="silver" align="center">
			<tr>
				<td colspan="2" align="center" bgcolor="#E8E8E8">用户注册</td>
			</tr>
			<tr>
				<td>邮箱：</td>
				<td><input type="text" name="id"/></td>
			</tr>
			<tr>
				<td>姓名：</td>
				<td><input type="text" name="name"/></td>
			</tr>
			<tr>
				<td>年龄：</td>
				<td><input type="text" name="age"/></td>
			</tr>
			<tr>
				<td>性别：</td>
				<td><input type="text" name="sex"/></td>
			</tr>
			<tr>
				<td>密码：</td>
				<td><input type="password" name="psw"/></td>
			</tr>
			<tr>
			<tr>
				<td>确认密码：</td>
				<td><input type="password" name="c_psw"/></td>
			</tr>
			<tr>
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