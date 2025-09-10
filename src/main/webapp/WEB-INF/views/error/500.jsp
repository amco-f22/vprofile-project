<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>500 - Server Error</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/modern.css" rel="stylesheet">
    <style>
        body {
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            background-color: var(--background-color);
            font-family: 'Poppins', sans-serif;
        }
        
        .error-container {
            text-align: center;
            padding: 40px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            max-width: 500px;
            width: 100%;
        }
        
        .error-icon {
            font-size: 80px;
            color: var(--danger-color);
            margin-bottom: 20px;
        }
        
        .error-title {
            color: var(--danger-color);
            font-size: 32px;
            font-weight: 600;
            margin-bottom: 15px;
        }
        
        .error-message {
            color: var(--text-color);
            font-size: 18px;
            margin-bottom: 30px;
        }
        
        .btn-return {
            padding: 12px 30px;
            border-radius: 50px;
            transition: all 0.3s ease;
            font-weight: 500;
        }
    </style>
</head>
<body>
    <div class="error-container">
        <div class="error-icon">
            <i class="fas fa-exclamation-triangle"></i>
        </div>
        <h1 class="error-title">Server Error</h1>
        <p class="error-message">Something went wrong on our servers. We're working to fix the issue.</p>
        <a href="${contextPath}/index" class="btn btn-primary btn-return">Return to Homepage</a>
    </div>
    
    <!-- Scripts -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="${contextPath}/resources/js/components.js"></script>
</body>
</html>
