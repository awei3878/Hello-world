<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/5/6
  Time: 14:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
    public String food="3.jsp";
    public String fz="3-2.jsp";
    public String game="3-3.jsp";
%>

<html>
<head>
    <title>Title</title>
</head>
<body style="text-align: center">
<div id="Layer1" style="position:absolute; width:100%; height:100%; background-color: snow; z-index:-1" >
    <img src="../img/2.jpg" height="100%" width="100%"/>
</div>
<form action="<%=food%>" style="display: inline">
    <input type="submit" value="饮食" style="padding: 10px; margin-top: 50px; color: rebeccapurple">
</form><form action="<%=fz%>" style="display: inline">
    <input type="submit" value="服装" style="padding: 10px; margin-top: 50px; color: rebeccapurple">
</form><form action="<%=game%>" style="display: inline">
    <input type="submit" value="游戏" style="padding: 10px; margin-top: 50px; color: rebeccapurple">
</form>
</body>
</html>
