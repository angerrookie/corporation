<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2019/8/18
  Time: 19:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册页面</title>
</head>
<body>
<form>
    <fieldset>
        <p>
            USERNAME:<input type="text" name="stunumber" placeholder="学号" required="required">
        </p>
        <p>
            PASSWORD:<input type="password" name="password" placeholder="输入密码" required="required">
        </p>
        <input type="button" id="submit" value="立即登录">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="jsp/login.jsp" style="text-decoration: none" >去登录</a>
    </fieldset>
</form>
</body>
</html>
