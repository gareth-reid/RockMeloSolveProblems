    <%--
  Created by IntelliJ IDEA.
  User: reid gareth
  Date: 6/25/18
  Time: 2:22 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Solve</title>
</head>

<body>
    <div class="container row">
        <div class="col-1"><span class="badge badge-pill badge-success">Maths</span></div>
        <div class="col-1"><span class="badge badge-pill badge-danger">Logic</span></div>
        <div class="col-1"><span class="badge badge-pill badge-info">Physics</span></div>
        <div class="col-1"><g:link action="index"><span class="badge badge-pill badge-warning">Random</span></g:link></div>

    </div>
    <div class="container">
        <g:form action="submitAnswer" method="post">
            <div class="form-group">
                <label for="question" class="strong">Question:</label>
                <textarea class="form-control" readonly="true" rows="5" id="question">${problem.question}</textarea>
            </div>
            <div class="form-group">
                <label for="answer">Answer:</label>
                <textarea class="form-control" rows="5" id="answer"></textarea>
            </div>
            <g:submitButton name="submit-answer" id="submit-answer" value="Submit" class="btn btn-warning"/>
        </g:form>
    </div>
</body>
</html>