<html>
<head>
    <title><g:layoutTitle default="An example decorator" /></title>
    <asset:stylesheet href="bootstrap.min.css"/>
    <asset:stylesheet src="jquery.min.js"/>
    <asset:stylesheet src="bootstrap.min.js"/>
    <g:layoutHead />
</head>
<body>
    <nav class="navbar navbar-inverse">
        <div class="container">
            <div class="navbar-header">
                <a href="#" class="navbar-brand">Learning-management</a>
            </div>
            <div class="container">
                <ul class="nav navbar-nav navbar-right">
                    <li class="${actionName=="create"?'active':''}"><a  href="/user/create">create</a></li>
                    <li class="${actionName=="show"?'active':''}"><a href="/user/show">show</a></li>
                    <li class="${actionName=="list"?'active':''}"><a href="/user/list">list</a></li>
                </ul>
            </div>

        </div>

    </nav>
     <div class="container-fluid">
         <div class="page-header">
             <h1>Sign-up form</h1>
         </div>
    </div>
     <div class="container-fluid">
         <div class="col-sm-10">
             <div id="create">
                     <g:pageProperty name="page.create" />
             </div>
             <div id="show">
                     <g:pageProperty name="page.show" />
             </div>
             <div id="list">
                     <g:pageProperty name="page.list" />
             </div>
             <div id="edit">
                 <g:pageProperty name="page.edit" />
             </div>
         </div>
         <div class="col-sm-2">
             <ul>
                 <li>Glyphicons</li>
                 <li>Dropdowns</li>
                 <li>Button groups</li>
                 <li>Button dropdowns</li>
                 <li>Single button dropdowns</li>
                 <li>Split button dropdowns</li>
                 <li>Sizing</li>
                 <li>Dropup variation</li>
                 <li>Input groups</li>
                 <li>Navs</li>
                 <li>Navbar</li>
                 <li>Breadcrumbs</li>
                 <li>Pagination</li>
                 <li>Labels</li>
                 <li>Badges</li>
                 <li>Jumbotron</li>
                 <li>Page header</li>
                 <li>Thumbnails</li>
                 <li>Alerts</li>
                 <li>Progress bars</li>
                 <li>Media object</li>
                 <li>List group</li>
                 <li>Panels</li>
                 <li>Responsive embed</li>
                 <li>Wells</li>
                 <li>Back to top</li>
                 <li>Preview theme</li>
             </ul>
         </div>
     </div>
    <g:layoutBody />
</body>
</html>