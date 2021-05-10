<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/5/10
  Time: 19:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="GBK" %>
<%@ page import="jspSamples.unit7.websiteSample.*" %>
<%
    request.setCharacterEncoding("GBK");
    String Action=request.getParameter("Action");
    if(Action !=null && Action.equals("Login")){
        String User=request.getParameter("User");
        String Pwd=request.getParameter("Pwd");
        out.println("<script>alert('" + User + "');</script>");
        out.println("<script>alert('" + Pwd + "');</script>");
        Login login=new Login();
        boolean isOk=login.LoginCheck(User,Pwd);
        if(isOk){
            out.println("<SCRIPT LANGUAGE='JavaScript'>alert(’登 录 成功！');location.href='news.jsp';</SCRIPT>");
        }else {
            out.println("<SCRIPT LANGUAGE='JavaScript'>alert(’登 录 失败！');location.href= 'login.jsp';</SCRIPT>");
        }
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="GBK">
    <title>后台登录-天码行空学习建站</title>　　
    <link rel="stylesheet" href="css/amazeui.min.css" />　　
    <script src="js/main.js"></script>
</head>
<body style="background: url(img/login-bg.png) no-repeat">
    <!--公司标题图片-->　　　
    <div class="header" style="text-align: center; margin-top: 100px">
        <div class="am-g">　　　　　
            <img src="img/loginTitle.png" />　　　　
        </div>　　　
    </div>
<div class="am-g" style="margin-top: 20px">
    <div class="am-u-lg-6 am-u-md-10 am-u-sm-centered"
         style="background: url(img/loginForm.png) no-repeat; height:479px; width: 695px">
        <!--登录表单-->
        <form action="login.jsp" method="post" class="am-formlogin-form"　　　　　　
              style="padding: 50px 0px 0px 120px; width: 550px"　　　　　　
              onSubmit="return LoginCheck()">
              <label for="name"> 用户名： </label> <input type="text"name="User"　　　　　　　
                id="User" value=""> <br> <label for="ps"> 密码：</label>
              <input type="password" name="Pwd" id="Pwd" value=""><br>
              <!--登录按钮-->　　　　　　
              <div class="am-cf">
                  <input name="Action" type="hidden" value="Login"><input
                      type="submit" value="登 录" id="save"　　　　　　　　
                      style="width: 100%; border-radius: 0.5em;"　　　　　　　
                      class="am-btn am-btn-primary am-btn-sm am-round">
            </div>
        </form>
    </div>
</div>
</body>
</html>




























