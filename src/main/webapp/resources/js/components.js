/**
 * VProfile Project - Modern UI Components
 * JavaScript functionality for modern UI components
 */

document.addEventListener('DOMContentLoaded', function() {
    // Initialize all components
    initNavbar();
    initAnimations();
    initCards();
    initForms();
    initModals();
    
    // Add smooth scrolling to all links
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
        anchor.addEventListener('click', function (e) {
            e.preventDefault();
            const target = document.querySelector(this.getAttribute('href'));
            if (target) {
                window.scrollTo({
                    top: target.offsetTop - 70, // Adjust for fixed navbar
                    behavior: 'smooth'
                });
            }
        });
    });
});

/**
 * Initialize responsive navbar functionality
 */
function initNavbar() {
    const navbarToggler = document.querySelector('.navbar-toggler');
    const navbarCollapse = document.querySelector('.navbar-collapse');
    
    if (navbarToggler && navbarCollapse) {
        navbarToggler.addEventListener('click', function() {
            navbarCollapse.classList.toggle('show');
        });
        
        // Close navbar when clicking outside
        document.addEventListener('click', function(event) {
            const isClickInside = navbarToggler.contains(event.target) || 
                                navbarCollapse.contains(event.target);
            
            if (!isClickInside && navbarCollapse.classList.contains('show')) {
                navbarCollapse.classList.remove('show');
            }
        });
        
        // Add scroll effect to navbar
        window.addEventListener('scroll', function() {
            const navbar = document.querySelector('.navbar');
            if (navbar) {
                if (window.scrollY > 50) {
                    navbar.classList.add('navbar-scrolled');
                } else {
                    navbar.classList.remove('navbar-scrolled');
                }
            }
        });
        
        // Add active class to nav links based on current page
        const currentLocation = window.location.pathname;
        const navLinks = document.querySelectorAll('.navbar-nav .nav-link');
        
        navLinks.forEach(link => {
            const linkPath = link.getAttribute('href');
            if (linkPath === currentLocation || 
                (currentLocation.includes(linkPath) && linkPath !== '/')) {
                link.classList.add('active');
            }
        });
    }
}

/**
 * Initialize scroll animations
 */
function initAnimations() {
    // Add animation classes to elements when they come into view
    const animatedElements = document.querySelectorAll('.animate-on-scroll');
    
    if (animatedElements.length > 0) {
        const observer = new IntersectionObserver((entries) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    const element = entry.target;
                    const animation = element.dataset.animation || 'animate-fade-in';
                    element.classList.add(animation);
                    observer.unobserve(element);
                }
            });
        }, { threshold: 0.1 });
        
        animatedElements.forEach(element => {
            observer.observe(element);
        });
    }
}

/**
 * Initialize card hover effects
 */
function initCards() {
    const cards = document.querySelectorAll('.card');
    
    cards.forEach(card => {
        card.addEventListener('mouseenter', function() {
            this.classList.add('card-hover');
        });
        
        card.addEventListener('mouseleave', function() {
            this.classList.remove('card-hover');
        });
    });
}

/**
 * Initialize form validation and enhancements
 */
function initForms() {
    const forms = document.querySelectorAll('form.validate-form');
    
    forms.forEach(form => {
        // Add validation classes to form inputs
        const inputs = form.querySelectorAll('input, textarea, select');
        
        inputs.forEach(input => {
            // Add has-val class when input has a value
            if (input.value.trim() !== '') {
                input.classList.add('has-val');
            }
            
            input.addEventListener('blur', function() {
                if (this.value.trim() !== '') {
                    this.classList.add('has-val');
                } else {
                    this.classList.remove('has-val');
                }
            });
            
            // Custom validation
            input.addEventListener('invalid', function(e) {
                e.preventDefault();
                this.classList.add('is-invalid');
                
                // Add validation message
                const parent = this.parentElement;
                let errorMessage = this.dataset.errorMessage || 'This field is required';
                
                if (this.validity.typeMismatch && this.type === 'email') {
                    errorMessage = 'Please enter a valid email address';
                }
                
                let errorElement = parent.querySelector('.invalid-feedback');
                
                if (!errorElement) {
                    errorElement = document.createElement('div');
                    errorElement.className = 'invalid-feedback';
                    parent.appendChild(errorElement);
                }
                
                errorElement.textContent = errorMessage;
            });
            
            input.addEventListener('input', function() {
                if (this.classList.contains('is-invalid')) {
                    if (this.checkValidity()) {
                        this.classList.remove('is-invalid');
                    }
                }
            });
        });
        
        // Form submission
        form.addEventListener('submit', function(e) {
            if (!this.checkValidity()) {
                e.preventDefault();
                e.stopPropagation();
                
                // Trigger validation on all inputs
                inputs.forEach(input => {
                    if (!input.checkValidity()) {
                        input.classList.add('is-invalid');
                    }
                });
                
                // Focus the first invalid input
                const firstInvalid = this.querySelector('.is-invalid');
                if (firstInvalid) {
                    firstInvalid.focus();
                }
            }
        });
    });
}

/**
 * Initialize modal functionality
 */
function initModals() {
    const modalTriggers = document.querySelectorAll('[data-toggle="modal"]');
    
    modalTriggers.forEach(trigger => {
        trigger.addEventListener('click', function(e) {
            e.preventDefault();
            const targetId = this.getAttribute('data-target');
            const modal = document.querySelector(targetId);
            
            if (modal) {
                // Show modal
                modal.classList.add('show');
                document.body.classList.add('modal-open');
                
                // Close modal when clicking on close button or backdrop
                const closeButtons = modal.querySelectorAll('[data-dismiss="modal"]');
                closeButtons.forEach(button => {
                    button.addEventListener('click', function() {
                        modal.classList.remove('show');
                        document.body.classList.remove('modal-open');
                    });
                });
                
                // Close modal when clicking outside
                modal.addEventListener('click', function(event) {
                    if (event.target === modal) {
                        modal.classList.remove('show');
                        document.body.classList.remove('modal-open');
                    }
                });
                
                // Close modal with Escape key
                document.addEventListener('keydown', function(event) {
                    if (event.key === 'Escape' && modal.classList.contains('show')) {
                        modal.classList.remove('show');
                        document.body.classList.remove('modal-open');
                    }
                });
            }
        });
    });
}

/**
 * Utility function to create toast notifications
 * @param {string} message - The message to display
 * @param {string} type - The type of toast (success, error, warning, info)
 * @param {number} duration - Duration in milliseconds
 */
function showToast(message, type = 'info', duration = 3000) {
    // Create toast container if it doesn't exist
    let toastContainer = document.querySelector('.toast-container');
    
    if (!toastContainer) {
        toastContainer = document.createElement('div');
        toastContainer.className = 'toast-container';
        document.body.appendChild(toastContainer);
    }
    
    // Create toast element
    const toast = document.createElement('div');
    toast.className = `toast toast-${type} animate-slide-right`;
    toast.innerHTML = `
        <div class="toast-content">
            <span class="toast-message">${message}</span>
        </div>
        <button class="toast-close">&times;</button>
    `;
    
    // Add toast to container
    toastContainer.appendChild(toast);
    
    // Add close functionality
    const closeButton = toast.querySelector('.toast-close');
    closeButton.addEventListener('click', function() {
        toast.classList.add('toast-hiding');
        setTimeout(() => {
            toast.remove();
        }, 300);
    });
    
    // Auto-remove after duration
    setTimeout(() => {
        toast.classList.add('toast-hiding');
        setTimeout(() => {
            toast.remove();
        }, 300);
    }, duration);
}

/**
 * Utility function to create a loading spinner
 * @param {string} containerId - The ID of the container element
 * @param {boolean} show - Whether to show or hide the spinner
 */
function toggleSpinner(containerId, show = true) {
    const container = document.getElementById(containerId);
    
    if (!container) return;
    
    if (show) {
        // Create spinner if it doesn't exist
        let spinner = container.querySelector('.spinner');
        
        if (!spinner) {
            spinner = document.createElement('div');
            spinner.className = 'spinner';
            spinner.innerHTML = '<div class="spinner-border" role="status"><span class="sr-only">Loading...</span></div>';
            container.appendChild(spinner);
        }
        
        spinner.style.display = 'flex';
    } else {
        // Hide spinner if it exists
        const spinner = container.querySelector('.spinner');
        if (spinner) {
            spinner.style.display = 'none';
        }
    }
}