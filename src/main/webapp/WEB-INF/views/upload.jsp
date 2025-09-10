<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Upload Image - HKH Infotech</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/modern.css" rel="stylesheet">
    <style>
        .upload-container {
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.08);
            padding: 30px;
            margin-top: 100px;
            margin-bottom: 30px;
            max-width: 600px;
        }
        
        .upload-title {
            color: var(--primary-color);
            margin-bottom: 25px;
            font-weight: 600;
            text-align: center;
        }
        
        .user-info {
            background-color: var(--light-bg-color);
            padding: 10px 15px;
            border-radius: 5px;
            margin-bottom: 20px;
            font-weight: 500;
        }
        
        .file-upload-wrapper {
            position: relative;
            margin-bottom: 20px;
        }
        
        .file-upload-input {
            position: relative;
            z-index: 1;
            width: 100%;
            height: 100%;
            opacity: 0;
            cursor: pointer;
        }
        
        .file-upload-text {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            padding: 10px 15px;
            border: 2px dashed var(--border-color);
            border-radius: 5px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: var(--text-muted);
        }
        
        .btn-upload {
            width: 100%;
            padding: 12px;
            margin-top: 10px;
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

    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8 upload-container">
                <h2 class="upload-title">Upload Image</h2>
                
                <div class="user-info">
                    <i class="fas fa-user mr-2"></i> Logged in as: <strong>${pageContext.request.userPrincipal.name}</strong>
                </div>
                
                <form action="./uploadFile?${_csrf.parameterName}=${_csrf.token}" method="post" enctype="multipart/form-data" class="upload-form">
                    <div class="form-group">
                        <label for="file"><i class="fas fa-image mr-2"></i>Select Image</label>
                        <div class="file-upload-wrapper">
                            <input type="file" name="file" id="file" class="form-control file-upload-input">
                            <div class="file-upload-text">
                                <i class="fas fa-cloud-upload-alt mr-2"></i> Drag and drop or click to select a file
                            </div>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label for="name"><i class="fas fa-tag mr-2"></i>Image Name</label>
                        <input type="text" name="name" class="form-control" id="name" placeholder="Enter a name for your image">
                    </div>
                    
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    <input type="hidden" name="userName" value="${pageContext.request.userPrincipal.name}"/>
                    
                    <button type="submit" class="btn btn-primary btn-upload">
                        <i class="fas fa-upload mr-2"></i> Upload Image
                    </button>
                </form>
                
                <div class="text-center mt-4">
                    <a href="${contextPath}/index" class="btn btn-outline">
                        <i class="fas fa-arrow-left mr-2"></i> Back to Home
                    </a>
                </div>
            </div>
        </div>
    </div>
    
    <!-- Scripts -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="${contextPath}/resources/js/components.js"></script>
    <script>
        // Update file input display
        document.getElementById('file').addEventListener('change', function(e) {
            const fileName = e.target.files[0] ? e.target.files[0].name : 'No file selected';
            const fileText = document.querySelector('.file-upload-text');
            fileText.innerHTML = '<i class="fas fa-file mr-2"></i> ' + fileName;
        });
    </script>
</body>
</html>