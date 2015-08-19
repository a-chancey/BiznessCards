<%--
  Created by IntelliJ IDEA.
  User: Aaron
  Date: 8/19/2015
  Time: 4:15 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>It's business time</title>
</head>

<body>
<h1>Contacts:</h1>
    <g:each in="${cards}" var="card">
        <div>
            <h2>${card.firstName} ${card.lastName}</h2>
            <p>${card.jobTitle}</p>
        </div>
    </g:each>
</body>
</html>