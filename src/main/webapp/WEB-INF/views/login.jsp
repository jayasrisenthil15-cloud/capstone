<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login - JayasriMart</title>
    <style>
        body { font-family: Arial, sans-serif; background-color: #f4f4f4; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0; }
        .card { background: white; padding: 25px; border-radius: 8px; box-shadow: 0 0 10px rgba(0,0,0,0.1); width: 300px; }
        .form-group { margin-bottom: 15px; text-align: left; }
        label { display: block; margin-bottom: 5px; }
        input[type="email"], input[type="password"] { width: 100%; padding: 8px; box-sizing: border-box; }
        button { width: 100%; padding: 10px; background-color: #007bff; color: white; border: none; border-radius: 4px; cursor: pointer; }
        .error { color: red; margin-bottom: 10px; font-size: 14px; }
        .success { color: green; margin-bottom: 10px; font-size: 14px; }
    </style>
</head>
<body>
    <div class="card">
        <h2>Login</h2>
        
        <c:if test="${not empty param.registered}">
            <div class="success">Registration successful! Please login.</div>
        </c:if>
        
        <c:if test="${not empty error}">
            <div class="error">${error}</div>
        </c:if>

        <form action="${pageContext.request.contextPath}/auth/login" method="post">
            <div class="form-group">
                <label>Email:</label>
                <input type="email" name="email" required />
            </div>
            <div class="form-group">
                <label>Password:</label>
                <input type="password" name="password" required />
            </div>
            <button type="submit">Login</button>
        </form>
        <p style="text-align: center; margin-top: 15px;">
            Don't have an account? <a href="${pageContext.request.contextPath}/auth/register">Register here</a>
        </p>
    </div>
</body>
</html>
