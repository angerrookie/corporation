<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/16
  Time: 10:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page  isELIgnored="false" contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>HOME</title>
    <script src="/js/jquery-3.4.1.js"></script>
    <script type="text/javascript">

        function tj() {
            return confirm("您确定要转账么？")
        }
        $(document).ready(function () {

        });
    </script>
</head>
<body>
    <span>
        欢迎您，${sessionScope.loginUser.username} |
        当前余额：${sessionScope.loginUser.id}|
        <a href="/logout" onclick="return confirm('您确定退出么？')">退出</a>
    </span>
<form method="post" action="/trans" onsubmit="return tj()">
    <fieldset>
        <legend>个人转账</legend>
        <p>对方账号：<input type="text" name="id"  ></p>
        <p>对方姓名：<input type="text" name="username"></p>
        <p>转账金额：<input type="text" name="id"></p>
        <input type="submit" value="确认转账">
    </fieldset>
</form>
<div style="color: red" id="mess"></div>

</body>
</html>
