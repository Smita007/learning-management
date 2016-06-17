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
<content tag="list">
<div class="row">
    <table border="2" width="100%">
        <tr>
            <th>FirstName</th>
            <th>LastName</th>
            <th>Email</th>
            <th>Age</th>
        </tr>
        <g:each var="ls" in="${allCreatedUser}">
            <tr class="${ls.Age>100?'bg-danger': ''}">
                <td>${ls.firstName}</td>
                <td>${ls.lastName}</td>
                <td>${ls.email}</td>
                <td>${ls.Age}</td>
            </tr>
        </g:each>
    </table>
</div>
</content>
</body>
</html>