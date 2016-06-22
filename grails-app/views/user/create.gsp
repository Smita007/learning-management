<%--
  Created by IntelliJ IDEA.
  User: smita
  Date: 13/6/16
  Time: 12:17 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Registration form</title>
    <meta name="layout" content="abc" />
    <style>
    .row{
        border: solid;
        padding: 20px;
    }
</style>
</head>
<body>
<content tag="create">
<div class="row">
    <form class="form-horizontal" action="save">
        <div class="form-group ${hasErrors(bean: myUser, field: 'firstName', 'has-Errors')}">
            <label for="firstName" class="col-md-3">First Name</label>
            <input type="text" name="firstName" id="firstName" value="${myUser.firstName}" class="col-md-6"
                   placeholder="enter first name"><br>
            <g:renderErrors bean="${myUser}" field="firstName"></g:renderErrors>
        </div>
        <div class="form-group">
            <label for="lastName"  class="col-md-3">Last Name</label>
            <input type="text" name="lastName" id="lastName" class="col-md-6" value="${myUser.lastName}"
                   placeholder="enter last name">
        </div>
        <div class="form-group ${hasErrors(bean: myUser, field: 'email', 'has-Errors')}">
            <label for="email" class="col-md-3">Email</label>
            <input type="text" name="email" id="email" value="${myUser.email}" class="col-md-6"
                   placeholder="enter Email">
            <g:renderErrors bean="${myUser}" field="email"></g:renderErrors>
        </div>
        <div class="form-group ${hasErrors(bean: myUser, field: 'age', 'has-Errors')}">
            <label for="age" class="col-md-3">Age</label>
            <input type="text" name="age" id="age" value="${myUser.age}" class="col-md-6" placeholder="enter Age">
            <g:renderErrors bean="${myUser}" field="age"></g:renderErrors>
        </div>
        <div class="form-group">
            <label for="Password" class="col-md-3">Password</label>
            <input type="text" id="Password" class="col-md-6" placeholder="enter password" >
        </div>
        <div class="col-md-offset-2 col-md-3">
        <button class="btn btn-primary" type="submit">submit</button><br>
        </div>
</form>
</div>
</content>
</body>
</html>