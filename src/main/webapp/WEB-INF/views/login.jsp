<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login | VProfile</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="${contextPath}/resources/images/icons/favicon.ico"/>
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/fonts/iconic/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/vendor/animate/animate.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/util.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/main.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/modern.css">

</head>
<body>
<nav class="navbar navbar-expand-lg navbar-modern fixed-top">
    <div class="container">
        <a class="navbar-brand" href="${contextPath}/index">VProfile</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="${contextPath}/index">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${contextPath}/login">Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${contextPath}/registration">Sign Up</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="page-container">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card auth-card animate-on-scroll" data-animation="animate-fade-in">
                    <div class="card-body">
                        <form class="validate-form" method="POST" action="${contextPath}/login">
                            <h2 class="card-title text-center mb-4">Welcome Back</h2>
                            
                            <!-- Display error message if any -->
                            <c:if test="${not empty error}">
                                <div class="alert alert-danger">
                                    <c:out value="${error}"/>
                                </div>
                </c:if>

                            <div class="form-group">
                                <label for="username">Username</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fa fa-user"></i></span>
                                    </div>
                                    <input class="form-control" id="username" type="text" name="username" placeholder="Enter your username" required autofocus>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="password">Password</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fa fa-lock"></i></span>
                                    </div>
                                    <input class="form-control" id="password" type="password" name="password" placeholder="Enter your password" required>
                                </div>
                            </div>

                            <div class="form-group text-right">
                                <a href="#" class="text-muted small">Forgot password?</a>
                            </div>

                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

                            <div class="form-group">
                                <button type="submit" class="btn btn-primary btn-block btn-lg">
                                    Login
                                </button>
                            </div>

                            <div class="text-center mt-4">
                                <p class="text-muted">
                                    Don't have an account? <a href="${contextPath}/registration" class="text-primary">Sign Up</a>
                                </p>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="${contextPath}/resources/vendor/jquery/jquery-3.2.1.min.js"></script>
<script src="${contextPath}/resources/vendor/bootstrap/js/popper.js"></script>
<script src="${contextPath}/resources/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="${contextPath}/resources/js/main.js"></script>
<script src="${contextPath}/resources/js/components.js"></script>

</body>
</html>
