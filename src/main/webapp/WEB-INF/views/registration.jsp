<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Sign Up | VProfile</title>
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
    <!-- Navbar -->
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
                    <li class="nav-item active">
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
                            <form:form modelAttribute="userForm" method="post" class="validate-form">
                                <h2 class="card-title text-center mb-4">Create Account</h2>

                                <!-- Email field -->
                                <div class="form-group">
                                    <label for="userEmail">Email Address</label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fa fa-envelope"></i></span>
                                        </div>
                                        <form:input path="userEmail" id="userEmail" class="form-control" placeholder="Enter your email address"/>
                                    </div>
                                    <form:errors path="userEmail" cssClass="text-danger small"/>
                                </div>

                                <!-- Username field -->
                                <div class="form-group">
                                    <label for="username">Username</label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fa fa-user"></i></span>
                                        </div>
                                        <form:input path="username" id="username" class="form-control" placeholder="Choose a username"/>
                                    </div>
                                    <form:errors path="username" cssClass="text-danger small"/>
                                </div>

                                <!-- Password field -->
                                <div class="form-group">
                                    <label for="password">Password</label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fa fa-lock"></i></span>
                                        </div>
                                        <form:password path="password" id="password" class="form-control" placeholder="Create a password"/>
                                    </div>
                                    <form:errors path="password" cssClass="text-danger small"/>
                                </div>

                                <!-- Confirm Password field -->
                                <div class="form-group">
                                    <label for="passwordConfirm">Confirm Password</label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fa fa-lock"></i></span>
                                        </div>
                                        <form:password path="passwordConfirm" id="passwordConfirm" class="form-control" placeholder="Confirm your password"/>
                                    </div>
                                    <form:errors path="passwordConfirm" cssClass="text-danger small"/>
                                </div>

                                <!-- Sign Up button -->
                                <div class="form-group mt-4">
                                    <button type="submit" class="btn btn-primary btn-block btn-lg">Create Account</button>
                                </div>

                                <!-- Login link -->
                                <div class="text-center mt-4">
                                    <p class="text-muted">Already have an account? <a href="${contextPath}/login" class="text-primary">Login</a></p>
                                </div>
                            </form:form>
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
