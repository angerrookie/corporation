<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/19
  Time: 9:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>菜单栏</title>
    <script src="/js/jquery-3.4.1.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#login").click(function () {
                location="jsp/login.jsp";
            });
        });
        $("#re").click(function () {
            location="jsp/register.jsp";
        });
    </script>
    <style>
        *{
            padding: 0;
            margin: 0;
        }
        ol,ul,li{
            list-style: none;
        }
        /**例子2**/
        .test2Body{
            width: 100%;
            margin: 0 auto;
        }
        .testBottom{
            background-color: antiquewhite;
        }
        .test2Body>nav>ul{
            width: 100%;
            background-color: antiquewhite;
            text-align: center;
            font-size: 14px;
        }
        .test2Body>nav>ul>li{
            position: relative;
            float: left;
            line-height: 60px;
            width: 16.5%;
            box-sizing: border-box;
        }
        .test2Body>nav>ul>li:hover{
            color: white;
            background-color: rgba(255,255,255,0.5);
        }
        .test2Body>nav>ul>li:hover ul{
            display: block;
        }
        .test2Body>nav>ul>li>ul{
            display: none;
            position: absolute;
            width: 100%;
            z-index: 100;
            background-color: dodgerblue;
        }
        .test2Body>nav>ul>li>ul>li{
            display: inline-block;
            width: 100%;
            background-color: rgba(255,255,255,0.5);
            animation-name: navAnim;
        }
        .test2Body>nav>ul>li>ul>li:nth-of-type(1){
            animation-duration: 0.25s;
        }
        .test2Body>nav>ul>li>ul>li:nth-of-type(2){
            animation-duration: 0.5s;
        }
        .test2Body>nav>ul>li>ul>li:nth-of-type(3){
            animation-duration: 1s;
        }
        .test2Body>nav>ul>li>ul>li:nth-of-type(4){
            animation-duration: 1.5s;
        }
        .test2Body>nav>ul>li>ul>li:nth-of-type(5){
            animation-duration: 2s;
        }
        .test2Body>nav>ul>li>ul>li:hover{
            color: white;
            background-color: rgba(255,255,255,0);
        }
        @keyframes navAnim
        {
            0%{transform: rotateY(180deg)}
            50%{transform: rotateY(90deg)}
            100%{transform: rotateY(0deg)}
        }
        .closeFloat:after{display:block;clear:both;content:"";visibility:hidden;height:0}
        .closeFloat{zoom:1}
    </style>
</head>
<body>
<div id="head" style="width: 100%;height: 80px;background: antiquewhite;">
    <div id="log" style="background: antiquewhite;width: 20%;height: 80px;float: left;">
       <div style="width:20%;height: 80px;float: left;"></div>
        <img src="/images/logo.png;" style="width: 120px;height: 80px;float: left;">
    </div>
    <div id="meau" style="background: white;width: 58%;height: 60px;float: left;margin-top: 10px;">
        <div class="test2Body">
            <nav>
                <ul class="closeFloat">
                    <li>首页</li>
                    <li>社团协会
                        <ul>
                            <li><a href="all">所有社团</a></li>
                            <li><a>搜索社团</a></li>
                            <li><a>人气社团</a></li>
                            <li><a>社团风采</a></li>
                        </ul>
                    </li>
                    <li>社团活动
                        <ul>
                            <li><a>活动通知</a></li>
                            <li><a>人气活动</a></li>
                        </ul>
                    </li>
                    <li>我的社团
                        <ul>
                            <li><a>社团信息</a></li>
                            <li><a>申请进度</a></li>
                            <li><a>修改信息</a></li>
                            <li><a>人员管理</a></li>
                        </ul>
                    </li>
                    <li>申请管理
                        <ul>
                            <li><a>社团信息</a></li>
                            <li><a>申请进度</a></li>
                            <li><a>修改信息</a></li>
                            <li><a>人员管理</a></li>
                        </ul>
                    </li>
                    <li>菜单六</li>
                </ul>
            </nav>
        </div>
    </div>
    <div id="user" style="background: antiquewhite;width: 15%;height: 80px;float: left;">
        <input id="login" type="button" value="登录" style="width: 50px;height: 30px;">
        <input id="re" type="button" value="注册" style="width: 50px;height: 30px;">
    </div>
</div>

</body>