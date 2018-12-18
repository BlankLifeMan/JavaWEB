<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
  <link rel="stylesheet" href="./css/layui.css">
    <style type="text/css">
        .div1{
            border:2px solid #BBBBBB;
           width: 480px;
            text-align:center;
            margin: 0 auto;
            position: absolute;
            left: 50%;
            top:50%;
            transform: translate(-50%,-50%);
            background: #FFFFFF ;
            opacity:0.9;
            filter:alpha(opacity=40);
            border-radius:25px;
        }
        .div2{ border:2px solid #BBBBBB;
            width: 480px;
            text-align:center;
            margin: 0 auto;
            position: absolute;
            left: 50%;
            top:50%;
            transform: translate(-50%,-50%);
            background: #FFFFFF ;
            opacity:0.9;
            filter:alpha(opacity=40);
            border-radius:25px;
        }
        a:visited{
            color: #0000FF;
        }
span{
color:red;
}
    </style>
</head>
<body  background="./img/0141.png">

<div class="div1" id="di1" >
    <p align="center" style="margin-top: 40px;font-size: 25px" >注册</p>
     <% if(request.getAttribute("su")!=null){ %>
                  <span><%= request.getAttribute("su")%></span>
                <% }else{ %>
                <span></span>
                <% } %>
    <form class="layui-form" action="UserServlet" style="margin-top: 30px;" lay-filter="example" method="post">
        <div class="layui-form-item">
            <label class="layui-form-label">呢称</label>
            <div class="layui-input-block">
                <input type="text" name="username" required  
                lay-verify="username" placeholder="请输入呢称" autocomplete="off" class="layui-input" style="width:307px;">
            </div>
            <div class="layui-form-mid layui-word-aux">

            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">手机号码</label>
            <div class="layui-input-block">
                <input type="text" name="phone" required  
                lay-verify="phone" placeholder="请输入手机号码" autocomplete="off" class="layui-input" style="width:307px;">
                       <% if(request.getAttribute("ph")!=null){ %>
                  <span><%= request.getAttribute("ph")%></span>
                <% }else{ %>
                <span></span>
                <% } %>
            </div>
            <div class="layui-form-mid layui-word-aux">

            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">密码</label>
            <div class="layui-input-inline">
                <input type="password" name="password" 
                required lay-verify="pass" placeholder="请输入密码" autocomplete="off" class="layui-input">
                <% if(request.getAttribute("pass")!=null){%>
                  <span><%= request.getAttribute("pass")%></span>
                <% }else{ %>
                <span></span>
                <% } %>
            </div>
            <div class="layui-form-mid layui-word-aux">

            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">确认密码</label>
            <div class="layui-input-inline">
                <input   type="password" name="password1" 
                required lay-verify="pass1" placeholder="请确认密码" autocomplete="off" class="layui-input">
            </div>
            <div class="layui-form-mid layui-word-aux">

            </div>
        </div>

        <div class="layui-form-item" >
            <div class="layui-input-block" style="margin: 6px 20px 0 0">
               <input type="submit" value="立即提交" class="layui-btn">
                <input type="reset" value="重置" class="layui-btn layui-btn-primary">
            </div>
        </div>
    </form>
            <br>
                <a href="##" onclick="disanfang()">使用邮箱注册</a>
            <br>
        </div>
<div class="div2"  id="di2" >
    <p align="center" style="margin-top: 40px;font-size: 25px" >注册</p>
    <form class="layui-form" action="UserServlet" style="margin-top: 30px;" lay-filter="example" method="post">
        <div class="layui-form-item">
            <label class="layui-form-label">呢称</label>
            <div class="layui-input-block">
                <input type="text" name="username" required  
                lay-verify="username" placeholder="请输入呢称" autocomplete="off" class="layui-input" style="width: 307px;">
            </div>
            <div class="layui-form-mid layui-word-aux">

            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">密码</label>
            <div class="layui-input-inline">
                <input type="password" name="password" 
                required lay-verify="pass" placeholder="请输入密码" autocomplete="off" class="layui-input">
                         <% if(request.getAttribute("pass")!=null){ %>
                
                  <span><%= request.getAttribute("pass")%></span>
                <% }else{ %>
                <span></span>
                <% } %>
            </div>
            <div class="layui-form-mid layui-word-aux">

            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">确认密码</label>
            <div class="layui-input-inline">
                <input   type="password" name="password1" 
                required lay-verify="pass1" placeholder="请确认密码" autocomplete="off" class="layui-input">
            </div>
            <div class="layui-form-mid layui-word-aux">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">邮箱</label>
            <div class="layui-input-block">
                <input type="text" name="email" required  
                lay-verify="email" placeholder="请输入邮箱" autocomplete="off" class="layui-input" style="width: 307px">
                         <% if(request.getAttribute("compare")!=null){ %>
                
                  <span><%= request.getAttribute("compare") %></span>
                <% }else{ %>
                <span></span>
                <% } %>
            </div>
            <div class="layui-form-mid layui-word-aux">
            </div>
        </div>

        <div class="layui-form-item" >
            <div class="layui-input-block" style="margin: 6px 20px 0 0">
                <input type="submit" class="layui-btn" value="立即提交">
                <input type="reset" class="layui-btn layui-btn-primary" value="重置">
            </div>
        </div>
    </form>
    <a href="##" onclick="shouji()">使用手机注册</a>

</div>
</body>

<script type="text/javascript">
    var d1=document.getElementById('di1');
    var d2=document.getElementById('di2');
    if (d1.className="div1"){
        d2.style.display="none";
    } else {
        d2.style.display="block";
    }
    function disanfang() {
        d1.style.display="none";
        d2.style.display="block";
    }
    function shouji() {
        d2.style.display="none";
        d1.style.display="block";
    }
</script>
</html>