<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/19
  Time: 11:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>所有社团</title>
</head>
<body>
<div style="width: 80%;height: 60px;margin-left: 20%;">
    <c:forEach items="sorts" var="type">
        <div style="height: 60px;line-height: 60px;font-size: 12px;float: left;">${type.sorttype}</div>
    </c:forEach>
</div>
<div style="width: 80%;margin-left: 20%;">
    <table style="width: 100%;"></table>
</div>
</body>
</html>
