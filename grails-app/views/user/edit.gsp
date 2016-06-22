<%--
  Created by IntelliJ IDEA.
  User: smita
  Date: 17/6/16
  Time: 1:25 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="abc" />
    <style>
    .row{
        border: solid;
        padding: 20px;
    }
    </style>
</head>

<body>
<content tag="edit">
<div class="row">
    <form class="form-horizontal" controller="User" action="update">
        <input type="hidden" name="id" value="${edit1.id}">
        <div class="form-group">
            <label for="firstName" class="col-md-2">First Name</label>
            <input type="text" name="firstName" id="firstName" value="${edit1.firstName}" class="col-md-6"
                   placeholder="enter first name">
        </div>
        <div class="form-group">
            <label for="lastName"  class="col-md-2">Last Name</label>
            <input type="text" name="lastName" id="lastName" value="${edit1.lastName}" class="col-md-6"
                   placeholder="enter last name">
        </div>
        <div class="form-group">
            <label for="email" class="col-md-2">Email</label>
            <input type="text" name="email" id="email" value="${edit1.email}" class="col-md-6"
                   placeholder="enter Email">
        </div>
        <div class="form-group">
            <label for="age" class="col-md-2">Age</label>
            <input type="text" name="age" id="age" value="${edit1.age}" class="col-md-6" placeholder="enter Age">
        </div>
        <button class="btn btn-primary col-md-offset-2 col-md-3" type="submit">submit</button><br>
    </form>
</div>
</content>
</body>
</html>