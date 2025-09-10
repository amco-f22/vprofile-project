<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>User Profile - HKH Infotech</title>
    <!-- Stylesheets -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/modern.css" rel="stylesheet">
    <style>
        .user-profile-container {
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.08);
            padding: 30px;
            margin-top: 100px;
            margin-bottom: 30px;
        }
        
        .profile-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
            padding-bottom: 15px;
            border-bottom: 1px solid var(--border-color);
        }
        
        .profile-title {
            color: var(--primary-color);
            margin: 0;
            font-weight: 600;
        }
        
        .table-card {
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.05);
            margin-bottom: 30px;
        }
        
        .table-card .table {
            margin-bottom: 0;
        }
        
        .table-card .table thead th {
            background-color: var(--primary-color);
            color: white;
            border: none;
            padding: 15px;
            font-weight: 500;
        }
        
        .table-card .table td {
            padding: 12px 15px;
            vertical-align: middle;
        }
        
        .table-card .table-striped tbody tr:nth-of-type(odd) {
            background-color: rgba(0, 0, 0, 0.02);
        }
        
        .section-title {
            color: var(--primary-color);
            font-size: 1.5rem;
            margin-bottom: 20px;
            font-weight: 600;
            text-align: center;
        }
        
        .back-btn {
            padding: 8px 20px;
            border-radius: 50px;
            transition: all 0.3s ease;
        }
    </style>
</head>
<body>
    <!-- Modern Navbar -->
    <nav class="navbar navbar-modern fixed-top">
        <div class="container">
            <a class="navbar-brand" href="${contextPath}/index">
                <span class="brand-text">HKH Infotech</span>
            </a>
            <button class="navbar-toggler" type="button" id="navbarToggler">
                <span class="navbar-toggler-icon"><i class="fas fa-bars"></i></span>
            </button>
            <div class="navbar-collapse" id="navbarContent">
                <ul class="navbar-nav">
                    <li class="nav-item"><a class="nav-link" href="${contextPath}/index#technologies">Technologies</a></li>
                    <li class="nav-item"><a class="nav-link" href="${contextPath}/index#about">About</a></li>
                    <li class="nav-item"><a class="nav-link" href="${contextPath}/index#contact">Contact</a></li>
                </ul>
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item"><a class="nav-link btn-outline" href="${contextPath}">Login</a></li>
                    <li class="nav-item"><a class="nav-link btn-primary" href="${contextPath}/registration">Sign up</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- User Profile Container -->
    <div class="container user-profile-container">
        <div class="profile-header">
            <h1 class="profile-title">User Profile</h1>
            <a href="${contextPath}/users" class="btn btn-outline back-btn">
                <i class="fas fa-arrow-left"></i> Back to Users
            </a>
        </div>
        
        <div class="alert alert-info" role="alert" style="display: ${Result != null ? 'block' : 'none'}">
            <i class="fas fa-info-circle"></i> ${Result}
        </div>
        
        <!-- Primary Details Card -->
        <div class="card mb-4">
            <div class="card-header">
                <h2 class="section-title">Primary Details</h2>
            </div>
            <div class="table-card">
                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Father's Name</th>
                                <th>Mother's Name</th>
                                <th>Email</th>
                                <th>Phone Number</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><c:out value="${user.id}"/></td>
                                <td><c:out value="${user.username}"/></td>
                                <td><c:out value="${user.fatherName}"/></td>
                                <td><c:out value="${user.motherName}"/></td>
                                <td><c:out value="${user.userEmail}"/></td>
                                <td><c:out value="${user.phoneNumber}"/></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        
        <!-- Extra Details Card -->
        <div class="card">
            <div class="card-header">
                <h2 class="section-title">Additional Information</h2>
            </div>
            <div class="table-card">
                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>Date Of Birth</th>
                                <th>Gender</th>
                                <th>Marital Status</th>
                                <th>Permanent Address</th>
                                <th>Temporary Address</th>
                                <th>Primary Occupation</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><c:out value="${user.dateOfBirth}"/></td>
                                <td><c:out value="${user.gender}"/></td>
                                <td><c:out value="${user.maritalStatus}"/></td>
                                <td><c:out value="${user.permanentAddress}"/></td>
                                <td><c:out value="${user.tempAddress}"/></td>
                                <td><c:out value="${user.primaryOccupation}"/></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            
            <div class="table-card mt-4">
                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>Secondary Occupation</th>
                                <th>Skills</th>
                                <th>Secondary Phone</th>
                                <th>Nationality</th>
                                <th>Language</th>
                                <th>Working Experience</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><c:out value="${user.secondaryOccupation}"/></td>
                                <td><c:out value="${user.skills}"/></td>
                                <td><c:out value="${user.secondaryPhoneNumber}"/></td>
                                <td><c:out value="${user.nationality}"/></td>
                                <td><c:out value="${user.language}"/></td>
                                <td><c:out value="${user.workingExperience}"/></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <!-- Scripts -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="${contextPath}/resources/js/components.js"></script>
</body>
</html>
