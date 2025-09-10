<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>HKH Infotech - Modern DevOps Solutions</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/modern.css" rel="stylesheet">
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
                <li class="nav-item"><a class="nav-link" href="#technologies">Technologies</a></li>
                <li class="nav-item"><a class="nav-link" href="#about">About</a></li>
                <li class="nav-item"><a class="nav-link" href="#contact">Contact</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Blog</a></li>
            </ul>
            <ul class="navbar-nav ml-auto">
                <li class="nav-item"><a class="nav-link btn-outline" href="${contextPath}">Login</a></li>
                <li class="nav-item"><a class="nav-link btn-primary" href="${contextPath}/registration">Sign up</a></li>
            </ul>
        </div>
    </div>
</nav>
<!-- Hero Section -->
<section class="hero-section" id="home">
    <div class="hero-overlay"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-8 hero-content">
                <h1 class="hero-title animate-up">Modern DevOps Solutions</h1>
                <p class="hero-subtitle animate-up">Transforming businesses through innovative technology and expert solutions</p>
                <div class="hero-buttons animate-up">
                    <a href="#technologies" class="btn btn-primary">Explore Technologies</a>
                    <a href="#contact" class="btn btn-outline">Contact Us</a>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Quote Section -->
<section class="quote-section">
    <div class="container">
        <div class="quote-card animate-fade-in">
            <i class="fas fa-quote-left quote-icon"></i>
            <h2>Keep Learning</h2>
            <p>Learning is a Treasure that will follow its Owner Everywhere</p>
        </div>
    </div>
</section>
<!-- Page content -->
<div class="w3-content w3-padding" style="max-width:1564px">

  <!-- Technologies Section -->
<section class="section" id="technologies">
    <div class="container">
        <div class="section-header text-center">
            <h2 class="section-title">Technologies</h2>
            <p class="section-subtitle">We specialize in cutting-edge DevOps tools and technologies</p>
        </div>
        
        <div class="tech-grid">
            <div class="tech-card animate-fade-in">
                <div class="tech-icon">
                    <img src="${contextPath}/resources/Images/technologies/Ansible_logo.png" alt="Ansible">
                </div>
                <h3>Ansible</h3>
            </div>
            
            <div class="tech-card animate-fade-in">
                <div class="tech-icon">
                    <img src="${contextPath}/resources/Images/technologies/aws.png" alt="AWS">
                </div>
                <h3>AWS</h3>
            </div>
            
            <div class="tech-card animate-fade-in">
                <div class="tech-icon">
                    <img src="${contextPath}/resources/Images/technologies/git.jpg" alt="Git">
                </div>
                <h3>Git</h3>
            </div>
            
            <div class="tech-card animate-fade-in">
                <div class="tech-icon">
                    <img src="${contextPath}/resources/Images/technologies/jenkins.png" alt="Jenkins">
                </div>
                <h3>Jenkins</h3>
            </div>
            
            <div class="tech-card animate-fade-in">
                <div class="tech-icon">
                    <img src="${contextPath}/resources/Images/technologies/docker.png" alt="Docker">
                </div>
                <h3>Docker</h3>
            </div>
            
            <div class="tech-card animate-fade-in">
                <div class="tech-icon">
                    <img src="${contextPath}/resources/Images/technologies/puppet.jpg" alt="Puppet">
                </div>
                <h3>Puppet</h3>
            </div>
            
            <div class="tech-card animate-fade-in">
                <div class="tech-icon">
                    <img src="${contextPath}/resources/Images/technologies/Vagrant.png" alt="Vagrant">
                </div>
                <h3>Vagrant</h3>
            </div>
            
            <div class="tech-card animate-fade-in">
                <div class="tech-icon">
                    <img src="${contextPath}/resources/Images/technologies/python-logo.png" alt="Python">
                </div>
                <h3>Python</h3>
            </div>
        </div>
    </div>
</section>

  <!-- About Section -->
<section class="section bg-light" id="about">
    <div class="container">
        <div class="section-header text-center">
            <h2 class="section-title">About Us</h2>
            <p class="section-subtitle">Learn more about our mission and expertise</p>
        </div>
        
        <div class="row">
            <div class="col-lg-6">
                <div class="about-content">
                    <p>HKH Infotech is a dynamic software company dedicated to delivering innovative technology solutions. Founded with a mission to leverage cutting-edge technology and unparalleled expertise, we specialize in creating high-quality software solutions that drive business success.</p>
                    
                    <p>Our team is led by seasoned DevOps experts with many years of industry experience. They bring a wealth of knowledge in automating and optimizing the software development lifecycle, ensuring that our projects are efficient, reliable, and scalable.</p>
                    
                    <p>At HKH Infotech, we focus on understanding our clients' unique needs and providing tailored solutions that meet their objectives. Whether it's custom software development, system integration, or ongoing support, we are committed to excellence and client satisfaction.</p>
                </div>
            </div>
            
            <div class="col-lg-6">
                <div class="about-card">
                    <div class="about-image">
                        <img src="${contextPath}/resources/Images/dev_img.jpeg" alt="Our Team" class="img-fluid rounded">
                    </div>
                    
                    <div class="about-info">
                        <p>With a commitment to staying ahead of technological trends and a passion for innovation, HKH Infotech is your trusted partner in navigating the digital landscape and achieving your business goals.</p>
                        
                        <div class="contact-info">
                            <p><i class="fas fa-map-marker-alt"></i> <strong>Address:</strong> Punjagutta Colony Ameerpet, Hyderabad</p>
                            <p><i class="fas fa-phone"></i> <strong>Phone:</strong> +91-8001234567</p>
                            <p><i class="fas fa-envelope"></i> <strong>Email:</strong> contact@hkhinfotech.com</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

  <!-- Contact Section -->
<section class="section" id="contact">
    <div class="container">
        <div class="section-header text-center">
            <h2 class="section-title">Contact Us</h2>
            <p class="section-subtitle">Let's get in touch and talk about your next project</p>
        </div>
        
        <div class="row">
            <div class="col-lg-6">
                <div class="contact-info-card">
                    <div class="contact-method">
                        <div class="icon"><i class="fas fa-map-marker-alt"></i></div>
                        <div class="content">
                            <h3>Our Location</h3>
                            <p>Punjagutta Colony Ameerpet, Hyderabad, India</p>
                        </div>
                    </div>
                    
                    <div class="contact-method">
                        <div class="icon"><i class="fas fa-phone"></i></div>
                        <div class="content">
                            <h3>Call Us</h3>
                            <p>+91-8001234567</p>
                        </div>
                    </div>
                    
                    <div class="contact-method">
                        <div class="icon"><i class="fas fa-envelope"></i></div>
                        <div class="content">
                            <h3>Email Us</h3>
                            <p>contact@hkhinfotech.com</p>
                        </div>
                    </div>
                    
                    <div class="social-links">
                        <a href="#" class="social-link"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" class="social-link"><i class="fab fa-twitter"></i></a>
                        <a href="#" class="social-link"><i class="fab fa-linkedin-in"></i></a>
                        <a href="#" class="social-link"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            
            <div class="col-lg-6">
                <div class="contact-form-card">
                    <form action="/action_page.php" id="contact-form">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Your Name" required name="Name">
                        </div>
                        
                        <div class="form-group">
                            <input type="email" class="form-control" placeholder="Your Email" required name="Email">
                        </div>
                        
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Subject" required name="Subject">
                        </div>
                        
                        <div class="form-group">
                            <textarea class="form-control" rows="5" placeholder="Your Message" required name="Comment"></textarea>
                        </div>
                        
                        <button type="submit" class="btn btn-primary btn-block">
                            <i class="fas fa-paper-plane"></i> Send Message
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>





<!-- Footer -->
<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="footer-brand">
                    <h3>HKH Infotech</h3>
                    <p>Transforming businesses through innovative technology solutions</p>
                </div>
            </div>
            
            <div class="col-md-4">
                <div class="footer-links">
                    <h4>Quick Links</h4>
                    <ul>
                        <li><a href="#home">Home</a></li>
                        <li><a href="#technologies">Technologies</a></li>
                        <li><a href="#about">About</a></li>
                        <li><a href="#contact">Contact</a></li>
                    </ul>
                </div>
            </div>
            
            <div class="col-md-4">
                <div class="footer-newsletter">
                    <h4>Subscribe to Our Newsletter</h4>
                    <form>
                        <div class="input-group">
                            <input type="email" class="form-control" placeholder="Your Email">
                            <div class="input-group-append">
                                <button class="btn btn-primary" type="submit"><i class="fas fa-paper-plane"></i></button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        
        <div class="footer-bottom">
            <p>&copy; 2023 HKH Infotech. All Rights Reserved.</p>
        </div>
    </div>
</footer>

<!-- Scripts -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="${contextPath}/resources/js/components.js"></script>
</body>
</html>