<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/19
  Time: 11:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>所有社团</title>
    <script src="/js/jquery-3.4.1.js"></script>
    <script type="text/javascript">

        function c(a,b){
            // alert(a);
            $(".d").hide();
            $(".s").css("background","white");
            $("[id="+a+"]").show();
            $(b).css("background","red");

        }

        $(document).ready(function () {

        })

    </script>
</head>
<body>
<div style="width: 80%;margin-left: 10%;height: 50px;">
    <input style="height: 50px;width: 50%;margin-left: 20%;" placeholder="输入搜索关键字" required="required" id="wlmsinput" name="maktMaktx" list="wlmslist"/>
    <datalist id="wlmslist">
       <%-- <c:forEach var="wl" items="${sorts}">
            <option value="${wl.sortType }">${wl.sortType }</option>
        </c:forEach>--%>
        <c:forEach var="wl" items="${cpts}">
            <option value="${wl.cptName }"><a href="/cptInfo">${wl.cptName }</a></option>
        </c:forEach>
    </datalist>
</div>
<div style="width: 80%;height: 60px;margin-left: 10%;">
    <c:forEach items="${requestScope.sorts}" var="sort" varStatus="s">
        <div class="s" style="height: 60px;line-height: 60px;font-size: 12px;float: left;margin-left: 10px;" onclick="c(${sort.sortId},this)">${sort.sortType}</div>
    </c:forEach>
</div>
<div style="width: 80%;margin-left: 10%;">
   <c:forEach items="${cpts}" var="cpt" varStatus="s">
       <c:if test="${s.count%4!=0}">
           <div class="d" id="${cpt.sortId}" style="width: 25%;height: 50px;float: left;"><a href="/cptInfo">${cpt.cptName}</a></div>
       </c:if>
       <c:if test="${s.count%4==0}">
           <div class="d" id="${cpt.sortId}" style="width: 25%;height: 50px;"><a href="/cptInfo">${cpt.cptName}</a></div>
       </c:if>
   </c:forEach>
</div>
</body>
</html>
