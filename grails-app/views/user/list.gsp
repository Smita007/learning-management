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
    <meta name="layout" content="abc" />
</head>

<body>
<div class="container">
    <table border="2" width="100%">
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