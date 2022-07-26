<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html>

<body>
<h2>luv2code Company Home Page -Yohooo</h2>

<p>
    Welcome to the luv2code company home page!
</p>
<hr>
    <p>
        User: <security:authentication property="principal.username"/>
        <br><br>
        Role(s): <security:authentication property="principal.authorities"/>
    </p>

    <hr>
        <security:authorize access="hasRole('MANAGER')">
        <p>
            <a href="${pageContext.request.contextPath}/leaders">LeaderShip Meeting</a>
            (Only for Manager peeps)
        </p>
        </security:authorize>

<%--        <security:authorize access="hasRole('ADMIN')">--%>
        <p>
            <a href="${pageContext.request.contextPath}/systems">IT Systems Meeting</a>
            (Only for Admin peeps)
        </p>
<%--        </security:authorize>--%>

<form:form action="${pageContext.request.contextPath}/logout"
           method="POST">
    <input type="submit" value="Logout">
</form:form>

</body>

<head>
    <title>luv2code Company Home Page</title>
</head>

</html>