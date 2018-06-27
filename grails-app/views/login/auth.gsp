<%--
  Created by IntelliJ IDEA.
  User: reid gareth
  Date: 6/18/18
  Time: 12:04 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>

    </head>

<body>
<div class="container col-md-4">
    <g:form class="form-signin" controller="j_spring_security_check" method="post">
        <h2 class="form-signin-heading">Please sign in to Holly</h2>
        <label for="username" class="sr-only">Username</label>
        <g:textField id="username" name="j_username" class="form-control" placeholder="Username" required="true" autofocus="true" />
        <label for="password" class="sr-only">Password</label>
        <g:passwordField type="password" id="password" name="j_password" class="form-control" placeholder="Password" required="true" />
        <div class="checkbox">
            <label class="sr-only">
                <input type="checkbox" value="remember-me" > Remember me
            </label>
        </div>
        <g:submitButton class="btn btn-lg btn-primary btn-block" name="submit" type="submit">Sign in</g:submitButton>
    </g:form>

</div>

</body>
</html>