<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/16
  Time: 9:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>LONGIN</title>
    <script src="/js/jquery-3.4.1.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            $("#submit").click(function(){
                var uname = $("[name=stunumber]").val();
                var upass = $("[name=password]").val();
                $.post("login",{stunumber:uname,password:upass},function(data){
                    //alert(data);
                    if(data=="true"){
                        location = "main";
                    }else{
                        $("#mess").html("账户信息有误！");
                    }
                });
            });
        });
    </script>
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
        <a href="register.jsp" style="text-decoration: none" >去注册</a>
    </fieldset>
</form>
<div style="color: red" id="mess"></div>
</body>
</html>
