<%--
  Created by IntelliJ IDEA.
  User: smita
  Date: 14/6/16
  Time: 12:43 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>show</title>
    <meta name="layout" content="abc" />
</head>
<body>
<content tag="show">
<dl class="dl-horizontal">
    <dt>Id:</dt><dd>${recentuser.id}</dd>
    <dt>Version</dt><dd>${recentuser.version}</dd>
    <dt>firstName:</dt><dd>${recentuser.firstName}</dd>
    <dt>lastName:</dt><dd> ${recentuser.lastName}</dd>
    <dt>Email:</dt><dd> ${recentuser.email}</dd>
    <dt>Age:</dt><dd> ${recentuser.Age}</dd>
</dl>
</content>
</body>
</html>