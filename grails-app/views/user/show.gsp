<%--
  Created by IntelliJ IDEA.
  User: smita
  Date: 14/6/16
  Time: 12:43 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <asset:stylesheet href="bootstrap.min.css"/>
    <asset:stylesheet src="jquery.min.js"/>
    <asset:stylesheet src="bootstrap.min.js"/>
</head>
<body>
<g:render template="/template/mynavbar" model="[mycurrentpage:'show']"></g:render>
<dl class="dl-horizontal">
    <dt>firstName:</dt><dd>${recentuser.myFirstName}</dd>
    <dt>lastName:</dt><dd> ${recentuser.myLastName}</dd>
    <dt>Email:</dt><dd> ${recentuser.myEmail}</dd>
    <dt>Age:</dt><dd> ${recentuser.myAge}</dd>
</dl>
</body>
</html>