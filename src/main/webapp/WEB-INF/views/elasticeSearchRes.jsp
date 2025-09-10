
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Elasticsearch Result | VProfile</title>
    <link rel="icon" type="image/png" href="${contextPath}/resources/images/icons/favicon.ico"/>
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
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
                <div class="col-md-8">
                    <div class="card result-card animate-on-scroll" data-animation="animate-fade-in">
                        <div class="card-body text-center">
                            <div class="result-icon mb-4">
                                <i class="fa fa-database fa-4x text-primary"></i>
                            </div>
                            <h2 class="card-title mb-3">Elasticsearch Operation</h2>
                            <div class="alert ${result == 'inserted' ? 'alert-success' : 'alert-info'}">
                                <p class="lead mb-0">Data has been <strong>${result}</strong> into Elasticsearch</p>
                            </div>
                            <p class="text-muted">Please go to Elasticsearch dashboard and verify using the link:</p>
                            <div class="code-block bg-light p-3 mb-4">
                                <code>ip:9200/users/user/id</code>
                            </div>
                            <a href="${contextPath}/index" class="btn btn-primary">
                                <i class="fa fa-home mr-2"></i>Return to Home
                            </a>
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