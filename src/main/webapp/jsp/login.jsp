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
                alert("1111");
                var uname = $("[name=username]").val();
                var upass = $("[name=password]").val();
                $.post("login",{username:uname,password:upass},function(data){
                    //alert(data);
                    if(data=="true"){
                        alert("222")
                        location = "home";
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
           USERNAME:<input type="text" name="username" placeholder="手机号|账户" required="required">
        </p>
        <p>
            PASSWORD:<input type="password" name="password" placeholder="输入密码" required="required">
        </p>
        <input type="button" id="submit" value="立即登录">
    </fieldset>
</form>
<div style="color: red" id="mess"></div>
</body>
</html>
