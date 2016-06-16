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
    .container{
        border: solid;
        padding-bottom: 10px;
    }
</style>
</head>
<body>
<div class="container">
    <h1 class="col-md-offset-2">Registration form</h1><br>
    <form class="form-horizontal" action="/learning-management/User/save">
        <div class="form-group">
            <label for="firstName" class="col-md-offset-2 col-md-2">First Name</label>
            <input type="text" name="firstName" id="firstName" class="col-md-6" placeholder="enter first name">
        </div>
        <div class="form-group">
            <label for="lastName"  class="col-md-offset-2 col-md-2">Last Name</label>
            <input type="text" name="lastName" id="lastName" class="col-md-6" placeholder="enter last name">
        </div>
        <div class="form-group">
            <label for="Email" class="col-md-offset-2 col-md-2">Email</label>
            <input type="text" name="Email" id="Email" class="col-md-6" placeholder="enter Email">
        </div>
        <div class="form-group">
            <label for="Age" class="col-md-offset-2 col-md-2">Age</label>
            <input type="text" name="Age" id="Age" class="col-md-6" placeholder="enter Age">
        </div>
        <div class="form-group">
            <label for="Password" class="col-md-offset-2 col-md-2">Password</label>
            <input type="text" id="Password" class="col-md-6" placeholder="enter password" >
        </div>
        <button class="btn btn-primary col-md-offset-2 col-md-2" type="submit">submit</button><br>
</form>
</div>
</body>
</html>