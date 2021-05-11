<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/5/6
  Time: 14:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
  public String url_dl="2.jsp";
%>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body style="text-align: center;">

  <div id="Layer1" style="position:absolute; width:100%; height:100%; background-color: snow; z-index:-1" >
    <img src="../img/1.jpg" height="100%" width="100%"/>
  </div>
  <form action="<%=url_dl%>">
    <input type="submit" value="登录" style="padding: 10px; margin-top: 50px; color:rebeccapurple">
  </form>
  </body>
</html>
