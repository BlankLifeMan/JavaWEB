<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="./css/Demo1.css" type="text/css">
    <title>Title</title>
    <style type="text/css">
tr {
    _width: 100px;
    _height: 100px;
    float: left;
}
        td{
            _width: 100px;
            _height: 100px;
            float: left;
            margin: 30px 0 0 120px;
        }
        table{
            width: 80%;
            height: 100%;
            margin: 0 auto;
        }
        .yejiao{
            width: 100%;
            height: 100px;
            background: #F3F2DE;
        }
    </style>
</head>
<body id="q" background="./ad/a.jpg">
<div class="qq">
    <div>
        <img src="./ad/q.jpg">
    </div>

<div class="denglukuang">
    <div style="height: 100px;width: 60%;background-color: #ff6600;margin: auto">

    </div>
    <div style="width: 80%;height: 200px;margin: auto">
        <form action="LoginServlet" method="post" id="user-form">
            <input type="text" name="username" placeholder="手机号/用户名/邮箱">
             <% if(request.getAttribute("username")!=null){ %>
                  <span style=" color: red;"><%= request.getAttribute("username")%></span>
                <% }else{ %>
                <span></span>
                <% } %>
            <input type="password" name="password" placeholder="密码">
             <% if(request.getAttribute("password")!=null){ %>
                  <span style=" color: red;"><%= request.getAttribute("password")%></span>
                <% }else{ %>
                <span></span>
                <% } %>
            <input class="anniu" type="submit" >
        </form>
        <div style="width: 80%;margin: 5% 0 0 5%">
            <a href="/ServletJdbcDemo/UserLoginZC.jsp">快速注册</a>
            <a href="##">找回密码</a>
        </div>   
         </div>
    <div class="qitazhaohaodenglu">
    </div>
</div>
    <div class="dibudaohang">
        <hr size="4" color="#fff"/>
        <table bgcolor="#90ee90">
            <tr>
                <td><img src="./ad/aixing1.png"></td>
                <td><img src="./ad/aixing1.png"></td>
                <td><img src="./ad/aixing1.png"></td>
                <td><img src="./ad/aixing1.png"></td>
            </tr>
        </table>
    </div>
    <div class="yejiao">

    </div>
</div>
</body>
</html>