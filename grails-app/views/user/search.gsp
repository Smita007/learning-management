<%--
  Created by IntelliJ IDEA.
  User: smita
  Date: 20/6/16
  Time: 1:24 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="abc" />
</head>

<body>
<content tag="search">
<div>
    <g:form action="test" class="form-horizontal">
        <label class="col-md-1">Email:</label>
        <input type="text" name="email" class="col-md-2">

        <label class="col-md-1">Name:</label>
        <input type="text" name="name" class="col-md-2">

        <label class="col-md-1">Age:</label>
        <input type="number" name="age" class="col-md-2">

        <br>
        <br>
        <button class="btn btn-block" type="submit">submit</button>
    </g:form>
    <div class="row">
        <table class="table-bordered col-md-offset-1 col-md-8" width="100%">
            <tr>
                <th>Id</th>
                <th>FirstName</th>
                <th>LastName</th>
                <th>Email</th>
                <th>Age</th>
            </tr>
            <g:each var="ls" in="${personInstance}">
            <g:if test="${personInstance}">
                <tr>
                    <td>
                        <a href="/user/show?id=${ls.id}">${ls.id}</a>
                    </td>
                    <td>${ls.firstName}</td>
                    <td>${ls.lastName}</td>
                    <td>${ls.email}</td>
                    <td>${ls.age}</td>
                </tr>
            </g:if>
            </g:each>
    </table>
    </div>
</div>
</content>
</body>
</html>