<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Custom Login Page</title>
    <style>
        .failed {
            color: red;
        }
    </style>
</head>
<body>
<h3>My Custom Login Page</h3>
<form:form action="${pageContext.request.contextPath}/authenticate"
           method="POST">
    <c:if test="${param.error != null}">
        <i class="failed">Sorry! You entered invalid username/passowrd</i>
    </c:if>

    <p>
        User name: <label>
        <input type="text" name="username">
    </label>
    </p>
    <p>Password: <label>
        <input type="text" name="password"/>
    </label>
    </p>
    <input type="submit" value="Loin"/>
</form:form>
</body>

</html>