<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
    %{--<asset:javascript src="application.js"/>--}%
   <asset:stylesheet src="main.css"/>
    <asset:javascript src="jquery.js"/>
    <asset:stylesheet src="bootstrap.css"/>
    <asset:stylesheet src="docs.min.css"/>

    <asset:stylesheet src="jquery.dataTables.min.css"/>
    <asset:stylesheet src="datatables.bootstrap.min.css"/>
    <asset:stylesheet src="select2.css"/>
    <asset:stylesheet src="datepicker.css"/>
    <asset:stylesheet src="buttons.dataTables.min.css"/>

    <asset:javascript src="select2.js"/>
    <asset:javascript src="jquery.datatables.min.js"/>
    <asset:javascript src="dataTables.bootstrap.min.js"/>
    <asset:javascript src="bootstrap.js"/>
    <asset:javascript src="bootstrap-datepicker.js"/>
    <asset:javascript src="dataTables.buttons.min.js"/>


    <g:layoutHead/>
    <style>
    .bd-example-container-header {
        background-color: #957bbe;
        border-radius: .25rem;
        padding: 1rem;
    }
    </style>
	</head>
	<body>
    <div class="container bs-docs-container">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a href="/" class="nav-link" >Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item dropdown">
                    <g:link class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Solve a problem
                    </g:link>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <g:link controller="solve" action="index" class="dropdown-item" params="[level: 1]">Class 1</g:link>
                        <div class="dropdown-divider"></div>

                        <g:link controller="solve" action="index" class="dropdown-item" params="[level: 2]">Class 2</g:link>
                        <div class="dropdown-divider"></div>
                        <g:link controller="solve" action="index" class="dropdown-item" params="[level: 3]">Class 3</g:link>
                        <div class="dropdown-divider"></div>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" href="#">Log In</a>
                </li>
            </ul>
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>
    </nav>
        </div>

    <div id="content" class="container header alert bd-example-container-header">
                <div class="container-fluid">
                    <div class="col-6"><h1>Brain Playground <h3>Let's Solve</h3></h1></div>
                    <div id="carbonads-container"></div>
                </div>
            </div>
    <div class="container">
        <g:if test="${messageType != null && messageType != "none"}">
            <div class="alert alert-${messageType}" id="message-global"><i class="glyphicon glyphicon-info-sign">&nbsp;</i><span id="messageText">${messageText}</span></div>
        </g:if>
        <g:layoutBody/>

    </div>

    <div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
    <g:javascript>

        function toggleStyle() {
            var num = $('#cssVersion').val()
            var newValue = parseInt(num) + 1
            if (num == "5") {
                newValue = 1
            }
            $('link[href="/HollyPortal/assets/' + num + '.css?compile=false"]').attr({href: '/HollyPortal/assets/' + newValue.toString() + '.css?compile=false'});
            $('#cssVersion').val(newValue)
        }

    </g:javascript>
	</body>
</html>

