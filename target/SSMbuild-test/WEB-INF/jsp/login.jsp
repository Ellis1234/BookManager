<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%> <%@ taglib prefix="c"
                                           uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="baseUri" value="${pageContext.request.contextPath }"
       scope="request"></c:set>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="0">
    <title>登录页面</title>
    <link href="${baseUri}/static/css/login.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        <!--
        function checkData(){
            var username = window.form1.username.value;
            var password = window.form1.password.value;
            if(username==""){
                window.alert("用户账号不能为空");
                window.form1.userId.focus(); return false;
            }
            if(password==""){
                window.alert("用户密码不能为空");
                window.form1.passwd.focus(); return false;
            }
            return true;
        }
        -->
    </script>
</head>

<body>
<div class="login_box">
    <div class="login_l_img"><img src="${baseUri}/static/images/login-img.png"  /></div>
    <div class="login">
        <div class="login_logo"><a href="#"><img src="${baseUri}/static/images/login_logo.png" /></a></div>
        <div class="login_name">
            <p>图书管理系统</p>
        </div>
        <form action="adminLogin" method="post" name="form1">
            <input type="text" class="login_input" required="required" placeholder="请输入用户名" name="username">
            <input type="password" class="login_input" required="required"   placeholder="请输入密码" name="password"/>
            <button style="width:100%;" class="login_btn" onMouseDown="checkData()" name="submit" type="submit">登 录</button>
        </form>
    </div>
</div>
<div style="text-align:center;">
</div>
</body>
</html>