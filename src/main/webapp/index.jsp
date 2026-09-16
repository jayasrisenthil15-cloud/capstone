<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>JayasriMart - Home</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 40px; text-align: center; background-color: #f4f4f4; }
        .container { background: white; padding: 30px; border-radius: 8px; box-shadow: 0 0 10px rgba(0,0,0,0.1); display: inline-block; }
        a { text-decoration: none; color: #007bff; font-weight: bold; margin: 0 10px; }
        .btn { display: inline-block; padding: 10px 20px; color: white; background-color: #28a745; border-radius: 5px; margin-top: 15px; }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to JayasriMart!</h1>
        <p>Your one-stop e-commerce store.</p>
        <hr>
        <c:choose>
            <c:when test="${not empty sessionScope.user}">
                <h3>Hello, ${sessionScope.user.name}!</h3>
                <a href="${pageContext.request.contextPath}/auth/logout" class="btn" style="background-color: #dc3545;">Logout</a>
            </c:when>
            <c:otherwise>
                <a href="${pageContext.request.contextPath}/auth/login">Login</a> | 
                <a href="${pageContext.request.contextPath}/auth/register">Register</a>
            </c:otherwise>
        </c:choose>
    </div>
</body>
</html>
