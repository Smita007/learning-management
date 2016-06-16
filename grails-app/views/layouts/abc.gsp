<html>
<head>
    <title><g:layoutTitle default="An example decorator" /></title>
    <asset:stylesheet href="bootstrap.min.css"/>
    <asset:stylesheet src="jquery.min.js"/>
    <asset:stylesheet src="bootstrap.min.js"/>
    <g:layoutHead />
</head>
<body onload="${pageProperty(name:'body.onload')}">
<div class="menu"><!--my common menu goes here--></menu>
    <div class="body">
        <nav class="navbar navbar-default">
            <div class="navbar-inverse">
                <ul class="nav nav-tabs" role="tablist">
                    <li class="${mycurrentpage=="create"?'active':''}"><a  href="/learning-management/user/create">create</a></li>
                    <li class="${mycurrentpage=="show"?'active':''}"><a href="/learning-management/user/show">show</a></li>
                    <li class="${mycurrentpage=="List"?'active':''}"><a href="/learning-management/user/list">list</a></li>
                </ul>
            </div>
        </nav>
        <g:layoutBody />
    </div>
</div>
</body>
</html>