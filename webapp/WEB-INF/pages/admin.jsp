<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>Prog.kiev.ua</title>
</head>
<body>
<div align="center">
    <h1>Secret page for admins only!</h1>

    REGISTERED USERS ARE:
    <form action="/multyDelete" method="POST">
    <table border="1" cellspacing="1">
        <tr>
            <th>Login</th>
        </tr>
    <c:forEach var="user" items="${userList}">
        <tr>
            <td>
                <input type = "checkbox" value = "${user.id}" name="id" />
                <c:out value="${user.login}"/>
            </td>
        </tr>
    </c:forEach>
        <input type="submit" />
    </table>
    </form>


    <c:url value="/logout" var="logoutUrl" />
    <p>Click to logout: <a href="${logoutUrl}">LOGOUT</a></p>
</div>
</body>
</html>
