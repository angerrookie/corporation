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
    <table style="width: 100%;">
        <tbody style="text-align: center;">
            <c:forEach items="cpts" var="cpt" varStatus="s">
               <c:if test="${s.count%4==1}">
                   <tr style="width: 100%;height: 50px;">
               </c:if>
                       <td style="width: 25%;height: 50px;">${cpt.cptname}</td>
                   <c:if test="${s.count%4==0}">
                        </tr>
                   </c:if>
            </c:forEach>
        
        </tbody>
    </table>
</div>
</body>
</html>
