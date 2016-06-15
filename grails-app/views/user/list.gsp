<%--
  Created by IntelliJ IDEA.
  User: smita
  Date: 13/6/16
  Time: 2:16 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Example</title>
    <asset:stylesheet href="bootstrap.min.css"/>
    <asset:stylesheet src="jquery.min.js"/>
    <asset:stylesheet src="bootstrap.min.js"/>

    <style>


    </style>
</head>

<body>
<g:render template="/template/mynavbar" model="[mycurrentpage:'List']"></g:render>
<div class="container">
    <table border="1" width="100%">
        <tr>
            <th>FirstName</th>
            <th>LastName</th>
            <th>Email</th>
            <th>Age</th>
        </tr>
        <g:each var="ls" in="${allCreatedUser}">
            <tr class="${ls.myAge>100?'bg-danger': ''}">
                <td>${ls.myFirstName}</td>
                <td>${ls.myLastName}</td>
                <td>${ls.myEmail}</td>
                <td>${ls.myAge}</td>
            </tr>
        </g:each>
    </table>
</div>
</body>
</html>